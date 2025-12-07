void sub_239E67F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_239E5B240(v32 - 128);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  *(v32 - 128) = &a29;
  sub_239E61AB0((v32 - 128));

  _Unwind_Resume(a1);
}

void sub_239E681C0(void *a1)
{
  v24 = a1;
  v12 = objc_msgSend_textureSamplerValue(v24, v1, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  if (!v12)
  {
    v13 = objc_opt_new();
    objc_msgSend_setTextureSamplerValue_(v24, v14, v13, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  }
}

void sub_239E682E4(int64x2_t *a1)
{
  a1[6] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  a1[7].i64[1] = 0x7FEFFFFFFFFFFFFFLL;
  a1[7].i8[0] = 1;
  v1 = *MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  v3 = *(MEMORY[0x277D860B8] + 32);
  v4 = *(MEMORY[0x277D860B8] + 48);
  a1[8] = *MEMORY[0x277D860B8];
  a1[9] = v2;
  a1[10] = v3;
  a1[11] = v4;
  a1[12] = v1;
  a1[13] = v2;
  a1[14] = v3;
  a1[15] = v4;
  a1[16] = v1;
  a1[17] = v2;
  a1[18] = v3;
  a1[19] = v4;
  a1[20] = v1;
  a1[21] = v2;
  a1[22] = v3;
  a1[23] = v4;
  v5 = a1->i64[0];
  a1->i64[1] = a1->i64[0];
  v6 = a1[1].u64[0];
  if (v5 >= v6)
  {
    v8 = v6 - v5;
    v9 = v8 >> 4;
    if ((v8 >> 4) <= 1)
    {
      v9 = 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_239E6861C(a1, v10);
  }

  *v5 = 0x7FEFFFFFFFFFFFFFLL;
  *(v5 + 16) = 0u;
  v7 = v5 + 32;
  v11 = a1[1].u64[1];
  a1->i64[1] = v7;
  a1[2].i64[0] = v11;
  v12 = a1[2].u64[1];
  if (v11 >= v12)
  {
    v14 = v12 - v11;
    v15 = v14 >> 4;
    if ((v14 >> 4) <= 1)
    {
      v15 = 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    sub_239E6861C(&a1[1].i64[1], v16);
  }

  *v11 = a1[6].i64[0];
  *(v11 + 16) = 0u;
  v13 = v11 + 32;
  v17 = a1[3].u64[0];
  a1[2].i64[0] = v13;
  a1[3].i64[1] = v17;
  v18 = a1[4].u64[0];
  if (v17 >= v18)
  {
    v20 = v18 - v17;
    v21 = v20 >> 4;
    if ((v20 >> 4) <= 1)
    {
      v21 = 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFE0)
    {
      v22 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    sub_239E6861C(a1[3].i64, v22);
  }

  *v17 = a1[6].i64[0];
  *(v17 + 16) = 0u;
  v19 = v17 + 32;
  v23 = a1[4].u64[1];
  a1[3].i64[1] = v19;
  a1[5].i64[0] = v23;
  v24 = a1[5].u64[1];
  if (v23 >= v24)
  {
    v30 = v24 - v23;
    v31 = v30 >> 4;
    if ((v30 >> 4) <= 1)
    {
      v31 = 1;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFE0)
    {
      v32 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v31;
    }

    sub_239E6861C(&a1[4].i64[1], v32);
  }

  *v23 = a1[6].i64[0];
  __asm { FMOV            V0.4S, #1.0 }

  *(v23 + 16) = _Q0;
  a1[5].i64[0] = v23 + 32;
}

void sub_239E6861C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E68724(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17D48);
}

uint64_t sub_239E687A8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E68724(a1))
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

    return MEMORY[0x282207DB0](a1, sub_239EF2EC0, &stru_284D17D48);
  }
}

const void **sub_239E6883C(float *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_239E68B60(a1, a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    sub_239E68AA8();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EF2FF8(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_239E68A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_239EF32D4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E68B44(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239EF32D4(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_239E68B60(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_239E68BA0(&v5, a2, v3);
}

unint64_t sub_239E68BA0(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_239EF3214(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_239EF3168(a2, a3);
  }

  else
  {
    return sub_239EF3070(a2, a3);
  }
}

void sub_239E68DA8(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, void *a2, uint64_t **a3, double *a4)
{
  v7 = a2;
  MEMORY[0x23EE7ED20](&v45, "varname");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v47, a1, &v45);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (sub_239E5E5B4(&v47) && (pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() & 1) != 0)
  {
    v45 = 0u;
    v46 = 0u;
    MEMORY[0x23EE7ED20](&v43, "result");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetOutput(&v45, a1, &v43);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput())
    {
      *&v43 = MEMORY[0x23EE7F740](&v45);
      if (!atomic_load(MEMORY[0x277D86578]))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
        {
          v43 = 0u;
          v44 = 0u;
          LODWORD(v39) = 1;
          v40 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
          v42 = 0;
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          *(&v44 + 1) = 0;
          *&v43 = MEMORY[0x277D867A8] + 16;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v41);
          v38 = 0;
          v37 = 0;
          pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
          pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(&v39, &v43, &v38);
          if (sub_239E5E5B4(&v39) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
          {
            v9 = sub_239E6929C(&v39, a3, a4);
          }

          else
          {
            MEMORY[0x23EE7ED20](&v32, "frame:stPrimvarName");
            pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(&v33, &v43, &v32);
            if ((v32 & 7) != 0)
            {
              atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (sub_239E5E5B4(&v33) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
            {
              v9 = sub_239E6929C(&v33, a3, a4);
            }

            else
            {
              v9 = -1;
            }

            if ((v36 & 7) != 0)
            {
              atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_239E5B574(&v35);
            if (v34)
            {
              sub_239E5E560(v34);
            }
          }

          if ((v42 & 7) != 0)
          {
            atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v41);
          if (v40)
          {
            sub_239E5E560(v40);
          }

          if ((v38 & 7) != 0)
          {
            atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x23EE7EB40](&v43);
        }

        else
        {
          v9 = sub_239E6929C(&v47, a3, a4);
        }

        if (v9 != -1)
        {
          sub_239E681C0(v7);
          v21 = objc_msgSend_textureSamplerValue(v7, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
          objc_msgSend_setMappingChannel_(v21, v22, v9, v23, v28, v29, v30, v31, v24, v25, v26, v27);
        }
      }
    }

    if ((BYTE8(v46) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v46 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v46);
    if (*(&v45 + 1))
    {
      sub_239E5E560(*(&v45 + 1));
    }
  }

  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v49);
  if (v48)
  {
    sub_239E5E560(v48);
  }
}

void sub_239E69184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EF06E8(va);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](va1);
  sub_239EF0744(v17 - 112);
  sub_239EF06E8(v17 - 80);

  _Unwind_Resume(a1);
}

uint64_t sub_239E6929C(uint64_t a1, uint64_t **a2, double *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get();
  memset(&__p, 0, sizeof(__p));
  if (sub_239E69514(v11))
  {
    v4 = sub_239E693F0(v11);
    if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
    }
  }

  else
  {
    if (!sub_239EF28FC(v11))
    {
      goto LABEL_8;
    }

    EmptyString = sub_239EF2934(v11);
  }

  std::string::operator=(&__p, EmptyString);
LABEL_8:
  if (a2 + 1 == sub_239E69484(a2, &__p.__r_.__value_.__l.__data_))
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    p_p = &__p;
    v6 = *(sub_239E631F0(a2, &__p.__r_.__value_.__l.__data_, &unk_239F9BFF0, &p_p, &v9) + 14);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_239E5B240(v11);
  return v6;
}

void sub_239E693C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_239E5B240(&a17);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_239E693F0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E69514(a1))
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

    return MEMORY[0x282207DB0](a1, sub_239EF428C, &stru_284D17C00);
  }
}

uint64_t sub_239E69484(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_239E5BA74(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_239E5BA74(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_239E69514(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C00);
  }

  else
  {
    return 0;
  }
}

void sub_239E6954C(void *a1)
{
  v48 = a1;
  sub_239E681C0(v48);
  v12 = objc_msgSend_textureSamplerValue(v48, v1, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v24 = objc_msgSend_hardwareFilter(v12, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);

  if (!v24)
  {
    v25 = objc_opt_new();
    v37 = objc_msgSend_textureSamplerValue(v48, v26, v27, v28, v33, v34, v35, v36, v29, v30, v31, v32);
    objc_msgSend_setHardwareFilter_(v37, v38, v25, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  }
}

void sub_239E695E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void *sub_239E696B4(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_239E69748(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_239E697D8(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_239E697D8(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL sub_239E697D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    return !v6;
  }

  else
  {
    if (v3 == v4)
    {
      return 0;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFFF8;
    v9 = v4 & 0xFFFFFFFFFFFFFFF8;
    v10 = *(v8 + 8);
    v11 = *(v9 + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 != v11)
    {
      return 0;
    }

    else
    {
      v14 = *(v9 + 16);
      v12 = v9 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      v18 = *(v8 + 16);
      v16 = v8 + 16;
      v17 = v18;
      v19 = *(v16 + 23);
      if (v19 >= 0)
      {
        v20 = *(v16 + 23);
      }

      else
      {
        v20 = *(v16 + 8);
      }

      if (v19 >= 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v15 >= 0)
      {
        v22 = *(v12 + 23);
      }

      else
      {
        v22 = *(v12 + 8);
      }

      if (v15 >= 0)
      {
        v23 = v12;
      }

      else
      {
        v23 = v13;
      }

      if (v22 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v21, v23, v24);
      if (v25)
      {
        return v25 < 0;
      }

      else
      {
        return v20 < v22;
      }
    }
  }
}

void sub_239E698A8(void *a1, pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *a2, void *a3, uint64_t a4, double *a5, float *a6, _OWORD *a7, uint64_t a8)
{
  v13 = a1;
  v14 = a3;
  if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
  {
    v25 = 0u;
    v26 = 0uLL;
    LODWORD(v21) = 1;
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *&v25 = MEMORY[0x277D867A8] + 16;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v23);
    v20 = 0;
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
    v16 = sub_239E5815C(&v21, &v25 + 1, &v26);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v16);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v23);
    if (v22)
    {
      sub_239E5E560(v22);
    }

    if (IsA)
    {
      v18[1] = 0;
      v18[2] = 0;
      sub_239E5815C(&v21, &v25 + 1, &v26);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v18[0] = MEMORY[0x277D86708] + 16;
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v23);
      if (v22)
      {
        sub_239E5E560(v22);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v21, v18);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    MEMORY[0x23EE7EB40](&v25);
  }

  sub_239E69DC4(v13, a2, v15, a5, a6, a8);
}

void sub_239E69CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a7 & 7) != 0)
  {
    atomic_fetch_add_explicit((a7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E820](va, a2, a3, a4);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](va1);

  _Unwind_Resume(a1);
}

void sub_239E69DC4(void *a1, uint64_t a2, uint64_t a3, double *a4, float *a5, uint64_t a6)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v8 = a1;
  v53[0] = 0;
  v53[1] = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get())
  {
    if (sub_239E6A188(v53))
    {
      v9 = sub_239EEDF80(v53);
      v10.n128_u64[0] = *v9;
      v10.n128_u32[2] = *(v9 + 8);
      sub_239EF1014(v8, a6, v10);
    }

    else if (sub_239E6A150(v53))
    {
      v11 = sub_239EEDEEC(v53);
      sub_239EF1120(v8, a6, *v11);
    }

    else if (sub_239E6A084(v53))
    {
      v12.n128_u32[0] = *sub_239E6A0BC(v53);
      objc_msgSend_setFloatValue_(v8, v13, v14, v15, v12, v20, v21, v22, v16, v17, v18, v19);
    }

    else if (sub_239E68724(v53))
    {
      memset(v52, 0, 32);
      *__dst = 0u;
      v23 = sub_239E687A8(v53);
      v24 = v23;
      if (*(v23 + 23) < 0)
      {
        sub_239E5BAE0(__dst, *v23, *(v23 + 8));
      }

      else
      {
        v25 = *v23;
        v52[0] = *(v23 + 16);
        *__dst = v25;
      }

      if (*(v24 + 47) < 0)
      {
        sub_239E5BAE0(&v52[1], *(v24 + 24), *(v24 + 32));
      }

      else
      {
        v26 = *(v24 + 24);
        v52[3] = *(v24 + 40);
        *&v52[1] = v26;
      }

      __p[0] = 0;
      __p[1] = 0;
      v50 = 0;
      if (SHIBYTE(v52[3]) < 0)
      {
        sub_239E5BAE0(__p, v52[1], v52[2]);
      }

      else
      {
        *__p = *&v52[1];
        v50 = v52[3];
      }

      v27 = objc_alloc(MEMORY[0x277CCACA8]);
      if (SHIBYTE(v50) >= 0)
      {
        v37 = objc_msgSend_initWithCString_encoding_(v27, v28, __p, 4, v33, v34, v35, v36, v29, v30, v31, v32, __p[0], __p[1], v50);
      }

      else
      {
        v37 = objc_msgSend_initWithCString_encoding_(v27, v28, __p[0], 4, v33, v34, v35, v36, v29, v30, v31, v32, __p[0], __p[1], v50);
      }

      v38 = v37;
      sub_239E6883C(a5, __p, __p);
      objc_msgSend_setStringValue_(v8, v39, v38, v40, v45, v46, v47, v48, v41, v42, v43, v44);

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v52[3]) < 0)
      {
        operator delete(v52[1]);
      }

      if (SHIBYTE(v52[0]) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  sub_239E5B240(v53);
}

void sub_239E6A000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_239EEDEA8(&__p);
  sub_239E5B240(v22 - 72);

  _Unwind_Resume(a1);
}

uint64_t sub_239E6A084(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 10)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827B0]);
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_239E6A0BC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E6A084(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D827B0];

    return MEMORY[0x282207DB0](a1, sub_239EF3338, v4);
  }
}

uint64_t sub_239E6A150(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 67)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C20);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239E6A188(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 68)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C50);
  }

  else
  {
    return 0;
  }
}

void *sub_239E6A1C0(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

void sub_239E6A244(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E6A2A0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_239E797B4();
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
    sub_239E6A244(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v9 = *(a2 + 40);
  *(a2 + 48) = 0;
  *(v7 + 40) = v9;
  *(a2 + 40) = 0;
  *&v18 = 56 * v2 + 56;
  v10 = a1[1];
  v11 = 56 * v2 + *a1 - v10;
  sub_239E6A40C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239E6A4D4(&v16);
  return v15;
}

void sub_239E6A3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E6A4D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E6A40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_239EF4398(a1, a4, v7);
      v7 += 56;
      a4 = v12 + 56;
      v12 += 56;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_239EF2C1C(a1, v5);
      v5 += 56;
    }
  }

  return sub_239E6A508(v9);
}

void **sub_239E6A4D4(void **a1)
{
  sub_239E6A624(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_239E6A508(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EF4400(a1);
  }

  return a1;
}

void *sub_239E6A540(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 16);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = *(v3 - 24);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v3 - 32);
      result = *(v3 - 40);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v3 -= 48;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void sub_239E6A5D0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E6A540(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E6A624(void *result)
{
  v2 = result[1];
  for (i = result[2]; i != v2; i = result[2])
  {
    v4 = result[4];
    result[2] = i - 56;
    sub_239EF2C1C(v4, i - 56);
  }
}

void sub_239E6A66C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_239E6A66C(a1, *a2);
    sub_239E6A66C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_239E6A6D0(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if (*(a1 + 2) == *(a1 + 1))
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v4 = *EmptyString;
    v10 = *(EmptyString + 16);
    *__p = v4;
  }

  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  while (v5 != v6)
  {
    if ((sub_239E62960(v5, a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    if (*(v5 + 2) && (sub_239E62E30(v5) & 1) == 0)
    {
      v7 = __p;
      if (v10 < 0)
      {
        v7 = __p[0];
      }

      NSLog(&cfstr_SHasAttributeW.isa, v7);
      goto LABEL_20;
    }

    v5 = (v5 + 96);
  }

  if (sub_239E6A810(a1))
  {
    v3 = sub_239E6AA2C(a1);
    goto LABEL_21;
  }

LABEL_20:
  v3 = 0;
LABEL_21:
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_239E6A7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E6A810(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (v3[1] == v2 || !*(v2 + 1))
  {
    return 0;
  }

  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v2);
  v5 = NumElements;
  v6 = a1[19];
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(NumElements);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v9 = *EmptyString;
    v28 = *(EmptyString + 16);
    *__p = v9;
  }

  v10 = a1[14];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = *(a1[18] + 4 * i);
      if ((v12 & 0x80000000) != 0 || (v13 = v6 - v12, v6 < v12))
      {
        v23 = __p;
        if (v28 < 0)
        {
          v23 = __p[0];
        }

        NSLog(&cfstr_SFaceZuVertexC.isa, v23, i, *(a1[18] + 4 * i), v6);
        goto LABEL_40;
      }

      v6 -= v12;
    }

    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v6)
  {
LABEL_16:
    v14 = __p;
    if (v28 < 0)
    {
      v14 = __p[0];
    }

    NSLog(&cfstr_SFaceVertexInd.isa, v14);
    goto LABEL_40;
  }

LABEL_20:
  v15 = a1[19];
  if (v15)
  {
    v16 = a1[23];
    v17 = 4 * v15;
    while (1)
    {
      v18 = *v16;
      if ((v18 & 0x80000000) != 0 || v5 <= v18)
      {
        break;
      }

      ++v16;
      v17 -= 4;
      if (!v17)
      {
        goto LABEL_25;
      }
    }

    v24 = __p;
    if (v28 < 0)
    {
      v24 = __p[0];
    }

    NSLog(&cfstr_SFaceVertexInd_0.isa, v24);
  }

  else
  {
LABEL_25:
    v19 = a1[24];
    if (!v19)
    {
LABEL_30:
      v8 = 1;
      goto LABEL_41;
    }

    v20 = a1[28];
    v21 = 4 * v19;
    while (1)
    {
      v22 = *v20;
      if ((v22 & 0x80000000) != 0 || v10 < v22)
      {
        break;
      }

      ++v20;
      v21 -= 4;
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    v25 = __p;
    if (v28 < 0)
    {
      v25 = __p[0];
    }

    NSLog(&cfstr_SHoleIndexOutO.isa, v25);
  }

LABEL_40:
  v8 = 0;
LABEL_41:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_239E6AA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E6AA2C(pxrInternal__aapl__pxrReserved__::VtValue **a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v3 = *EmptyString;
    v35 = *(EmptyString + 16);
    *__p = v3;
  }

  if (a1[30] != a1[35])
  {
    v19 = __p;
    if (v35 < 0)
    {
      v19 = __p[0];
    }

    NSLog(&cfstr_SMismatchCorne.isa, v19);
    goto LABEL_34;
  }

  if (a1[45] != a1[50])
  {
    v20 = __p;
    if (v35 < 0)
    {
      v20 = __p[0];
    }

    NSLog(&cfstr_SMismatchCreas.isa, v20);
    goto LABEL_34;
  }

  v4 = a1[1];
  if (a1[2] == v4 || !*(v4 + 1))
  {
    v21 = __p;
    if (v35 < 0)
    {
      v21 = __p[0];
    }

    NSLog(&cfstr_SInvalidPoints.isa, v21);
    goto LABEL_34;
  }

  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v4);
  v6 = a1[30];
  if (v6)
  {
    v7 = a1[34];
    v8 = 4 * v6;
    while (1)
    {
      v9 = *v7;
      if ((v9 & 0x80000000) != 0 || NumElements <= v9)
      {
        break;
      }

      v7 = (v7 + 4);
      v8 -= 4;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v24 = __p;
    if (v35 < 0)
    {
      v24 = __p[0];
    }

    NSLog(&cfstr_SCornerIndexOu.isa, v24);
    goto LABEL_34;
  }

LABEL_16:
  v10 = a1[40];
  if (v10)
  {
    v11 = a1[44];
    v12 = 4 * v10;
    while (1)
    {
      v13 = *v11;
      if ((v13 & 0x80000000) != 0 || NumElements <= v13)
      {
        break;
      }

      v11 = (v11 + 4);
      v12 -= 4;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v25 = __p;
    if (v35 < 0)
    {
      v25 = __p[0];
    }

    NSLog(&cfstr_SCreaseIndexOu.isa, v25);
    goto LABEL_34;
  }

LABEL_21:
  v14 = a1[45];
  if (v14)
  {
    LODWORD(v15) = 0;
    v16 = a1[49];
    v17 = 4 * v14;
    do
    {
      v18 = *v16;
      v16 = (v16 + 4);
      v15 = (v18 + v15);
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v15 = 0;
  }

  if (v10 != v15)
  {
    v31 = __p;
    if (v35 < 0)
    {
      v31 = __p[0];
    }

    NSLog(&cfstr_SMismatchCreas_0.isa, v31);
LABEL_34:
    v22 = 0;
    goto LABEL_35;
  }

  v26 = a1[55];
  v27 = a1[56];
  if (v26 != v27)
  {
    v22 = 1;
    while (1)
    {
      v28 = *(v26 + 1);
      if (v28)
      {
        break;
      }

LABEL_52:
      v26 = (v26 + 56);
      if (v26 == v27)
      {
        goto LABEL_35;
      }
    }

    v29 = *(v26 + 5);
    v30 = 4 * v28;
    while (a1[14] > *v29)
    {
      ++v29;
      v30 -= 4;
      if (!v30)
      {
        goto LABEL_52;
      }
    }

    v32 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v32)
    {
      v33 = (v32 + 16);
      if (*(v32 + 39) < 0)
      {
        v33 = *v33;
      }
    }

    else
    {
      v33 = "";
    }

    NSLog(&cfstr_WarningMeshHas.isa, v33);
    goto LABEL_34;
  }

  v22 = 1;
LABEL_35:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  return v22;
}

void sub_239E6ACE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E6AD14(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E6AE34(a1))
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

    return MEMORY[0x282207DB0](a1, sub_239EB55BC, &stru_284D17B40);
  }
}

const std::type_info *sub_239E6ADA8(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((sub_239E6AE34(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v4, &stru_284D17B40, v1, v2);
    v1 = sub_239EC8B1C(v1, v4);
    sub_239E5B240(v4);
  }

  return v1;
}

uint64_t sub_239E6AE34(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 21)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17B40);
  }

  else
  {
    return 0;
  }
}

BOOL sub_239E6AE6C(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v15 = *(a1 + 40);
  if (v1 == v15)
  {
    return 0;
  }

  do
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v2 = *v1;
    v17 = v2;
    if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    sub_239EC7E90(&v18, v1[1], v1[2], 0xAAAAAAAAAAAAAAABLL * ((v1[2] - v1[1]) >> 5));
    v3 = v18;
    v4 = v19;
    if (v18 == v19)
    {
      v12 = 1;
    }

    else
    {
      do
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        sub_239E5F7D4(&v21, v3);
        v5 = *(v3 + 32);
        v22 = *(v3 + 16);
        v23 = v5;
        v6 = *(v3 + 48);
        *&v24 = v6;
        if (v6)
        {
          v7 = (v6 - 16);
          if (*(&v23 + 1))
          {
            v7 = *(&v23 + 1);
          }

          atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
        }

        v8 = *(v3 + 56);
        *(&v24 + 1) = v8;
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(&v24 + 1) &= 0xFFFFFFFFFFFFFFF8;
        }

        v9 = *(v3 + 64);
        *&v25 = v9;
        if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v25 = v25 & 0xFFFFFFFFFFFFFFF8;
        }

        v10 = *(v3 + 80);
        *(&v25 + 1) = *(v3 + 72);
        *&v26 = v10;
        if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v26 = v26 & 0xFFFFFFFFFFFFFFF8;
        }

        DWORD2(v26) = *(v3 + 88);
        MEMORY[0x23EE7ED20](&v16, "normals");
        v11 = v16 ^ *(&v24 + 1);
        v12 = (v16 ^ *(&v24 + 1)) > 7;
        if ((v16 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v26 & 7) != 0)
        {
          atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((BYTE8(v24) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_239E56C80(&v22);
        sub_239E5B240(&v21);
        if (v11 < 8)
        {
          break;
        }

        v3 += 96;
      }

      while (v3 != v4);
    }

    *&v21 = &v18;
    sub_239EC8004(&v21);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v1 += 4;
    v13 = v1 == v15 || v12;
  }

  while (v13 != 1);
  return v12;
}

void sub_239E6B110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239E6B16C(void *a1, _BYTE *a2, char a3)
{
  v3 = a1[14];
  if (v3)
  {
    v6 = a1[18];
    if (*v6 == 3)
    {
      v7 = 1;
      do
      {
        v8 = v7;
        if (v3 == v7)
        {
          break;
        }

        v9 = v6[v7++];
      }

      while (v9 == 3);
      if (v3 <= v8)
      {
LABEL_20:
        LOBYTE(v3) = 0;
        return v3 & 1;
      }
    }

    LOBYTE(v3) = *a2 ^ 1;
    if ((v3 & 1) == 0 && (a3 & 1) == 0)
    {
      if ((a2[32] != 1 || !sub_239E5B290(a1)) && ((a2[27] & 1) != 0 || a2[26] == 1))
      {
        v10 = *a1 & 0xFFFFFFFFFFFFFFF8;
        if (v10)
        {
          v11 = (v10 + 16);
          if (*(v10 + 39) < 0)
          {
            v11 = *v11;
          }
        }

        else
        {
          v11 = "";
        }

        NSLog(&cfstr_WarningMeshSWi.isa, v11);
LABEL_25:
        LOBYTE(v3) = 1;
        return v3 & 1;
      }

      if (a2[33] == 1)
      {
        v12 = *a1 & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          v13 = (v12 + 16);
          if (*(v12 + 39) < 0)
          {
            v13 = *v13;
          }
        }

        else
        {
          v13 = "";
        }

        NSLog(&cfstr_WarningMeshSWi_0.isa, v13);
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  return v3 & 1;
}

void sub_239E6B2A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t *a7, void *a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12)
{
  if (a2 < 3)
  {
    return;
  }

  if (a2 == 4)
  {
    v20 = a4;
    v21 = (*(a3 + 32) + 4 * a4);
    v22 = *(a1 + 32);
    v23 = v22 + 12 * *v21;
    a9.i64[0] = *v23;
    a9.i32[2] = *(v23 + 8);
    v24 = a4 + 1;
    v25 = v22 + 12 * v21[1];
    a12.i64[0] = *v25;
    a12.i32[2] = *(v25 + 8);
    v26 = a4 + 2;
    v27 = v22 + 12 * v21[2];
    a10.i64[0] = *v27;
    a10.i32[2] = *(v27 + 8);
    v28 = a4 + 3;
    v29 = v22 + 12 * v21[3];
    a11.i64[0] = *v29;
    a11.i32[2] = *(v29 + 8);
    v30 = vsubq_f32(a12, a9);
    v31 = vsubq_f32(a11, a10);
    v32 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
    v33 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
    v34 = vsubq_f32(a11, a12);
    v35 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v30)), v32, v34);
    v36 = vsubq_f32(a10, a12);
    v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v38 = vmlaq_f32(vnegq_f32(vmulq_f32(v33, v36)), v31, v37);
    v39 = vmulq_f32(v35, v38);
    if (((v39.f32[2] + v39.f32[0]) + v39.f32[1]) < 0.0)
    {
      v40 = a6;
      v41 = (*a6)++;
      v42 = a5;
      sub_239E56C3C(a5);
      *(a5[4] + 4 * v41) = a4;
      v43 = (*a6)++;
      sub_239E56C3C(a5);
      *(a5[4] + 4 * v43) = v24;
      v44 = (*a6)++;
      sub_239E56C3C(a5);
      v45 = a5[4];
LABEL_7:
      *(v45 + 4 * v44) = v26;
      v46 = (*a8)++;
      sub_239E56C3C(a7);
      *(a7[4] + 4 * v46) = 3;
      v47 = (*v40)++;
      sub_239E56C3C(v42);
      *(v42[4] + 4 * v47) = v20;
LABEL_25:
      v74 = (*v40)++;
      sub_239E56C3C(v42);
      *(v42[4] + 4 * v74) = v26;
      v75 = (*v40)++;
      sub_239E56C3C(v42);
      *(v42[4] + 4 * v75) = v28;
      v76 = (*a8)++;
      sub_239E56C3C(a7);
      *(a7[4] + 4 * v76) = 3;
      return;
    }

    v58 = vsubq_f32(a10, a9);
    v59 = vmlaq_f32(vnegq_f32(vmulq_f32(v33, v58)), v31, vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL));
    v60 = vmlaq_f32(vnegq_f32(vmulq_f32(v37, v30)), v36, v32);
    v61 = vmulq_f32(v59, v60);
    if (((v61.f32[2] + v61.f32[0]) + v61.f32[1]) >= 0.0)
    {
      v64 = vmulq_f32(v35, v35);
      v65 = vmulq_f32(v38, v38);
      v66 = vabds_f32(fabsf((v64.f32[2] + v64.f32[0]) + v64.f32[1]), fabsf((v65.f32[2] + v65.f32[0]) + v65.f32[1]));
      v67 = vmulq_f32(v60, v60);
      v68 = vmulq_f32(v59, v59);
      v69 = vabds_f32(fabsf((v67.f32[2] + v67.f32[0]) + v67.f32[1]), fabsf((v68.f32[2] + v68.f32[0]) + v68.f32[1]));
      v40 = a6;
      v70 = (*a6)++;
      v42 = a5;
      sub_239E56C3C(a5);
      v20 = a4;
      *(a5[4] + 4 * v70) = a4;
      v71 = (*a6)++;
      sub_239E56C3C(a5);
      *(a5[4] + 4 * v71) = v24;
      v44 = (*a6)++;
      sub_239E56C3C(a5);
      v45 = a5[4];
      if (v66 >= v69)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v40 = a6;
      v62 = (*a6)++;
      v42 = a5;
      sub_239E56C3C(a5);
      *(a5[4] + 4 * v62) = a4;
      v63 = (*a6)++;
      sub_239E56C3C(a5);
      *(a5[4] + 4 * v63) = v24;
      v44 = (*a6)++;
      sub_239E56C3C(a5);
      v45 = a5[4];
    }

    *(v45 + 4 * v44) = v28;
    v72 = (*a8)++;
    sub_239E56C3C(a7);
    *(a7[4] + 4 * v72) = 3;
    v73 = (*v40)++;
    sub_239E56C3C(v42);
    *(v42[4] + 4 * v73) = v24;
    goto LABEL_25;
  }

  if (a2 != 3)
  {
    __p = 0;
    v82 = 0;
    v83 = 0;
    sub_239E96128(&__p, a2);
    v80[0] = v80;
    v80[1] = v80;
    v80[2] = 0;
    v48 = *(a1 + 32) + 12 * *(*(a3 + 32) + 4 * a4);
    *&v49 = *v48;
    DWORD2(v49) = *(v48 + 8);
    v50 = v82;
    if (v82 >= v83)
    {
      v52 = (v82 - __p) >> 4;
      if ((v52 + 1) >> 60)
      {
        sub_239E797B4();
      }

      v53 = (v83 - __p) >> 3;
      if (v53 <= v52 + 1)
      {
        v53 = v52 + 1;
      }

      if (v83 - __p >= 0x7FFFFFFFFFFFFFF0)
      {
        v54 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v53;
      }

      if (v54)
      {
        sub_239E91AC8(&__p, v54);
      }

      v55 = (16 * v52);
      *v55 = v49;
      v51 = 16 * v52 + 16;
      v56 = v55 - (v82 - __p);
      memcpy(v56, __p, v82 - __p);
      v57 = __p;
      __p = v56;
      v82 = v51;
      v83 = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v82 = v49;
      v51 = (v50 + 16);
    }

    v82 = v51;
    operator new();
  }

  v16 = (*a6)++;
  sub_239E56C3C(a5);
  *(a5[4] + 4 * v16) = a4;
  v17 = (*a6)++;
  sub_239E56C3C(a5);
  *(a5[4] + 4 * v17) = a4 + 1;
  v18 = (*a6)++;
  sub_239E56C3C(a5);
  *(a5[4] + 4 * v18) = a4 + 2;
  v19 = (*a8)++;
  sub_239E56C3C(a7);
  *(a7[4] + 4 * v19) = 3;
}

void sub_239E6C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  sub_239E79AAC(v36 - 168, *(v36 - 160));
  sub_239E9876C(&a26);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239E6C8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, __int128 *a6, __int128 *a7)
{
  v10 = a4;
  v11 = a3;
  v12 = a2;
  MEMORY[0x23EE7ED20](&v110, "constant");
  v14 = v110 ^ *(a1 + 80);
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14 > 7)
  {
    v15 = MEMORY[0x277D86578];
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_11;
    }

    if (!atomic_load(v15))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_11:
      v18 = a6[1];
      v107 = *a6;
      v108 = v18;
      v19 = *(a6 + 4);
      v109 = v19;
      if (v19)
      {
        v20 = (v19 - 16);
        if (*(&v108 + 1))
        {
          v20 = *(&v108 + 1);
        }

        atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
      }

      v21 = a7[1];
      v104 = *a7;
      v105 = v21;
      v22 = *(a7 + 4);
      v106 = v22;
      if (v22)
      {
        v23 = (v22 - 16);
        if (*(&v105 + 1))
        {
          v23 = *(&v105 + 1);
        }

        atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
      }

      sub_239E6D724(&v107, &v104, v11, v10, v12, a5, a1, *(a1 + 88));
      sub_239E56C80(&v104);
      sub_239E56C80(&v107);
    }

    else
    {
      if (!atomic_load(v15))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_29;
      }

      if (!atomic_load(v15))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_29;
      }

      if (!atomic_load(v15))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
LABEL_29:
        v27 = a6[1];
        v101 = *a6;
        v102 = v27;
        v28 = *(a6 + 4);
        v103 = v28;
        if (v28)
        {
          v29 = (v28 - 16);
          if (*(&v102 + 1))
          {
            v29 = *(&v102 + 1);
          }

          atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
        }

        v30 = a7[1];
        v98 = *a7;
        v99 = v30;
        v31 = *(a7 + 4);
        v100 = v31;
        if (v31)
        {
          v32 = (v31 - 16);
          if (*(&v99 + 1))
          {
            v32 = *(&v99 + 1);
          }

          atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
        }

        sub_239E56710(&v101, &v98, v11, v10, v12, a5, a1, *(a1 + 88));
        sub_239E56C80(&v98);
        sub_239E56C80(&v101);
      }

      else
      {
        if (!atomic_load(v15))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v34 = a6[1];
          v95 = *a6;
          v96 = v34;
          v35 = *(a6 + 4);
          v97 = v35;
          if (v35)
          {
            v36 = (v35 - 16);
            if (*(&v96 + 1))
            {
              v36 = *(&v96 + 1);
            }

            atomic_fetch_add_explicit(v36, 1uLL, memory_order_relaxed);
          }

          v37 = a7[1];
          v92 = *a7;
          v93 = v37;
          v38 = *(a7 + 4);
          v94 = v38;
          if (v38)
          {
            v39 = (v38 - 16);
            if (*(&v93 + 1))
            {
              v39 = *(&v93 + 1);
            }

            atomic_fetch_add_explicit(v39, 1uLL, memory_order_relaxed);
          }

          sub_239F568A0(&v95, &v92, v11, v10, v12, a5, a1, *(a1 + 88));
          sub_239E56C80(&v92);
          sub_239E56C80(&v95);
        }

        else
        {
          if (!atomic_load(v15))
          {
            sub_239EB5678(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            v41 = a6[1];
            v89 = *a6;
            v90 = v41;
            v42 = *(a6 + 4);
            v91 = v42;
            if (v42)
            {
              v43 = (v42 - 16);
              if (*(&v90 + 1))
              {
                v43 = *(&v90 + 1);
              }

              atomic_fetch_add_explicit(v43, 1uLL, memory_order_relaxed);
            }

            v44 = a7[1];
            v86 = *a7;
            v87 = v44;
            v45 = *(a7 + 4);
            v88 = v45;
            if (v45)
            {
              v46 = (v45 - 16);
              if (*(&v87 + 1))
              {
                v46 = *(&v87 + 1);
              }

              atomic_fetch_add_explicit(v46, 1uLL, memory_order_relaxed);
            }

            sub_239F56B98(&v89, &v86, v11, v10, v12, a5, a1, *(a1 + 88));
            sub_239E56C80(&v86);
            sub_239E56C80(&v89);
          }

          else
          {
            if (!atomic_load(v15))
            {
              sub_239EB5678(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              v48 = a6[1];
              v83 = *a6;
              v84 = v48;
              v49 = *(a6 + 4);
              v85 = v49;
              if (v49)
              {
                v50 = (v49 - 16);
                if (*(&v84 + 1))
                {
                  v50 = *(&v84 + 1);
                }

                atomic_fetch_add_explicit(v50, 1uLL, memory_order_relaxed);
              }

              v51 = a7[1];
              v80 = *a7;
              v81 = v51;
              v52 = *(a7 + 4);
              v82 = v52;
              if (v52)
              {
                v53 = (v52 - 16);
                if (*(&v81 + 1))
                {
                  v53 = *(&v81 + 1);
                }

                atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
              }

              sub_239F56EEC(&v83, &v80, v11, v10, v12, a5, a1, *(a1 + 88));
              sub_239E56C80(&v80);
              sub_239E56C80(&v83);
            }

            else
            {
              if (!atomic_load(v15))
              {
                sub_239EB5678(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
                v55 = a6[1];
                v77 = *a6;
                v78 = v55;
                v56 = *(a6 + 4);
                v79 = v56;
                if (v56)
                {
                  v57 = (v56 - 16);
                  if (*(&v78 + 1))
                  {
                    v57 = *(&v78 + 1);
                  }

                  atomic_fetch_add_explicit(v57, 1uLL, memory_order_relaxed);
                }

                v58 = a7[1];
                v74 = *a7;
                v75 = v58;
                v59 = *(a7 + 4);
                v76 = v59;
                if (v59)
                {
                  v60 = (v59 - 16);
                  if (*(&v75 + 1))
                  {
                    v60 = *(&v75 + 1);
                  }

                  atomic_fetch_add_explicit(v60, 1uLL, memory_order_relaxed);
                }

                sub_239F571DC(&v77, &v74, v11, v10, v12, a5, a1, *(a1 + 88));
                sub_239E56C80(&v74);
                sub_239E56C80(&v77);
              }

              else
              {
                if (!atomic_load(v15))
                {
                  sub_239EB5678(MEMORY[0x277D86578]);
                }

                if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                {
                  v62 = a6[1];
                  v71 = *a6;
                  v72 = v62;
                  v63 = *(a6 + 4);
                  v73 = v63;
                  if (v63)
                  {
                    v64 = (v63 - 16);
                    if (*(&v72 + 1))
                    {
                      v64 = *(&v72 + 1);
                    }

                    atomic_fetch_add_explicit(v64, 1uLL, memory_order_relaxed);
                  }

                  v65 = a7[1];
                  v68 = *a7;
                  v69 = v65;
                  v66 = *(a7 + 4);
                  v70 = v66;
                  if (v66)
                  {
                    v67 = (v66 - 16);
                    if (*(&v69 + 1))
                    {
                      v67 = *(&v69 + 1);
                    }

                    atomic_fetch_add_explicit(v67, 1uLL, memory_order_relaxed);
                  }

                  sub_239F574D4(&v71, &v68, v11, v10, v12, a5, a1, *(a1 + 88));
                  sub_239E56C80(&v68);
                  sub_239E56C80(&v71);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_239F563D4(a1, v10);
  }
}

void sub_239E6CF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_239E56C80(&a9);
  sub_239E56C80(&a15);
  _Unwind_Resume(a1);
}

void *sub_239E6D048(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]");
  if (a2 > 0xAAAAAAAAAAAAAA9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 12 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_239E6D0E8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  sub_239E5B364(a1);
  v7 = &v5;
  sub_239E6D160(a1, a2, &v7);
  return a1;
}

void sub_239E6D160(unint64_t *a1, unint64_t a2, uint64_t **a3)
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
        v8 = atomic_load((v7 - 16));
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239E6D048(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = v10 + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 8);
                  *v12 = v13;
                  v11 += 12;
                }

                while (12 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 12 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 8) = *(v14 + 2);
              *v16 = v17;
              v15 += 12;
            }

            while (12 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = sub_239E6D048(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 12 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 8);
          *v27 = v28;
          v27 = (v27 + 12);
          v7 += 12;
          v26 -= 12;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 12 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 12;
        }

        while (12 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x1555555555555556)
    {
      v19 = sub_239E6D048(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 12;
      }

      while (12 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

uint64_t sub_239E6D38C(void *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_239F73968(v2, a1);
  }

  return sub_239E6D480(a1);
}

__n128 sub_239E6D3C8(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_239E6AE34(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239EB5788(a1, v10);
  }

  v4 = sub_239E6D38C(a1);
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

uint64_t sub_239E6D480(void *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239E6D4E8(unint64_t *a1, unint64_t a2, uint64_t **a3)
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
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239E6DA1C(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = *a3;
            v13 = v3;
            do
            {
              v7[v13++] = *v12;
            }

            while (a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_239E6DA1C(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 8 * v19;
        v22 = v20;
        do
        {
          v23 = *v7++;
          *v22++ = v23;
          v21 -= 8;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = v3;
        do
        {
          v20[v25++] = *v24;
        }

        while (a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      v16 = sub_239E6DA1C(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        v16[v17 / 8] = *v18;
        v17 += 8;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

uint64_t sub_239E6D6B0(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239E6D4E8(a1, a2, &v6);
  return a1;
}

void sub_239E6D724(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, unsigned int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_239E6D6B0(v42, a4 * a8);
  v37 = a7;
  v14 = sub_239E6DAB4(a7);
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
    sub_239E6DC28(a7, v42);
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

        sub_239E6DBE4(&v39);
        v33 = v41;
        sub_239E6DBE4(v42);
        *(v43 + 8 * v31++) = *(v33 + 8 * v30++);
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239E6DC28(v37, v42);
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

    sub_239E6DBE4(&v39);
    v26 = v41;
    sub_239E6DBE4(v42);
    *(v43 + 8 * v24++) = *(v26 + 8 * v22++);
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v39);
  sub_239E56C80(v42);
}

void sub_239E6D9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void *sub_239E6DA1C(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_239E6DAB4(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_284D17B70))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return MEMORY[0x282207DB0](this, sub_239EB5E60, &stru_284D17B70);
}

void sub_239E6DB70(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2f]");
  v6 = sub_239E56B30();
  v8 = sub_239E6DA1C(v6, v7);
  v9 = v8;
  if (v2)
  {
    v10 = 8 * v2;
    v11 = v8;
    do
    {
      v12 = *v3++;
      *v11++ = v12;
      v10 -= 8;
    }

    while (v10);
  }

  sub_239E56C80(a1);
  *a2 = v9;
}

void sub_239E6DBE4(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    if (*(a1 + 3) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239E6DB70(a1, a1 + 4);
    }
  }
}

__n128 sub_239E6DC28(uint64_t *a1, __n128 *a2)
{
  if ((sub_239E6DD1C(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239F577CC(a1, v10);
  }

  v4 = sub_239E6DCE0(a1);
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

uint64_t sub_239E6DCE0(void *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_239F7554C();
  }

  return sub_239E6DD54(a1);
}

uint64_t sub_239E6DD1C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
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
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17B70);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239E6DD54(void *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239E6DDBC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E6DE10(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E6DE10(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_239E56C80(i))
  {
    i -= 40;
  }

  *(a1 + 8) = a2;
}

MDLMesh *sub_239E6DE60(uint64_t a1, void *a2, void *a3, char a4, int a5)
{
  v325 = a2;
  v326 = a3;
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(*(a1 + 8));
  v334 = a1;
  v9 = *(a1 + 8);
  v327 = NumElements / v9[5].n128_i32[2];
  v324 = a5;
  if (a5)
  {
    for (i = *(a1 + 16); v9 != i; v9 += 6)
    {
      MEMORY[0x23EE7ED20](&v336, "uniform");
      v11 = v9[5].n128_u64[0];
      v12 = v336;
      if ((v336 & 7) != 0)
      {
        atomic_fetch_add_explicit((v336 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v12 ^ v11) > 7)
      {
        MEMORY[0x23EE7ED20](&v336, "constant");
        v13 = v9[5].n128_u64[0];
        v14 = v336;
        if ((v336 & 7) != 0)
        {
          atomic_fetch_add_explicit((v336 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v14 ^ v13) > 7)
        {
          MEMORY[0x23EE7ED20](&v336, "vertex");
          v15 = v9[5].n128_u64[0];
          v16 = v336;
          if ((v336 & 7) != 0)
          {
            atomic_fetch_add_explicit((v336 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v16 ^ v15) > 7)
          {
            MEMORY[0x23EE7ED20](&v336, "faceVarying");
            v17 = v9[5].n128_u64[0];
            v18 = v336;
            if ((v336 & 7) != 0)
            {
              atomic_fetch_add_explicit((v336 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v18 ^ v17) <= 7 && !v9[1].n128_u64[0])
            {
              v19 = *(a1 + 152);
              LODWORD(v338[0]) = 0;
              *&v336 = v338;
              sub_239E5AE38(v9[1].n128_u64, v19, &v336);
              if (*(a1 + 152))
              {
                v20 = 0;
                do
                {
                  sub_239E56C3C(&v9[1]);
                  *(v9[3].n128_u64[0] + 4 * v20) = v20;
                  ++v20;
                }

                while (*(a1 + 152) > v20);
              }
            }
          }

          else if (v9[1].n128_u64[0])
          {
            sub_239EC6600(a1, v9);
          }
        }

        else
        {
          sub_239EC677C(v9, v327);
        }
      }

      else
      {
        sub_239EC63C0(a1, v9);
      }
    }
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v336 = 0u;
  v337 = 0u;
  sub_239E6E634(v334, v21, &v336);
  if (v325 && (a5 & 1) == 0)
  {
    sub_239EC4120(v22, &v336, v325, v327, v23, v24, v21);
  }

  v328 = *(&v337 + 1);
  v323 = v21;
  v331 = sub_239E703D0(v328, v326, 0, v21);
  v25 = v334[1];
  if (v334[2] != v25)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = v336;
      v30 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements((v25 + v27));
      v31 = *(v25 + v27 + 88);
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued((v25 + v27)))
      {
        ElementTypeid = pxrInternal__aapl__pxrReserved__::VtValue::GetElementTypeid((v25 + v27));
        v34 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(ElementTypeid, v33);
        Sizeof = pxrInternal__aapl__pxrReserved__::TfType::GetSizeof(v34);
        v333 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements((v25 + v27)) * Sizeof;
      }

      else
      {
        v338[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType((v25 + v27));
        v333 = pxrInternal__aapl__pxrReserved__::TfType::GetSizeof(v338);
      }

      v47 = v29 + v26;
      v48 = *(v29 + v26 + 8);
      if (v48)
      {
        v332 = v28;
        v49 = v30 / v31;
        if (*(v29 + v26))
        {
          v50 = objc_msgSend_layouts(v328, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
          v62 = objc_msgSend_bufferIndex(*(v47 + 8), v51, v52, v53, v58, v59, v60, v61, v54, v55, v56, v57);
          v73 = objc_msgSend_objectAtIndexedSubscript_(v50, v63, v62, v64, v69, v70, v71, v72, v65, v66, v67, v68);
          v330 = objc_msgSend_stride(v73, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);

          v96 = objc_msgSend_bufferIndex(*(v47 + 8), v85, v86, v87, v92, v93, v94, v95, v88, v89, v90, v91);
          v107 = objc_msgSend_objectAtIndexedSubscript_(v331, v97, v96, v98, v103, v104, v105, v106, v99, v100, v101, v102);
          v329 = objc_msgSend_length(v107, v108, v109, v110, v115, v116, v117, v118, v111, v112, v113, v114);

          v130 = objc_msgSend_bufferIndex(*(v47 + 8), v119, v120, v121, v126, v127, v128, v129, v122, v123, v124, v125);
          v141 = objc_msgSend_objectAtIndexedSubscript_(v331, v131, v130, v132, v137, v138, v139, v140, v133, v134, v135, v136);
          v142 = v49;
          v154 = objc_msgSend_map(v141, v143, v144, v145, v150, v151, v152, v153, v146, v147, v148, v149);

          v173 = objc_msgSend_bytes(v154, v155, v156, v157, v162, v163, v164, v165, v158, v159, v160, v161);
          v178 = *(v25 + v27 + 8);
          if ((v178 & 4) != 0)
          {
            v179 = (*((v178 & 0xFFFFFFFFFFFFFFF8) + 168))(v25 + v27);
          }

          else
          {
            v179 = *(v25 + v27);
          }

          v180 = *(v179 + 32);
          v181 = *(v47 + 8);
          v182 = objc_msgSend_format(*(v29 + v26), v166, v167, v168, v174, v175, v176, v177, v169, v170, v171, v172);
          v183 = sub_239E6FF8C(v182);
          sub_239E70888(v173, v330, v181, v180, v183, *(v29 + v26), v142, v329, v333);
        }

        else
        {
          v184 = objc_msgSend_bufferIndex(v48, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
          v154 = objc_msgSend_objectAtIndexedSubscript_(v331, v185, v184, v186, v191, v192, v193, v194, v187, v188, v189, v190);
          v206 = objc_msgSend_layouts(v328, v195, v196, v197, v202, v203, v204, v205, v198, v199, v200, v201);
          v218 = objc_msgSend_bufferIndex(*(v47 + 8), v207, v208, v209, v214, v215, v216, v217, v210, v211, v212, v213);
          v229 = objc_msgSend_objectAtIndexedSubscript_(v206, v219, v218, v220, v225, v226, v227, v228, v221, v222, v223, v224);
          v241 = objc_msgSend_stride(v229, v230, v231, v232, v237, v238, v239, v240, v233, v234, v235, v236);
          sub_239F5E970(v154, v241, *(v47 + 8), v49);
        }

        v28 = v332;
      }

      ++v28;
      v25 = v334[1];
      v27 += 96;
      v26 += 24;
    }

    while (v28 < 0xAAAAAAAAAAAAAAABLL * ((v334[2] - v25) >> 5));
  }

  if (a4)
  {
    sub_239EC5E74(v334, v326, v324);
  }

  else
  {
    sub_239EC4F14(v334, v326);
  }
  v242 = ;
  v243 = [MDLMesh alloc];
  v251 = objc_msgSend_initWithVertexBuffers_vertexCount_descriptor_submeshes_(v243, v244, v331, v327, v247, v248, v249, v250, v328, v242, v245, v246);
  v262 = v251;
  v263 = MEMORY[0x277CCACA8];
  if ((*v334 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*v334 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v251);
  }

  if (*(EmptyString + 23) < 0)
  {
    EmptyString = *EmptyString;
  }

  v265 = objc_msgSend_stringWithUTF8String_(v263, v252, EmptyString, v253, v258, v259, v260, v261, v254, v255, v256, v257);
  objc_msgSend_setName_(v262, v266, v265, v267, v272, v273, v274, v275, v268, v269, v270, v271);
  objc_msgSend_setName_(v262, v276, v265, v277, v282, v283, v284, v285, v278, v279, v280, v281);

  v286 = v334[29];
  v335 = v286;
  if ((v286 & 7) != 0)
  {
    v287 = (v286 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v287, 2u, memory_order_relaxed) & 1) == 0)
    {
      v335 = v287;
    }
  }

  v288 = sub_239EC732C(&v335);
  objc_msgSend_setSubdivisionScheme_(v262, v289, v288, v290, v295, v296, v297, v298, v291, v292, v293, v294);
  if ((v335 & 7) != 0)
  {
    atomic_fetch_add_explicit((v335 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v308 = v334[12];
  if (v308)
  {
    objc_msgSend_setComponent_forProtocol_(v262, v299, v308, &unk_284D24918, v304, v305, v306, v307, v300, v301, v302, v303);
  }

  v309 = (v334 + 4);
  if (v334[5] != v334[4])
  {
    v310 = sub_239EC49E0(v262, v309, v326);
    objc_msgSend_setComponent_forProtocol_(v262, v311, v310, &unk_284D25CD0, v316, v317, v318, v319, v312, v313, v314, v315);
  }

  v320 = v334[13];
  if (v320)
  {
    objc_msgSend_setComponent_forProtocol_(v262, v309, v320, &unk_284D24710, v304, v305, v306, v307, v300, v301, v302, v303);
  }

  v338[0] = &v336;
  sub_239EC7DE8(v338);

  return v262;
}

void sub_239E6E500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_239EC40E0(va);

  _Unwind_Resume(a1);
}

void sub_239E6E634(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v165 = a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = objc_opt_new();
  v6 = *(a3 + 24);
  *(a3 + 24) = v5;

  v166 = sub_239E6EC14(a1 + 1);
  v18 = a1[1];
  v17 = a1[2];
  v164 = a1;
  if (v18 != v17)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(v166, v7, v19, v8, v13, v14, v15, v16, v9, v10, v11, v12);
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v171, (v18 + 72));
      EmptyString = sub_239E6F4F8(&v171, *(v18 + 88));
      v23 = EmptyString;
      if ((v171 & 7) != 0)
      {
        atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (*(v18 + 88) >= 256)
      {
        if ((*(v18 + 56) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v24 = (*(v18 + 56) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          v24 = EmptyString;
        }

        if (*(v24 + 23) < 0)
        {
          v24 = *v24;
        }

        if ((*v164 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v25 = (*v164 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        }

        if (*(v25 + 23) < 0)
        {
          v25 = *v25;
        }

        NSLog(&cfstr_WarningAttribu.isa, v24, v25, *(v18 + 88), 255);
        v23 = 0;
      }

      v26 = *(v18 + 80);
      v170 = v26;
      if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v170 &= 0xFFFFFFFFFFFFFFF8;
      }

      v27 = sub_239E6FD88(&v170);
      if ((v170 & 7) != 0)
      {
        atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v21)
      {
        v28 = v23 == 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = !v28;
      location = 0;
      v168 = 0;
      v169 = 0;
      if (v29 & v27)
      {
        v30 = [MDLVertexAttribute alloc];
        v38 = objc_msgSend_initWithName_format_offset_bufferIndex_(v30, v31, v21, v23, v34, v35, v36, v37, 0, v20, v32, v33);
        v169 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v18) / *(v18 + 88);
        v49 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v39, v169, v40, v45, v46, v47, v48, v41, v42, v43, v44);
        objc_msgSend_addObject_(v165, v50, v49, v51, v56, v57, v58, v59, v52, v53, v54, v55);

        if ((objc_msgSend_isEqualToString_(v21, v60, @"jointIndices", v61, v66, v67, v68, v69, v62, v63, v64, v65) & 1) != 0 || objc_msgSend_isEqualToString_(v21, v70, @"jointWeights", v72, v77, v78, v79, v80, v73, v74, v75, v76))
        {
          objc_msgSend_setInitializationValue_(v38, v70, v71, v72, 0, v78, v79, v80, v73, v74, v75, v76);
        }

        objc_msgSend_addOrReplaceAttribute_(*(a3 + 24), v70, v38, v72, v81, v78, v79, v80, v73, v74, v75, v76);
        v93 = objc_msgSend_format(v38, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
        v94 = sub_239E6FF8C(v93);
        v106 = objc_msgSend_layouts(*(a3 + 24), v95, v96, v97, v102, v103, v104, v105, v98, v99, v100, v101);
        v117 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, v20, v108, v113, v114, v115, v116, v109, v110, v111, v112);
        objc_msgSend_setStride_(v117, v118, v94, v119, v124, v125, v126, v127, v120, v121, v122, v123);

        ++v20;
      }

      else
      {
        if ((*(v18 + 56) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v128 = (*(v18 + 56) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v128 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
        }

        if (*(v128 + 23) < 0)
        {
          v128 = *v128;
        }

        v38 = 0;
        NSLog(&cfstr_WarningUnableT.isa, v128);
      }

      objc_storeStrong(&location, v38);
      v140 = objc_msgSend_copy(v38, v129, v130, v131, v136, v137, v138, v139, v132, v133, v134, v135);
      v141 = v168;
      v168 = v140;

      objc_msgSend_initializationValue(location, v142, v143, v144, v149, v150, v151, v152, v145, v146, v147, v148);
      objc_msgSend_setInitializationValue_(v168, v153, v154, v155, v160, v161, v162, v163, v156, v157, v158, v159);
      sub_239E70198(a3, &location);

      v18 += 96;
      ++v19;
    }

    while (v18 != v17);
  }
}

void sub_239E6E9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_239EC40E0(v16);

  _Unwind_Resume(a1);
}

id sub_239E6EC14(uint64_t *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280BC3A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280BC3A48))
  {
    operator new();
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v23 = 0u;
      memset(v24, 0, sizeof(v24));
      sub_239E5A5D4(&v23, v3);
      if (qword_280BC3A38 + 8 != sub_239E69748(qword_280BC3A38, &v26))
      {
        v22 = &v26;
        v6 = sub_239E6F3B0(qword_280BC3A38, &v26, &unk_239F9BFF0, &v22, &v21)[5];
        MEMORY[0x23EE7ED20](&v22, "textureCoordinates");
        v17 = v26;
        v18 = v22;
        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v18 ^ v17) <= 7)
        {
          if (v5 >= 1)
          {
            v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@%d", v8, v13, v14, v15, v16, v9, v10, v11, v12, v6, v5);

            v6 = v19;
          }

          v5 = (v5 + 1);
        }

        objc_msgSend_addObject_(v2, v7, v6, v8, v13, v14, v15, v16, v9, v10, v11, v12);
      }

      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((BYTE8(v25) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v25 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_239E56C80(v24);
      sub_239E5B240(&v23);
      v3 += 96;
    }

    while (v3 != v4);
  }

  return v2;
}

void sub_239E6F108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (v21 + 120);
  v24 = -128;
  while (1)
  {

    if ((*(v23 - 1) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(v23 - 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v23 -= 2;
    v24 += 16;
    if (!v24)
    {
      if ((a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE802C0](v20, 0x1020C4062D53EE8);
      __cxa_guard_abort(&qword_280BC3A48);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_239E6F314(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_239E697D8(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_239E697D8(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void *sub_239E6F3B0(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_239E6F314(a1, &v6, a2);
  if (!result)
  {
    sub_239EC8360();
  }

  return result;
}

void *sub_239E6F454(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_239E6F314(a1, &v6, a2);
  if (!result)
  {
    sub_239EC7D5C();
  }

  return result;
}

unint64_t sub_239E6F4F8(uint64_t *a1, unsigned int a2)
{
  v6[28] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280BC3A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280BC3A20))
  {
    operator new();
  }

  v6[0] = a1;
  if (a2 < 2)
  {
    return sub_239E6F454(qword_280BC3A10, a1, &unk_239F9BFF0, v6, &v5)[5];
  }

  else
  {
    return sub_239E6F454(qword_280BC3A10, a1, &unk_239F9BFF0, v6, &v5)[5] & 0xFFFFFFFFFFFFF000 | a2;
  }
}

void sub_239E6FAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = 208;
  while (1)
  {
    v27 = *(v24 + v26);
    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v26 -= 16;
    if (v26 == -16)
    {
      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

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

      MEMORY[0x23EE802C0](v23, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
      __cxa_guard_abort(&qword_280BC3A20);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_239E6FD88(void *a1)
{
  MEMORY[0x23EE7ED20](&v11, "constant");
  v2 = v11;
  if ((v11 ^ *a1) >= 8)
  {
    MEMORY[0x23EE7ED20](&v10, "uniform");
    v4 = v10;
    if ((v10 ^ *a1) >= 8)
    {
      MEMORY[0x23EE7ED20](&v9, "varying");
      v5 = v9;
      if ((v9 ^ *a1) >= 8)
      {
        MEMORY[0x23EE7ED20](&v8, "vertex");
        v6 = v8;
        if ((v8 ^ *a1) >= 8)
        {
          MEMORY[0x23EE7ED20](&v7, "faceVarying");
          result = (v7 ^ *a1) < 8;
          if ((v7 & 7) != 0)
          {
            atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v6 = v8;
        }

        else
        {
          result = 1;
        }

        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v5 = v9;
      }

      else
      {
        result = 1;
      }

      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 = v10;
    }

    else
    {
      result = 1;
    }

    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2 = v11;
  }

  else
  {
    result = 1;
  }

  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_239E6FF8C(uint64_t result)
{
  if ((result & 0x1000) != 0)
  {
    return 4 * (((result - 593924) & 0xFFFFFFFFFFFEFFFFLL) == 0);
  }

  if (WORD1(result) > 0xCu)
  {
    goto LABEL_9;
  }

  if (((1 << SBYTE2(result)) & 0x9E0) != 0)
  {
    return 2 * result;
  }

  if (((1 << SBYTE2(result)) & 0x600) != 0 || WORD1(result) == 12)
  {
    return 4 * result;
  }

LABEL_9:
  if (WORD1(result) - 1 >= 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_239E70004(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
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
    sub_239E70140(a1, v6);
  }

  v7 = 24 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *&v20 = v7 + 24;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  sub_239E70244(a1, *a1, v10, v11, v12, v13);
  v14 = *a1;
  *a1 = v11;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_239E7020C(&v18);
  return v17;
}

void sub_239E7012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E7020C(va);
  _Unwind_Resume(a1);
}

void sub_239E70140(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_239E79870();
}

void *sub_239E70198(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_239E70004(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v4[1] = v5;
    v4[2] = v6;
    result = v4 + 3;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239E7020C(uint64_t a1)
{
  sub_239E70374(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_239E70244(uint64_t a1, void **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a4;
  v10 = a4;
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = &v11;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *(v6 + 1) = 0;
      *a4 = v7;
      *(a4 + 16) = *(v6 + 2);
      v6 = (v6 + 24);
      a4 += 24;
    }

    while (v6 != a3);
    v11 = a4;
  }

  v9[3] = 1;
  sub_239E702E0(a1, a2, a3);
  return sub_239E70328(v9);
}

void sub_239E702E0(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 3;
    }

    while (v4 != a3);
  }
}

uint64_t sub_239E70328(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EC83EC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_239E70374(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }
}

id sub_239E703D0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v253 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v245 = a2;
  v247 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = 0;
  while (1)
  {
    v21 = objc_msgSend_layouts(v6, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
    v33 = objc_msgSend_count(v21, v22, v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);

    if (v33 <= v19)
    {
      break;
    }

    v45 = objc_msgSend_layouts(v6, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
    v56 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, v19, v47, v52, v53, v54, v55, v48, v49, v50, v51);
    v68 = objc_msgSend_stride(v56, v57, v58, v59, v64, v65, v66, v67, v60, v61, v62, v63);

    ++v19;
    if (v68)
    {
      v20 = v19;
    }

    else
    {
      v20 = v20;
    }
  }

  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v69 = objc_msgSend_attributes(v6, v34, v35, v36, 0, v42, v43, v44, v37, v38, v39, v40);
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v248, v252, v74, v75, v76, v77, 16, v71, v72, v73);
  if (v85)
  {
    v90 = *v249;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v249 != v90)
        {
          objc_enumerationMutation(v69);
        }

        v92 = *(*(&v248 + 1) + 8 * i);
        if (objc_msgSend_format(v92, v78, v79, v80, v86, v87, v88, v89, v81, v82, v83, v84))
        {
          v93 = objc_msgSend_bufferIndex(v92, v78, v79, v80, v86, v87, v88, v89, v81, v82, v83, v84);
          if (v20 <= v93 + 1)
          {
            v20 = (v93 + 1);
          }

          else
          {
            v20 = v20;
          }
        }
      }

      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v78, &v248, v252, v86, v87, v88, v89, 16, v82, v83, v84);
    }

    while (v85);
  }

  v112 = objc_msgSend_count(v247, v94, v95, v96, v101, v102, v103, v104, v97, v98, v99, v100);
  if (v112 == v20)
  {
    if (v245)
    {
      v246 = v245;
    }

    else
    {
      v246 = objc_opt_new();
    }

    if (v20)
    {
      v130 = 0;
      while (1)
      {
        v131 = objc_msgSend_layouts(v6, v117, v118, v119, v124, v125, v126, v127, v120, v121, v122, v123);
        v142 = objc_msgSend_objectAtIndexedSubscript_(v131, v132, v130, v133, v138, v139, v140, v141, v134, v135, v136, v137);

        v154 = objc_msgSend_null(MEMORY[0x277CBEB68], v143, v144, v145, v150, v151, v152, v153, v146, v147, v148, v149);
        if (objc_msgSend_isEqual_(v142, v155, v154, v156, v161, v162, v163, v164, v157, v158, v159, v160))
        {
          break;
        }

        v187 = objc_msgSend_stride(v142, v165, v166, v167, v172, v173, v174, v175, v168, v169, v170, v171) == 0;

        if (v187)
        {
          goto LABEL_28;
        }

        v188 = objc_msgSend_objectAtIndexedSubscript_(v247, v176, v130, v178, v183, v184, v185, v186, v179, v180, v181, v182);
        v200 = objc_msgSend_integerValue(v188, v189, v190, v191, v196, v197, v198, v199, v192, v193, v194, v195);
        v212 = objc_msgSend_stride(v142, v201, v202, v203, v208, v209, v210, v211, v204, v205, v206, v207);

        v221 = objc_msgSend_newBufferFromZone_length_type_(v246, v213, 0, v212 * v200, v217, v218, v219, v220, 1, v214, v215, v216);
        objc_msgSend_addObject_(v7, v222, v221, v223, v228, v229, v230, v231, v224, v225, v226, v227);
LABEL_29:

        if (v112 == ++v130)
        {
          goto LABEL_30;
        }
      }

LABEL_28:
      v221 = objc_msgSend_null(MEMORY[0x277CBEB68], v176, v177, v178, v183, v184, v185, v186, v179, v180, v181, v182);
      objc_msgSend_addObject_(v7, v232, v221, v233, v238, v239, v240, v241, v234, v235, v236, v237);
      goto LABEL_29;
    }

LABEL_30:
  }

  else
  {
    v128 = objc_msgSend_count(v247, v105, v106, v107, v113, v114, v115, v116, v108, v109, v110, v111);
    NSLog(&cfstr_UnableToCreate.isa, v128, v20, context);
    v129 = v7;
  }

  objc_autoreleasePoolPop(context);
  if (v112 == v20)
  {
    v242 = v7;
  }

  return v7;
}

void sub_239E70888(uint64_t a1, float *a2, void *a3, uint64_t a4, float *a5, void *a6, float *a7, float *a8, float *a9)
{
  v84 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  bzero(v83, 0x3FCuLL);
  v28 = objc_msgSend_format(v15, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v28 < 5u)) == 1)
  {
    objc_msgSend_initializationValue(v15, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    if (v28)
    {
      v40 = 0;
      do
      {
        v82 = v36;
        v41 = (&v82 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3)));
        v37.n128_u32[0] = *v41;
        LODWORD(v83[v40++]) = *v41;
      }

      while (v28 != v40);
    }
  }

  v42 = objc_msgSend_offset(v16, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v54 = objc_msgSend_offset(v15, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
  v66 = objc_msgSend_format(v15, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  v78 = objc_msgSend_format(v16, v67, v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
  sub_239E70A2C((a1 + v54), v66, a2, (a4 + v42), v78, a5, v83, a7, v79, v80, a9, a8);
}

void sub_239E70A2C(void *result, uint64_t a2, float *a3, const void *a4, float *a5, float *a6, float *a7, float *a8, __n128 a9, float s1_0, float *a10, float *a11)
{
  if (!a2 || !a5)
  {
    return;
  }

  if (a2 == a5 && a3 == a6 && sub_239E6FF8C(a2) == a3)
  {
    if (a11 >= a10)
    {
      v20 = a10;
    }

    else
    {
      v20 = a11;
    }

    if (v20 >= a8 * a3)
    {
      v21 = a8 * a3;
    }

    else
    {
      v21 = v20;
    }

    memcpy(result, a4, v21);
    return;
  }

  v23[0] = result;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a6;
  v23[6] = a10;
  v23[7] = a7;
  v23[8] = a8;
  if ((a2 & 0x1000) != 0)
  {
    if (a2 == 593924)
    {
      sub_239F5F604(v23, 1.0);
    }

    else if (a2 == 659460)
    {
      sub_239F5ECA8(v23, 1.0);
    }
  }

  else
  {
    v22 = ((a2 & 0xFFFF0000) - 0x10000) >> 16;
    if (v22 <= 5)
    {
      if (((a2 & 0xFFFF0000) - 0x10000) >> 16 <= 2)
      {
        if (!v22)
        {
          a9.n128_u32[0] = 1.0;
LABEL_40:
          sub_239F640C0(v23, a9);
          return;
        }

        if (v22 != 1)
        {
          if (v22 != 2)
          {
            return;
          }

          a9.n128_u32[0] = 1132396544;
          goto LABEL_40;
        }

        a9.n128_u32[0] = 1.0;
LABEL_45:
        sub_239F60F2C(v23, a9);
        return;
      }

      if (v22 == 3)
      {
        a9.n128_u32[0] = 1123942400;
        goto LABEL_45;
      }

      if (v22 != 4)
      {
        if (v22 != 5)
        {
          return;
        }

        a9.n128_u32[0] = 1.0;
        goto LABEL_47;
      }

      a9.n128_u32[0] = 1.0;
LABEL_49:
      sub_239F651D4(v23, a9, s1_0);
      return;
    }

    if (((a2 & 0xFFFF0000) - 0x10000) >> 16 > 8)
    {
      switch(v22)
      {
        case 9uLL:
          a9.n128_u32[0] = 1.0;
          sub_239F63070(v23, a9, s1_0);
          break;
        case 0xAuLL:
          a9.n128_u32[0] = 1.0;
          sub_239F67254(v23, a9);
          break;
        case 0xBuLL:
          a9.n128_u32[0] = 1.0;
          sub_239F5FF24(v23, a9, s1_0);
          break;
      }
    }

    else
    {
      switch(v22)
      {
        case 6uLL:
          a9.n128_u32[0] = 1199570688;
          goto LABEL_49;
        case 7uLL:
          a9.n128_u32[0] = 1191181824;
LABEL_47:
          sub_239F62040(v23, a9, s1_0);
          return;
        case 8uLL:
          a9.n128_u32[0] = 1.0;
          sub_239F66204(v23, a9, s1_0);
          break;
      }
    }
  }
}

void sub_239E70D0C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MDLMeshBufferMap;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

float sub_239E71064(uint64_t a1, uint64_t a2, int a3, int a4, float result)
{
  v5 = (a1 + 12 * a3 + 4 * a4);
  v6 = *v5;
  if (*v5 != 0.0)
  {
    v7 = a1 + 12 * a3;
    v8 = *(v7 + 4 * a3);
    v9 = a1 + 12 * a4;
    v10 = *(v9 + 4 * a4);
    v11 = (v10 - v8) / (v6 + v6);
    v12 = sqrtf((v11 * v11) + 1.0);
    if (v11 < 0.0)
    {
      v12 = -v12;
    }

    v13 = 1.0 / (v12 + v11);
    *&v14 = (v13 * v13) + 1.0;
    v15 = vrsqrte_f32(v14);
    v16 = vmul_f32(vrsqrts_f32(v14, vmul_f32(v15, v15)), v15);
    v17 = vmul_f32(v16, vrsqrts_f32(v14, vmul_f32(v16, v16)));
    v18 = v13 * v17.f32[0];
    v19 = vmul_f32(v17, v17).f32[0];
    v20 = v6 * v18 * (v17.f32[0] + v17.f32[0]);
    *(v7 + 4 * a3) = ((v8 * v19) + ((v18 * v18) * v10)) - v20;
    *(v9 + 4 * a4) = (v20 + (v19 * v10)) + ((v18 * v18) * v8);
    *v5 = v6;
    v21 = *(a1 + 4 * (3 - a4));
    v22 = a1 - 12 * a3;
    v23 = *(v22 + 20);
    *(a1 + 4 * (3 - a4)) = -((v18 * v23) - (v21 * v17.f32[0]));
    *(v22 + 20) = (v23 * v17.f32[0]) + (v18 * v21);
    *v5 = 0.0;
    v24 = *(a2 + 4 * a3);
    v25 = *(a2 + 4 * a4);
    *(a2 + 4 * a3) = -((v25 * v18) - (v24 * v17.f32[0]));
    *(a2 + 4 * a4) = (v24 * v18) + (v25 * v17.f32[0]);
    v26 = *(a2 + 12 + 4 * a3);
    v27 = *(a2 + 12 + 4 * a4);
    *(a2 + 12 + 4 * a3) = -((v27 * v18) - (v26 * v17.f32[0]));
    *(a2 + 12 + 4 * a4) = (v26 * v18) + (v27 * v17.f32[0]);
    v28 = *(a2 + 24 + 4 * a3);
    v29 = *(a2 + 24 + 4 * a4);
    v30 = -((v29 * v18) - (v28 * v17.f32[0]));
    result = (v28 * v18) + (v29 * v17.f32[0]);
    *(a2 + 24 + 4 * a3) = v30;
    *(a2 + 24 + 4 * a4) = result;
  }

  return result;
}

__n128 sub_239E711D8(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = 0;
  v13 = *(a1 + 12);
  v14 = 0;
  LODWORD(v5) = *(a1 + 5);
  v15 = v5;
  v6 = 5;
  do
  {
    v7 = sub_239E71064(&v10, a3, 0, 1, *&v5);
    v8 = sub_239E71064(&v10, a3, 0, 2, v7);
    *&v5 = sub_239E71064(&v10, a3, 1, 2, v8);
    --v6;
  }

  while (v6);
  *&v5 = __PAIR64__(v13, v10);
  DWORD2(v5) = v15;
  *a2 = v5;
  result.n128_u64[0] = v5;
  result.n128_u32[2] = DWORD2(v5);
  return result;
}

float sub_239E712C4(float *a1, float *a2, __n128 a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (fabsf(a3.n128_f32[0]) >= 0.1)
  {
    v5 = 1.0 / a3.n128_f32[0];
    v6 = fabs(v5);
    v4 = v5;
    if (v6 < 0.100000001)
    {
      v4 = 0.0;
    }
  }

  if (fabsf(a3.n128_f32[1]) >= 0.1)
  {
    v7 = 1.0 / a3.n128_f32[1];
    if (fabs(v7) >= 0.100000001)
    {
      v3 = v7;
    }
  }

  a3.n128_u32[0] = 0;
  if (fabsf(a3.n128_f32[2]) >= 0.1)
  {
    v8 = 1.0 / a3.n128_f32[2];
    if (fabs(v8) >= 0.100000001)
    {
      a3.n128_f32[0] = v8;
    }
  }

  *a1 = (((*a2 * *a2) * v4) + ((a2[1] * a2[1]) * v3)) + ((a2[2] * a2[2]) * a3.n128_f32[0]);
  a1[1] = (((*a2 * v4) * a2[3]) + ((a2[1] * v3) * a2[4])) + ((a2[2] * a3.n128_f32[0]) * a2[5]);
  a1[2] = (((*a2 * v4) * a2[6]) + ((a2[1] * v3) * a2[7])) + ((a2[2] * a3.n128_f32[0]) * a2[8]);
  a1[3] = (((a2[3] * v4) * *a2) + ((a2[4] * v3) * a2[1])) + ((a2[5] * a3.n128_f32[0]) * a2[2]);
  a1[4] = (((a2[3] * a2[3]) * v4) + ((a2[4] * a2[4]) * v3)) + ((a2[5] * a2[5]) * a3.n128_f32[0]);
  a1[5] = (((a2[3] * v4) * a2[6]) + ((a2[4] * v3) * a2[7])) + ((a2[5] * a3.n128_f32[0]) * a2[8]);
  a1[6] = (((a2[6] * v4) * *a2) + ((a2[7] * v3) * a2[1])) + ((a2[8] * a3.n128_f32[0]) * a2[2]);
  a1[7] = (((a2[6] * v4) * a2[3]) + ((a2[7] * v3) * a2[4])) + ((a2[8] * a3.n128_f32[0]) * a2[5]);
  result = (((a2[6] * a2[6]) * v4) + ((a2[7] * a2[7]) * v3)) + ((a2[8] * a2[8]) * a3.n128_f32[0]);
  a1[8] = result;
  return result;
}

float sub_239E714D4(uint64_t *a1, _OWORD *a2, float32x4_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v15[0] = xmmword_239F9AD10;
  v15[1] = xmmword_239F9AD10;
  v16 = 1065353216;
  v12 = 0uLL;
  sub_239E711D8(a1, &v12, v15);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_239E712C4(v13, v15, v12);
  v4.i64[0] = *&v13[0];
  v4.i64[1] = DWORD2(v13[0]);
  v5 = vmulq_f32(v4, a3);
  *v5.i8 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  v6.i64[0] = *(v13 + 12);
  v6.i64[1] = DWORD1(v13[1]);
  v7 = vmulq_f32(v6, a3);
  *v7.f32 = vadd_f32(*v7.f32, *&vextq_s8(v7, v7, 8uLL));
  *&v9 = vadd_f32(vzip1_s32(*v5.i8, *v7.f32), vzip2_s32(*v5.i8, *v7.f32));
  v7.i64[0] = *(&v13[1] + 1);
  v7.i64[1] = v14;
  v8 = vmulq_f32(v7, a3);
  *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  *(&v9 + 1) = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
  *a2 = v9;
  return *&v9;
}

float32x4_t sub_239E715F4(uint64_t a1, float32x4_t *a2, float32x4_t *a3, int32x4_t _Q0, float32x4_t a5)
{
  v5 = _Q0;
  v5.i32[3] = _Q0.i32[0];
  *a1 = vmlaq_f32(*a1, vtrn1q_s32(v5, vextq_s8(v5, v5, 0xCuLL)), vdupq_lane_s64(_Q0.i64[0], 0));
  *(a1 + 16) = vmla_laneq_f32(*(a1 + 16), vext_s8(*_Q0.i8, *&vextq_s8(_Q0, _Q0, 8uLL), 4uLL), _Q0, 2);
  _Q2 = vmulq_f32(a5, _Q0);
  _Q3 = vextq_s8(_Q2, _Q2, 8uLL);
  *_Q2.i8 = vadd_f32(*_Q2.i8, *_Q3.f32);
  *_Q3.f32 = vadd_f32(*_Q2.i8, vdup_lane_s32(*_Q2.i8, 1));
  *_Q2.i32 = vaddv_f32(*_Q2.i8);
  *_Q3.f32 = vdup_lane_s32(*_Q3.f32, 0);
  v8.i64[0] = vmlaq_f32(*a2, _Q0, _Q3).u64[0];
  __asm { FMLA            S3, S2, V0.S[2] }

  v8.i32[2] = _Q3.i32[0];
  v8.i32[3] = HIDWORD(*a2);
  *a2 = v8;
  a5.i32[3] = 1.0;
  result = vaddq_f32(*a3, a5);
  *a3 = result;
  return result;
}

float sub_239E7167C(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v3.i32[3] = 0;
  v3.i32[0] = *a1;
  *(v3.i64 + 4) = *(a1 + 4);
  v4 = vmulq_f32(v3, a2);
  *v4.f32 = vadd_f32(*v4.f32, *&vextq_s8(v4, v4, 8uLL));
  v4.i32[0] = vadd_f32(*v4.f32, vdup_lane_s32(*v4.f32, 1)).u32[0];
  v5 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(*(a1 + 4), a2.f32[0]), *(a1 + 12), *a2.f32, 1), *(a1 + 16), a2, 2);
  v4.i32[1] = v5.i32[0];
  v4.i64[1] = v5.u32[1];
  v6 = vsubq_f32(a3, v4);
  v7 = vmulq_f32(v6, v6);
  return vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)));
}

void sub_239E716E0(uint64_t a1, float32x4_t *a2, float32x4_t a3, float32x4_t a4)
{
  __asm { FMOV            V2.4S, #1.0 }

  v15 = vmulq_f32(a4, vdivq_f32(_Q2, vdupq_laneq_s32(a4, 3)));
  _Q2.i32[3] = 0;
  _Q2.i32[0] = *a1;
  *(_Q2.i64 + 4) = *(a1 + 4);
  v11 = vmulq_f32(_Q2, v15);
  *v11.f32 = vadd_f32(*v11.f32, *&vextq_s8(v11, v11, 8uLL));
  v11.i32[0] = vadd_f32(*v11.f32, vdup_lane_s32(*v11.f32, 1)).u32[0];
  v12 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(*&_Q2.i32[1], v15.f32[0]), *(a1 + 12), *v15.f32, 1), *(a1 + 16), v15, 2);
  v11.i32[1] = v12.i32[0];
  v11.i64[1] = v12.u32[1];
  sub_239E714D4(a1, a2, vsubq_f32(a3, v11));
  v13 = *a2;
  sub_239E7167C(a1, *a2, a3);
  *a2 = vaddq_f32(v13, v15);
}

double sub_239E71798(float32x4_t *a1, int32x4_t *a2, uint64_t a3, _DWORD *a4, float32x4_t *a5)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v7 = 0uLL;
  v17 = 0u;
  memset(v18, 0, 24);
  if (a3)
  {
    v8 = a3;
    do
    {
      v11 = *a2++;
      v12 = v11;
      v13 = *a1++;
      sub_239E715F4(v18, &v17, a5, v12, v13);
      --v8;
    }

    while (v8);
    v7 = v17;
  }

  v16 = 0uLL;
  sub_239E716E0(v18, &v16, v7, *a5);
  *a4 = v14;
  return *v16.i64;
}

uint64_t sub_239E71860(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5, float32x4_t a6, float32x4_t a7)
{
  if ((vmaxvq_u32(vcltzq_f32(a7)) & 0x80000000) == 0)
  {
    if (*(a1 + 112))
    {
      v11.i64[0] = 0x3F0000003F000000;
      v11.i64[1] = 0x3F0000003F000000;
      v12 = vmulq_f32(vaddq_f32(a7, a6), v11);
      v13 = 4 * (*v12.i32 < a6.f32[2]);
      if (*&v12.i32[1] < a6.f32[2])
      {
        v13 |= 2u;
      }

      v14 = 4 * (*v12.i32 < a6.f32[1]);
      if (*&v12.i32[2] < a6.f32[1])
      {
        v14 |= 1u;
      }

      if (a6.f32[1] < a6.f32[2])
      {
        v13 = v14;
      }

      v15 = 2 * (*&v12.i32[1] < a6.f32[0]);
      if (*&v12.i32[2] < a6.f32[0])
      {
        v15 |= 1u;
      }

      if (a6.f32[0] < a6.f32[1] && a6.f32[0] < a6.f32[2])
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      v18 = a1 + 48;
      v54 = v12;
      while (1)
      {
        v19 = vbslq_s8(vcltzq_s32(xmmword_239F9ADF0[v17]), a7, v12);
        v20 = *(v18 + 8 * (v17 ^ a5));
        if (v20)
        {
          v57 = v19;
          v21 = sub_239E71860(v20, a2, a3, a4, a5, vbslq_s8(vcltzq_s32(xmmword_239F9AD70[v17]), a6, v12), v19);
          v19 = v57;
          v12 = v54;
          if (v21)
          {
            break;
          }
        }

        v22 = HIDWORD(*(&unk_239F9AE70 + 2 * v17));
        if (v19.f32[1] >= v19.f32[2])
        {
          v22 = *(&unk_239F9AE70 + 2 * v17 + 1);
        }

        if (v19.f32[0] < v19.f32[2] && v19.f32[0] < v19.f32[1])
        {
          v17 = *(&unk_239F9AE70 + v17);
        }

        else
        {
          v17 = v22;
        }

        if (v17 >= 8)
        {
          return 0;
        }
      }

      return 1;
    }

    v24 = *a1;
    if (*a1)
    {
      v58 = *a4;
      v25 = *v24;
      v26 = v24[1];
      if (*v24 != v26)
      {
        v27 = 0;
        do
        {
          if (sub_239F53DA4(v25, &v58, *a3, a3[1]))
          {
            v27 = v25;
          }

          v25 += 14;
        }

        while (v25 != v26);
        if (v27)
        {
          v28 = v58;
          v29 = *a3;
          v30 = a3[1];
          *a4 = v58;
          v31 = vmlaq_n_f32(v29, v30, v28);
          *(a4 + 80) = v31;
          *v32.i8 = sub_239F53B28(v27, v31);
          v33 = vdupq_lane_s32(*v32.i8, 1).u64[0];
          v34 = vdupq_laneq_s32(v32, 2).u64[0];
          *(a4 + 96) = vmla_f32(vmla_f32(vmul_n_f32(*v27[11].f32, *v32.i32), v33, *&v27[11].u32[2]), v34, *v27[12].f32);
          *(a4 + 104) = vmla_f32(vmla_f32(vmul_n_f32(*&v27[12].u32[2], *v32.i32), v33, *v27[13].f32), v34, *&v27[13].u32[2]);
          v35 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27[4], *v32.i32), v27[5], *v32.i8, 1), v27[6], v32, 2);
          v36 = vmulq_f32(v35, v35);
          v33.f32[0] = vaddv_f32(*v36.f32) + v36.f32[2];
          v37 = vrsqrte_f32(v33.u32[0]);
          v38 = vmulq_n_f32(v35, vmul_f32(vrsqrts_f32(v33.u32[0], vmul_f32(v37, v37)), v37).f32[0]);
          *(a4 + 16) = v38;
          *(a4 + 112) = v27->i64[1];
          v39 = vsubq_f32(v27[2], v27[1]);
          v40 = vmulq_f32(v39, v39);
          *&v41 = vaddv_f32(*v40.f32) + v40.f32[2];
          *v40.f32 = vrsqrte_f32(v41);
          *v40.f32 = vmul_f32(vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)), *v40.f32);
          v42 = vmlaq_n_f32(xmmword_239F9AD20, v39, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
          v43 = vmulq_f32(v42, v42);
          v40.f32[0] = vaddv_f32(*v43.f32) + v43.f32[2];
          *v43.f32 = vrsqrte_f32(v40.u32[0]);
          v44 = vmulq_n_f32(v42, vmul_f32(vrsqrts_f32(v40.u32[0], vmul_f32(*v43.f32, *v43.f32)), *v43.f32).f32[0]);
          v45 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
          v46 = vmlaq_f32(vnegq_f32(vmulq_f32(v44, v45)), v38, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL));
          v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
          v48 = vmulq_f32(v46, v46);
          *&v49 = (v48.f32[2] + v48.f32[0]) + v48.f32[1];
          *v48.f32 = vrsqrte_f32(v49);
          v50 = vmulq_n_f32(v47, vmul_f32(vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)), *v48.f32).f32[0]);
          v51 = vmlaq_f32(vnegq_f32(vmulq_f32(v50, v45)), v38, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
          v52 = vmulq_f32(v51, v51);
          v36.f32[0] = (v52.f32[2] + v52.f32[0]) + v52.f32[1];
          *v52.f32 = vrsqrte_f32(v36.u32[0]);
          *(a4 + 32) = vmulq_n_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), vmul_f32(vrsqrts_f32(v36.u32[0], vmul_f32(*v52.f32, *v52.f32)), *v52.f32).f32[0]);
          *(a4 + 48) = v50;
          return 1;
        }
      }
    }
  }

  return 0;
}

float32x4_t *sub_239E71C08(float32x4_t **a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  result = *a1;
  if (result)
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    v23 = *a2;
    v24 = v11;
    if (*&v11 >= 0.0)
    {
      v12 = 0;
    }

    else
    {
      v23.f32[0] = -v10.f32[0];
      *&v24 = -*&v11;
      v12 = 4;
    }

    v13 = *(&v11 + 2);
    if (*(&v11 + 1) < 0.0)
    {
      v23.f32[1] = -v10.f32[1];
      *(&v24 + 1) = -*(&v11 + 1);
      v12 = v12 | 2;
    }

    v14 = result[1];
    v15 = result[2];
    if (v13 < 0.0)
    {
      v23.f32[2] = -v10.f32[2];
      *(&v24 + 2) = -v13;
      v12 = v12 | 1;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *a9.f32 = vdiv_f32(_D0, *&v24);
    a9.f32[2] = 1.0 / *(&v24 + 2);
    v21 = vmulq_f32(vsubq_f32(v15, v23), a9);
    v22 = vmulq_f32(vsubq_f32(v14, v23), a9);
    if (fmaxf(v21.f32[0], fmaxf(v21.f32[1], v21.f32[2])) >= fminf(v22.f32[0], fminf(v22.f32[1], v22.f32[2])))
    {
      return 0;
    }

    else
    {
      v21.i32[3] = 0;
      v22.i32[3] = 0;
      return sub_239E71860(result, &v23, a2, a3, v12, v21, v22);
    }
  }

  return result;
}

MDLMesh *sub_239E71D1C(float32x4_t **a1, uint64_t a2, uint64_t a3, int a4)
{
  v549[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*a1)
  {
    v7 = a2;
    v546 = 0;
    v547 = 0;
    v548 = 0;
    v543 = 0;
    v544 = 0;
    v10 = (a1 + 6);
    v9 = a1[6];
    v545 = 0;
    __p = 0;
    v541 = 0;
    v542 = 0;
    a1[7] = v9;
    v11 = v4[2];
    v536 = v11;
    if (a3)
    {
      v539 = 0;
      sub_239E73254(a1 + 6, &v539);
    }

    else
    {
      sub_239E7261C(0, &v546, &v543, v11, v4[1]);
      v539 = 1;
      sub_239E73254(v10, &v539);
    }

    sub_239E73334(&__p, *a1, v7 - 1, a3 | a4, a3, vsubq_f32((*a1)[1], (*a1)[2]), v536, v12);
    v15 = __p;
    v14 = v541;
    if (v541 != __p)
    {
      sub_239E7A428(__p, v541, 126 - 2 * __clz((v541 - __p) >> 3), 1);
      v537 = (*v15)[1];
      sub_239E73254(v10, *v10);
      v16 = v537.n128_f32[1];
      v17 = 1;
      do
      {
        v18 = *v15;
        sub_239E7261C(a3, &v546, &v543, (*v15)[1], (*v15)[2]);
        v19 = v18[1].n128_f32[1];
        if (v16 < v19)
        {
          sub_239E73254(v10, *v10 + v17++);
          v16 = v19;
        }

        ++*(*v10 + v17);
        ++v15;
      }

      while (v15 != v14);
    }

    v20 = objc_alloc_init(MDLMeshBufferAllocatorDefault);
    v22 = v543;
    v21 = v544;
    v534 = v20;
    v23 = objc_alloc(MEMORY[0x277CBEA90]);
    v532 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v23, v24, v543, v21 - v22, v28, v29, v30, v31, 0, v25, v26, v27);
    v538 = objc_msgSend_newBufferWithData_type_(v20, v32, v532, 2, v37, v38, v39, v40, v33, v34, v35, v36);
    if (objc_msgSend_conformsToProtocol_(v538, v41, &unk_284D24D98, v42, v47, v48, v49, v50, v43, v44, v45, v46))
    {
      v59 = v538;
      v71 = objc_msgSend_name(0, v60, v61, v62, v67, v68, v69, v70, v63, v64, v65, v66);
      v82 = objc_msgSend_stringByAppendingString_(v71, v72, @"-Indices", v73, v78, v79, v80, v81, v74, v75, v76, v77);
      objc_msgSend_setName_(v59, v83, v82, v84, v89, v90, v91, v92, v85, v86, v87, v88);
    }

    v535 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v51, v546, v547 - v546, v55, v56, v57, v58, 0, v52, v53, v54);
    v93 = objc_opt_new();
    v533 = v93;
    v105 = objc_msgSend_attributes(v93, v94, v95, v96, v101, v102, v103, v104, v97, v98, v99, v100);
    v116 = objc_msgSend_objectAtIndexedSubscript_(v105, v106, 0, v107, v112, v113, v114, v115, v108, v109, v110, v111);
    objc_msgSend_setName_(v116, v117, @"position", v118, v123, v124, v125, v126, v119, v120, v121, v122);

    v138 = objc_msgSend_attributes(v93, v127, v128, v129, v134, v135, v136, v137, v130, v131, v132, v133);
    v149 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, 0, v140, v145, v146, v147, v148, v141, v142, v143, v144);
    objc_msgSend_setFormat_(v149, v150, 786435, v151, v156, v157, v158, v159, v152, v153, v154, v155);

    v171 = objc_msgSend_attributes(v93, v160, v161, v162, v167, v168, v169, v170, v163, v164, v165, v166);
    v182 = objc_msgSend_objectAtIndexedSubscript_(v171, v172, 0, v173, v178, v179, v180, v181, v174, v175, v176, v177);
    objc_msgSend_setOffset_(v182, v183, 0, v184, v189, v190, v191, v192, v185, v186, v187, v188);

    v204 = objc_msgSend_attributes(v93, v193, v194, v195, v200, v201, v202, v203, v196, v197, v198, v199);
    v215 = objc_msgSend_objectAtIndexedSubscript_(v204, v205, 0, v206, v211, v212, v213, v214, v207, v208, v209, v210);
    objc_msgSend_setBufferIndex_(v215, v216, 0, v217, v222, v223, v224, v225, v218, v219, v220, v221);

    if (a3)
    {
      v237 = objc_msgSend_attributes(v93, v226, v227, v228, v233, v234, v235, v236, v229, v230, v231, v232);
      v248 = objc_msgSend_objectAtIndexedSubscript_(v237, v238, 1, v239, v244, v245, v246, v247, v240, v241, v242, v243);
      objc_msgSend_setName_(v248, v249, @"normal", v250, v255, v256, v257, v258, v251, v252, v253, v254);

      v270 = objc_msgSend_attributes(v93, v259, v260, v261, v266, v267, v268, v269, v262, v263, v264, v265);
      v281 = objc_msgSend_objectAtIndexedSubscript_(v270, v271, 1, v272, v277, v278, v279, v280, v273, v274, v275, v276);
      objc_msgSend_setFormat_(v281, v282, 786435, v283, v288, v289, v290, v291, v284, v285, v286, v287);

      v303 = objc_msgSend_attributes(v93, v292, v293, v294, v299, v300, v301, v302, v295, v296, v297, v298);
      v314 = objc_msgSend_objectAtIndexedSubscript_(v303, v304, 1, v305, v310, v311, v312, v313, v306, v307, v308, v309);
      objc_msgSend_setOffset_(v314, v315, 12, v316, v321, v322, v323, v324, v317, v318, v319, v320);

      v336 = objc_msgSend_attributes(v93, v325, v326, v327, v332, v333, v334, v335, v328, v329, v330, v331);
      v347 = objc_msgSend_objectAtIndexedSubscript_(v336, v337, 1, v338, v343, v344, v345, v346, v339, v340, v341, v342);
      objc_msgSend_setBufferIndex_(v347, v348, 0, v349, v354, v355, v356, v357, v350, v351, v352, v353);

      v358 = 6;
    }

    else
    {
      v358 = 3;
    }

    v359 = objc_msgSend_layouts(v93, v226, v227, v228, v233, v234, v235, v236, v229, v230, v231, v232);
    v370 = objc_msgSend_objectAtIndexedSubscript_(v359, v360, 0, v361, v366, v367, v368, v369, v362, v363, v364, v365);
    objc_msgSend_setStride_(v370, v371, 4 * v358, v372, v377, v378, v379, v380, v373, v374, v375, v376);

    v390 = objc_msgSend_newBufferWithData_type_(v534, v381, v535, 1, v386, v387, v388, v389, v382, v383, v384, v385);
    if (objc_msgSend_conformsToProtocol_(v390, v391, &unk_284D24D98, v392, v397, v398, v399, v400, v393, v394, v395, v396))
    {
      v411 = v390;
      v412 = MEMORY[0x277CCACA8];
      v424 = objc_msgSend_name(0, v413, v414, v415, v420, v421, v422, v423, v416, v417, v418, v419);
      v435 = objc_msgSend_stringWithFormat_(v412, v425, @"%@-%@", v426, v431, v432, v433, v434, v427, v428, v429, v430, v424, @"position");
      objc_msgSend_setName_(v411, v436, v435, v437, v442, v443, v444, v445, v438, v439, v440, v441);
    }

    if ((atomic_load_explicit(&qword_27DF90E08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF90E08))
    {
      v521 = [MDLMaterial alloc];
      v522 = objc_opt_new();
      qword_27DF90E00 = objc_msgSend_initWithName_scatteringFunction_(v521, v523, @"Octree material", v522, v528, v529, v530, v531, v524, v525, v526, v527);

      __cxa_guard_release(&qword_27DF90E08);
    }

    v446 = objc_msgSend_propertyWithSemantic_(qword_27DF90E00, v401, 2, v402, v407, v408, v409, v410, v403, v404, v405, v406);
    v447.n128_u64[0] = 0;
    objc_msgSend_setFloatValue_(v446, v448, v449, v450, v447, v455, v456, v457, v451, v452, v453, v454);
    v468 = objc_msgSend_propertyWithSemantic_(qword_27DF90E00, v458, 6, v459, v464, v465, v466, v467, v460, v461, v462, v463);

    v469.n128_u32[0] = 1.0;
    objc_msgSend_setFloatValue_(v468, v470, v471, v472, v469, v477, v478, v479, v473, v474, v475, v476);
    v480 = [MDLSubmesh alloc];
    v487 = (v544 - v543) >> 2;
    if (a3)
    {
      v488 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v480, v481, v538, v487, v483, v484, v485, v486, 32, 2, qword_27DF90E00, v482);
    }

    else
    {
      v488 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v480, v481, v538, v487, v483, v484, v485, v486, 32, 1, qword_27DF90E00, v482);
    }

    v489 = v488;
    v491 = v546;
    v490 = v547;
    v492 = [MDLMesh alloc];
    v549[0] = v489;
    v502 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v493, v549, 1, v498, v499, v500, v501, v494, v495, v496, v497);
    v13 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v492, v503, v390, ((v490 - v491) >> 2) / v358, v506, v507, v508, v509, v533, v502, v504, v505);

    if (a3)
    {
      v516.n128_u32[0] = 1045220557;
      objc_msgSend_addNormalsWithAttributeNamed_creaseThreshold_(v13, v510, @"normal", v511, v516, v517, v518, v519, v512, v513, v514, v515);
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (v543)
    {
      v544 = v543;
      operator delete(v543);
    }

    if (v546)
    {
      v547 = v546;
      operator delete(v546);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_239E723EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  __cxa_guard_abort(&qword_27DF90E08);

  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_239E7261C(int a1, const void **a2, const void **a3, __n128 a4, __n128 a5)
{
  v14 = a4.n128_u32[0];
  v7 = a4.n128_u32[1];
  v8 = a4.n128_u32[2];
  if (a1)
  {
    v9 = ((a2[1] - *a2) >> 2) / 6uLL;
    v16 = a4.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v9;
    sub_239E73254(a3, &v16);
    v16 = v9 + 2;
    sub_239E73254(a3, &v16);
    v16 = v9 + 1;
    sub_239E73254(a3, &v16);
    v16 = v9 + 1;
    sub_239E73254(a3, &v16);
    v16 = v9 + 2;
    sub_239E73254(a3, &v16);
    v16 = v9 + 3;
    sub_239E73254(a3, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 4;
    sub_239E73254(a3, &v16);
    v16 = v9 + 6;
    sub_239E73254(a3, &v16);
    v16 = v9 + 5;
    sub_239E73254(a3, &v16);
    v16 = v9 + 5;
    sub_239E73254(a3, &v16);
    v16 = v9 + 6;
    sub_239E73254(a3, &v16);
    v16 = v9 + 7;
    sub_239E73254(a3, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 8;
    sub_239E73254(a3, &v16);
    v16 = v9 + 9;
    sub_239E73254(a3, &v16);
    v16 = v9 + 10;
    sub_239E73254(a3, &v16);
    v16 = v9 + 9;
    sub_239E73254(a3, &v16);
    v16 = v9 + 11;
    sub_239E73254(a3, &v16);
    v16 = v9 + 10;
    sub_239E73254(a3, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 12;
    sub_239E73254(a3, &v16);
    v16 = v9 + 15;
    sub_239E73254(a3, &v16);
    v16 = v9 + 14;
    sub_239E73254(a3, &v16);
    v16 = v9 + 12;
    sub_239E73254(a3, &v16);
    v16 = v9 + 13;
    sub_239E73254(a3, &v16);
    v16 = v9 + 15;
    sub_239E73254(a3, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 16;
    sub_239E73254(a3, &v16);
    v16 = v9 + 17;
    sub_239E73254(a3, &v16);
    v16 = v9 + 19;
    sub_239E73254(a3, &v16);
    v16 = v9 + 16;
    sub_239E73254(a3, &v16);
    v16 = v9 + 19;
    sub_239E73254(a3, &v16);
    v16 = v9 + 18;
    sub_239E73254(a3, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v9 + 20;
    sub_239E73254(a3, &v16);
    v16 = v9 + 22;
    sub_239E73254(a3, &v16);
    v16 = v9 + 21;
    sub_239E73254(a3, &v16);
    v16 = v9 + 21;
    sub_239E73254(a3, &v16);
    v16 = v9 + 22;
    sub_239E73254(a3, &v16);
    v16 = v9 + 23;
  }

  else
  {
    v10 = ((a2[1] - *a2) >> 2) / 3uLL;
    v16 = a4.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = v8;
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = v7;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v14;
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_u32[0];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[1];
    sub_239E798A4(a2, &v16);
    v16 = a5.n128_i32[2];
    sub_239E798A4(a2, &v16);
    v16 = v10;
    sub_239E73254(a3, &v16);
    v16 = v10 + 1;
    sub_239E73254(a3, &v16);
    v16 = v10;
    sub_239E73254(a3, &v16);
    v16 = v10 + 2;
    sub_239E73254(a3, &v16);
    v16 = v10;
    sub_239E73254(a3, &v16);
    v11 = v10 + 4;
    v16 = v10 + 4;
    sub_239E73254(a3, &v16);
    v16 = v10 + 1;
    sub_239E73254(a3, &v16);
    v16 = v10 + 3;
    sub_239E73254(a3, &v16);
    v16 = v10 + 1;
    sub_239E73254(a3, &v16);
    v12 = v10 + 5;
    v16 = v10 + 5;
    sub_239E73254(a3, &v16);
    v16 = v10 + 2;
    sub_239E73254(a3, &v16);
    v16 = v10 + 3;
    sub_239E73254(a3, &v16);
    v16 = v10 + 2;
    sub_239E73254(a3, &v16);
    v13 = v10 + 6;
    v16 = v10 + 6;
    sub_239E73254(a3, &v16);
    v16 = v10 + 3;
    sub_239E73254(a3, &v16);
    LODWORD(v10) = v10 + 7;
    v16 = v10;
    sub_239E73254(a3, &v16);
    v16 = v11;
    sub_239E73254(a3, &v16);
    v16 = v12;
    sub_239E73254(a3, &v16);
    v16 = v11;
    sub_239E73254(a3, &v16);
    v16 = v13;
    sub_239E73254(a3, &v16);
    v16 = v12;
    sub_239E73254(a3, &v16);
    v16 = v10;
    sub_239E73254(a3, &v16);
    v16 = v13;
    sub_239E73254(a3, &v16);
    v16 = v10;
  }

  sub_239E73254(a3, &v16);
}

void sub_239E73254(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_239E797B4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_239E79984(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_239E73334(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int64x2_t a6, int8x16_t a7, uint64x2_t a8)
{
  if (a2 && (a3 & 0x80000000) == 0)
  {
    v12 = 0;
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v17 = vmulq_f32(a6, v13);
    v14 = v17.f32[1];
    v15 = v17.f32[2];
    v16 = a2 + 48;
    a6.i64[1] = a7.i64[1];
    v25 = v17;
    v17.f32[0] = v17.f32[0] + *a7.i32;
    v17.i32[1] = a7.i32[1];
    v18 = a3 - 1;
    if (a3)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0;
    }

    a8.i64[0] = 4;
    v17.i32[2] = a7.i32[2];
    v22 = a8;
    v23 = v17;
    while (!*(v16 + 8 * v12))
    {
LABEL_13:
      if (++v12 == 8)
      {
        return;
      }
    }

    a6.i64[0] = v12;
    v20 = v23;
    a6 = vdupq_lane_s64(vcgtq_u64(v22, a6).i64[0], 0);
    v21 = vbslq_s8(a6, a7, v23);
    if ((v12 & 2) != 0)
    {
      v20.i32[0] = v21.i32[0];
      *&v20.i32[1] = *&v21.i32[1] + v14;
      v20.i64[1] = v21.i64[1];
      v21 = v20;
      if ((v12 & 1) == 0)
      {
LABEL_10:
        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_11:
        if (a3)
        {
          sub_239E73334(a1, *(v16 + 8 * v12), v18, a4, a5, v25, v21, v20);
        }

        goto LABEL_13;
      }
    }

    else if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    v20.i64[0] = v21.i64[0];
    *&v20.i32[2] = *&v21.i32[2] + v15;
    v20.i32[3] = v21.i32[3];
    v21 = v20;
    if ((v19 & 1) == 0)
    {
LABEL_17:
      operator new();
    }

    goto LABEL_11;
  }
}

float32x4_t *sub_239E735A0(float32x4_t *a1, void *a2, unsigned int a3, float a4)
{
  v22[7] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v18 = v6;
  a1->i64[0] = 0;
  a1[3].i64[0] = 0;
  a1[3].i64[1] = 0;
  a1[4].i64[0] = 0;
  a1[5].i64[0] = 0;
  if (a3 >= 1)
  {
    objc_msgSend_boundingBox(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
    a1[1] = v19;
    a1[2] = v20;
    if ((COERCE_FLOAT(vsubq_f32(v19, v20).i32[1]) / a3) > 0.0)
    {
      sub_239E73820(v18, v22);
      operator new();
    }
  }

  return a1;
}

void sub_239E73798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E7B424(va);
  MEMORY[0x23EE802C0](v11, 0x1020C40BD3C1984);
  if (v10)
  {
    operator delete(v10);
  }

  sub_239E7A3DC(v9, 0);
  v14 = *v12;
  if (*v12)
  {
    *(v7 + 56) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void sub_239E73820(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  __p = 0;
  v29 = 0;
  v30 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a1;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v24, v31, v8, v9, v10, v11, 16, v5, v6, v7);
  if (v12)
  {
    v13 = *v25;
    v14 = MEMORY[0x277D860B8];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v3);
        }

        sub_239E753DC(*(*(&v24 + 1) + 8 * i), &__p, 1, *v14, v14[1]);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v16, &v24, v31, v20, v21, v22, v23, 16, v17, v18, v19);
    }

    while (v12);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_239E7C554(a2, __p, v29, 0x6DB6DB6DB6DB6DB7 * ((v29 - __p) >> 5));
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_239E7397C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239E739BC(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 1312);
  *v4 = a4;
  v5 = (v4 + 10);
  if (v5 != a2)
  {
    sub_239E7B730(v5, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  }
}

uint64_t sub_239E739F8(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    if (*&v2 < COERCE_FLOAT(HIDWORD(a2[2])))
    {
      LODWORD(v2) = HIDWORD(a2[2]);
    }

    if (*&v2 < COERCE_FLOAT(a2[3]))
    {
      LODWORD(v2) = a2[3];
    }

    if (*(&v3 + 1) < *&v3)
    {
      LODWORD(v3) = HIDWORD(a2[4]);
    }

    if (*(&v3 + 2) < *&v3)
    {
      LODWORD(v3) = a2[5];
    }

    *&v2 = fabsf(*&v2);
    v4 = fabsf(*&v3);
    if (*&v2 < v4)
    {
      *&v2 = v4;
    }

    *&v3 = -*&v2;
    *(a2 + 1) = vdupq_lane_s32(*&v2, 0);
    *(a2 + 2) = vdupq_lane_s32(*&v3, 0);
    v5 = *(result + 1312);
    if ((*v5 & 0x80000000) == 0)
    {
      v6 = (*v5 - 1) | ((*v5 - 1) >> 1) | (((*v5 - 1) | ((*v5 - 1) >> 1)) >> 2);
      v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
      *(a2 + 2) = (v7 | HIWORD(v7)) + 1;
    }

    if (*(v5 + 48) != *(v5 + 40))
    {
      operator new();
    }
  }

  return result;
}

void sub_239E73C60(void *result, float32x4_t **a2, float a3)
{
  if (*(result[164] + 368))
  {
    v5 = sub_239E756B8(result, a3);
    sub_239E75C74(result, vcvtd_n_f64_s32(v5, 2uLL));

    sub_239E76168(result, a2);
  }
}

float32x4_t *sub_239E73CC4(float32x4_t *a1, void *a2, unsigned int a3, float a4)
{
  v22[7] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v18 = v6;
  a1->i64[0] = 0;
  a1[3].i64[0] = 0;
  a1[3].i64[1] = 0;
  a1[4].i64[0] = 0;
  a1[5].i64[0] = 0;
  if (a3 >= 1)
  {
    v14.n128_u64[0] = 0;
    objc_msgSend_boundingBoxAtTime_(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
    a1[1] = v19;
    a1[2] = v20;
    if ((COERCE_FLOAT(vsubq_f32(v19, v20).i32[1]) / a3) > 0.0)
    {
      sub_239E73F48(v18, v22);
      operator new();
    }
  }

  return a1;
}

void sub_239E73EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E7B424(va);
  MEMORY[0x23EE802C0](v11, 0x1020C40BD3C1984);
  if (v10)
  {
    operator delete(v10);
  }

  sub_239E7A3DC(v9, 0);
  v14 = *v12;
  if (*v12)
  {
    *(v7 + 56) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void sub_239E73F48(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_239E753DC(a1, a2, 1, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16));
}

void sub_239E73F8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E73FAC(void *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  memcpy(a1, &unk_239F9AF00, 0x380uLL);
  memcpy(a1 + 112, &unk_239F9B280, 0x1A0uLL);
  operator new();
}

void sub_239E74078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E7B424(va);
  MEMORY[0x23EE802C0](v4, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_239E740A0(uint64_t a1)
{
  v2 = *(a1 + 1312);
  *(a1 + 1312) = 0;
  if (v2)
  {
    v3 = sub_239E7B690(v2);
    MEMORY[0x23EE802C0](v3, 0x10F0C401E272BA8);
  }

  return a1;
}

uint64_t sub_239E740EC(uint64_t a1, float32x4_t *a2, float32x4_t *a3, int a4, uint64x2_t a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v14 = 0;
  v59 = 0;
  v15 = a2 + 3;
  v16 = a4 - 1;
  a5.i64[0] = 4;
  v53 = a5;
  __asm { FMOV            V0.4S, #0.25 }

  v54 = _Q0;
  do
  {
    v23 = a2[1];
    v22 = a2[2];
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    v25 = vmulq_f32(vaddq_f32(v23, v22), v24);
    v26 = vsubq_f32(v23, v22);
    v27 = 0.25 * v26.f32[0];
    v24.i64[0] = v14;
    *v28.i32 = v25.f32[0] + (0.25 * v26.f32[0]);
    v28.i32[1] = v25.i32[1];
    v28.i64[1] = __PAIR64__(v53.u32[3], v25.u32[2]);
    *a10.i32 = v25.f32[0] - (0.25 * v26.f32[0]);
    a10.i32[1] = v25.i32[1];
    a10.i32[2] = v25.i32[2];
    v29 = vbslq_s8(vdupq_lane_s64(vcgtq_u64(v53, v24).i64[0], 0), a10, v28);
    if ((v14 & 2) != 0)
    {
      v30 = 0.25 * v26.f32[0];
    }

    else
    {
      v30 = -(v26.f32[0] * 0.25);
    }

    if ((v14 & 1) == 0)
    {
      v27 = -(v26.f32[0] * 0.25);
    }

    v29.f32[1] = v29.f32[1] + v30;
    v29.f32[2] = v29.f32[2] + v27;
    v58 = v29;
    result = sub_239EAB8B8(a3, v29, vmulq_f32(v26, v54));
    if (result)
    {
      v37 = v15->i64[v14];
      if (!v37)
      {
        operator new();
      }

      if (a4)
      {
        if (a4 >= 1)
        {
          result = sub_239E740EC(a1, v37, a3, v16, v32, v33, v34, v35, v36, a10);
          goto LABEL_28;
        }
      }

      else
      {
        sub_239E7BF04((v37 + 152), &a3[10].i32[3], &a3[10].i32[3]);
        v38 = *(v37 + 116);
        if (a3[10].i32[3] != *(v37 + 144))
        {
          v40 = a3[1];
          v39 = a3[2];
          v56 = a3[3];
          v57 = v40;
          v55 = v39;
          *v41.i64 = sub_239E74590(&v57, &v56, &v55, &v58);
          v42 = vsubq_f32(v58, v41);
          v43 = vmulq_f32(v42, v42);
          v44 = sqrtf(vaddv_f32(*v43.f32) + v43.f32[2]);
          if (v44 < fabsf(v38))
          {
            *(v37 + 116) = -v44;
            *(v37 + 128) = v41;
            *(v37 + 144) = a3[10].i32[3];
            v45 = sub_239E74974(a1, v37);
            v46 = *(a1 + 1312);
            if (v45)
            {
              sub_239E7B9B0((v46 + 344), (v37 + 8), (v37 + 8));
            }

            else
            {
              v47 = sub_239E7C134((v46 + 344), (v37 + 8));
              if (v47)
              {
                sub_239E7C1E8((*(a1 + 1312) + 344), v47);
              }
            }
          }
        }
      }

      v48 = *v37;
      if (!*v37)
      {
        v49 = *(*(a1 + 1312) + 88);
        if (!v49)
        {
          sub_239E7C368();
        }

        v50 = (*(*v49 + 48))(v49);
        v57.i64[0] = 0;
        v51 = *v37;
        *v37 = v50;
        if (v51)
        {
          sub_239E7A380(v37, v51);
        }

        v52 = v57.i64[0];
        v57.i64[0] = 0;
        if (v52)
        {
          sub_239E7A380(&v57, v52);
        }

        v48 = *v37;
      }

      result = sub_239E79B00(v48, a3);
    }

LABEL_28:
    ++v14;
  }

  while (v14 != 8);
  return result;
}

uint64_t sub_239E744FC(uint64_t a1, float32x4_t a2, double a3, double a4)
{
  v4 = *(a1 + 1312);
  v5 = v4[15].f32[2];
  *&a4 = v5 * 0.5;
  v6 = vmulq_n_f32(vsubq_f32(vsubq_f32(a2, v4[17]), vdupq_lane_s32(*&a4, 0)), 1.0 / v5);
  v7 = llroundf(v6.f32[0]);
  v8 = llroundf(v6.f32[1]);
  v9 = llroundf(v6.f32[2]);
  return *(v4[9].i64[0] + 8 * v9) | ((*(v4[7].i64[1] + 8 * HIBYTE(v8)) | *(v4[9].i64[0] + 8 * HIBYTE(v9)) | *(v4[6].i64[0] + 8 * HIBYTE(v7))) << 24) | *(v4[7].i64[1] + 8 * v8) | *(v4[6].i64[0] + 8 * v7);
}

double sub_239E74590(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = vsubq_f32(*a1, *a2).u32[0];
  v7 = vsubq_f32(*a2, *a1);
  if (vmovn_s32(vcgtq_f32(*a1, *a2)).u8[0])
  {
    v8 = *&v6;
  }

  else
  {
    v8 = v7.f32[0];
  }

  if (v8 <= 0.0001)
  {
    v9 = v4.f32[1] <= v5.f32[1] ? v5.f32[1] - v4.f32[1] : v4.f32[1] - v5.f32[1];
    if (v9 <= 0.0001)
    {
      v10 = v4.f32[2] <= v5.f32[2] ? v5.f32[2] - v4.f32[2] : v4.f32[2] - v5.f32[2];
      if (v10 <= 0.0001)
      {
        v11 = *a3;
        LODWORD(v12) = vsubq_f32(v4, *a3).u32[0];
        v13 = vsubq_f32(*a3, v4).u32[0];
        if ((vmovn_s32(vcgtq_f32(v4, *a3)).u8[0] & 1) == 0)
        {
          v12 = *&v13;
        }

        if (v12 <= 0.0001)
        {
          v14 = v4.f32[1] <= v11.f32[1] ? v11.f32[1] - v4.f32[1] : v4.f32[1] - v11.f32[1];
          if (v14 <= 0.0001)
          {
            v15 = v4.f32[2] <= v11.f32[2] ? v11.f32[2] - v4.f32[2] : v4.f32[2] - v11.f32[2];
            if (v15 <= 0.0001)
            {
              goto LABEL_88;
            }
          }
        }
      }
    }
  }

  v16 = *a3;
  v17 = vsubq_f32(*a3, v4);
  v18 = *a4;
  v19 = vsubq_f32(*a4, v4);
  v20 = vmulq_f32(v19, v17);
  if (v8 <= 0.0001)
  {
    v21 = v4.f32[1] <= v5.f32[1] ? v5.f32[1] - v4.f32[1] : v4.f32[1] - v5.f32[1];
    if (v21 <= 0.0001)
    {
      v22 = v4.f32[2] <= v5.f32[2] ? v5.f32[2] - v4.f32[2] : v4.f32[2] - v5.f32[2];
      if (v22 <= 0.0001)
      {
        v44 = vaddv_f32(*v20.i8) + *&v20.i32[2];
        if (v44 <= 0.0)
        {
          goto LABEL_88;
        }

        v45 = vmulq_f32(v17, v17);
        v46 = vaddv_f32(*v45.f32);
        if (v44 >= (v46 + v45.f32[2]))
        {
          v37 = *a3;
          return *v37.i64;
        }

        v47 = v44 / (v46 + v45.f32[2]);
LABEL_82:
        v4.i64[0] = vmlaq_n_f32(v4, v17, v47).u64[0];
        goto LABEL_88;
      }
    }
  }

  v23 = vmulq_f32(v19, v7);
  LODWORD(v24) = vsubq_f32(v4, v16).u32[0];
  if ((vmovn_s32(vcgtq_f32(v4, v16)).u8[0] & 1) == 0)
  {
    v24 = v17.f32[0];
  }

  if (v24 <= 0.0001)
  {
    v25 = v4.f32[1] <= v16.f32[1] ? v16.f32[1] - v4.f32[1] : v4.f32[1] - v16.f32[1];
    if (v25 <= 0.0001)
    {
      v26 = v4.f32[2] <= v16.f32[2] ? v16.f32[2] - v4.f32[2] : v4.f32[2] - v16.f32[2];
      if (v26 <= 0.0001)
      {
        goto LABEL_66;
      }
    }
  }

  LODWORD(v27) = vsubq_f32(v5, v16).u32[0];
  v28 = vsubq_f32(v16, v5);
  if ((vmovn_s32(vcgtq_f32(v5, v16)).u8[0] & 1) == 0)
  {
    v27 = v28.f32[0];
  }

  if (v27 <= 0.0001)
  {
    v29 = v5.f32[1] <= v16.f32[1] ? v16.f32[1] - v5.f32[1] : v5.f32[1] - v16.f32[1];
    if (v29 <= 0.0001)
    {
      v30 = v5.f32[2] <= v16.f32[2] ? v16.f32[2] - v5.f32[2] : v5.f32[2] - v16.f32[2];
      if (v30 <= 0.0001)
      {
LABEL_66:
        v41 = vaddv_f32(*v23.i8) + *&v23.i32[2];
        if (v41 <= 0.0)
        {
LABEL_88:
          v37.i64[0] = v4.i64[0];
          return *v37.i64;
        }

        v42 = vmulq_f32(v7, v7);
        v43 = vaddv_f32(*v42.f32);
        if (v41 < (v43 + v42.f32[2]))
        {
          v40 = v41 / (v43 + v42.f32[2]);
          goto LABEL_69;
        }

        goto LABEL_90;
      }
    }
  }

  v31 = vadd_f32(vadd_f32(vzip1_s32(*v23.i8, *v20.i8), vzip2_s32(*v23.i8, *v20.i8)), vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  if (v31.f32[0] <= 0.0 && v31.f32[1] <= 0.0)
  {
    goto LABEL_88;
  }

  v32 = vsubq_f32(v18, v5);
  v33 = vmulq_f32(v32, v7);
  v34 = vmulq_f32(v32, v17);
  v35 = vadd_f32(vadd_f32(vzip1_s32(*v33.i8, *v34.i8), vzip2_s32(*v33.i8, *v34.i8)), vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v34, v34, 8uLL)));
  v36 = v35.f32[0] < 0.0 || v35.f32[1] > v35.f32[0];
  v37 = *a2;
  if (v36)
  {
    v38 = vmul_f32(vrev64_s32(v35), v31);
    v39 = vsub_f32(v38, vdup_lane_s32(v38, 1));
    if (v35.f32[0] <= 0.0 && v39.f32[0] <= 0.0 && v31.f32[0] >= 0.0)
    {
      LODWORD(v40) = vdiv_f32(v31, vsub_f32(v31, v35)).u32[0];
LABEL_69:
      v4.i64[0] = vmlaq_n_f32(v4, v7, v40).u64[0];
      goto LABEL_88;
    }

    v48 = vsubq_f32(v18, v16);
    v49 = vmulq_f32(v48, v7);
    v50 = vmulq_f32(v48, v17);
    v51 = vadd_f32(vadd_f32(vzip1_s32(*v50.i8, *v49.i8), vzip2_s32(*v50.i8, *v49.i8)), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
    v52 = v51.f32[0] < 0.0 || v51.f32[1] > v51.f32[0];
    v37 = *a3;
    if (!v52)
    {
      return *v37.i64;
    }

    v53 = vmul_f32(v51, v31);
    v54 = vsub_f32(vdup_lane_s32(v53, 1), v53);
    if (v51.f32[0] <= 0.0 && v54.f32[0] <= 0.0 && v31.f32[1] >= 0.0)
    {
      v47 = v31.f32[1] / (v31.f32[1] - v51.f32[0]);
      goto LABEL_82;
    }

    v55 = vmul_f32(v51, v35);
    v56 = vsub_f32(v55, vdup_lane_s32(v55, 1));
    if (v56.f32[0] > 0.0 || (v35.f32[1] - v35.f32[0]) < 0.0 || (v57 = v51.f32[1] - v51.f32[0], v57 < 0.0))
    {
      v58 = 1.0 / vadd_f32(vadd_f32(v54, v39), v56).f32[0];
      v4.i64[0] = vmlaq_n_f32(vmlaq_n_f32(v4, v7, v58 * v54.f32[0]), v17, v58 * v39.f32[0]).u64[0];
      goto LABEL_88;
    }

    v5.i64[0] = vmlaq_n_f32(v5, v28, (v35.f32[1] - v35.f32[0]) / (v57 + (v35.f32[1] - v35.f32[0]))).u64[0];
LABEL_90:
    v37.i64[0] = v5.i64[0];
  }

  return *v37.i64;
}

uint64_t sub_239E74974(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 1312);
  v3 = *(v2 + 320);
  if (!v3)
  {
    return 0;
  }

  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  while (!a2[10].i64[1])
  {
LABEL_11:
    v3 = v3->i64[0];
    if (!v3)
    {
      return 0;
    }
  }

  v5 = v3[1];
  v6 = vsubq_f32(v3[2], v5);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddv_f32(*v7.f32) + v7.f32[2];
  v9 = a2[10].i64[1];
  while (1)
  {
    if (v3[3].i32[0] == *(v9 + 16))
    {
      v10 = vmulq_f32(vaddq_f32(a2[1], a2[2]), v4);
      v11 = vmulq_f32(vsubq_f32(v10, v5), v6);
      v12 = vaddv_f32(*v11.f32) + v11.f32[2];
      v13 = v3[1];
      if (v12 > 0.0)
      {
        v13 = v3[2];
        if (v12 < v8)
        {
          v13 = vmlaq_n_f32(v5, v6, v12 * (1.0 / v8));
        }
      }

      v14 = vsubq_f32(v13, v10);
      v15 = vmulq_f32(v14, v14);
      if (*(v2 + 248) * 0.866025404 > sqrtf(vaddv_f32(*v15.f32) + v15.f32[2]))
      {
        return 1;
      }
    }

    v9 = *v9;
    if (!v9)
    {
      goto LABEL_11;
    }
  }
}

void sub_239E74A5C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_239E7C5D0(&__p, 3uLL);
  if (*(*(a1 + 1312) + 40) != *(*(a1 + 1312) + 48))
  {
    operator new();
  }

  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_239E74C04(void *a1, void *a2, uint64_t *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v393 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v361 = v9;
  v362 = v8;
  v19 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v8, v10, @"position", 786435, v15, v16, v17, v18, v11, v12, v13, v14);
  v31 = v19;
  if (!v19)
  {
    goto LABEL_45;
  }

  v32 = objc_msgSend_dataStart(v19, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v44 = objc_msgSend_stride(v31, v33, v34, v35, v40, v41, v42, v43, v36, v37, v38, v39);
  v56 = objc_msgSend_bufferSize(v31, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51);
  v66 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v8, v57, @"normal", 786435, v62, v63, v64, v65, v58, v59, v60, v61);

  if (v66)
  {
    v369 = objc_msgSend_dataStart(v66, v67, v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
    v372 = objc_msgSend_stride(v66, v78, v79, v80, v85, v86, v87, v88, v81, v82, v83, v84);
    v371 = objc_msgSend_bufferSize(v66, v89, v90, v91, v96, v97, v98, v99, v92, v93, v94, v95);
  }

  else
  {
    v371 = 0;
    v372 = 0;
    v369 = 0;
  }

  v100 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v8, v67, @"occlusionValue", 786435, v74, v75, v76, v77, v70, v71, v72, v73);

  if (v100)
  {
    objc_msgSend_dataStart(v100, v101, v102, v103, v108, v109, v110, v111, v104, v105, v106, v107);
    objc_msgSend_stride(v100, v112, v113, v114, v119, v120, v121, v122, v115, v116, v117, v118);
    objc_msgSend_bufferSize(v100, v123, v124, v125, v130, v131, v132, v133, v126, v127, v128, v129);
  }

  v134 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v8, v101, @"textureCoordinate", 786435, v108, v109, v110, v111, v104, v105, v106, v107);

  if (v134)
  {
    v368 = objc_msgSend_dataStart(v134, v135, v136, v137, v142, v143, v144, v145, v138, v139, v140, v141);
    v370 = objc_msgSend_stride(v134, v146, v147, v148, v153, v154, v155, v156, v149, v150, v151, v152);
    v168 = objc_msgSend_bufferSize(v134, v157, v158, v159, v164, v165, v166, v167, v160, v161, v162, v163);
  }

  else
  {
    v168 = 0;
    v370 = 0;
    v368 = 0;
  }

  v169 = objc_msgSend_indexBuffer(v9, v135, v136, v137, v142, v143, v144, v145, v138, v139, v140, v141);
  v181 = objc_msgSend_map(v169, v170, v171, v172, v177, v178, v179, v180, v173, v174, v175, v176);

  v360 = v181;
  v367 = objc_msgSend_bytes(v181, v182, v183, v184, v189, v190, v191, v192, v185, v186, v187, v188);
  v364 = objc_msgSend_indexCount(v9, v193, v194, v195, v200, v201, v202, v203, v196, v197, v198, v199);
  v389 = 0;
  v390 = 0;
  v391 = 0;
  if (objc_msgSend_geometryType(v9, v204, v205, v206, v211, v212, v213, v214, v207, v208, v209, v210) != 2 || objc_msgSend_indexType(v9, v215, v216, v217, v222, v223, v224, v225, v218, v219, v220, v221) != 32)
  {
    v233 = objc_msgSend_topology(v9, v215, v216, v217, v222, v223, v224, v225, v218, v219, v220, v221);
    if (v233)
    {
      v238 = objc_msgSend_topology(v9, v226, v227, v228, v234, v235, v236, v237, v229, v230, v231, v232);
      v250 = objc_msgSend_faceTopology(v238, v239, v240, v241, v246, v247, v248, v249, v242, v243, v244, v245);

      if (v250)
      {
        v365 = objc_msgSend_topology(v9, v226, v227, v228, v234, v235, v236, v237, v229, v230, v231, v232);
        v262 = objc_msgSend_faceTopology(v365, v251, v252, v253, v258, v259, v260, v261, v254, v255, v256, v257);
        v233 = objc_msgSend_map(v262, v263, v264, v265, v270, v271, v272, v273, v266, v267, v268, v269);

        v285 = objc_msgSend_topology(v9, v274, v275, v276, v281, v282, v283, v284, v277, v278, v279, v280);
        v366 = objc_msgSend_faceCount(v285, v286, v287, v288, v293, v294, v295, v296, v289, v290, v291, v292);

        if (v233)
        {
          v359 = objc_msgSend_bytes(v233, v226, v227, v228, v234, v235, v236, v237, v229, v230, v231, v232);
LABEL_19:
          v358 = objc_msgSend_indexCount(v9, v226, v227, v228, v234, v235, v236, v237, v229, v230, v231, v232);
          v308 = objc_msgSend_indexType(v9, v297, v298, v299, v304, v305, v306, v307, v300, v301, v302, v303);
          v320 = objc_msgSend_geometryType(v9, v309, v310, v311, v316, v317, v318, v319, v312, v313, v314, v315);
          sub_239F5960C(&v389, v367, v358, v359, v366, v308, v320, 2);
          v321 = v390;
          v367 = v389;

          v364 = (v321 - v367) >> 2;
          goto LABEL_20;
        }
      }

      else
      {
        v366 = 0;
        v233 = 0;
      }
    }

    else
    {
      v366 = 0;
    }

    v359 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v322 = objc_msgSend_vertexCount(v362, v215, v216, v217, v222, v223, v224, v225, v218, v219, v220, v221);
  if (v364)
  {
    v330 = v322;
    for (i = 0; i < v364; i += 3)
    {
      v387 = 0u;
      memset(v388, 0, sizeof(v388));
      v385 = 0u;
      v386 = 0u;
      v383 = 0u;
      v384 = 0u;
      v381 = 0u;
      v382 = 0u;
      v379 = 0u;
      v380 = 0u;
      v377 = 0u;
      v378 = 0u;
      v332 = &v367[4 * i];
      v333 = *(v332 + 1);
      v392[0] = *v332;
      v392[1] = v333;
      v334 = *(v332 + 2);
      v392[2] = v334;
      if (v330 > v392[0] && v330 > v333 && v330 > v334)
      {
        v335 = 0;
        v336 = 64;
        do
        {
          v337 = v392[v335];
          if (v44 * v337 + 8 < v56)
          {
            *(&v377 + v336 - 48) = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a7, a4, *(v32 + v44 * v337)), a5, *(v32 + v44 * v337 + 4)), a6, *(v32 + v44 * v337 + 8));
            if (v66 && v372 * v337 + 8 < v371)
            {
              *(&v377 + v336) = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, *(v369 + v372 * v337)), a5, *(v369 + v372 * v337 + 4)), a6, *(v369 + v372 * v337 + 8)), 0, a7);
            }

            if (v134)
            {
              v338 = v370 * v337;
              if (v338 + 4 < v168)
              {
                *(v388 + v335) = *(v368 + v338);
              }
            }
          }

          ++v335;
          v336 += 16;
        }

        while (v335 != 3);
        if (v66)
        {
          v339 = vcvtq_f64_f32(*v378.f32);
          v340 = vcvt_hight_f64_f32(v378);
          v341 = vsubq_f64(vcvt_hight_f64_f32(v379), v340);
          v342 = vsubq_f64(vcvtq_f64_f32(*v379.f32), v339);
          v343 = vsubq_f64(vcvt_hight_f64_f32(v380), v340);
          v344 = vsubq_f64(vcvtq_f64_f32(*v380.f32), v339);
          v345 = vmlaq_laneq_f64(vnegq_f64(vmulq_laneq_f64(v341, v344, 1)), v343, v342, 1);
          *&v343.f64[1] = v344.n128_u64[0];
          v341.f64[1] = v342.f64[0];
          v346 = vmlaq_f64(vnegq_f64(vmulq_f64(v343, v342)), v344, v341);
          v347 = vmulq_f64(v346, v346);
          v348 = vmulq_f64(v345, v345);
          v345.f64[1] = v346.f64[0];
          v348.n128_f64[0] = v348.n128_f64[0] + v347.f64[0];
          v347.f64[0] = 1.0 / sqrt(v348.n128_f64[0] + v347.f64[1]);
          v349 = vmulq_laneq_f64(v347, v346, 1);
          v350 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v345, v347.f64[0])), v349);
        }

        else
        {
          v351 = vsubq_f32(v379, v378);
          v352 = vsubq_f32(v380, v378);
          v344 = vextq_s8(vuzp1q_s32(v352, v352), v352, 0xCuLL);
          v353 = vmlaq_f32(vnegq_f32(vmulq_f32(v344, v351)), vextq_s8(vuzp1q_s32(v351, v351), v351, 0xCuLL), v352);
          v349 = vuzp1q_s32(v353, v353);
          v348 = vmulq_f32(v353, v353);
          v344.n128_u32[1] = 0;
          v344.n128_f32[0] = (v348.n128_f32[2] + v348.n128_f32[0]) + v348.n128_f32[1];
          v354 = vextq_s8(v349, v353, 0xCuLL);
          v349.n128_u64[0] = vrsqrte_f32(v344.n128_u32[0]);
          v349.n128_u64[0] = vmul_f32(vrsqrts_f32(v344.n128_u32[0], vmul_f32(v349.n128_u64[0], v349.n128_u64[0])), v349.n128_u64[0]);
          v348.n128_u64[0] = vrsqrts_f32(v344.n128_u32[0], vmul_f32(v349.n128_u64[0], v349.n128_u64[0]));
          v349.n128_u64[0] = vmul_f32(v349.n128_u64[0], v348.n128_u64[0]);
          v350 = vmulq_n_f32(v354, v349.n128_f32[0]);
          v381 = v350;
          v382 = v350;
          v383 = v350;
        }

        v384 = v350;
        *&v377 = v362;
        *(&v377 + 1) = objc_msgSend_material(v361, v323, v324, v325, v350, v349, v348, v344, v326, v327, v328, v329);

        sub_239E7532C(&v377);
        v355 = a3[1];
        if (v355 >= a3[2])
        {
          v357 = sub_239E7C3B4(a3, &v377);
        }

        else
        {
          sub_239E79CE8(v355, &v377);
          v357 = v356 + 224;
        }

        a3[1] = v357;
      }
    }
  }

  if (v389)
  {
    v390 = v389;
    operator delete(v389);
  }

  v9 = v361;
LABEL_45:
}

void sub_239E7526C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  v19 = *(v17 - 152);
  if (v19)
  {
    *(v17 - 144) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

float sub_239E7532C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 32);
  v3 = vcvt_hight_f64_f32(v1);
  v4 = vcvt_hight_f64_f32(v2);
  v5 = vcvtq_f64_f32(*v2.f32);
  v6 = vsubq_f64(vcvtq_f64_f32(*v1.f32), v5);
  v7 = vsubq_f64(v3, v4);
  v8 = *(a1 + 48);
  v9 = vsubq_f64(vcvtq_f64_f32(*v8.f32), v5);
  v10 = vsubq_f64(vcvt_hight_f64_f32(v8), v4);
  v11 = vaddvq_f64(vmulq_f64(v9, v9)) + vmulq_f64(v10, v10).f64[0];
  v12 = vaddq_f64(vpaddq_f64(vmulq_f64(v6, v6), vmulq_f64(v9, v6)), vzip1q_s64(vmulq_f64(v7, v7), vmulq_f64(v10, v7)));
  v13.f64[1] = v12.f64[1];
  v13.f64[0] = v11;
  v14 = vmulq_f64(v13, v12);
  v15 = vsubq_f64(vdupq_laneq_s64(v14, 1), v14);
  v15.f64[0] = 1.0 / v15.f64[0];
  *(a1 + 128) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v6, v15.f64[0])), vmulq_f64(v15, v7));
  *(a1 + 144) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v9, v15.f64[0])), vmulq_f64(v15, v10));
  *(a1 + 160) = vcvt_f32_f64(v12);
  result = v11;
  *(a1 + 168) = result;
  return result;
}

void sub_239E753DC(void *a1, uint64_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v120 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v19 = objc_msgSend_transform(v7, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v31 = v19;
  if (v19)
  {
    objc_msgSend_matrix(v19, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v32 = 0;
    v113[0] = v33;
    v113[1] = v34;
    v113[2] = v35;
    v113[3] = v36;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    do
    {
      *(&v114 + v32 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v113[v32])), a5, *&v113[v32], 1), v102, v113[v32], 2), v101, v113[v32], 3);
      ++v32;
    }

    while (v32 != 4);
    a5 = v115;
    a4 = v114;
    v101 = v117;
    v102 = v116;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v7;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v59 = objc_msgSend_submeshes(v48, v49, v50, v51, 0, v56, v57, v58, v52, v53, v54, v55);
    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v109, v119, v64, v65, v66, v67, 16, v61, v62, v63);
    if (v68)
    {
      v69 = *v110;
      do
      {
        for (i = 0; i != v68; ++i)
        {
          if (*v110 != v69)
          {
            objc_enumerationMutation(v59);
          }

          sub_239E74C04(v48, *(*(&v109 + 1) + 8 * i), a2, a4, a5, v102, v101);
        }

        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v71, &v109, v119, v75, v76, v77, v78, 16, v72, v73, v74);
      }

      while (v68);
    }
  }

  if (a3)
  {
    v79 = objc_msgSend_children(v7, v37, v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);
    v80 = v79;
    if (v79)
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v81 = v79;
      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v105, v118, v86, v87, v88, v89, 16, v83, v84, v85);
      if (v90)
      {
        v91 = *v106;
        do
        {
          for (j = 0; j != v90; ++j)
          {
            if (*v106 != v91)
            {
              objc_enumerationMutation(v81);
            }

            sub_239E753DC(*(*(&v105 + 1) + 8 * j), a2, 1, a4, a5);
          }

          v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v93, &v105, v118, v97, v98, v99, v100, 16, v94, v95, v96);
        }

        while (v90);
      }
    }
  }
}

uint64_t sub_239E756B8(uint64_t a1, float a2)
{
  v2 = *(a1 + 1312);
  v3 = *(v2 + 248);
  if (v3 > a2)
  {
    return 0;
  }

  v76 = 0;
  *(v75.i64 + 4) = 0;
  v75.i32[0] = 0;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v7 = sub_239E7CBA4(&v72, v2 + 344);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v8 = ceilf((a2 - v3) / *(*(a1 + 1312) + 248));
  v9 = v8 + v8;
  v10 = v9;
  LODWORD(v71) = 1065353216;
  if (v9 >= 4295000000.0)
  {
    v10 = -1;
  }

  v60 = v10;
  if (*(&v73 + 1))
  {
    v11 = 0;
    v12 = a1 + 896;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v61 = v10 - 1;
    __asm
    {
      FMOV            V1.4S, #1.0
      FMOV            V0.4S, #-1.0
    }

    v62 = _Q1;
    do
    {
      for (i = v73; i; i = *i)
      {
        v20 = *(a1 + 1312);
        v23 = *(v20 + 24);
        v21 = v20 + 24;
        v22 = v23;
        if (v23)
        {
          v24 = i[2];
          v25 = v21;
          do
          {
            v26 = *(v22 + 32);
            _CF = v26 >= v24;
            v27 = v26 < v24;
            if (_CF)
            {
              v25 = v22;
            }

            v22 = *(v22 + 8 * v27);
          }

          while (v22);
          if (v25 != v21 && v24 >= *(v25 + 32))
          {
            sub_239E761FC(v7, *(*(v25 + 40) + 8), &v75);
            for (j = 0; j != 6; ++j)
            {
              v29 = vaddq_s32(*(v12 + 16 * j), v75);
              if ((v29.i32[0] & 0x80000000) == 0 && (v29.i32[1] & 0x80000000) == 0)
              {
                v30 = v29.i32[2];
                if ((v29.i32[2] & 0x80000000) == 0)
                {
                  v31 = *(a1 + 1312);
                  v32 = vmovn_s32(vcgtq_s32(v31[18], v29));
                  if (v32.i8[0] & 1) != 0 && (v32.i8[2] & 1) != 0 && (v32.i8[4])
                  {
                    v76 = *(v31[9].i64[0] + 8 * v29.u8[8]) | ((*(v31[7].i64[1] + 8 * v29.u8[5]) | *(v31[9].i64[0] + 8 * v29.u8[9]) | *(v31[6].i64[0] + 8 * v29.u8[1])) << 24) | *(v31[7].i64[1] + 8 * v29.u8[4]) | *(v31[6].i64[0] + 8 * v29.u8[0]);
                    v64 = v29;
                    v7 = sub_239E7C134(&v31[10].i64[1], &v76);
                    if (!v7)
                    {
                      v33 = 0;
                      v34 = 0;
                      v35 = *(a1 + 1312);
                      v36 = 3.4028e38;
                      do
                      {
                        v37 = vaddq_s32(*(v12 + 16 * v33), v64);
                        v38 = v37.i16[0];
                        if ((v37.i32[0] & 0x80000000) == 0)
                        {
                          v39 = v37.i16[2];
                          if ((v37.i32[1] & 0x80000000) == 0)
                          {
                            v40 = v37.i16[4];
                            if ((v37.i32[2] & 0x80000000) == 0)
                            {
                              v37 = vcgtq_s32(*(v35 + 288), v37);
                              *v37.f32 = vmovn_s32(v37);
                              if (v37.i8[0] & 1) != 0 && (v37.i8[2] & 1) != 0 && (v37.i8[4])
                              {
                                v41 = *(v35 + 24);
                                if (v41)
                                {
                                  v42 = *(v35 + 144);
                                  v43 = *(v35 + 120);
                                  v44 = *(v35 + 96);
                                  v7 = *(v43 + 8 * HIBYTE(v39)) | *(v42 + 8 * HIBYTE(v40)) | *(v44 + 8 * HIBYTE(v38));
                                  v45 = *(v42 + 8 * v40) | (v7 << 24) | *(v43 + 8 * v39) | *(v44 + 8 * v38);
                                  v46 = v35 + 24;
                                  do
                                  {
                                    v47 = *(v41 + 32);
                                    _CF = v47 >= v45;
                                    v48 = v47 < v45;
                                    if (_CF)
                                    {
                                      v46 = v41;
                                    }

                                    v41 = *(v41 + 8 * v48);
                                  }

                                  while (v41);
                                  if (v46 != v35 + 24 && v45 >= *(v46 + 32))
                                  {
                                    v49 = *(v46 + 40);
                                    v50 = fabsf(*(v49 + 116));
                                    if (v50 < v36)
                                    {
                                      v36 = v50;
                                      v34 = v49;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        ++v33;
                      }

                      while (v33 != 18);
                      if (v34)
                      {
                        *v37.f32 = vcvt_f32_s32(*v64.i8);
                        v37.f32[2] = v30;
                        v51 = vaddq_f32(v37, v62);
                        v52 = *(v35 + 248);
                        v53 = vmlaq_n_f32(*(v35 + 272), v51, v52);
                        v51.f32[0] = v52 * 0.5;
                        v63 = vsubq_f32(v53, vdupq_lane_s32(*v51.f32, 0));
                        v65 = v52;
                        v77[0] = v63;
                        v54 = (*(v35 + 40) + 224 * *(v34 + 144));
                        v68 = v54[1];
                        v67 = v54[3];
                        v66 = v54[2];
                        *v55.i64 = sub_239E74590(&v68, &v67, &v66, v77);
                        v56 = vsubq_f32(v63, v55);
                        v57 = vmulq_f32(v56, v56);
                        v58 = sqrtf(vaddv_f32(*v57.f32) + v57.f32[2]);
                        if (v58 <= v36)
                        {
                          v59 = v65 + v36;
                        }

                        else
                        {
                          v59 = v58;
                        }

                        if (v59 < a2)
                        {
                          operator new();
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

      if (v11 == v61)
      {
        break;
      }

      LODWORD(v74) = v71;
      sub_239E7CC1C(&v72, v70, 0);
      ++v11;
      v7 = sub_239E7D264(&v69);
    }

    while (*(&v73 + 1));
  }

  sub_239E7B644(&v69);
  sub_239E7B644(&v72);
  return v60;
}

void sub_239E75C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_239E7B644(&a29);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

void *sub_239E75C74(void *result, int a2)
{
  v2 = a2 - 1;
  if (a2 >= 1)
  {
    v3 = result;
    v75 = 0;
    *(v74.i64 + 4) = 0;
    v74.i32[0] = 0;
    v71 = 0u;
    v72 = 0u;
    v73 = 1065353216;
    v68 = 0u;
    v69 = 0u;
    v70 = 1065353216;
    v65 = 0u;
    v66 = 0u;
    v67 = 1065353216;
    v4 = *(result[164] + 400);
    if (v4)
    {
      do
      {
        v5 = v4[2];
        v64 = v5;
        v6 = v3[164];
        v7 = &v6[1].i8[8];
        v8 = v6[1].i64[1];
        if (v8)
        {
          v9 = &v6[1].i8[8];
          v10 = v6[1].i64[1];
          do
          {
            v11 = *(v10 + 32);
            v12 = v11 >= v5;
            v13 = v11 < v5;
            if (v12)
            {
              v9 = v10;
            }

            v10 = *(v10 + 8 * v13);
          }

          while (v10);
          if (v9 != v7 && v5 >= *(v9 + 4))
          {
            sub_239E761FC(result, *(*(v9 + 5) + 8), &v74);
            v14 = 0;
            while (1)
            {
              v15 = vaddq_s32(*&v3[2 * v14 + 112], v74);
              v16 = v15.i16[0];
              if (v15.i32[0] < 0)
              {
                break;
              }

              v17 = v15.i16[2];
              if (v15.i32[1] < 0)
              {
                break;
              }

              if (v15.i32[2] < 0)
              {
                break;
              }

              v18 = vmovn_s32(vcgtq_s32(v6[18], v15));
              if ((v18.i8[0] & 1) == 0 || (v18.i8[2] & 1) == 0 || (v18.i8[4] & 1) == 0)
              {
                break;
              }

              v19 = *(v6[9].i64[0] + 8 * v15.u8[8]) | ((*(v6[7].i64[1] + 8 * HIBYTE(v17)) | *(v6[9].i64[0] + 8 * v15.u8[9]) | *(v6[6].i64[0] + 8 * HIBYTE(v16))) << 24) | *(v6[7].i64[1] + 8 * v17) | *(v6[6].i64[0] + 8 * v16);
              v75 = v19;
              v20 = &v6[1].i8[8];
              v21 = v8;
              do
              {
                v22 = *(v21 + 4);
                v12 = v22 >= v19;
                v23 = v22 < v19;
                if (v12)
                {
                  v20 = v21;
                }

                v21 = *&v21[8 * v23];
              }

              while (v21);
              if (v20 == v7 || v19 < *(v20 + 4))
              {
                break;
              }

              if (++v14 == 6)
              {
                goto LABEL_28;
              }
            }

            result = sub_239E7B9B0(&v65, &v64, &v64);
          }
        }

LABEL_28:
        v4 = *v4;
      }

      while (v4);
      v24 = *&v67;
      v25 = v66;
    }

    else
    {
      v25 = 0;
      v24 = 1.0;
    }

    *&v73 = v24;
    sub_239E7CC1C(&v71, v25, 0);
    if (*(&v72 + 1))
    {
      v27 = 0;
      do
      {
        for (i = v72; i; i = *i)
        {
          v29 = v3[164];
          v32 = *(v29 + 24);
          v30 = v29 + 24;
          v31 = v32;
          if (v32)
          {
            v33 = i[2];
            v34 = v30;
            do
            {
              v35 = *(v31 + 32);
              v12 = v35 >= v33;
              v36 = v35 < v33;
              if (v12)
              {
                v34 = v31;
              }

              v31 = *(v31 + 8 * v36);
            }

            while (v31);
            if (v34 != v30 && v33 >= *(v34 + 32))
            {
              sub_239E761FC(v26, *(*(v34 + 40) + 8), &v74);
              v37 = 0;
              v63 = v74;
              do
              {
                v38 = vaddq_s32(*&v3[2 * v37 + 112], v63);
                v39 = v38.i16[0];
                if ((v38.i32[0] & 0x80000000) == 0)
                {
                  v40 = v38.i16[2];
                  if ((v38.i32[1] & 0x80000000) == 0 && (v38.i32[2] & 0x80000000) == 0)
                  {
                    v41 = v3[164];
                    v42 = vmovn_s32(vcgtq_s32(v41[18], v38));
                    if (v42.i8[0] & 1) != 0 && (v42.i8[2] & 1) != 0 && (v42.i8[4])
                    {
                      v45 = v41[1].i64[1];
                      v43 = &v41[1].i64[1];
                      v44 = v45;
                      v46 = *(v43[15] + 8 * v38.u8[8]) | ((*(v43[12] + 8 * HIBYTE(v40)) | *(v43[15] + 8 * v38.u8[9]) | *(v43[9] + 8 * HIBYTE(v39))) << 24) | *(v43[12] + 8 * v40) | *(v43[9] + 8 * v39);
                      v75 = v46;
                      if (!v45)
                      {
                        goto LABEL_57;
                      }

                      v47 = v43;
                      do
                      {
                        v48 = *(v44 + 32);
                        v12 = v48 >= v46;
                        v49 = v48 < v46;
                        if (v12)
                        {
                          v47 = v44;
                        }

                        v44 = *(v44 + 8 * v49);
                      }

                      while (v44);
                      if (v47 == v43 || v46 < v47[4])
                      {
LABEL_57:
                        v47 = v43;
                      }

                      v50 = sub_239E7C134(&v65, &v75);
                      v26 = sub_239E7C134((v3[164] + 384), &v75);
                      if (v47 != (v3[164] + 24) && v26 != 0 && v50 == 0)
                      {
                        v53 = v47[5];
                        if (*(v53 + 192) != 1 || *(v53 + 200) == 1)
                        {
                          sub_239E7B9B0(&v68, &v75, &v75);
                          v26 = sub_239E7B9B0(&v65, &v75, &v75);
                        }
                      }
                    }
                  }
                }

                ++v37;
              }

              while (v37 != 6);
            }
          }
        }

        if (v27 == v2)
        {
          break;
        }

        LODWORD(v73) = v70;
        sub_239E7CC1C(&v71, v69, 0);
        ++v27;
        v26 = sub_239E7D264(&v68);
      }

      while (*(&v72 + 1));
    }

    for (j = v66; j; j = *j)
    {
      v55 = j[2];
      v64 = v55;
      v56 = v3[164];
      v59 = *(v56 + 24);
      v57 = v56 + 24;
      v58 = v59;
      if (v59)
      {
        v60 = v57;
        do
        {
          v61 = *(v58 + 32);
          v12 = v61 >= v55;
          v62 = v61 < v55;
          if (v12)
          {
            v60 = v58;
          }

          v58 = *(v58 + 8 * v62);
        }

        while (v58);
        if (v60 != v57 && v55 >= *(v60 + 32))
        {
          sub_239E7D2D0((v3[164] + 168), &v64);
          sub_239E7D2D0((v3[164] + 384), &v64);
          sub_239E7D308((v3[164] + 16), &v64);
        }
      }
    }

    sub_239E7B644(&v65);
    sub_239E7B644(&v68);
    return sub_239E7B644(&v71);
  }

  return result;
}

void sub_239E76134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  sub_239E7B644(va);
  sub_239E7B644(va1);
  sub_239E7B644(va2);
  _Unwind_Resume(a1);
}

void sub_239E76168(uint64_t result, float32x4_t **a2)
{
  for (i = *(*(result + 1312) + 400); i; i = *i)
  {
    v5 = *(result + 1312);
    v8 = *(v5 + 24);
    v6 = v5 + 24;
    v7 = v8;
    if (v8)
    {
      v9 = i[2];
      v10 = v6;
      do
      {
        v11 = *(v7 + 32);
        v12 = v11 >= v9;
        v13 = v11 < v9;
        if (v12)
        {
          v10 = v7;
        }

        v7 = *(v7 + 8 * v13);
      }

      while (v7);
      if (v10 != v6 && v9 >= *(v10 + 32))
      {
        sub_239E763B4(*a2, *(v10 + 40), *(*(result + 1312) + 424));
      }
    }
  }
}

double sub_239E761FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = xmmword_239F9AD30;
  v4 = xmmword_239F9AD40;
  v5 = xmmword_239F9AD50;
  v6 = vdupq_n_s64(a2);
  v7 = 0uLL;
  v8 = vdupq_n_s64(1uLL);
  v9 = vdupq_n_s64(2uLL);
  v10 = vdupq_n_s64(4uLL);
  v11 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  v12 = 24;
  v13 = xmmword_239F9AD60;
  v14 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v3;
    v18.i64[0] = 3 * v3.i64[0];
    v19 = v4;
    v18.i64[1] = 3 * v17.i64[1];
    v20.i64[0] = 3 * v4.i64[0];
    v20.i64[1] = 3 * v19.i64[1];
    v21 = v16;
    v22 = v15;
    v23 = v7;
    v7 = vorrq_s8(v7, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v8, v20), v6), vnegq_s64(vaddq_s64(v19, v19))), vshlq_u64(vandq_s8(vshlq_u64(v8, v18), v6), vnegq_s64(vaddq_s64(v17, v17)))));
    v24 = vaddq_s64(v18, v5);
    v25 = vaddq_s64(v20, v13);
    v16 = vorrq_s8(v16, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v9, v20), v6), vmvnq_s8(v25)), vshlq_u64(vandq_s8(vshlq_u64(v9, v18), v6), vmvnq_s8(v24))));
    v15 = vorrq_s8(v15, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v10, v20), v6), vsubq_s64(v11, v25)), vshlq_u64(vandq_s8(vshlq_u64(v10, v18), v6), vsubq_s64(v11, v24))));
    v5 = vaddq_s64(v5, v14);
    v13 = vaddq_s64(v13, v14);
    v3 = vaddq_s64(v17, v10);
    v4 = vaddq_s64(v19, v10);
    v12 -= 4;
  }

  while (v12);
  v26 = vdupq_n_s64(0x15uLL);
  v27 = vuzp1q_s32(vcgtq_u64(v26, v19), vcgtq_u64(v26, v17));
  v28 = vbslq_s8(v27, v16, v21);
  v29 = vbslq_s8(v27, v15, v22);
  v30 = vbslq_s8(v27, v7, v23);
  *v30.i8 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
  v31 = v30.i32[0] | v30.i32[1];
  v32 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  *v30.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
  result = COERCE_DOUBLE(__PAIR64__(v30.i32[0] | v30.i32[1], v31));
  *(a3 + 8) = v32.i32[0] | v32.i32[1];
  *a3 = result;
  return result;
}

void sub_239E763B4(float32x4_t *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3)
  {
    v5 = a3;
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    __asm
    {
      FMOV            V1.4S, #-1.0
      FMOV            V0.4S, #0.25
    }

    while (v5 >= 1)
    {
      v13 = vcgeq_f32(vmulq_f32(vaddq_f32(*(a2 + 16), *(a2 + 32)), v6), vmulq_f32(vaddq_f32(v4[1], v4[2]), v6));
      v14 = vmovn_s32(vmvnq_s8(v13));
      if (v14.i8[0])
      {
        v15 = 0;
      }

      else
      {
        v15 = 4;
      }

      v16 = vmovn_s32(v13).i8[4];
      if (v14.i8[2])
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 | 2;
      }

      v18 = v4[3].i64[v17 & 0xFFFFFFFE | v16 & 1];
      if (!v18)
      {
        operator new();
      }

      v4 = v4[3].i64[v17 & 0xFFFFFFFE | v16 & 1];
      if (!--v5)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v18 = result;
LABEL_15:
    *(v18 + 32) = *(a2 + 32);
    *(v18 + 16) = *(a2 + 16);
    *(v18 + 116) = *(a2 + 116);
    *(v18 + 128) = *(a2 + 128);
    *(v18 + 144) = *(a2 + 144);
    *(v18 + 192) = *(a2 + 192);
    *(v18 + 8) = *(a2 + 8);
    *(v18 + 196) = *(a2 + 196);
    *(v18 + 200) = *(a2 + 200);
    if (v18 != a2)
    {
      *(v18 + 184) = *(a2 + 184);
      sub_239E7D780((v18 + 152), *(a2 + 168), 0);
    }

    *(v18 + 208) = *(a2 + 208);
    *(v18 + 224) = *(a2 + 224);
    *(v18 + 240) = *(a2 + 240);
    *(v18 + 256) = *(a2 + 256);
  }
}

float32x4_t *sub_239E76650(float32x4_t *result, float32x4_t *a2, int a3)
{
  v3 = a3 - 1;
  if (a3 == 1)
  {
    v4.i64[0] = 0x3F0000003F000000;
    v4.i64[1] = 0x3F0000003F000000;
    v5 = vmulq_f32(vaddq_f32(a2[1], a2[2]), v4);
    v6 = v5.f32[2];
  }

  else
  {
    if ((a3 & ~(a3 >> 31)) <= a3 - 2)
    {
      return result;
    }

    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v5 = vmulq_f32(vaddq_f32(a2[1], a2[2]), v7);
    v6 = v5.f32[2];
    do
    {
      v8 = vcgeq_f32(v5, vmulq_f32(vaddq_f32(result[1], result[2]), v7));
      v9 = vmovn_s32(vmvnq_s8(v8));
      if (v9.i8[0])
      {
        v10 = 0;
      }

      else
      {
        v10 = 4;
      }

      if ((v9.i8[2] & 1) == 0)
      {
        v10 |= 2u;
      }

      result = result[3].i64[v10 & 0xFFFFFFFE | vmovn_s32(v8).i32[1] & 1];
      --v3;
    }

    while (v3);
  }

  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v12 = vmulq_f32(vaddq_f32(result[1], result[2]), v11);
  v13 = vmvn_s8(vcge_f32(*v5.f32, *v12.f32));
  if (v13.i8[0])
  {
    v14 = 0;
  }

  else
  {
    v14 = 4;
  }

  if (v13.i8[4])
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 | 2;
  }

  if (v6 >= v12.f32[2])
  {
    ++v15;
  }

  result[3].i64[v15] = 0;
  return result;
}

void sub_239E76738(uint64_t *a1)
{
  v56.i32[2] = 0;
  v56.i64[0] = 0;
  v46 = *(a1[164] + 184);
  if (v46)
  {
    v1 = a1;
    v57 = 0;
    v2 = a1 + 112;
    __asm
    {
      FMOV            V1.4S, #1.0
      FMOV            V0.4S, #-1.0
    }

    v48 = _Q1;
    do
    {
      v8 = v1[164];
      v11 = *(v8 + 24);
      v9 = v8 + 24;
      v10 = v11;
      if (v11)
      {
        v12 = v46[2];
        v13 = v9;
        do
        {
          v14 = *(v10 + 32);
          _CF = v14 >= v12;
          v15 = v14 < v12;
          if (_CF)
          {
            v13 = v10;
          }

          v10 = *(v10 + 8 * v15);
        }

        while (v10);
        if (v13 != v9 && v12 >= *(v13 + 32))
        {
          v47 = *(v13 + 40);
          for (i = *(v47 + 168); i; i = *i)
          {
            v55 = *(i + 4);
            v17 = v55;
            v18 = *(v1[164] + 40);
            sub_239E761FC(a1, *(v47 + 8), &v56);
            v19 = 0;
            v20 = v56;
            v21 = (v18 + 224 * v17);
            v49 = v56;
            do
            {
              v22 = vaddq_s32(*&v2[2 * v19], v20);
              v23 = v22.i16[0];
              if ((v22.i32[0] & 0x80000000) == 0)
              {
                v24 = v22.i16[2];
                if ((v22.i32[1] & 0x80000000) == 0)
                {
                  v25 = v22.i16[4];
                  if ((v22.i32[2] & 0x80000000) == 0)
                  {
                    v26 = v1[164];
                    v27 = vmovn_s32(vcgtq_s32(*(v26 + 288), v22));
                    if (v27.i8[0] & 1) != 0 && (v27.i8[2] & 1) != 0 && (v27.i8[4])
                    {
                      *v22.f32 = vcvt_f32_u32(*v22.f32);
                      v22.f32[2] = v22.u32[2];
                      v28 = vaddq_f32(v22, v48);
                      v29 = *(v26 + 248);
                      v30 = vmlaq_n_f32(*(v26 + 272), v28, v29);
                      v28.f32[0] = v29 * 0.5;
                      v50 = v29;
                      v51 = vsubq_f32(v30, vdupq_lane_s32(*v28.f32, 0));
                      v58[0] = v51;
                      v54 = v21[1];
                      v53 = v21[3];
                      v52 = v21[2];
                      *v31.i64 = sub_239E74590(&v54, &v53, &v52, v58);
                      v32 = vsubq_f32(v51, v31);
                      v33 = vmulq_f32(v32, v32);
                      v34 = sqrtf(vaddv_f32(*v33.f32) + v33.f32[2]);
                      v37 = *(v26 + 24);
                      v36 = (v26 + 24);
                      v35 = v37;
                      v38 = *(v36[15] + 8 * v25) | ((*(v36[12] + 8 * HIBYTE(v24)) | *(v36[15] + 8 * HIBYTE(v25)) | *(v36[9] + 8 * HIBYTE(v23))) << 24) | *(v36[12] + 8 * v24) | *(v36[9] + 8 * v23);
                      v57 = v38;
                      if (!v37)
                      {
                        goto LABEL_27;
                      }

                      v39 = v36;
                      do
                      {
                        v40 = v35[4];
                        _CF = v40 >= v38;
                        v41 = v40 < v38;
                        if (_CF)
                        {
                          v39 = v35;
                        }

                        v35 = v35[v41];
                      }

                      while (v35);
                      if (v39 == v36 || v38 < v39[4])
                      {
LABEL_27:
                        operator new();
                      }

                      v42 = v39[5];
                      v20 = v49;
                      if ((v42[12].i8[0] & 1) == 0)
                      {
                        v43 = fabsf(v42[7].f32[1]);
                        if (v50 * 0.866025404 <= v43)
                        {
                          v44 = v55;
                          if (v42[9].i32[0] != v55 && v34 < v43)
                          {
                            v42[7].f32[1] = -v34;
                            v42[8] = v31;
                            v42[9].i32[0] = v44;
                            a1 = sub_239E7BF04(&v42[9].i64[1], &v55, &v55);
                            v20 = v49;
                          }
                        }
                      }
                    }
                  }
                }
              }

              ++v19;
            }

            while (v19 != 26);
          }
        }
      }

      v46 = *v46;
    }

    while (v46);
  }
}

void sub_239E76B44(uint64_t a1)
{
  v40.i32[2] = 0;
  v40.i64[0] = 0;
  v1 = *(a1 + 1312);
  v2 = *(v1 + 184);
  if (v2)
  {
    v3 = v1 + 24;
    v4 = *(v1 + 24);
    v5 = a1 + 896;
    __asm { FMOV            V0.4S, #1.0 }

    v39 = _Q0;
    do
    {
      if (v4)
      {
        v11 = v2[2];
        v12 = v1 + 24;
        v13 = v4;
        do
        {
          v14 = *(v13 + 32);
          _CF = v14 >= v11;
          v15 = v14 < v11;
          if (_CF)
          {
            v12 = v13;
          }

          v13 = *(v13 + 8 * v15);
        }

        while (v13);
        if (v12 != v3 && v11 >= *(v12 + 32))
        {
          v16 = *(v12 + 40);
          v17 = *(v16 + 116);
          if (v17 < 0.0)
          {
            sub_239E761FC(a1, *(v16 + 8), &v40);
            v19 = 0;
            *v20.f32 = vcvt_f32_s32(*v40.i8);
            v20.f32[2] = v40.i32[2];
            v21 = vaddq_f32(v20, v39);
            while (1)
            {
              v22 = vaddq_s32(*(v5 + 16 * v19), v40);
              if ((v22.i32[0] & 0x80000000) == 0 && (v22.i32[1] & 0x80000000) == 0 && (v22.i32[2] & 0x80000000) == 0)
              {
                v23 = vmovn_s32(vcgtq_s32(*(v1 + 288), v22));
                if (v23.i8[0] & 1) != 0 && (v23.i8[2] & 1) != 0 && (v23.i8[4])
                {
                  v24 = *(*(v1 + 144) + 8 * v22.u8[8]) | ((*(*(v1 + 120) + 8 * v22.u8[5]) | *(*(v1 + 144) + 8 * v22.u8[9]) | *(*(v1 + 96) + 8 * v22.u8[1])) << 24) | *(*(v1 + 120) + 8 * v22.u8[4]) | *(*(v1 + 96) + 8 * v22.u8[0]);
                  v25 = v1 + 24;
                  v26 = v4;
                  do
                  {
                    v27 = *(v26 + 32);
                    _CF = v27 >= v24;
                    v28 = v27 < v24;
                    if (_CF)
                    {
                      v25 = v26;
                    }

                    v26 = *(v26 + 8 * v28);
                  }

                  while (v26);
                  if (v25 != v3 && v24 >= *(v25 + 32))
                  {
                    v29 = *(v25 + 40);
                    if ((v29[12].i8[0] & 1) == 0 && v29[7].f32[1] >= 0.0)
                    {
                      v30 = v29[8];
                      v31 = *(v1 + 248);
                      v18.f32[0] = v31 * 0.5;
                      v18 = vdupq_lane_s32(*v18.f32, 0);
                      v32 = vsubq_f32(vsubq_f32(vmlaq_n_f32(*(v1 + 272), v21, v31), v18), v30);
                      v33 = vmulq_f32(v32, v32);
                      *&v34 = vaddv_f32(*v33.f32) + v33.f32[2];
                      *v33.f32 = vrsqrte_f32(v34);
                      *v33.f32 = vmul_f32(vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)), *v33.f32);
                      *v22.f32 = vcvt_f32_s32(*v22.f32);
                      v22.f32[2] = v22.i32[2];
                      v35 = vsubq_f32(vsubq_f32(vmlaq_n_f32(*(v1 + 272), vaddq_f32(v22, v39), v31), v18), v30);
                      v36 = vmulq_f32(v35, v35);
                      *&v37 = vaddv_f32(*v36.f32) + v36.f32[2];
                      *v36.f32 = vrsqrte_f32(v37);
                      *v36.f32 = vmul_f32(vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)), *v36.f32);
                      v38 = vmulq_f32(vmulq_n_f32(v32, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]), vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]));
                      if ((vaddv_f32(*v38.f32) + v38.f32[2]) > 0.0)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              if (++v19 == 26)
              {
                goto LABEL_30;
              }
            }

            *(v16 + 116) = -v17;
          }
        }
      }

LABEL_30:
      v2 = *v2;
    }

    while (v2);
  }
}

uint64_t sub_239E76DF4(uint64_t result)
{
  v1 = *(result + 1312);
  v2 = v1[18];
  if (v2.i32[0] >= 1)
  {
    v3 = 0;
    v4 = v1[18].i64[1];
    v5 = HIDWORD(v1[18].i64[0]);
    v6 = &v1[1].i8[8];
    v7 = result + 896;
    do
    {
      if ((v5 & 0x80000000) == 0)
      {
        v8 = 0;
        v9 = v3;
        result = 1;
        do
        {
          v10 = v9;
          v10.i32[2] = 0;
          v11 = v10;
          v11.i32[3] = v9.i32[3];
          if ((v4 & 0x80000000) == 0)
          {
            v12 = 0;
            v13 = v1[9].i64[0];
            v14 = v1[7].i64[1];
            v15 = v1[6].i64[0];
            v16 = v1[1].i64[1];
            do
            {
              if (v16)
              {
                v17 = *(v13 + 8 * v12) | ((*(v14 + 8 * v11.u8[5]) | *(v13 + 8 * BYTE1(v12)) | *(v15 + 8 * v11.u8[1])) << 24) | *(v14 + 8 * v11.u8[4]) | *(v15 + 8 * v11.u8[0]);
                v18 = &v1[1].i8[8];
                v19 = v16;
                do
                {
                  v20 = *(v19 + 4);
                  v21 = v20 >= v17;
                  v22 = v20 < v17;
                  if (v21)
                  {
                    v18 = v19;
                  }

                  v19 = *&v19[8 * v22];
                }

                while (v19);
                if (v18 != v6 && v17 >= *(v18 + 4))
                {
                  v23 = *(v18 + 5);
                  if (*(v23 + 192))
                  {
                    result = 0;
                    v8 = v12;
                  }

                  else if (result)
                  {
                    *(v23 + 116) = -*(v23 + 116);
                    *(v23 + 196) = -*(v23 + 196);
                    result = 1;
                  }

                  else
                  {
                    v24 = 3;
                    while (1)
                    {
                      v25 = vaddq_s32(*(v7 + 16 * v24), v11);
                      v26 = v25.i16[0];
                      if ((v25.i32[0] & 0x80000000) == 0)
                      {
                        v27 = v25.i16[2];
                        if ((v25.i32[1] & 0x80000000) == 0 && (v25.i32[2] & 0x80000000) == 0)
                        {
                          v28 = vmovn_s32(vcgtq_s32(v1[18], v25));
                          if (v28.i8[0] & 1) != 0 && (v28.i8[2] & 1) != 0 && (v28.i8[4])
                          {
                            v29 = *(v13 + 8 * v25.u8[8]) | ((*(v14 + 8 * HIBYTE(v27)) | *(v13 + 8 * v25.u8[9]) | *(v15 + 8 * HIBYTE(v26))) << 24) | *(v14 + 8 * v27) | *(v15 + 8 * v26);
                            v30 = &v1[1].i8[8];
                            v31 = v16;
                            do
                            {
                              v32 = *(v31 + 4);
                              v21 = v32 >= v29;
                              v33 = v32 < v29;
                              if (v21)
                              {
                                v30 = v31;
                              }

                              v31 = *&v31[8 * v33];
                            }

                            while (v31);
                            if (v30 != v6 && v29 >= *(v30 + 4) && *(*(v30 + 5) + 116) > 0.0)
                            {
                              break;
                            }
                          }
                        }
                      }

                      v21 = v24 >= 4;
                      v24 += 2;
                      if (v21)
                      {
                        result = 0;
                        if (v8 >= v12)
                        {
                          v8 = v12;
                        }

                        goto LABEL_38;
                      }
                    }

                    *(v23 + 116) = -*(v23 + 116);
                    *(v23 + 196) = -*(v23 + 196);
                    v36 = v12 - 1;
                    v37.i64[0] = v10.i64[0];
                    v37.i32[3] = v11.i32[3];
                    if (v12 <= v8)
                    {
LABEL_54:
                      v45.i32[3] = v37.i32[3];
                    }

                    else
                    {
                      do
                      {
                        v38 = *(v13 + 8 * v36) | ((*(v14 + 8 * v37.u8[5]) | *(v13 + 8 * BYTE1(v36)) | *(v15 + 8 * v37.u8[1])) << 24) | *(v14 + 8 * v37.u8[4]) | *(v15 + 8 * v37.u8[0]);
                        v39 = &v1[1].i8[8];
                        v40 = v16;
                        do
                        {
                          v41 = *(v40 + 4);
                          v21 = v41 >= v38;
                          v42 = v41 < v38;
                          if (v21)
                          {
                            v39 = v40;
                          }

                          v40 = *&v40[8 * v42];
                        }

                        while (v40);
                        if (v39 != v6 && v38 >= *(v39 + 4))
                        {
                          v43 = *(v39 + 5);
                          if (*(v43 + 192))
                          {
                            goto LABEL_54;
                          }

                          v44 = *(v43 + 116);
                          if (v44 < 0.0)
                          {
                            *(v43 + 116) = -v44;
                            *(v43 + 196) = -*(v43 + 196);
                          }
                        }

                        v10.i32[2] = v36 - 1;
                        v45 = v10;
                        v45.i32[3] = v37.i32[3];
                        v46 = v36-- <= v8;
                        v37 = v45;
                      }

                      while (!v46);
                    }

                    v10.i64[1] = __PAIR64__(v45.u32[3], v12);
                    result = 1;
                    v8 = v12;
                    v11 = v10;
                  }
                }
              }

LABEL_38:
              v34 = v11.i32[3];
              v35 = v11.i32[2];
              v12 = v11.i32[2] + 1;
              v10 = v11;
              v10.i32[2] = v11.i32[2] + 1;
              v11 = v10;
              v11.i32[3] = v34;
              v4 = v1[18].i32[2];
            }

            while (v35 < v4);
            v5 = v1[18].i32[1];
          }

          v9.i32[0] = v10.i32[0];
          v9.i32[1] = v11.i32[1] + 1;
          v9.i64[1] = __PAIR64__(v11.u32[3], v10.u32[2]);
        }

        while (v11.i32[1] < v5);
        v2 = v1[18];
      }

      ++v3;
      v5 = v2.i32[1];
      v4 = v2.i32[2];
    }

    while (v3 < v2.i32[0]);
  }

  return result;
}

void sub_239E77190(uint64_t a1)
{
  v24.i32[2] = 0;
  v24.i64[0] = 0;
  v1 = *(*(a1 + 1312) + 224);
  if (v1)
  {
    v2 = a1;
    v3 = a1 + 896;
    do
    {
      v4 = *(v2 + 1312);
      v5 = &v4[1].i8[8];
      v6 = v4[1].i64[1];
      if (v6)
      {
        v7 = v1[2];
        v8 = &v4[1].i8[8];
        v9 = v4[1].i64[1];
        do
        {
          v10 = *(v9 + 32);
          v11 = v10 >= v7;
          v12 = v10 < v7;
          if (v11)
          {
            v8 = v9;
          }

          v9 = *(v9 + 8 * v12);
        }

        while (v9);
        if (v8 != v5 && v7 >= *(v8 + 4))
        {
          v13 = *(v8 + 5);
          if (*(v13 + 116) < 0.0)
          {
            sub_239E761FC(a1, *(v13 + 8), &v24);
            v14 = 0;
            while (1)
            {
              v15 = vaddq_s32(*(v3 + 16 * v14), v24);
              v16 = v15.i16[0];
              if ((v15.i32[0] & 0x80000000) == 0)
              {
                v17 = v15.i16[2];
                if ((v15.i32[1] & 0x80000000) == 0 && (v15.i32[2] & 0x80000000) == 0)
                {
                  v18 = vmovn_s32(vcgtq_s32(v4[18], v15));
                  if (v18.i8[0] & 1) != 0 && (v18.i8[2] & 1) != 0 && (v18.i8[4])
                  {
                    v19 = *(v4[9].i64[0] + 8 * v15.u8[8]) | ((*(v4[7].i64[1] + 8 * HIBYTE(v17)) | *(v4[9].i64[0] + 8 * v15.u8[9]) | *(v4[6].i64[0] + 8 * HIBYTE(v16))) << 24) | *(v4[7].i64[1] + 8 * v17) | *(v4[6].i64[0] + 8 * v16);
                    v20 = &v4[1].i8[8];
                    v21 = v6;
                    do
                    {
                      v22 = *(v21 + 4);
                      v11 = v22 >= v19;
                      v23 = v22 < v19;
                      if (v11)
                      {
                        v20 = v21;
                      }

                      v21 = *&v21[8 * v23];
                    }

                    while (v21);
                    if (v20 != v5 && v19 >= *(v20 + 4) && *(*(v20 + 5) + 116) > 0.0)
                    {
                      break;
                    }
                  }
                }
              }

              if (++v14 == 6)
              {
                goto LABEL_28;
              }
            }

            a1 = sub_239E77354(v2, v13);
          }
        }
      }

LABEL_28:
      v1 = *v1;
    }

    while (v1);
  }
}

uint64_t sub_239E77354(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v35 = 0;
  v33.i32[2] = 0;
  v33.i64[0] = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 1065353216;
  sub_239E7B9B0(&v30, (a2 + 8), (a2 + 8));
  while (*(&v31 + 1))
  {
    v35 = *(v31 + 16);
    v3 = sub_239E7D2D0(&v30, &v35);
    v4 = *(a1 + 1312);
    v7 = *(v4 + 24);
    v5 = v4 + 24;
    v6 = v7;
    if (v7)
    {
      v8 = v5;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v35;
        v11 = v9 < v35;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v5 && v35 >= *(v8 + 32))
      {
        v12 = *(v8 + 40);
        v13 = *(v12 + 116);
        if (v13 < 0.0)
        {
          *(v12 + 116) = -v13;
          *(v12 + 196) = -*(v12 + 196);
          sub_239E761FC(v3, *(v12 + 8), &v33);
          v14 = 0;
          v29 = v33;
          do
          {
            v15 = vaddq_s32(*(a1 + 896 + 16 * v14), v29);
            v16 = v15.i16[0];
            if ((v15.i32[0] & 0x80000000) == 0)
            {
              v17 = v15.i16[2];
              if ((v15.i32[1] & 0x80000000) == 0 && (v15.i32[2] & 0x80000000) == 0)
              {
                v18 = *(a1 + 1312);
                v19 = vmovn_s32(vcgtq_s32(v18[18], v15));
                if (v19.i8[0] & 1) != 0 && (v19.i8[2] & 1) != 0 && (v19.i8[4])
                {
                  v22 = v18[1].i64[1];
                  v20 = &v18[1].i64[1];
                  v21 = v22;
                  v23 = *(v20[15] + 8 * v15.u8[8]) | ((*(v20[12] + 8 * HIBYTE(v17)) | *(v20[15] + 8 * v15.u8[9]) | *(v20[9] + 8 * HIBYTE(v16))) << 24) | *(v20[12] + 8 * v17) | *(v20[9] + 8 * v16);
                  v34 = v23;
                  if (v22)
                  {
                    v24 = v20;
                    do
                    {
                      v25 = *(v21 + 32);
                      v10 = v25 >= v23;
                      v26 = v25 < v23;
                      if (v10)
                      {
                        v24 = v21;
                      }

                      v21 = *(v21 + 8 * v26);
                    }

                    while (v21);
                    if (v24 != v20 && v23 >= v24[4])
                    {
                      v27 = v24[5];
                      if (*(v27 + 116) < 0.0 && (*(v27 + 192) & 1) == 0)
                      {
                        sub_239E7B9B0(&v30, &v34, &v34);
                      }
                    }
                  }
                }
              }
            }

            ++v14;
          }

          while (v14 != 6);
        }
      }
    }
  }

  return sub_239E7B644(&v30);
}

void sub_239E7757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

void sub_239E77598(uint64_t result)
{
  for (i = *(*(*(result + 80) + 1312) + 224); i; i = *i)
  {
    v3 = *(*(result + 80) + 1312);
    v6 = *(v3 + 24);
    v4 = v3 + 24;
    v5 = v6;
    if (v6)
    {
      v7 = i[2];
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v7 >= *(v8 + 32))
      {
        sub_239E763B4(*result, *(v8 + 40), *(*(*(result + 80) + 1312) + 424));
      }
    }
  }
}

uint64_t sub_239E77634(uint64_t a1)
{
  sub_239E76738(*(a1 + 80));
  sub_239E76DF4(*(a1 + 80));
  sub_239E77190(*(a1 + 80));
  sub_239E76B44(*(a1 + 80));
  sub_239E77694(*(a1 + 80), a1);
  v2 = *(a1 + 80);

  return sub_239E778F4(v2);
}

uint64_t sub_239E77694(void *a1, float32x4_t **a2)
{
  v33.i32[2] = 0;
  v33.i64[0] = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 1065353216;
  v2 = *(a1[164] + 184);
  if (v2)
  {
    v4 = a1;
    v5 = a1 + 112;
    do
    {
      v6 = v2[2];
      v29 = v6;
      v7 = v4[164];
      v8 = &v7[1].i64[1];
      v9 = v7[1].i64[1];
      if (v9)
      {
        v10 = &v7[1].i64[1];
        v11 = v7[1].i64[1];
        do
        {
          v12 = v11[4];
          v13 = v12 >= v6;
          v14 = v12 < v6;
          if (v13)
          {
            v10 = v11;
          }

          v11 = v11[v14];
        }

        while (v11);
        if (v10 != v8 && v6 >= v10[4])
        {
          v15 = v10[5];
          if (v15[7].f32[1] <= 0.0)
          {
            sub_239E761FC(a1, v15->u64[1], &v33);
            v16 = 0;
            while (1)
            {
              v17 = vaddq_s32(*&v5[2 * v16], v33);
              v18 = v17.i16[0];
              if ((v17.i32[0] & 0x80000000) == 0)
              {
                v19 = v17.i16[2];
                if ((v17.i32[1] & 0x80000000) == 0 && (v17.i32[2] & 0x80000000) == 0)
                {
                  v20 = vmovn_s32(vcgtq_s32(v7[18], v17));
                  if (v20.i8[0] & 1) != 0 && (v20.i8[2] & 1) != 0 && (v20.i8[4])
                  {
                    v21 = *(v7[9].i64[0] + 8 * v17.u8[8]) | ((*(v7[7].i64[1] + 8 * HIBYTE(v19)) | *(v7[9].i64[0] + 8 * v17.u8[9]) | *(v7[6].i64[0] + 8 * HIBYTE(v18))) << 24) | *(v7[7].i64[1] + 8 * v19) | *(v7[6].i64[0] + 8 * v18);
                    v22 = &v7[1].i64[1];
                    v23 = v9;
                    do
                    {
                      v24 = *(v23 + 4);
                      v13 = v24 >= v21;
                      v25 = v24 < v21;
                      if (v13)
                      {
                        v22 = v23;
                      }

                      v23 = *&v23[8 * v25];
                    }

                    while (v23);
                    if (v22 != v8 && v21 >= v22[4] && *(v22[5] + 116) > 0.0)
                    {
                      break;
                    }
                  }
                }
              }

              if (++v16 == 26)
              {
                sub_239E76650(*a2, v15, v7[26].i32[2]);
                sub_239E7D38C((v4[164] + 16), v10);
                operator delete(v10);
                a1 = sub_239E7B9B0(&v30, &v29, &v29);
                break;
              }
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
    v26 = *(&v31 + 1);
    for (i = v31; i; i = *i)
    {
      v29 = i[2];
      sub_239E7D2D0((v4[164] + 168), &v29);
    }
  }

  else
  {
    v26 = 0;
  }

  sub_239E7B644(&v30);
  return v26;
}

void sub_239E778DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E778F4(void *a1)
{
  v31.i32[2] = 0;
  v31.i64[0] = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  v1 = *(a1[164] + 224);
  if (v1)
  {
    v2 = a1;
    v3 = a1 + 112;
    do
    {
      v4 = v1[2];
      v27 = v4;
      v5 = v2[164];
      v6 = (v5 + 24);
      v7 = *(v5 + 24);
      if (v7)
      {
        v8 = (v5 + 24);
        v9 = *(v5 + 24);
        do
        {
          v10 = v9[4];
          v11 = v10 >= v4;
          v12 = v10 < v4;
          if (v11)
          {
            v8 = v9;
          }

          v9 = v9[v12];
        }

        while (v9);
        if (v8 != v6 && v4 >= v8[4])
        {
          v13 = v8[5];
          if (*(v13 + 116) <= 0.0)
          {
            sub_239E761FC(a1, *(v13 + 8), &v31);
            v14 = 0;
            while (1)
            {
              v15 = vaddq_s32(*&v3[2 * v14], v31);
              v16 = v15.i16[0];
              if ((v15.i32[0] & 0x80000000) == 0)
              {
                v17 = v15.i16[2];
                if ((v15.i32[1] & 0x80000000) == 0 && (v15.i32[2] & 0x80000000) == 0)
                {
                  v18 = vmovn_s32(vcgtq_s32(*(v5 + 288), v15));
                  if (v18.i8[0] & 1) != 0 && (v18.i8[2] & 1) != 0 && (v18.i8[4])
                  {
                    v19 = *(*(v5 + 144) + 8 * v15.u8[8]) | ((*(*(v5 + 120) + 8 * HIBYTE(v17)) | *(*(v5 + 144) + 8 * v15.u8[9]) | *(*(v5 + 96) + 8 * HIBYTE(v16))) << 24) | *(*(v5 + 120) + 8 * v17) | *(*(v5 + 96) + 8 * v16);
                    v20 = (v5 + 24);
                    v21 = v7;
                    do
                    {
                      v22 = v21[4];
                      v11 = v22 >= v19;
                      v23 = v22 < v19;
                      if (v11)
                      {
                        v20 = v21;
                      }

                      v21 = v21[v23];
                    }

                    while (v21);
                    if (v20 != v6 && v19 >= v20[4] && (*(v20[5] + 192) & 1) != 0)
                    {
                      break;
                    }
                  }
                }
              }

              if (++v14 == 26)
              {
                sub_239E7D38C((v5 + 16), v8);
                operator delete(v8);
                a1 = sub_239E7B9B0(&v28, &v27, &v27);
                break;
              }
            }
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
    v24 = *(&v29 + 1);
    for (i = v29; i; i = *i)
    {
      v27 = i[2];
      sub_239E7D2D0((v2[164] + 208), &v27);
    }
  }

  else
  {
    v24 = 0;
  }

  sub_239E7B644(&v28);
  return v24;
}

void sub_239E77B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E77B30(uint64_t result, float a2, float a3)
{
  v4 = *(*(result + 80) + 1312);
  v5 = *(v4 + 248) + *(v4 + 248);
  if (v5 < a2 || v5 < a3)
  {
    v8 = result;
    v78 = 0;
    *(v77.i64 + 4) = 0;
    v77.i32[0] = 0;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v9 = sub_239E7CBA4(&v74, v4 + 208);
    v71 = 0u;
    v72 = 0u;
    v73 = 1065353216;
    if (*(&v75 + 1))
    {
      v10 = 0;
      if (a2 >= a3)
      {
        v11 = a2;
      }

      else
      {
        v11 = a3;
      }

      v12 = ceilf((v11 - v5) / *(*(*(v8 + 80) + 1312) + 248));
      v13 = v12 + v12;
      v14 = v13;
      if (v13 <= 1)
      {
        v14 = 1;
      }

      v15 = v14 - 1;
      if (v13 >= 4295000000.0)
      {
        v15 = -2;
      }

      v63 = v15;
      __asm
      {
        FMOV            V1.4S, #1.0
        FMOV            V0.4S, #-1.0
      }

      v64 = _Q1;
      do
      {
        for (i = v75; i; i = *i)
        {
          v22 = *(*(v8 + 80) + 1312);
          v25 = *(v22 + 24);
          v23 = v22 + 24;
          v24 = v25;
          if (v25)
          {
            v26 = i[2];
            v27 = v23;
            do
            {
              v28 = *(v24 + 32);
              _CF = v28 >= v26;
              v29 = v28 < v26;
              if (_CF)
              {
                v27 = v24;
              }

              v24 = *(v24 + 8 * v29);
            }

            while (v24);
            if (v27 != v23 && v26 >= *(v27 + 32))
            {
              sub_239E761FC(v9, *(*(v27 + 40) + 8), &v77);
              for (j = 0; j != 26; ++j)
              {
                v31 = *(v8 + 80);
                v32 = vaddq_s32(*(v31 + 16 * j + 896), v77);
                if ((v32.i32[0] & 0x80000000) == 0 && (v32.i32[1] & 0x80000000) == 0)
                {
                  v33 = v32.i32[2];
                  if ((v32.i32[2] & 0x80000000) == 0)
                  {
                    v34 = *(v31 + 1312);
                    v35 = vmovn_s32(vcgtq_s32(v34[18], v32));
                    if (v35.i8[0] & 1) != 0 && (v35.i8[2] & 1) != 0 && (v35.i8[4])
                    {
                      v78 = *(v34[9].i64[0] + 8 * v32.u8[8]) | ((*(v34[7].i64[1] + 8 * v32.u8[5]) | *(v34[9].i64[0] + 8 * v32.u8[9]) | *(v34[6].i64[0] + 8 * v32.u8[1])) << 24) | *(v34[7].i64[1] + 8 * v32.u8[4]) | *(v34[6].i64[0] + 8 * v32.u8[0]);
                      v66 = v32;
                      v36 = sub_239E7C134(&v34[10].i64[1], &v78);
                      v9 = sub_239E7C134((*(*(v8 + 80) + 1312) + 208), &v78);
                      if (!(v36 | v9))
                      {
                        v37 = 0;
                        v38 = 0;
                        v39 = *(v8 + 80);
                        v40 = *(v39 + 1312);
                        v41 = v39 + 896;
                        v42 = 3.4028e38;
                        do
                        {
                          v43 = vaddq_s32(*(v41 + 16 * v37), v66);
                          v44 = v43.i16[0];
                          if ((v43.i32[0] & 0x80000000) == 0)
                          {
                            v45 = v43.i16[2];
                            if ((v43.i32[1] & 0x80000000) == 0)
                            {
                              v46 = v43.i16[4];
                              if ((v43.i32[2] & 0x80000000) == 0)
                              {
                                v43 = vcgtq_s32(*(v40 + 288), v43);
                                *v43.f32 = vmovn_s32(v43);
                                if (v43.i8[0] & 1) != 0 && (v43.i8[2] & 1) != 0 && (v43.i8[4])
                                {
                                  v47 = *(v40 + 24);
                                  if (v47)
                                  {
                                    v9 = *(v40 + 96);
                                    v48 = *(*(v40 + 144) + 8 * v46) | ((*(*(v40 + 120) + 8 * HIBYTE(v45)) | *(*(v40 + 144) + 8 * HIBYTE(v46)) | *(v9 + 8 * HIBYTE(v44))) << 24) | *(*(v40 + 120) + 8 * v45) | *(v9 + 8 * v44);
                                    v49 = v40 + 24;
                                    do
                                    {
                                      v50 = *(v47 + 32);
                                      _CF = v50 >= v48;
                                      v51 = v50 < v48;
                                      if (_CF)
                                      {
                                        v49 = v47;
                                      }

                                      v47 = *(v47 + 8 * v51);
                                    }

                                    while (v47);
                                    if (v49 != v40 + 24 && v48 >= *(v49 + 32))
                                    {
                                      v52 = *(v49 + 40);
                                      v53 = fabsf(*(v52 + 116));
                                      if (v53 < v42)
                                      {
                                        v42 = v53;
                                        v38 = v52;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }

                          ++v37;
                        }

                        while (v37 != 18);
                        if (v38)
                        {
                          *v43.f32 = vcvt_f32_s32(*v66.i8);
                          v43.f32[2] = v33;
                          v54 = vaddq_f32(v43, v64);
                          v55 = *(v40 + 248);
                          v56 = vmlaq_n_f32(*(v40 + 272), v54, v55);
                          v54.f32[0] = v55 * 0.5;
                          v65 = vsubq_f32(v56, vdupq_lane_s32(*v54.f32, 0));
                          v67 = v55;
                          v79[0] = v65;
                          v57 = (*(v40 + 40) + 224 * *(v38 + 144));
                          v70 = v57[1];
                          v69 = v57[3];
                          v68 = v57[2];
                          *v58.i64 = sub_239E74590(&v70, &v69, &v68, v79);
                          v59 = vsubq_f32(v65, v58);
                          v60 = vmulq_f32(v59, v59);
                          v61 = sqrtf(vaddv_f32(*v60.f32) + v60.f32[2]);
                          if (v61 <= v42)
                          {
                            v62 = v67 + v42;
                          }

                          else
                          {
                            v62 = v61;
                          }

                          if (*(v38 + 116) >= 0.0)
                          {
                            if (v5 < a3 && v62 < a3)
                            {
LABEL_60:
                              operator new();
                            }
                          }

                          else if (v5 < a2 && v62 < a2)
                          {
                            goto LABEL_60;
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

        if (v10 == v63)
        {
          break;
        }

        LODWORD(v76) = v73;
        sub_239E7CC1C(&v74, v72, 0);
        ++v10;
        v9 = sub_239E7D264(&v71);
      }

      while (*(&v75 + 1));
    }

    sub_239E7B644(&v71);
    return sub_239E7B644(&v74);
  }

  return result;
}

void sub_239E78110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_239E7B644(&a29);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E78130(float32x4_t **a1, float a2, float a3)
{
  v5 = a1;
  v93 = 0;
  *(v92.i64 + 4) = 0;
  v92.i32[0] = 0;
  v89 = 0u;
  v90 = 0u;
  v91 = 1065353216;
  v86 = 0u;
  v87 = 0u;
  v88 = 1065353216;
  v83 = 0u;
  v84 = 0u;
  v85 = 1065353216;
  v6 = *(a1[10][82].i64[0] + 224);
  if (!v6)
  {
    v41 = 0;
    v40 = 1.0;
    goto LABEL_50;
  }

  do
  {
    v7 = v6[2];
    v82 = v7;
    v8 = v5[10];
    v9 = v8[82].i64[0];
    v10 = &v9[1].i8[8];
    v11 = v9[1].i64[1];
    if (v11)
    {
      v12 = &v9[1].i8[8];
      v13 = v9[1].i64[1];
      do
      {
        v14 = *(v13 + 32);
        v15 = v14 >= v7;
        v16 = v14 < v7;
        if (v15)
        {
          v12 = v13;
        }

        v13 = *(v13 + 8 * v16);
      }

      while (v13);
      if (v12 != v10 && v7 >= *(v12 + 4))
      {
        v17 = *(v12 + 5);
        if ((*(v17 + 201) & 1) == 0)
        {
          v18 = *(v17 + 116);
          sub_239E761FC(a1, *(v17 + 8), &v92);
          v19 = fabsf(v18);
          if (v18 >= 0.0)
          {
            if (v19 <= a3)
            {
              goto LABEL_47;
            }

            v30 = 0;
            while (1)
            {
              v31 = vaddq_s32(v8[v30 + 56], v92);
              v32 = v31.i16[0];
              if (v31.i32[0] < 0)
              {
                break;
              }

              v33 = v31.i16[2];
              if (v31.i32[1] < 0)
              {
                break;
              }

              if (v31.i32[2] < 0)
              {
                break;
              }

              v34 = vmovn_s32(vcgtq_s32(v9[18], v31));
              if ((v34.i8[0] & 1) == 0 || (v34.i8[2] & 1) == 0 || (v34.i8[4] & 1) == 0)
              {
                break;
              }

              v35 = *(v9[9].i64[0] + 8 * v31.u8[8]) | ((*(v9[7].i64[1] + 8 * HIBYTE(v33)) | *(v9[9].i64[0] + 8 * v31.u8[9]) | *(v9[6].i64[0] + 8 * HIBYTE(v32))) << 24) | *(v9[7].i64[1] + 8 * v33) | *(v9[6].i64[0] + 8 * v32);
              v93 = v35;
              v36 = &v9[1].i8[8];
              v37 = v11;
              do
              {
                v38 = *(v37 + 4);
                v15 = v38 >= v35;
                v39 = v38 < v35;
                if (v15)
                {
                  v36 = v37;
                }

                v37 = *&v37[8 * v39];
              }

              while (v37);
              if (v36 == v10 || v35 < *(v36 + 4))
              {
                break;
              }

              if (++v30 == 26)
              {
                goto LABEL_47;
              }
            }
          }

          else
          {
            if (v19 <= a2)
            {
              goto LABEL_47;
            }

            v20 = 0;
            while (1)
            {
              v21 = vaddq_s32(v8[v20 + 56], v92);
              v22 = v21.i16[0];
              if (v21.i32[0] < 0)
              {
                break;
              }

              v23 = v21.i16[2];
              if (v21.i32[1] < 0)
              {
                break;
              }

              if (v21.i32[2] < 0)
              {
                break;
              }

              v24 = vmovn_s32(vcgtq_s32(v9[18], v21));
              if ((v24.i8[0] & 1) == 0 || (v24.i8[2] & 1) == 0 || (v24.i8[4] & 1) == 0)
              {
                break;
              }

              v25 = *(v9[9].i64[0] + 8 * v21.u8[8]) | ((*(v9[7].i64[1] + 8 * HIBYTE(v23)) | *(v9[9].i64[0] + 8 * v21.u8[9]) | *(v9[6].i64[0] + 8 * HIBYTE(v22))) << 24) | *(v9[7].i64[1] + 8 * v23) | *(v9[6].i64[0] + 8 * v22);
              v93 = v25;
              v26 = &v9[1].i8[8];
              v27 = v11;
              do
              {
                v28 = *(v27 + 4);
                v15 = v28 >= v25;
                v29 = v28 < v25;
                if (v15)
                {
                  v26 = v27;
                }

                v27 = *&v27[8 * v29];
              }

              while (v27);
              if (v26 == v10 || v25 < *(v26 + 4))
              {
                break;
              }

              if (++v20 == 26)
              {
                goto LABEL_47;
              }
            }
          }

          a1 = sub_239E7B9B0(&v83, &v82, &v82);
        }
      }
    }

LABEL_47:
    v6 = *v6;
  }

  while (v6);
  v40 = *&v85;
  v41 = v84;
LABEL_50:
  *&v91 = v40;
  sub_239E7CC1C(&v89, v41, 0);
  while (*(&v90 + 1))
  {
    for (i = v90; i; i = *i)
    {
      v44 = v5[10][82].i64[0];
      v47 = *(v44 + 24);
      v45 = v44 + 24;
      v46 = v47;
      if (v47)
      {
        v48 = i[2];
        v49 = v45;
        do
        {
          v50 = *(v46 + 32);
          v15 = v50 >= v48;
          v51 = v50 < v48;
          if (v15)
          {
            v49 = v46;
          }

          v46 = *(v46 + 8 * v51);
        }

        while (v46);
        if (v49 != v45 && v48 >= *(v49 + 32))
        {
          sub_239E761FC(v42, *(*(v49 + 40) + 8), &v92);
          v52 = 0;
          v81 = v92;
          do
          {
            v53 = v5[10];
            v54 = vaddq_s32(v53[v52 + 56], v81);
            v55 = v54.i16[0];
            if ((v54.i32[0] & 0x80000000) == 0)
            {
              v56 = v54.i16[2];
              if ((v54.i32[1] & 0x80000000) == 0 && (v54.i32[2] & 0x80000000) == 0)
              {
                v57 = v53[82].i64[0];
                v58 = vmovn_s32(vcgtq_s32(v57[18], v54));
                if (v58.i8[0] & 1) != 0 && (v58.i8[2] & 1) != 0 && (v58.i8[4])
                {
                  v61 = v57[1].i64[1];
                  v59 = &v57[1].i64[1];
                  v60 = v61;
                  v62 = *(v59[15] + 8 * v54.u8[8]) | ((*(v59[12] + 8 * HIBYTE(v56)) | *(v59[15] + 8 * v54.u8[9]) | *(v59[9] + 8 * HIBYTE(v55))) << 24) | *(v59[12] + 8 * v56) | *(v59[9] + 8 * v55);
                  v93 = v62;
                  if (!v61)
                  {
                    goto LABEL_76;
                  }

                  v63 = v59;
                  do
                  {
                    v64 = *(v60 + 32);
                    v15 = v64 >= v62;
                    v65 = v64 < v62;
                    if (v15)
                    {
                      v63 = v60;
                    }

                    v60 = *(v60 + 8 * v65);
                  }

                  while (v60);
                  if (v63 == v59 || v62 < v63[4])
                  {
LABEL_76:
                    v63 = v59;
                  }

                  v42 = sub_239E7C134(&v83, &v93);
                  if (v63 != (v5[10][82].i64[0] + 24) && v42 == 0)
                  {
                    v67 = v63[5];
                    if ((*(v67 + 201) & 1) == 0 && (*(v67 + 192) & 1) == 0)
                    {
                      v68 = *(v67 + 116);
                      v69 = fabsf(v68);
                      v70 = v69 <= a2;
                      if (v68 >= 0.0)
                      {
                        v70 = v69 <= a3;
                      }

                      if (!v70)
                      {
                        sub_239E7B9B0(&v86, &v93, &v93);
                        v42 = sub_239E7B9B0(&v83, &v93, &v93);
                      }
                    }
                  }
                }
              }
            }

            ++v52;
          }

          while (v52 != 26);
        }
      }
    }

    LODWORD(v91) = v88;
    sub_239E7CC1C(&v89, v87, 0);
    v42 = sub_239E7D264(&v86);
  }

  for (j = v84; j; j = *j)
  {
    v72 = j[2];
    v82 = v72;
    v73 = v5[10][82].i64[0];
    v76 = *(v73 + 24);
    v74 = v73 + 24;
    v75 = v76;
    if (v76)
    {
      v77 = v74;
      do
      {
        v78 = *(v75 + 32);
        v15 = v78 >= v72;
        v79 = v78 < v72;
        if (v15)
        {
          v77 = v75;
        }

        v75 = *(v75 + 8 * v79);
      }

      while (v75);
      if (v77 != v74 && v72 >= *(v77 + 32))
      {
        sub_239E76650(*v5, *(v77 + 40), *(v5[10][82].i64[0] + 424));
        sub_239E7D2D0((v5[10][82].i64[0] + 208), &v82);
        sub_239E7D308((v5[10][82].i64[0] + 16), &v82);
      }
    }
  }

  sub_239E7B644(&v83);
  sub_239E7B644(&v86);
  return sub_239E7B644(&v89);
}

void sub_239E7871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  sub_239E7B644(va);
  sub_239E7B644(va1);
  sub_239E7B644(va2);
  _Unwind_Resume(a1);
}