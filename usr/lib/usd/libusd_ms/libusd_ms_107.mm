void sub_29AAAAA64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
}

void sub_29AAAAC14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
}

void sub_29AAAADD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
}

void sub_29AAAAF8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
}

void sub_29AAAB154(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
}

void sub_29AAAB31C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
}

void sub_29AAAB4E4(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  *(a1 + 8) = *(a2 + 1);
  *(a2 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AAAB570(_DWORD *a1, uint64_t a2)
{
  __src = 0;
  v2 = 0u;
  v3 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29AAAB688(_DWORD *a1, uint64_t a2)
{
  __src = 0;
  *__n = 0u;
  v3 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void sub_29AAAB79C(_DWORD *a1, uint64_t a2)
{
  __src = 0;
  v2 = 0u;
  v3 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void sub_29AAAB8B4(_DWORD *a1, uint64_t a2)
{
  __src = 0;
  v2 = 0u;
  v3 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>();
}

void sub_29AAAB9CC(pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v9, a1);
  v3 = sub_29A5A6058(a1);
  if ((*v3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(&__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    v8 = EmptyString[2];
    __dst = v6;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v9, v4);
}

BOOL sub_29AAABFB8(const void **a1)
{
  v43[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8FB0))
  {
    sub_29A008E78(v4, "BOOL");
    sub_29A008E78(v5, "uchar");
    sub_29A008E78(v6, "int");
    sub_29A008E78(v7, "uint");
    sub_29A008E78(v8, "half");
    sub_29A008E78(v9, "float");
    sub_29A008E78(v10, "double");
    sub_29A008E78(v11, "int2");
    sub_29A008E78(v12, "int3");
    sub_29A008E78(v13, "int4");
    sub_29A008E78(v14, "half2");
    sub_29A008E78(v15, "half3");
    sub_29A008E78(v16, "half4");
    sub_29A008E78(v17, "float2");
    sub_29A008E78(v18, "float3");
    sub_29A008E78(v19, "float4");
    sub_29A008E78(v20, "double2");
    sub_29A008E78(v21, "double3");
    sub_29A008E78(v22, "double4");
    sub_29A008E78(v23, "point3f");
    sub_29A008E78(v24, "point3d");
    sub_29A008E78(v25, "point3h");
    sub_29A008E78(v26, "normal3f");
    sub_29A008E78(v27, "normal3d");
    sub_29A008E78(v28, "normal3h");
    sub_29A008E78(v29, "vector3f");
    sub_29A008E78(v30, "vector3d");
    sub_29A008E78(v31, "vector3h");
    sub_29A008E78(v32, "color3f");
    sub_29A008E78(v33, "color3d");
    sub_29A008E78(v34, "color3h");
    sub_29A008E78(v35, "color4f");
    sub_29A008E78(v36, "color4d");
    sub_29A008E78(v37, "color4h");
    sub_29A008E78(v38, "texCoord2f");
    sub_29A008E78(v39, "texCoord2d");
    sub_29A008E78(v40, "texCoord2h");
    sub_29A008E78(v41, "texCoord3f");
    sub_29A008E78(v42, "texCoord3d");
    sub_29A008E78(v43, "texCoord3h");
    sub_29A9FDE68(&unk_2A14F8F98, v4, 40);
    v3 = 120;
    do
    {
      if (SHIBYTE(v4[v3 - 1]) < 0)
      {
        operator delete(v4[v3 - 3]);
      }

      v3 -= 3;
    }

    while (v3 * 8);
    __cxa_atexit(sub_29AA7B2BC, &unk_2A14F8F98, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8FB0);
  }

  return sub_29A01BCCC(&unk_2A14F8F98, a1) != &unk_2A14F8FA0;
}

void sub_29AAAC430(_Unwind_Exception *a1)
{
  v3 = (v1 + 959);
  v4 = -960;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A14F8FB0);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAAC4A8(pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v35.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, &v35);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(&__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    v39 = EmptyString[2];
    __dst = v6;
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39 < 0)
  {
    if (*(&__dst + 1) == 10 && *__dst == 0x66336C616D726F6ELL && *(__dst + 8) == 23899)
    {
      goto LABEL_53;
    }

    if (*(&__dst + 1) == 10 && *__dst == 0x64336C616D726F6ELL && *(__dst + 8) == 23899)
    {
      goto LABEL_53;
    }

    if (*(&__dst + 1) == 10 && *__dst == 0x68336C616D726F6ELL && *(__dst + 8) == 23899)
    {
      goto LABEL_53;
    }

    if (*(&__dst + 1) != 9 || (*__dst == 0x5B6633726F6C6F63 ? (v13 = *(__dst + 8) == 93) : (v13 = 0), !v13))
    {
      if (*(&__dst + 1) != 9 || (*__dst == 0x5B6433726F6C6F63 ? (v14 = *(__dst + 8) == 93) : (v14 = 0), !v14))
      {
        if (*(&__dst + 1) != 9)
        {
          goto LABEL_69;
        }

        p_dst = __dst;
LABEL_65:
        v20 = *p_dst;
        v21 = *(p_dst + 8);
        if (v20 != 0x5B6833726F6C6F63 || v21 != 93)
        {
LABEL_69:
          v34.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
          v35.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(&v34);
          CPPTypeName = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetCPPTypeName(&v35);
          if (*(CPPTypeName + 23) < 0)
          {
            sub_29A008D14(__p, *CPPTypeName, *(CPPTypeName + 8));
          }

          else
          {
            v24 = *CPPTypeName;
            v37 = *(CPPTypeName + 16);
            *__p = v24;
          }

          if (sub_29A0F2648(__p, "float") || sub_29A0F2648(__p, "GfVec2f") || sub_29A0F2648(__p, "GfVec3f") || sub_29A0F2648(__p, "GfVec4f") || sub_29A0F2648(__p, "double") || sub_29A0F2648(__p, "GfVec2d") || sub_29A0F2648(__p, "GfVec3d") || sub_29A0F2648(__p, "GfVec4d") || sub_29A0F2648(__p, "half") || sub_29A0F2648(__p, "GfVec2h") || sub_29A0F2648(__p, "GfVec3h") || sub_29A0F2648(__p, "GfVec4h"))
          {
            v25 = 0;
            v26 = *(a2 + 5);
            if (v26 != 1 && v26 != 4)
            {
              v27 = sub_29AABB028();
              v28 = sub_29A5A6058(a1);
              if ((*v28 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }
          }

          else
          {
            if (*(a2 + 5))
            {
              v27 = sub_29AABB028();
              v28 = sub_29A5A6058(a1);
              if ((*v28 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                goto LABEL_94;
              }

LABEL_93:
              pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
LABEL_94:
              std::operator+<char>();
              v29 = std::string::append(&v34, ")");
              v30 = *&v29->__r_.__value_.__l.__data_;
              v35.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
              *&v35.__r_.__value_.__l.__data_ = v30;
              v29->__r_.__value_.__l.__size_ = 0;
              v29->__r_.__value_.__r.__words[2] = 0;
              v29->__r_.__value_.__r.__words[0] = 0;
              sub_29AA5B750(v27, &v35);
              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v35.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v34.__r_.__value_.__l.__data_);
              }

              v25 = 113;
              goto LABEL_99;
            }

            v25 = 0;
          }

LABEL_99:
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_107;
        }
      }
    }
  }

  else
  {
    if (HIBYTE(v39) != 9)
    {
      if (HIBYTE(v39) != 10)
      {
        goto LABEL_69;
      }

      if ((__dst != 0x66336C616D726F6ELL || WORD4(__dst) != 23899) && (__dst != 0x64336C616D726F6ELL || WORD4(__dst) != 23899) && (__dst != 0x68336C616D726F6ELL || WORD4(__dst) != 23899))
      {
        goto LABEL_69;
      }

LABEL_53:
      if (*(a2 + 5) - 1 >= 2)
      {
        v16 = sub_29AABB028();
        v17 = sub_29A5A6058(a1);
        if ((*v17 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

LABEL_72:
      v25 = 0;
      goto LABEL_107;
    }

    if ((__dst != 0x5B6633726F6C6F63 || BYTE8(__dst) != 93) && (__dst != 0x5B6433726F6C6F63 || BYTE8(__dst) != 93))
    {
      p_dst = &__dst;
      goto LABEL_65;
    }
  }

  if ((*(a2 + 5) | 2) == 3)
  {
    goto LABEL_72;
  }

  v16 = sub_29AABB028();
  v17 = sub_29A5A6058(a1);
  if ((*v17 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    goto LABEL_102;
  }

LABEL_101:
  pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
LABEL_102:
  std::operator+<char>();
  v31 = std::string::append(&v35, ")");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v37 = v31->__r_.__value_.__r.__words[2];
  *__p = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v16, __p);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v25 = 113;
LABEL_107:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__dst);
  }

  return v25;
}

void sub_29AAACB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29AAACBA8(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  v56[5] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747A78))
  {
    sub_29A008E78(__p, "BOOL[]");
    v17 = 0;
    sub_29A008E78(v18, "uchar[]");
    v18[3] = 0;
    sub_29A008E78(v19, "int[]");
    v19[3] = 0;
    sub_29A008E78(v20, "uint[]");
    v20[3] = 0;
    sub_29A008E78(v21, "half[]");
    v21[3] = 0x1000000000ELL;
    sub_29A008E78(v22, "float[]");
    v22[3] = 0x1000000000ELL;
    sub_29A008E78(v23, "double[]");
    v23[3] = 0x1000000000ELL;
    sub_29A008E78(v24, "int2[]");
    v24[3] = 0x200000000;
    sub_29A008E78(v25, "int3[]");
    v25[3] = 0x300000000;
    sub_29A008E78(v26, "int4[]");
    v26[3] = 0x400000000;
    sub_29A008E78(v27, "half2[]");
    v27[3] = 0x1020000000ELL;
    sub_29A008E78(v28, "half3[]");
    v28[3] = 0x1030000000ELL;
    sub_29A008E78(v29, "half4[]");
    v29[3] = 0x1040000000ELL;
    sub_29A008E78(v30, "float2[]");
    v30[3] = 0x1020000000ELL;
    sub_29A008E78(v31, "float3[]");
    v31[3] = 0x1030000000ELL;
    sub_29A008E78(v32, "float4[]");
    v32[3] = 0x1040000000ELL;
    sub_29A008E78(v33, "double2[]");
    v33[3] = 0x1020000000ELL;
    sub_29A008E78(v34, "double3[]");
    v34[3] = 0x1030000000ELL;
    sub_29A008E78(v35, "double4[]");
    v35[3] = 0x1040000000ELL;
    sub_29A008E78(v36, "point3f[]");
    v36[3] = 0x1030000000ELL;
    sub_29A008E78(v37, "point3d[]");
    v37[3] = 0x1030000000ELL;
    sub_29A008E78(v38, "point3h[]");
    v38[3] = 0x1030000000ELL;
    sub_29A008E78(v39, "normal3f[]");
    v39[3] = 0x2030000000ALL;
    sub_29A008E78(v40, "normal3d[]");
    v40[3] = 0x2030000000ALL;
    sub_29A008E78(v41, "normal3h[]");
    v41[3] = 0x2030000000ALL;
    sub_29A008E78(v42, "vector3f[]");
    v42[3] = 0x1030000000ELL;
    sub_29A008E78(v43, "vector3d[]");
    v43[3] = 0x1030000000ELL;
    sub_29A008E78(v44, "vector3h[]");
    v44[3] = 0x1030000000ELL;
    sub_29A008E78(v45, "color3f[]");
    v45[3] = 0x30300000008;
    sub_29A008E78(v46, "color3d[]");
    v46[3] = 0x30300000008;
    sub_29A008E78(v47, "color3h[]");
    v47[3] = 0x30300000008;
    sub_29A008E78(v48, "color4f[]");
    v48[3] = 0x1040000000ELL;
    sub_29A008E78(v49, "color4d[]");
    v49[3] = 0x1040000000ELL;
    sub_29A008E78(v50, "color4h[]");
    v50[3] = 0x1040000000ELL;
    sub_29A008E78(v51, "texCoord2f[]");
    v51[3] = 0x1020000000CLL;
    sub_29A008E78(v52, "texCoord2d[]");
    v52[3] = 0x1020000000CLL;
    sub_29A008E78(v53, "texCoord2h[]");
    v53[3] = 0x1020000000CLL;
    sub_29A008E78(v54, "texCoord3f[]");
    v54[3] = 0x1030000000CLL;
    sub_29A008E78(v55, "texCoord3d[]");
    v55[3] = 0x1030000000CLL;
    sub_29A008E78(v56, "texCoord3h[]");
    v56[3] = 0x1030000000CLL;
    sub_29AAB70F0(&unk_2A1747A60, __p, 40);
    v12 = 160;
    do
    {
      if (*(&TypeName + v12 * 8 + 7) < 0)
      {
        operator delete(__p[v12 - 4]);
      }

      v12 -= 4;
    }

    while (v12 * 8);
    __cxa_atexit(sub_29AAAD320, &unk_2A1747A60, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747A78);
  }

  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v14, &TypeName);
  if ((v14 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v14 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__p, *EmptyString, EmptyString[1]);
  }

  else
  {
    v4 = *EmptyString;
    v16 = EmptyString[2];
    *__p = v4;
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = sub_29A01BCCC(&unk_2A1747A60, __p);
  if (v5 == &unk_2A1747A68)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0x10000000000;
    v9 = 14;
  }

  else
  {
    v10 = *(v5 + 56);
    v7 = v10 & 0xFFFF000000000000;
    v8 = v10 & 0xFF0000000000;
    v6 = v10 & 0xFF00000000;
    v9 = v10;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v6 | v9 | v8 | v7;
}

void sub_29AAAD1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = (v16 + 1271);
  v19 = -1280;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 32;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 32;
    if (!v19)
    {
      __cxa_guard_abort(&qword_2A1747A78);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAAD34C(unsigned __int8 **a1, uint64_t a2, char *a3)
{
  pxrInternal__aapl__pxrReserved__::JsParseString(a1, 0, a3, &v79);
  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v79))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v79);
    sub_29A1519B8(&v77, JsObject);
    sub_29A008E78(__p, "v");
    v7 = sub_29A01BCCC(&v77, __p);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
    }

    if (v78 == v7)
    {
      v12 = sub_29AABB028();
      sub_29A008E78(__p, "Cannot parse JSON");
      sub_29AA5B750(v12, __p);
      if (SHIBYTE(v66) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 213;
      goto LABEL_62;
    }

    sub_29A008E78(__p, "v");
    __dst.__r_.__value_.__r.__words[0] = __p;
    v8 = sub_29AA7ED84(&v77, __p, &unk_29B4D6118, &__dst, &v71);
    v9 = v8[8];
    v75 = v8[7];
    v76 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
    }

    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v75))
    {
      v13 = sub_29AABB028();
      sub_29A008E78(__p, "Cannot parse JSON");
      sub_29AA5B750(v13, __p);
      if (SHIBYTE(v66) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 213;
      goto LABEL_60;
    }

    String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v75);
    if (*(String + 23) < 0)
    {
      sub_29A008D14(&__dst, *String, *(String + 1));
    }

    else
    {
      v11 = *String;
      __dst.__r_.__value_.__r.__words[2] = *(String + 2);
      *&__dst.__r_.__value_.__l.__data_ = v11;
    }

    v71 = 0;
    v72 = 0;
    v73 = 0;
    sub_29A9EE25C(__p, &__dst, 24);
    v63[0] = 0;
    v63[1] = 0;
    v64 = 0;
    v14 = sub_29A0DE07C(__p, v63, 0x2Eu);
    if ((*(v14 + *(*v14 - 24) + 32) & 5) == 0)
    {
      sub_29A070BA0(&v71);
    }

    if (v72 - v71 == 72)
    {
      v15 = std::stoi(v71, 0, 10);
      v16 = std::stoi(v71 + 1, 0, 10);
      *a2 = (v16 << 8) | (std::stoi(v71 + 2, 0, 10) << 16) | v15;
      sub_29A008E78(v61, "hole");
      v17 = sub_29A01BCCC(&v77, v61);
      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      if (v78 != v17)
      {
        sub_29A008E78(v61, "hole");
        v50[0] = v61;
        v18 = sub_29AA7ED84(&v77, v61, &unk_29B4D6118, v50, &v59);
        v19 = v18[8];
        v56 = v18[7];
        v57 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        if (pxrInternal__aapl__pxrReserved__::JsValue::IsBool(&v56))
        {
          *(a2 + 132) = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(&v56);
          if (v57)
          {
            sub_29A014BEC(v57);
          }

          v5 = 0;
LABEL_54:
          if (SHIBYTE(v64) < 0)
          {
            operator delete(v63[0]);
          }

          __p[0] = *MEMORY[0x29EDC9528];
          v25 = *(MEMORY[0x29EDC9528] + 72);
          *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
          v66 = v25;
          v67 = MEMORY[0x29EDC9570] + 16;
          if (v69 < 0)
          {
            operator delete(v68[7].__locale_);
          }

          v67 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v68);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v70);
          __p[0] = &v71;
          sub_29A012C90(__p);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

LABEL_60:
          if (v76)
          {
            sub_29A014BEC(v76);
          }

LABEL_62:
          sub_29A09932C(&v77, v78[0]);
          goto LABEL_63;
        }

        if (v57)
        {
          sub_29A014BEC(v57);
        }
      }

      sub_29A008E78(v61, "tp");
      v21 = sub_29A01BCCC(&v77, v61);
      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      if (v78 != v21)
      {
        sub_29A008E78(v61, "tp");
        v56 = v61;
        v22 = sub_29AA7ED84(&v77, v61, &unk_29B4D6118, &v56, v50);
        v23 = v22[8];
        v59 = v22[7];
        v60 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        if (pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v59))
        {
          v24 = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v59);
          sub_29AA6926C(v24, v61);
          if (!sub_29AAABFB8(v61))
          {
            goto LABEL_69;
          }

          *(a2 + 96) = sub_29AA685E0(v61);
          pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v56);
          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==((a2 + 96), &v56))
          {
            goto LABEL_69;
          }

          sub_29A008E78(&v56, "int");
          v29 = sub_29A01BCCC(&v77, &v56);
          if (v58 < 0)
          {
            operator delete(v56);
          }

          if (v78 == v29)
          {
LABEL_69:
            v28 = sub_29AABB028();
            sub_29A008E78(&v56, "Cannot parse JSON");
            sub_29AA5B750(v28, &v56);
            if (v58 < 0)
            {
              operator delete(v56);
            }

            v5 = 213;
          }

          else
          {
            sub_29A008E78(&v56, "int");
            v50[0] = &v56;
            v30 = sub_29AA7ED84(&v77, &v56, &unk_29B4D6118, v50, &v82);
            v31 = v30[8];
            v54 = v30[7];
            v55 = v31;
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v58 < 0)
            {
              operator delete(v56);
            }

            if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v54))
            {
              goto LABEL_113;
            }

            v32 = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v54);
            v33 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v50, v32);
            v34 = (v50[0] & 0xFFFFFFFFFFFFFFF8) != 0 ? ((v50[0] & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
            if (*(v34 + 23) < 0)
            {
              sub_29A008D14(v52, *v34, v34[1]);
            }

            else
            {
              v35 = *v34;
              v53 = v34[2];
              *v52 = v35;
            }

            sub_29AAAE0F8(v52, &v56);
            v37 = (a2 + 104);
            if (&v56 == (a2 + 104))
            {
              if ((v56 & 7) != 0)
              {
                atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            else
            {
              if ((*v37 & 7) != 0)
              {
                atomic_fetch_add_explicit((*v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *v37 = v56;
              v56 = 0;
            }

            if (SHIBYTE(v53) < 0)
            {
              operator delete(v52[0]);
            }

            if ((v50[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v50[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v38)
            {
              v38 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            if ((*(v38 + 85) ^ *v37) >= 8 && pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsValidInterpolation((a2 + 104), v36))
            {
              v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v39)
              {
                v39 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              if ((*(v39 + 154) ^ *v37) < 8)
              {
                goto LABEL_112;
              }

              v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v40)
              {
                v40 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              if ((*(v40 + 152) ^ *v37) >= 8)
              {
                v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
                if (!v43)
                {
                  v43 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
                }

                v41 = (*(v43 + 17) ^ *v37) > 7uLL;
              }

              else
              {
LABEL_112:
                v41 = 0;
              }

              *(a2 + 112) = v41;
              sub_29A008E78(&v56, "es");
              if (v78 == sub_29A01BCCC(&v77, &v56))
              {
                IsUInt64 = 0;
              }

              else
              {
                sub_29A008E78(v50, "es");
                v82 = v50;
                v44 = sub_29AA7ED84(&v77, v50, &unk_29B4D6118, &v82, &v81);
                IsUInt64 = pxrInternal__aapl__pxrReserved__::JsValue::IsUInt64((v44 + 7));
                if (v51 < 0)
                {
                  operator delete(v50[0]);
                }
              }

              if (v58 < 0)
              {
                operator delete(v56);
              }

              if (IsUInt64)
              {
                sub_29A008E78(&v56, "es");
                v50[0] = &v56;
                v46 = sub_29AA7ED84(&v77, &v56, &unk_29B4D6118, v50, &v82);
                *(a2 + 116) = pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(v46 + 7);
                if (v58 < 0)
                {
                  operator delete(v56);
                }
              }

              sub_29A008E78(&v56, "hi");
              if (v78 == sub_29A01BCCC(&v77, &v56))
              {
                IsBool = 0;
              }

              else
              {
                sub_29A008E78(v50, "hi");
                v82 = v50;
                v47 = sub_29AA7ED84(&v77, v50, &unk_29B4D6118, &v82, &v81);
                IsBool = pxrInternal__aapl__pxrReserved__::JsValue::IsBool((v47 + 7));
                if (v51 < 0)
                {
                  operator delete(v50[0]);
                }
              }

              if (v58 < 0)
              {
                operator delete(v56);
              }

              if (IsBool)
              {
                sub_29A008E78(&v56, "hi");
                v50[0] = &v56;
                v49 = sub_29AA7ED84(&v77, &v56, &unk_29B4D6118, v50, &v82);
                *(a2 + 112) = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(v49 + 7);
                if (v58 < 0)
                {
                  operator delete(v56);
                }
              }

              v5 = 0;
            }

            else
            {
LABEL_113:
              v42 = sub_29AABB028();
              sub_29A008E78(&v56, "Cannot parse JSON");
              sub_29AA5B750(v42, &v56);
              if (v58 < 0)
              {
                operator delete(v56);
              }

              v5 = 213;
            }

            if (v55)
            {
              sub_29A014BEC(v55);
            }
          }

          if (v62 < 0)
          {
            operator delete(v61[0]);
          }
        }

        else
        {
          v27 = sub_29AABB028();
          sub_29A008E78(v61, "Cannot parse JSON");
          sub_29AA5B750(v27, v61);
          if (v62 < 0)
          {
            operator delete(v61[0]);
          }

          v5 = 213;
        }

        if (v60)
        {
          sub_29A014BEC(v60);
        }

        goto LABEL_54;
      }

      v20 = sub_29AABB028();
      sub_29A008E78(v61, "Cannot parse JSON");
    }

    else
    {
      v20 = sub_29AABB028();
      sub_29A008E78(v61, "Cannot parse JSON");
    }

    sub_29AA5B750(v20, v61);
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    v5 = 213;
    goto LABEL_54;
  }

  v4 = sub_29AABB028();
  sub_29A008E78(__p, "Cannot parse JSON");
  sub_29AA5B750(v4, __p);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 213;
LABEL_63:
  if (v80)
  {
    sub_29A014BEC(v80);
  }

  return v5;
}

void sub_29AAADEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a23)
  {
    sub_29A014BEC(a23);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_29A008B0C(&a44);
  a44 = (v49 - 168);
  sub_29A012C90(&a44);
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  v51 = *(v49 - 112);
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  sub_29A09932C(v49 - 104, *(v49 - 96));
  v52 = *(v49 - 72);
  if (v52)
  {
    sub_29A014BEC(v52);
  }

  _Unwind_Resume(a1);
}

void sub_29AAAE0F8(const void **a1@<X0>, atomic_uint **a2@<X8>)
{
  v22[4] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v18, "constant", v4 + 17);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v19, "uniform", v5 + 146);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v20, "varying", v6 + 152);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v7)
  {
    v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v21, "vertex", v7 + 154);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AAAE400(v22, "faceVarying", v8 + 40);
  sub_29AAAE450(v15, v18, 5);
  for (i = 0; i != -20; i -= 4)
  {
    v10 = &v18[i];
    v11 = v22[i + 3];
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(v10 + 151) < 0)
    {
      operator delete(v10[16]);
    }
  }

  if (&v16 == sub_29A01BCCC(v15, a1))
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v13)
    {
      v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v12 = *(v13 + 85);
  }

  else
  {
    v18[0] = a1;
    v12 = sub_29AAAE6F4(v15, a1, &unk_29B4D6118, v18, &v17)[7];
  }

  *a2 = v12;
  if ((v12 & 7) != 0)
  {
    v14 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v14;
    }
  }

  sub_29AAAE698(v15, v16);
}

uint64_t sub_29AAAE3B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AAAE400(void *a1, char *a2, uint64_t *a3)
{
  result = sub_29A008E78(a1, a2);
  v5 = *a3;
  result[3] = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t ***sub_29AAAE450(uint64_t ***a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_29AAAE4D0(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29AAAE4D0(uint64_t ***a1, uint64_t a2, const void **a3, __int128 *a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AAAE554(a1, &v8, a4);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29AAAE554@<X0>(uint64_t a1@<X0>, void *a2@<X8>, __int128 *a3@<X1>)
{
  v6 = operator new(0x40uLL);
  *a2 = v6;
  a2[1] = a1;
  a2[2] = 0;
  result = sub_29AAAE5C0(v6 + 4, a3);
  *(a2 + 16) = 1;
  return result;
}

void *sub_29AAAE5C0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 3);
  __dst[3] = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    __dst[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  return __dst;
}

void sub_29AAAE63C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A8FB09C(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29AAAE698(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AAAE698(a1, *a2);
    sub_29AAAE698(a1, a2[1]);
    sub_29A8FB09C((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_29AAAE6F4(uint64_t ***a1, const void **a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AAAE78C(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

_BYTE *sub_29AAAE78C@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29AAAE820(uint64_t *a1, void *a2, _BYTE *a3, int *a4, __n128 a5)
{
  v7 = *a3;
  if (v7 <= 1)
  {
    if (*a3)
    {
      if (v7 != 1)
      {
LABEL_22:
        v13 = v5;
        v14 = v6;
        v10 = sub_29AABB028();
        sub_29A008E78(__p, "Unknown quantization function");
        sub_29AA5B750(v10, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      }

      v9 = *a4;

      return sub_29AA5FD04(a1, a2, a3, v9, a5.n128_u64[0]);
    }

    else
    {

      return sub_29AAAE900(a1, a2, a5.n128_u64[0]);
    }
  }

  else
  {
    switch(v7)
    {
      case 2u:

        return sub_29AAAE9A0(a1, a2, a3, a4, a5.n128_u64[0]);
      case 3u:

        return sub_29AAAEB78(a1, a2, a3, a5);
      case 4u:

        return sub_29AAAF018(a1, a2, a3, a4, a5);
      default:
        goto LABEL_22;
    }
  }
}

uint64_t sub_29AAAE900(uint64_t *a1, void *a2, int16x4_t a3)
{
  v5 = (a1[1] - *a1) >> 2;
  v10 = 0;
  v11 = &v10;
  sub_29A18E224(a2, v5, &v11, a3);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 4 * v7);
      sub_29A18E624(a2);
      *(a2[4] + 4 * v7++) = v8;
      v6 = *a1;
    }

    while (v7 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAAE9A0(void *a1, void *a2, uint64_t a3, _DWORD *a4, int16x4_t a5)
{
  v13 = a1[1] - *a1;
  if (v13)
  {
    v14 = (v13 & 4) == 0;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    return 112;
  }

  v41[1] = v12;
  v41[2] = v11;
  v41[3] = v10;
  v41[4] = v9;
  v41[5] = v8;
  v41[6] = v7;
  v41[15] = v5;
  v41[16] = v6;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v21 = v13 >> 2;
  v40 = 0;
  v41[0] = &v40;
  sub_29A18E224(a2, (v13 >> 2) + ((v13 >> 2) >> 1), v41, a5);
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = ~(-1 << (*(a3 + 32) - 1));
    do
    {
      v25 = (*a1 + 4 * v23);
      v26 = *v25 - v24;
      v27 = v25[1] - v24;
      if (v26 >= 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = -v26;
      }

      if (v27 >= 0)
      {
        v29 = v27;
      }

      else
      {
        v29 = -v27;
      }

      v30 = v24 - v28;
      v31 = v29 - v24;
      if (v26 >= 0)
      {
        v31 = v24 - v29;
      }

      v32 = v28 - v24;
      if (v27 >= 0)
      {
        v32 = v30;
      }

      if (v30 - v29 < 0)
      {
        v26 = v31;
        v27 = v32;
      }

      v33 = v26;
      v34 = v27;
      v35 = (v30 - v29);
      v37 = v30 == v29 && v26 == 0 && v27 == 0;
      v38 = 1.0;
      if (!v37)
      {
        v38 = 1.0 / sqrtf((v35 * v35) + ((v33 * v33) + (v34 * v34)));
      }

      v39 = v38 * v33;
      sub_29A18E624(a2);
      *(a2[4] + v22) = v39;
      sub_29A18E624(a2);
      *(a2[4] + v22 + 4) = v38 * v34;
      sub_29A18E624(a2);
      *(a2[4] + v22 + 8) = v38 * v35;
      v23 += 2;
      v22 += 12;
    }

    while (v23 < v21);
  }

  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAAEB78(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = a1[1] - *a1;
  v5 = v4 >> 2;
  if ((v4 >> 2) < 3 || (v4 >> 2) % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v52, v5);
    v8 = std::string::insert(&v52, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v54 = v8->__r_.__value_.__r.__words[2];
    v53 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v53);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v52.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  a4.n128_u32[0] = *(a3 + 4);
  v45 = a4.n128_f32[0];
  LODWORD(v52.__r_.__value_.__l.__data_) = 0;
  *&v53 = &v52;
  sub_29A18E224(a2, (v4 >> 2), &v53, a4.n128_u64[0]);
  if (v5 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = &unk_29B4DF5B8;
  v16 = vld1_dup_f32(v15);
  v44 = v16.i32[1];
  while (1)
  {
    v17 = *a1 + v14;
    v18.i32[1] = v44;
    v19 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(v17 + 4)), v45), 0xBF000000BF000000);
    v20 = vmul_f32(v19, 0x3EEFAEBC3E3FD36FLL);
    v21 = 1.8556 * v19.f32[0];
    v19.f32[0] = v45;
    v18.f32[0] = *v17;
    v22 = vmul_f32(v19, v18);
    v23 = fminf(fmaxf(vaddv_f32(v22), 0.0), 1.0);
    v24 = fminf(fmaxf(vsub_f32(vsub_f32(v22, v20), vdup_lane_s32(v20, 1)).f32[0], 0.0), 1.0);
    v25 = fminf(fmaxf(v22.f32[0] + v21, 0.0), 1.0);
    v26 = v23 <= 1.0 && v24 <= 1.0;
    if (!v26 || v25 > 1.0)
    {
      break;
    }

    sub_29A18E624(a2);
    *(a2[4] + v14) = v23;
    sub_29A18E624(a2);
    *(a2[4] + v14 + 4) = v24;
    sub_29A18E624(a2);
    *(a2[4] + v14 + 8) = v25;
    v14 += 12;
    v13 += 3;
    if (v13 >= v5)
    {
      return 0;
    }
  }

  v29 = sub_29AABB028();
  std::to_string(&v48, v23);
  v30 = std::string::insert(&v48, 0, "dequantizeColorRGB: values out of bound r=");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v49, ", g=");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v47, v24);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v47;
  }

  else
  {
    v34 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v47.__r_.__value_.__l.__size_;
  }

  v36 = std::string::append(&v50, v34, size);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v51, ", b=");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v25);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v46;
  }

  else
  {
    v40 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v46.__r_.__value_.__l.__size_;
  }

  v42 = std::string::append(&v52, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v54 = v42->__r_.__value_.__r.__words[2];
  v53 = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v29, &v53);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v48.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v10);
  }

  return 112;
}

void sub_29AAAEF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAAF018(void *a1, void *a2, uint64_t a3, _DWORD *a4, __n128 a5)
{
  v5 = *a4;
  *a4 = v5 + 1;
  if (v5 <= 0)
  {
    v27 = sub_29AABB028();
    v28 = "Weight dequantization: componentsPerVector value too small";
LABEL_21:
    sub_29A008E78(__p, v28);
    sub_29AA5B750(v27, __p);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  v7 = (a1[1] - *a1) >> 2;
  if (v7 % v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 <= v7;
  }

  if (v8)
  {
    v11 = v7 / v5 * (v5 + 1);
    v12 = *(a3 + 4);
    v31 = 0;
    __p[0] = &v31;
    sub_29A18E224(a2, v11, __p, a5.n128_u64[0]);
    if (v5 > v7)
    {
      return 0;
    }

    v13 = 0;
    LODWORD(v14) = 0;
    while (1)
    {
      v14 = v14;
      v15 = 4 * v13;
      v16 = v5;
      v17 = v15;
      v18 = 0.0;
      do
      {
        v19 = *(*a1 + 4 * v14++);
        v20 = fminf(fmaxf(v12 * v19, 0.0), 1.0);
        sub_29A18E624(a2);
        *(a2[4] + v17) = v20;
        v18 = v18 + v20;
        v17 += 4;
        --v16;
      }

      while (v16);
      v21 = fminf(fmaxf(1.0 - v18, 0.0), 1.0);
      sub_29A18E624(a2);
      *(a2[4] + 4 * (v13 + v5)) = v21;
      v22 = v18 + v21;
      if (v22 <= 0.0)
      {
        break;
      }

      LODWORD(v23) = *a4;
      if (vabds_f32(1.0, v22) > 0.000001 && v23 >= 1)
      {
        v25 = 0;
        do
        {
          sub_29A18E624(a2);
          *(a2[4] + v15) = *(a2[4] + v15) / v22;
          ++v25;
          v23 = *a4;
          v15 += 4;
        }

        while (v25 < v23);
      }

      v13 += v23;
      if (v13 >= v11)
      {
        return 0;
      }
    }

    v27 = sub_29AABB028();
    v28 = "Weight dequantization: negative weights sum";
    goto LABEL_21;
  }

  return 112;
}

uint64_t sub_29AAAF21C(__n128 a1, uint64_t *a2, unint64_t *a3, _BYTE *a4, int *a5)
{
  v7 = *a4;
  if (v7 <= 1)
  {
    if (*a4)
    {
      if (v7 != 1)
      {
LABEL_22:
        v13 = v5;
        v14 = v6;
        v10 = sub_29AABB028();
        sub_29A008E78(__p, "Unknown quantization function");
        sub_29AA5B750(v10, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      }

      v9 = *a5;

      return sub_29AAAF398(a2, a3, a4, v9);
    }

    else
    {

      return sub_29AAAF2FC(a2, a3);
    }
  }

  else
  {
    switch(v7)
    {
      case 2u:

        return sub_29AAAF4A4(a2, a3, a4, a5);
      case 3u:

        return sub_29AAAF678(a2, a3, a4, a1);
      case 4u:

        return sub_29AAAFB20(a2, a3, a4, a5, a1);
      default:
        goto LABEL_22;
    }
  }
}

uint64_t sub_29AAAF2FC(uint64_t *a1, unint64_t *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A18FD48(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      sub_29A190088(a2);
      *(a2[4] + 8 * v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAAF398(void *a1, unint64_t *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v16 = 0;
  v17 = &v16;
  sub_29A18FD48(a2, (v8 >> 2), &v17);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = *(a3 + 4);
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        v15 = ((v12 * *(*a1 + 4 * v14)) + *(*(a3 + 8) + v13));
        sub_29A190088(a2);
        *(a2[4] + 8 * v14++) = v15;
        v13 += 4;
      }

      while (4 * a4 != v13);
      v11 += a4;
    }

    while (v11 < v9);
    return 0;
  }

  return result;
}

uint64_t sub_29AAAF4A4(void *a1, unint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v12 = a1[1] - *a1;
  if (v12)
  {
    v13 = (v12 & 4) == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    return 112;
  }

  v40[1] = v11;
  v40[2] = v10;
  v40[3] = v9;
  v40[4] = v8;
  v40[5] = v7;
  v40[6] = v6;
  v40[15] = v4;
  v40[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v20 = v12 >> 2;
  v39 = 0;
  v40[0] = &v39;
  sub_29A18FD48(a2, (v12 >> 2) + ((v12 >> 2) >> 1), v40);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = ~(-1 << (*(a3 + 32) - 1));
    do
    {
      v24 = (*a1 + 4 * v22);
      v25 = *v24 - v23;
      v26 = v24[1] - v23;
      if (v25 >= 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = -v25;
      }

      if (v26 >= 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = -v26;
      }

      v29 = v23 - v27;
      v30 = v28 - v23;
      if (v25 >= 0)
      {
        v30 = v23 - v28;
      }

      v31 = v27 - v23;
      if (v26 >= 0)
      {
        v31 = v29;
      }

      if (v29 - v28 < 0)
      {
        v25 = v30;
        v26 = v31;
      }

      v32 = v25;
      v33 = v26;
      v34 = (v29 - v28);
      v36 = v29 == v28 && v25 == 0 && v26 == 0;
      v37 = 1.0;
      if (!v36)
      {
        v37 = 1.0 / sqrt(v34 * v34 + v32 * v32 + v33 * v33);
      }

      v38 = v37 * v32;
      sub_29A190088(a2);
      *(a2[4] + v21) = v38;
      sub_29A190088(a2);
      *(a2[4] + v21 + 8) = v37 * v33;
      sub_29A190088(a2);
      *(a2[4] + v21 + 16) = v37 * v34;
      v22 += 2;
      v21 += 24;
    }

    while (v22 < v20);
  }

  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAAF678(void *a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  v4 = a1[1] - *a1;
  v5 = v4 >> 2;
  if ((v4 >> 2) < 3 || (v4 >> 2) % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v51, v5);
    v8 = std::string::insert(&v51, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v53 = v8->__r_.__value_.__r.__words[2];
    v52 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v52);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v51.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v44 = *(a3 + 4);
  v51.__r_.__value_.__r.__words[0] = 0;
  *&v52 = &v51;
  sub_29A18FD48(a2, (v4 >> 2), &v52);
  if (v5 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 4;
  v15 = &unk_29B4DF5B8;
  v16 = vld1_dup_f32(v15);
  v43 = v16.i32[1];
  while (1)
  {
    v17.i32[1] = v43;
    v18 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(*a1 + v14)), v44), 0xBF000000BF000000);
    v19 = vmul_f32(v18, 0x3EEFAEBC3E3FD36FLL);
    v20 = 1.8556 * v18.f32[0];
    v18.f32[0] = v44;
    v17.f32[0] = *(*a1 + 4 * v13);
    v21 = vmul_f32(v18, v17);
    v22 = fminf(fmaxf(vaddv_f32(v21), 0.0), 1.0);
    v23 = fminf(fmaxf(vsub_f32(vsub_f32(v21, v19), vdup_lane_s32(v19, 1)).f32[0], 0.0), 1.0);
    v24 = fminf(fmaxf(v21.f32[0] + v20, 0.0), 1.0);
    v25 = v22 <= 1.0 && v23 <= 1.0;
    if (!v25 || v24 > 1.0)
    {
      break;
    }

    sub_29A190088(a2);
    *(a2[4] + 8 * v13) = v22;
    sub_29A190088(a2);
    *(a2[4] + 8 * v13 + 8) = v23;
    sub_29A190088(a2);
    *(a2[4] + 8 * v13 + 16) = v24;
    v13 += 3;
    v14 += 12;
    if (v13 >= v5)
    {
      return 0;
    }
  }

  v28 = sub_29AABB028();
  std::to_string(&v47, v22);
  v29 = std::string::insert(&v47, 0, "dequantizeColorRGB: values out of bound r=");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v48, ", g=");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v23);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v46;
  }

  else
  {
    v33 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v49, v33, size);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v50, ", b=");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v45, v24);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v45;
  }

  else
  {
    v39 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v45.__r_.__value_.__l.__size_;
  }

  v41 = std::string::append(&v51, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v53 = v41->__r_.__value_.__r.__words[2];
  v52 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v28, &v52);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v47.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v10);
  }

  return 112;
}

void sub_29AAAFA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAAFB20(void *a1, unint64_t *a2, uint64_t a3, _DWORD *a4, __n128 a5)
{
  v5 = *a4;
  *a4 = v5 + 1;
  if (v5 <= 0)
  {
    v27 = sub_29AABB028();
    v28 = "Weight dequantization: componentsPerVector value too small";
LABEL_21:
    sub_29A008E78(__p, v28);
    sub_29AA5B750(v27, __p);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  v7 = (a1[1] - *a1) >> 2;
  if (v7 % v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 <= v7;
  }

  if (v8)
  {
    v11 = v7 / v5 * (v5 + 1);
    v12 = *(a3 + 4);
    v31 = 0;
    __p[0] = &v31;
    sub_29A18FD48(a2, v11, __p);
    if (v5 > v7)
    {
      return 0;
    }

    v13 = 0;
    LODWORD(v14) = 0;
    while (1)
    {
      v14 = v14;
      v15 = 8 * v13;
      v16 = v5;
      v17 = v15;
      v18 = 0.0;
      do
      {
        v19 = *(*a1 + 4 * v14++);
        v20 = fmin(fmaxf(v12 * v19, 0.0), 1.0);
        sub_29A190088(a2);
        *(a2[4] + v17) = v20;
        v18 = v18 + v20;
        v17 += 8;
        --v16;
      }

      while (v16);
      v21 = fmin(fmax(1.0 - v18, 0.0), 1.0);
      sub_29A190088(a2);
      *(a2[4] + 8 * (v13 + v5)) = v21;
      v22 = v18 + v21;
      if (v22 <= 0.0)
      {
        break;
      }

      LODWORD(v23) = *a4;
      if (vabdd_f64(1.0, v22) > 0.000001 && v23 >= 1)
      {
        v25 = 0;
        do
        {
          sub_29A190088(a2);
          *(a2[4] + v15) = *(a2[4] + v15) / v22;
          ++v25;
          v23 = *a4;
          v15 += 8;
        }

        while (v25 < v23);
      }

      v13 += v23;
      if (v13 >= v11)
      {
        return 0;
      }
    }

    v27 = sub_29AABB028();
    v28 = "Weight dequantization: negative weights sum";
    goto LABEL_21;
  }

  return 112;
}

uint64_t sub_29AAAFD34(__n128 a1, uint64_t *a2, void *a3, _BYTE *a4, int *a5)
{
  v5 = *a4;
  if (v5 <= 1)
  {
    if (*a4)
    {
      if (v5 != 1)
      {
        goto LABEL_20;
      }

      v8 = *a5;

      return sub_29AAAFEEC(a2, a3, a4, v8);
    }

    else
    {

      return sub_29AAAFE58(a2, a3);
    }
  }

  else
  {
    switch(v5)
    {
      case 2u:

        return sub_29AAB0014(a2, a3, a4, a5);
      case 3u:

        return sub_29AAB01FC(a2, a3, a4, a1);
      case 4u:
        v6 = sub_29AABB028();
        v7 = "Weight dequantization: incompatible type int";
LABEL_21:
        sub_29A008E78(__p, v7);
        sub_29AA5B750(v6, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      default:
LABEL_20:
        v6 = sub_29AABB028();
        v7 = "Unknown quantization function";
        goto LABEL_21;
    }
  }
}

uint64_t sub_29AAAFE58(uint64_t *a1, void *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A19D7EC(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      sub_29A19DBEC(a2);
      *(a2[4] + 4 * v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAAFEEC(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v20 = 0;
  v21 = &v20;
  sub_29A19D7EC(a2, (v8 >> 2), &v21);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a3 + 4);
    v14 = 4 * a4;
    v19 = a4;
    do
    {
      v15 = v9;
      v16 = 0;
      v17 = v11;
      do
      {
        v18 = ((v13 * *(*a1 + v17)) + *(*(a3 + 8) + v16));
        sub_29A19DBEC(a2);
        *(a2[4] + v17) = v18;
        v17 += 4;
        v16 += 4;
      }

      while (v14 != v16);
      v12 += v19;
      v11 += v14;
      v9 = v15;
    }

    while (v12 < v15);
    return 0;
  }

  return result;
}

uint64_t sub_29AAB0014(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = (v10 & 4) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 112;
  }

  v38[1] = v9;
  v38[2] = v8;
  v38[3] = v7;
  v38[4] = v6;
  v38[15] = v4;
  v38[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v18 = v10 >> 2;
  v37 = 0;
  v38[0] = &v37;
  sub_29A19D7EC(a2, (v10 >> 2) + ((v10 >> 2) >> 1), v38);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = ~(-1 << (*(a3 + 32) - 1));
    while (1)
    {
      v22 = (*a1 + 4 * v20);
      v23 = *v22 - v21;
      v24 = v22[1] - v21;
      v25 = v23 >= 0 ? v23 : -v23;
      v26 = v24 >= 0 ? v24 : -v24;
      v27 = v21 - v25;
      v28 = v21 - v25 - v26;
      if (v28 < 0)
      {
        break;
      }

      if (v24 | v23)
      {
        v29 = 0;
      }

      else
      {
        v29 = v27 == v26;
      }

      if (!v29)
      {
        goto LABEL_32;
      }

      v30 = 1.0;
      v31 = 0.0;
      v32 = 0.0;
LABEL_33:
      v36 = (v32 * v30);
      sub_29A19DBEC(a2);
      *(a2[4] + v19) = v36;
      sub_29A19DBEC(a2);
      *(a2[4] + v19 + 4) = (v31 * v30);
      sub_29A19DBEC(a2);
      *(a2[4] + v19 + 8) = (v30 * v28);
      v20 += 2;
      v19 += 12;
      if (v20 >= v18)
      {
        goto LABEL_34;
      }
    }

    v33 = v26 - v21;
    v34 = v21 - v26;
    if (v23 >= 0)
    {
      v23 = v34;
    }

    else
    {
      v23 = v33;
    }

    v35 = v25 - v21;
    if (v24 >= 0)
    {
      v24 = v27;
    }

    else
    {
      v24 = v35;
    }

LABEL_32:
    v30 = 1.0 / sqrt((v28 * v28 + v24 * v24 + v23 * v23));
    v32 = v23;
    v31 = v24;
    goto LABEL_33;
  }

LABEL_34:
  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAB01FC(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = a1[1] - *a1;
  v5 = v4 >> 2;
  if ((v4 >> 2) < 3 || (v4 >> 2) % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v52, v5);
    v8 = std::string::insert(&v52, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v54 = v8->__r_.__value_.__r.__words[2];
    v53 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v53);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v52.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v45 = *(a3 + 4);
  LODWORD(v52.__r_.__value_.__l.__data_) = 0;
  *&v53 = &v52;
  sub_29A19D7EC(a2, (v4 >> 2), &v53);
  if (v5 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = &unk_29B4DF5B8;
  v16 = vld1_dup_f32(v15);
  v44 = v16.i32[1];
  while (1)
  {
    v17 = *a1 + v14;
    v18.i32[1] = v44;
    v19 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(v17 + 4)), v45), 0xBF000000BF000000);
    v20 = vmul_f32(v19, 0x3EEFAEBC3E3FD36FLL);
    v21 = 1.8556 * v19.f32[0];
    v19.f32[0] = v45;
    v18.f32[0] = *v17;
    v22 = vmul_f32(v19, v18);
    v23 = fminf(fmaxf(vaddv_f32(v22), 0.0), 1.0);
    v24 = fminf(fmaxf(vsub_f32(vsub_f32(v22, v20), vdup_lane_s32(v20, 1)).f32[0], 0.0), 1.0);
    v25 = fminf(fmaxf(v22.f32[0] + v21, 0.0), 1.0);
    v26 = v23 <= 1.0 && v24 <= 1.0;
    if (!v26 || v25 > 1.0)
    {
      break;
    }

    sub_29A19DBEC(a2);
    *(a2[4] + v14) = v23;
    sub_29A19DBEC(a2);
    *(a2[4] + v14 + 4) = v24;
    sub_29A19DBEC(a2);
    *(a2[4] + v14 + 8) = v25;
    v14 += 12;
    v13 += 3;
    if (v13 >= v5)
    {
      return 0;
    }
  }

  v29 = sub_29AABB028();
  std::to_string(&v48, v23);
  v30 = std::string::insert(&v48, 0, "dequantizeColorRGB: values out of bound r=");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v49, ", g=");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v47, v24);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v47;
  }

  else
  {
    v34 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v47.__r_.__value_.__l.__size_;
  }

  v36 = std::string::append(&v50, v34, size);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v51, ", b=");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v25);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v46;
  }

  else
  {
    v40 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v46.__r_.__value_.__l.__size_;
  }

  v42 = std::string::append(&v52, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v54 = v42->__r_.__value_.__r.__words[2];
  v53 = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v29, &v53);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v48.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v10);
  }

  return 112;
}

void sub_29AAB05E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB06A8(__n128 a1, uint64_t *a2, size_t *a3, _BYTE *a4, int *a5)
{
  v5 = *a4;
  if (v5 <= 1)
  {
    if (*a4)
    {
      if (v5 != 1)
      {
        goto LABEL_20;
      }

      v8 = *a5;

      return sub_29AAB0868(a2, a3, a4, v8);
    }

    else
    {

      return sub_29AAB07CC(a2, a3);
    }
  }

  else
  {
    switch(v5)
    {
      case 2u:

        return sub_29AAB097C(a2, a3, a4, a5);
      case 3u:

        return sub_29AAB0B84(a2, a3, a4, a1);
      case 4u:
        v6 = sub_29AABB028();
        v7 = "Weight dequantization: incompatible type BOOL";
LABEL_21:
        sub_29A008E78(__p, v7);
        sub_29AA5B750(v6, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      default:
LABEL_20:
        v6 = sub_29AABB028();
        v7 = "Unknown quantization function";
        goto LABEL_21;
    }
  }
}

uint64_t sub_29AAB07CC(uint64_t *a1, size_t *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A20CFDC(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6) != 0;
      sub_29A20D1F0(a2);
      *(a2[4] + v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAB0868(void *a1, size_t *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v16 = 0;
  v17 = &v16;
  sub_29A20CFDC(a2, (v8 >> 2), &v17);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = *(a3 + 4);
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        v15 = ((v12 * *(*a1 + 4 * v14)) + *(*(a3 + 8) + v13)) != 0.0;
        sub_29A20D1F0(a2);
        *(a2[4] + v14++) = v15;
        v13 += 4;
      }

      while (4 * a4 != v13);
      v11 += a4;
    }

    while (v11 < v9);
    return 0;
  }

  return result;
}

uint64_t sub_29AAB097C(void *a1, size_t *a2, uint64_t a3, _DWORD *a4)
{
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = (v10 & 4) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 112;
  }

  v44[1] = v9;
  v44[2] = v8;
  v44[3] = v7;
  v44[4] = v6;
  v44[15] = v4;
  v44[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v17 = v10 >> 2;
  v43 = 0;
  v44[0] = &v43;
  sub_29A20CFDC(a2, (v10 >> 2) + ((v10 >> 2) >> 1), v44);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = ~(-1 << (*(a3 + 32) - 1));
    do
    {
      v21 = (*a1 + 4 * v19);
      v22 = *v21 - v20;
      v23 = v21[1] - v20;
      if (v22 >= 0)
      {
        v24 = *v21 - v20;
      }

      else
      {
        v24 = v20 - *v21;
      }

      if (v23 >= 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = -v23;
      }

      v26 = v20 - v24;
      v27 = v25 - v20;
      if (v22 >= 0)
      {
        v27 = v20 - v25;
      }

      v28 = v24 - v20;
      if (v23 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = v28;
      }

      if (v26 < v25)
      {
        v30 = v27;
      }

      else
      {
        v30 = v22;
      }

      if (v26 < v25)
      {
        v31 = v29;
      }

      else
      {
        v31 = v23;
      }

      v33 = v26 == v25 && v30 == 0 && v31 == 0;
      v34 = 1.0;
      if (!v33)
      {
        v35 = v26 != v25;
        if (v30)
        {
          ++v35;
        }

        if (v31)
        {
          ++v35;
        }

        v34 = 1.0 / sqrt(v35);
      }

      if (v30)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = 0.0;
      }

      v37 = v34 * v36 != 0.0;
      sub_29A20D1F0(a2);
      *(a2[4] + v18) = v37;
      if (v31)
      {
        v38 = 1.0;
      }

      else
      {
        v38 = 0.0;
      }

      v39 = v34 * v38 != 0.0;
      sub_29A20D1F0(a2);
      *(a2[4] + v18 + 1) = v39;
      if (v26 == v25)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }

      v41 = v34 * v40 != 0.0;
      sub_29A20D1F0(a2);
      *(a2[4] + v18 + 2) = v41;
      v19 += 2;
      v18 += 3;
    }

    while (v19 < v17);
  }

  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAB0B84(void *a1, size_t *a2, uint64_t a3, __n128 a4)
{
  v4 = a1[1] - *a1;
  v5 = v4 >> 2;
  if ((v4 >> 2) < 3 || (v4 >> 2) % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v51, v5);
    v8 = std::string::insert(&v51, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v53 = v8->__r_.__value_.__r.__words[2];
    v52 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v52);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v51.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v44 = *(a3 + 4);
  v51.__r_.__value_.__s.__data_[0] = 0;
  *&v52 = &v51;
  sub_29A20CFDC(a2, (v4 >> 2), &v52);
  if (v5 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 4;
  v15 = &unk_29B4DF5B8;
  v16 = vld1_dup_f32(v15);
  v43 = v16.i32[1];
  while (1)
  {
    v17.i32[1] = v43;
    v18 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(*a1 + v14)), v44), 0xBF000000BF000000);
    v19 = vmul_f32(v18, 0x3EEFAEBC3E3FD36FLL);
    v20 = 1.8556 * v18.f32[0];
    v18.f32[0] = v44;
    v17.f32[0] = *(*a1 + 4 * v13);
    v21 = vmul_f32(v18, v17);
    v22 = fminf(fmaxf(vaddv_f32(v21), 0.0), 1.0);
    v23 = fminf(fmaxf(vsub_f32(vsub_f32(v21, v19), vdup_lane_s32(v19, 1)).f32[0], 0.0), 1.0);
    v24 = fminf(fmaxf(v21.f32[0] + v20, 0.0), 1.0);
    v25 = v22 <= 1.0 && v23 <= 1.0;
    if (!v25 || v24 > 1.0)
    {
      break;
    }

    sub_29A20D1F0(a2);
    *(a2[4] + v13) = v22 != 0.0;
    sub_29A20D1F0(a2);
    *(a2[4] + v13 + 1) = v23 != 0.0;
    sub_29A20D1F0(a2);
    *(a2[4] + v13 + 2) = v24 != 0.0;
    v13 += 3;
    v14 += 12;
    if (v13 >= v5)
    {
      return 0;
    }
  }

  v28 = sub_29AABB028();
  std::to_string(&v47, v22);
  v29 = std::string::insert(&v47, 0, "dequantizeColorRGB: values out of bound r=");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v48, ", g=");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v23);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v46;
  }

  else
  {
    v33 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v49, v33, size);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v50, ", b=");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v45, v24);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v45;
  }

  else
  {
    v39 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v45.__r_.__value_.__l.__size_;
  }

  v41 = std::string::append(&v51, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v53 = v41->__r_.__value_.__r.__words[2];
  v52 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v28, &v52);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v47.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v10);
  }

  return 112;
}

void sub_29AAB0F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB1038(__n128 a1, uint64_t *a2, size_t *a3, _BYTE *a4, int *a5)
{
  v5 = *a4;
  if (v5 <= 1)
  {
    if (*a4)
    {
      if (v5 != 1)
      {
        goto LABEL_20;
      }

      v8 = *a5;

      return sub_29AAB11F0(a2, a3, a4, v8);
    }

    else
    {

      return sub_29AAB115C(a2, a3);
    }
  }

  else
  {
    switch(v5)
    {
      case 2u:

        return sub_29AAB1300(a2, a3, a4, a5);
      case 3u:

        return sub_29AAB14FC(a2, a3, a4, a1);
      case 4u:
        v6 = sub_29AABB028();
        v7 = "Weight dequantization: incompatible type uint8_t";
LABEL_21:
        sub_29A008E78(__p, v7);
        sub_29AA5B750(v6, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      default:
LABEL_20:
        v6 = sub_29AABB028();
        v7 = "Unknown quantization function";
        goto LABEL_21;
    }
  }
}

uint64_t sub_29AAB115C(uint64_t *a1, size_t *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A19E2EC(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      sub_29A19E500(a2);
      *(a2[4] + v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAB11F0(void *a1, size_t *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v16 = 0;
  v17 = &v16;
  sub_29A19E2EC(a2, (v8 >> 2), &v17);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = *(a3 + 4);
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        v15 = ((v12 * *(*a1 + 4 * v14)) + *(*(a3 + 8) + v13));
        sub_29A19E500(a2);
        *(a2[4] + v14++) = v15;
        v13 += 4;
      }

      while (4 * a4 != v13);
      v11 += a4;
    }

    while (v11 < v9);
    return 0;
  }

  return result;
}

uint64_t sub_29AAB1300(void *a1, size_t *a2, uint64_t a3, _DWORD *a4)
{
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = (v10 & 4) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 112;
  }

  v41[1] = v9;
  v41[2] = v8;
  v41[3] = v7;
  v41[4] = v6;
  v41[15] = v4;
  v41[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v18 = v10 >> 2;
  v40 = 0;
  v41[0] = &v40;
  sub_29A19E2EC(a2, (v10 >> 2) + ((v10 >> 2) >> 1), v41);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = -1 << (*(a3 + 32) - 1);
    v22 = ~v21;
    v23 = ~v21;
    while (1)
    {
      v24 = (*a1 + 4 * v20);
      v25 = *v24 - v22;
      v26 = v24[1] - v22;
      v27 = v25 >= 0 ? v25 : -v25;
      v28 = v26 >= 0 ? v26 : -v26;
      v29 = v22 - v27;
      v30 = v22 - v27 - v28;
      if (v22 - v27 - v28 < 0)
      {
        break;
      }

      if (v26 | v25)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29 == v28;
      }

      if (!v31)
      {
        goto LABEL_32;
      }

      v32 = 1.0;
      v33 = 0.0;
      v34 = v23;
      v35 = 0.0;
LABEL_33:
      v39 = (v35 * v32);
      sub_29A19E500(a2);
      *(a2[4] + v19) = v39;
      sub_29A19E500(a2);
      *(a2[4] + v19 + 1) = (v33 * v32);
      sub_29A19E500(a2);
      *(a2[4] + v19 + 2) = (v32 * v34);
      v20 += 2;
      v19 += 3;
      if (v20 >= v18)
      {
        goto LABEL_34;
      }
    }

    v36 = v28 - v22;
    v37 = v22 - v28;
    if (v25 >= 0)
    {
      LOBYTE(v25) = v37;
    }

    else
    {
      LOBYTE(v25) = v36;
    }

    v38 = v27 - v22;
    if (v26 >= 0)
    {
      LOBYTE(v26) = v29;
    }

    else
    {
      LOBYTE(v26) = v38;
    }

LABEL_32:
    v25 = v25;
    v26 = v26;
    v34 = v30;
    v32 = 1.0 / sqrt((v34 * v34 + v26 * v26 + v25 * v25));
    v35 = v25;
    v33 = v26;
    goto LABEL_33;
  }

LABEL_34:
  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAB14FC(void *a1, size_t *a2, uint64_t a3, __n128 a4)
{
  v4 = a1[1] - *a1;
  v5 = v4 >> 2;
  if ((v4 >> 2) < 3 || (v4 >> 2) % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v51, v5);
    v8 = std::string::insert(&v51, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v53 = v8->__r_.__value_.__r.__words[2];
    v52 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v52);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v51.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v44 = *(a3 + 4);
  v51.__r_.__value_.__s.__data_[0] = 0;
  *&v52 = &v51;
  sub_29A19E2EC(a2, (v4 >> 2), &v52);
  if (v5 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 4;
  v15 = &unk_29B4DF5B8;
  v16 = vld1_dup_f32(v15);
  v43 = v16.i32[1];
  while (1)
  {
    v17.i32[1] = v43;
    v18 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(*a1 + v14)), v44), 0xBF000000BF000000);
    v19 = vmul_f32(v18, 0x3EEFAEBC3E3FD36FLL);
    v20 = 1.8556 * v18.f32[0];
    v18.f32[0] = v44;
    v17.f32[0] = *(*a1 + 4 * v13);
    v21 = vmul_f32(v18, v17);
    v22 = fminf(fmaxf(vaddv_f32(v21), 0.0), 1.0);
    v23 = fminf(fmaxf(vsub_f32(vsub_f32(v21, v19), vdup_lane_s32(v19, 1)).f32[0], 0.0), 1.0);
    v24 = fminf(fmaxf(v21.f32[0] + v20, 0.0), 1.0);
    v25 = v22 <= 1.0 && v23 <= 1.0;
    if (!v25 || v24 > 1.0)
    {
      break;
    }

    sub_29A19E500(a2);
    *(a2[4] + v13) = v22;
    sub_29A19E500(a2);
    *(a2[4] + v13 + 1) = v23;
    sub_29A19E500(a2);
    *(a2[4] + v13 + 2) = v24;
    v13 += 3;
    v14 += 12;
    if (v13 >= v5)
    {
      return 0;
    }
  }

  v28 = sub_29AABB028();
  std::to_string(&v47, v22);
  v29 = std::string::insert(&v47, 0, "dequantizeColorRGB: values out of bound r=");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v48, ", g=");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v23);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v46;
  }

  else
  {
    v33 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v49, v33, size);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v50, ", b=");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v45, v24);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v45;
  }

  else
  {
    v39 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v45.__r_.__value_.__l.__size_;
  }

  v41 = std::string::append(&v51, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v53 = v41->__r_.__value_.__r.__words[2];
  v52 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v28, &v52);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v47.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v10);
  }

  return 112;
}

void sub_29AAB18E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB19A4(__n128 a1, uint64_t *a2, void *a3, _BYTE *a4, int *a5)
{
  v5 = *a4;
  if (v5 <= 1)
  {
    if (*a4)
    {
      if (v5 != 1)
      {
        goto LABEL_20;
      }

      v8 = *a5;

      return sub_29AAB1B5C(a2, a3, a4, v8);
    }

    else
    {

      return sub_29AAB1AC8(a2, a3);
    }
  }

  else
  {
    switch(v5)
    {
      case 2u:

        return sub_29AAB1C84(a2, a3, a4, a5);
      case 3u:

        return sub_29AAB1E6C(a2, a3, a4, a1);
      case 4u:
        v6 = sub_29AABB028();
        v7 = "Weight dequantization: incompatible type unsigned int";
LABEL_21:
        sub_29A008E78(__p, v7);
        sub_29AA5B750(v6, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        return 112;
      default:
LABEL_20:
        v6 = sub_29AABB028();
        v7 = "Unknown quantization function";
        goto LABEL_21;
    }
  }
}

uint64_t sub_29AAB1AC8(uint64_t *a1, void *a2)
{
  v4 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = &v9;
  sub_29A19CAF8(a2, v4, &v10);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      sub_29A19CEF8(a2);
      *(a2[4] + 4 * v6++) = v7;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }

  return 0;
}

uint64_t sub_29AAB1B5C(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = a1[1] - *a1;
  v9 = v8 >> 2;
  v20 = 0;
  v21 = &v20;
  sub_29A19CAF8(a2, (v8 >> 2), &v21);
  if (!v9)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v9 >= a4 && !(v9 % a4))
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a3 + 4);
    v14 = 4 * a4;
    v19 = a4;
    do
    {
      v15 = v9;
      v16 = 0;
      v17 = v11;
      do
      {
        v18 = ((v13 * *(*a1 + v17)) + *(*(a3 + 8) + v16));
        sub_29A19CEF8(a2);
        *(a2[4] + v17) = v18;
        v17 += 4;
        v16 += 4;
      }

      while (v14 != v16);
      v12 += v19;
      v11 += v14;
      v9 = v15;
    }

    while (v12 < v15);
    return 0;
  }

  return result;
}

uint64_t sub_29AAB1C84(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = (v10 & 4) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 112;
  }

  v38[1] = v9;
  v38[2] = v8;
  v38[3] = v7;
  v38[4] = v6;
  v38[15] = v4;
  v38[16] = v5;
  if (*(a3 + 32) < 3 || *a4 != 2)
  {
    return 112;
  }

  v18 = v10 >> 2;
  v37 = 0;
  v38[0] = &v37;
  sub_29A19CAF8(a2, (v10 >> 2) + ((v10 >> 2) >> 1), v38);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = ~(-1 << (*(a3 + 32) - 1));
    while (1)
    {
      v22 = (*a1 + 4 * v20);
      v23 = *v22 - v21;
      v24 = v22[1] - v21;
      v25 = v23 >= 0 ? v23 : -v23;
      v26 = v24 >= 0 ? v24 : -v24;
      v27 = v21 - v25;
      v28 = v21 - v25 - v26;
      if (v28 < 0)
      {
        break;
      }

      if (v24 | v23)
      {
        v29 = 0;
      }

      else
      {
        v29 = v27 == v26;
      }

      if (!v29)
      {
        goto LABEL_32;
      }

      v30 = 1.0;
      v31 = 0.0;
      v32 = 0.0;
LABEL_33:
      v36 = (v32 * v30);
      sub_29A19CEF8(a2);
      *(a2[4] + v19) = v36;
      sub_29A19CEF8(a2);
      *(a2[4] + v19 + 4) = (v31 * v30);
      sub_29A19CEF8(a2);
      *(a2[4] + v19 + 8) = (v30 * v28);
      v20 += 2;
      v19 += 12;
      if (v20 >= v18)
      {
        goto LABEL_34;
      }
    }

    v33 = v26 - v21;
    v34 = v21 - v26;
    if (v23 >= 0)
    {
      v23 = v34;
    }

    else
    {
      v23 = v33;
    }

    v35 = v25 - v21;
    if (v24 >= 0)
    {
      v24 = v27;
    }

    else
    {
      v24 = v35;
    }

LABEL_32:
    v30 = 1.0 / sqrt((v28 * v28 + v24 * v24 + v23 * v23));
    v32 = v23;
    v31 = v24;
    goto LABEL_33;
  }

LABEL_34:
  result = 0;
  ++*a4;
  return result;
}

uint64_t sub_29AAB1E6C(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = a1[1] - *a1;
  v5 = v4 >> 2;
  if ((v4 >> 2) < 3 || (v4 >> 2) % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v52, v5);
    v8 = std::string::insert(&v52, 0, "dequantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v54 = v8->__r_.__value_.__r.__words[2];
    v53 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v53);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v52.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  v45 = *(a3 + 4);
  LODWORD(v52.__r_.__value_.__l.__data_) = 0;
  *&v53 = &v52;
  sub_29A19CAF8(a2, (v4 >> 2), &v53);
  if (v5 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = &unk_29B4DF5B8;
  v16 = vld1_dup_f32(v15);
  v44 = v16.i32[1];
  while (1)
  {
    v17 = *a1 + v14;
    v18.i32[1] = v44;
    v19 = vadd_f32(vmul_n_f32(vcvt_f32_s32(*(v17 + 4)), v45), 0xBF000000BF000000);
    v20 = vmul_f32(v19, 0x3EEFAEBC3E3FD36FLL);
    v21 = 1.8556 * v19.f32[0];
    v19.f32[0] = v45;
    v18.f32[0] = *v17;
    v22 = vmul_f32(v19, v18);
    v23 = fminf(fmaxf(vaddv_f32(v22), 0.0), 1.0);
    v24 = fminf(fmaxf(vsub_f32(vsub_f32(v22, v20), vdup_lane_s32(v20, 1)).f32[0], 0.0), 1.0);
    v25 = fminf(fmaxf(v22.f32[0] + v21, 0.0), 1.0);
    v26 = v23 <= 1.0 && v24 <= 1.0;
    if (!v26 || v25 > 1.0)
    {
      break;
    }

    sub_29A19CEF8(a2);
    *(a2[4] + v14) = v23;
    sub_29A19CEF8(a2);
    *(a2[4] + v14 + 4) = v24;
    sub_29A19CEF8(a2);
    *(a2[4] + v14 + 8) = v25;
    v14 += 12;
    v13 += 3;
    if (v13 >= v5)
    {
      return 0;
    }
  }

  v29 = sub_29AABB028();
  std::to_string(&v48, v23);
  v30 = std::string::insert(&v48, 0, "dequantizeColorRGB: values out of bound r=");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v49, ", g=");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v47, v24);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v47;
  }

  else
  {
    v34 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v47.__r_.__value_.__l.__size_;
  }

  v36 = std::string::append(&v50, v34, size);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v51, ", b=");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v46, v25);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v46;
  }

  else
  {
    v40 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v46.__r_.__value_.__l.__size_;
  }

  v42 = std::string::append(&v52, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v54 = v42->__r_.__value_.__r.__words[2];
  v53 = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v29, &v53);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v48.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v10);
  }

  return 112;
}

void sub_29AAB2258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AAB2318(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 8);
  if (!v8 || (*(v8 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v9 = *v8;
  v11[1] = a3;
  v11[2] = MEMORY[0x29EDC94D0];
  v12 = 0;
  v11[0] = &unk_2A2070BE0;
  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetStrongestResolvedMetadata(v9, a1, a2, a4, 1, v11);
}

uint64_t sub_29AAB23C0(unint64_t *a1, int32x2_t **a2, _BYTE *a3, unsigned int *a4, uint64_t a5, __n128 a6)
{
  v6 = *a3;
  if (v6 <= 1)
  {
    if (!*a3)
    {
      return sub_29AAB241C(a1, a2);
    }

    if (v6 == 1)
    {
      return sub_29AA7BBFC(a1, a2, a3, *a4, a5);
    }
  }

  else
  {
    switch(v6)
    {
      case 2u:
        return sub_29AAB2474(a1, a2, a4, a5);
      case 3u:
        return sub_29AAB2568(a1, a2, a3, a5, a6);
      case 4u:
        return sub_29AAB2B74(a1, a2, a3, a4, a5, a6.n128_f64[0]);
    }
  }

  return 112;
}

uint64_t sub_29AAB241C(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AAB2474(unint64_t *a1, void *a2, _DWORD *a3, int a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 112;
  }

  v5 = a4;
  result = 112;
  if (a4 >= 3 && !(v4 % 3) && *a3 == 3)
  {
    sub_29A0A171C(a2, 2 * (v4 / 3));
    if (v4 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = -1 << (v5 - 1);
      do
      {
        sub_29AAB2CF8((*a2 + v11), (*a2 + v11 + 4), ~v13, *(a1[4] + 8 * v12), *(a1[4] + 8 * v12 + 8), *(a1[4] + 8 * v12 + 16));
        v12 += 3;
        v11 += 8;
      }

      while (v12 < v4);
    }

    result = 0;
    --*a3;
  }

  return result;
}

uint64_t sub_29AAB2568(unint64_t *a1, int32x2_t **a2, uint64_t a3, char a4, __n128 a5)
{
  v5 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v69, v5);
    v8 = std::string::insert(&v69, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v71 = v8->__r_.__value_.__r.__words[2];
    v70 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v70);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v69.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  v15 = a1[4];
  v69.__r_.__value_.__s.__data_[0] = 0;
  if (*sub_29AAB2E7C(v15, &v15[v5]) < 0.0 || (v17 = *v16, *v16 > 1.0))
  {
    v18 = sub_29AABB028();
    sub_29A008E78(&v70, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v18, &v70);
    if ((SHIBYTE(v71) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v70;
LABEL_13:
    operator delete(v10);
    return 112;
  }

  v20 = 1 << a4;
  v21 = v20 + -1.0;
  *v17.i32 = 1.0 / v21;
  *(a3 + 4) = 1.0 / v21;
  LODWORD(v70) = 0;
  sub_29A0AB144((a3 + 8), 3uLL, &v70, v17);
  sub_29A0A171C(a2, v5);
  if (v5 >= 1)
  {
    v22 = 0;
    v23 = v21;
    v24 = (a1[4] + 8);
    v25 = *a2 + 1;
    __asm { FMOV            V16.2D, #0.5 }

    while (1)
    {
      v30.f64[0] = *(v24 - 1);
      v31 = v24[1];
      v32.f64[0] = *v24 * 0.715200007;
      v33 = v30.f64[0] * 0.5;
      v30.f64[1] = v31;
      v32.f64[1] = v30.f64[0] * -0.114600003 + *v24 * -0.385399997;
      v34 = vaddq_f64(vmulq_f64(v30, xmmword_29B4DF5D0), v32);
      v32.f64[1] = *(&_Q16 + 1);
      v32.f64[0] = v31 * 0.0722000003;
      v35 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_n_f64(vaddq_f64(v34, v32), v23))));
      v36 = llround((v33 + *v24 * -0.4542 + v31 * -0.0458000004 + 0.5) * v23);
      v37 = v35.i32[0];
      if (v35.i32[0] < 0 || v20 <= v35.i32[0] || v35.i32[1] < 0 || v20 <= v35.i32[1] || v36 < 0 || v20 <= v36)
      {
        break;
      }

      result = 0;
      v25[-1] = v35;
      v25->i32[0] = v36;
      v25 = (v25 + 12);
      v24 += 3;
      v22 += 3;
      if (v22 >= v5)
      {
        return result;
      }
    }

    v59 = v35.i32[1];
    v38 = sub_29AABB028();
    std::to_string(&v63, v20);
    v39 = std::string::insert(&v63, 0, "quantizeColorRGB: values out of bound qp1=");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v64, ", y=");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v62, v37);
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v62;
    }

    else
    {
      v43 = v62.__r_.__value_.__r.__words[0];
    }

    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v62.__r_.__value_.__l.__size_;
    }

    v45 = std::string::append(&v65, v43, size);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v66.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v66, ", u=");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v61, v59);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v61;
    }

    else
    {
      v49 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v61.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v67, v49, v50);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v68, ", v=");
    v54 = *&v53->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v60, v36);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v60;
    }

    else
    {
      v55 = v60.__r_.__value_.__r.__words[0];
    }

    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v60.__r_.__value_.__l.__size_;
    }

    v57 = std::string::append(&v69, v55, v56);
    v58 = *&v57->__r_.__value_.__l.__data_;
    v71 = v57->__r_.__value_.__r.__words[2];
    v70 = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v38, &v70);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v63.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  return 0;
}

void sub_29AAB2A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 169) < 0)
  {
    operator delete(*(v54 - 192));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB2B74(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 8 * v16);
      do
      {
        v22 = *v21++;
        v19 = v22 + v19;
        *(v18 + 4 * v15++) = llround(v22 * v14);
        --v20;
      }

      while (v20);
      v23 = *(v17 + 8 * (v16 + v12)) + v19;
      if (vabds_f32(1.0, v23) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v24 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v24, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

int *sub_29AAB2CF8(int *result, int *a2, int a3, double a4, double a5, double a6)
{
  v6 = fabs(a6);
  v7 = fabs(a4) + fabs(a5) + v6;
  if (v7 <= 0.0)
  {
    *result = a3;
  }

  else
  {
    v8 = 0;
    v9 = a3 / v7;
    v10 = v9 * a4;
    v11 = v9 * a5;
    v12 = vcvtmd_s64_f64(v9 * a4);
    v13 = v6 * v9;
    v14 = vcvtmd_s64_f64(v9 * a5);
    if (v12 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = -v12;
    }

    if (v14 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = -v14;
    }

    v17 = (v10 * v12 + v11 * v14 + v13 * (a3 - (v16 + v15))) / sqrt((v14 * v14 + v12 * v12 + (a3 - (v16 + v15)) * (a3 - (v16 + v15))));
    v18 = 1;
    v19 = v12;
    v20 = v14;
    do
    {
      v21 = 0;
      v22 = v18;
      v23 = v8 + v14;
      if (v8 + v14 >= 0)
      {
        v24 = v8 + v14;
      }

      else
      {
        v24 = -v23;
      }

      v25 = 1;
      v26 = a3 - v24;
      do
      {
        v27 = v25;
        v28 = v21 + v12;
        if (v21 + v12 >= 0)
        {
          v29 = v21 + v12;
        }

        else
        {
          v29 = -v28;
        }

        if (v21 | v8)
        {
          v30 = v26 - v29;
          if (((v26 - v29) & 0x80000000) == 0)
          {
            v31 = sqrt((v23 * v23 + v28 * v28 + v30 * v30));
            if (v17 < (v11 * v23 + v10 * v28 + v13 * v30) / v31)
            {
              v20 = v8 + v14;
              v19 = v28;
              v17 = (v11 * v23 + v10 * v28 + v13 * v30) / v31;
            }
          }
        }

        v25 = 0;
        v21 = 1;
      }

      while ((v27 & 1) != 0);
      v18 = 0;
      v8 = 1;
    }

    while ((v22 & 1) != 0);
    if (a6 >= 0.0)
    {
      *result = v19 + a3;
      a3 += v20;
    }

    else
    {
      v32 = 2 * a3;
      if (v20 >= 0)
      {
        v33 = v20;
      }

      else
      {
        v33 = -v20;
      }

      if (a4 >= 0.0)
      {
        v33 = v32 - v33;
      }

      *result = v33;
      if (v19 >= 0)
      {
        v34 = v19;
      }

      else
      {
        v34 = -v19;
      }

      v35 = v32 - v34;
      if (a5 >= 0.0)
      {
        a3 = v35;
      }

      else
      {
        a3 = v34;
      }
    }
  }

  *a2 = a3;
  return result;
}

double *sub_29AAB2E7C(double *result, double *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8 >= *v7)
        {
          if (v9 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          if (v8 >= *v6)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v8 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          if (v9 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_29AAB2F50(__n128 a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, unsigned int *a5, char a6)
{
  v8 = *a4;
  if (v8 <= 1)
  {
    if (*a4)
    {
      if (v8 != 1)
      {
        return 112;
      }

      v10 = *a5;

      return sub_29AAB307C(a2, a3, a4, v10, a6);
    }

    else
    {

      return sub_29AAB3028(a2, a3);
    }
  }

  else
  {
    if (v8 == 2)
    {
      v14 = v6;
      v15 = v7;
      v11 = sub_29AABB028();
      sub_29A008E78(__p, "Weight quantizeUnitary3DVector: incompatible type int");
      sub_29AA5B750(v11, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 112;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {

        return sub_29AAB3A7C(a2, a3, a4, a5, a6, a1.n128_f64[0]);
      }

      return 112;
    }

    return sub_29AAB34A0(a2, a3, a4, a6, a1);
  }
}

uint64_t sub_29AAB3028(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AAB307C(uint64_t *a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = a4;
    *v58 = *a1[4];
    sub_29AA7BAE8(&v59, a4, v58);
    *__p = *a1[4];
    sub_29AA7BAE8(v58, a4, __p);
    v13 = 0;
    v14 = v58[0];
    v15 = v59;
    v16 = 4 * a4;
    v17 = a1[4];
    do
    {
      v18 = 0;
      do
      {
        v19 = *(v17 + v18);
        v20 = *&v15[v18];
        if (v20 >= v19)
        {
          v20 = *(v17 + v18);
        }

        *&v15[v18] = v20;
        if (v14[v18 / 4] > v19)
        {
          v19 = v14[v18 / 4];
        }

        v14[v18 / 4] = v19;
        v18 += 4;
      }

      while (v16 != v18);
      v13 += a4;
      v17 += v16;
    }

    while (v13 < v10);
    v21 = v59;
    v22 = *v14 - *v59;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = a4;
      }

      v24 = v14 + 1;
      v25 = (v59 + 4);
      v26 = v23 - 1;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v30 = v28 - v29;
        if (v30 >= v22)
        {
          v22 = v30;
        }

        --v26;
      }

      while (v26);
    }

    v31 = 1 << a5;
    if (a5)
    {
      if (v22 < 2.2204e-16)
      {
        v22 = 1.0;
      }

      v32 = (v31 + -1.0) / v22;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 0;
    v34 = 0;
    v35 = a1[4];
    while (2)
    {
      v36 = (*a2 + v33);
      v37 = v12;
      v38 = v21;
      v39 = v35;
      do
      {
        v40 = *v39++;
        v41 = llroundf(v32 * (v40 - *v38));
        if (v41 < 0 || v31 <= v41)
        {
          v42 = sub_29AABB028();
          std::to_string(&v53, v41);
          v43 = std::string::insert(&v53, 0, "Uniform quantization: values out of bound; qvalue=");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v54.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v54.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v54, " and qp1=");
          v46 = *&v45->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v52, 1 << a5);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v52;
          }

          else
          {
            v47 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v52.__r_.__value_.__l.__size_;
          }

          v49 = std::string::append(&v55, v47, size);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v57 = v49->__r_.__value_.__r.__words[2];
          *__p = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v42, __p);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          v11 = 112;
          goto LABEL_53;
        }

        *v36++ = v41;
        ++v38;
        --v37;
      }

      while (v37);
      v34 += v12;
      v35 += v16;
      v33 += v16;
      if (v34 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v59)
    {
      sub_29A36CF34((a3 + 8), v59, v60, (v60 - v59) >> 2);
    }

    v11 = 0;
    *(a3 + 4) = 1.0 / v32;
LABEL_53:
    if (v58[0])
    {
      v58[1] = v58[0];
      operator delete(v58[0]);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  return v11;
}

void sub_29AAB3404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB34A0(unint64_t *a1, void *a2, uint64_t a3, char a4, __n128 a5)
{
  v5 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v63, v5);
    v8 = std::string::insert(&v63, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v65 = v8->__r_.__value_.__r.__words[2];
    v64 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v64);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v63.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  v15 = a1[4];
  v63.__r_.__value_.__s.__data_[0] = 0;
  if ((*sub_29AA7B008(v15, &v15[v5]) & 0x80000000) != 0 || *v16 > 1)
  {
    v18 = sub_29AABB028();
    sub_29A008E78(&v64, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v18, &v64);
    if (SHIBYTE(v65) < 0)
    {
      v10 = v64;
LABEL_13:
      operator delete(v10);
    }
  }

  else
  {
    v20 = 1 << a4;
    v52 = v20 + -1.0;
    *v17.i32 = 1.0 / v52;
    *(a3 + 4) = 1.0 / v52;
    LODWORD(v64) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v64, v17);
    sub_29A0A171C(a2, v5);
    if (v5 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = (a1[4] + 8);
    for (i = (*a2 + 4); ; i = (i + 12))
    {
      v24 = vcvt_f32_s32(*(v22 - 2));
      v25 = *v22;
      v26 = llroundf(v52 * (vaddv_f32(vmul_f32(v24, 0x3F3717593E59B3D0)) + (v25 * 0.0722)));
      v27 = vadd_f32(vmul_n_f32(0x3F000000BDEAB368, v24.f32[0]), vmul_lane_f32(0xBEE88CE7BEC55326, v24, 1));
      v28 = vmul_n_f32(0x3D3B98C83F000000, v25);
      v29.i32[0] = vadd_f32(v27, v28).u32[0];
      v29.i32[1] = vsub_f32(v27, v28).i32[1];
      v30 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v29, 0x3F0000003F000000), v52)));
      if (v26 < 0 || v20 <= v26 || v30.i32[0] < 0 || v20 <= v30.i32[0] || v30.i32[1] < 0 || v20 <= v30.i32[1])
      {
        break;
      }

      result = 0;
      v22 += 3;
      i[-1].i32[1] = v26;
      *i = v30;
      v21 += 3;
      if (v21 >= v5)
      {
        return result;
      }
    }

    v53 = v30;
    v31 = sub_29AABB028();
    std::to_string(&v57, v20);
    v32 = std::string::insert(&v57, 0, "quantizeColorRGB: values out of bound qp1=");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v58, ", y=");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, v26);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v56;
    }

    else
    {
      v36 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    v38 = std::string::append(&v59, v36, size);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v40 = std::string::append(&v60, ", u=");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, v53.i32[0]);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v55;
    }

    else
    {
      v42 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v55.__r_.__value_.__l.__size_;
    }

    v44 = std::string::append(&v61, v42, v43);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v62, ", v=");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v54, v53.i32[1]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v54;
    }

    else
    {
      v48 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v54.__r_.__value_.__l.__size_;
    }

    v50 = std::string::append(&v63, v48, v49);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v65 = v50->__r_.__value_.__r.__words[2];
    v64 = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v31, &v64);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_13;
    }
  }

  return 112;
}

void sub_29AAB3974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB3A7C(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 4 * v16);
      do
      {
        v22 = *v21++;
        v19 = v19 + v22;
        *(v18 + 4 * v15++) = llroundf(v14 * v22);
        --v20;
      }

      while (v20);
      if (vabds_f32(1.0, v19 + *(v17 + 4 * (v16 + v12))) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v23 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v23, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

uint64_t sub_29AAB3BF4(__n128 a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, unsigned int *a5, char a6)
{
  v8 = *a4;
  if (v8 <= 1)
  {
    if (*a4)
    {
      if (v8 != 1)
      {
        return 112;
      }

      v10 = *a5;

      return sub_29AAB3D20(a2, a3, a4, v10, a6);
    }

    else
    {

      return sub_29AAB3CCC(a2, a3);
    }
  }

  else
  {
    if (v8 == 2)
    {
      v14 = v6;
      v15 = v7;
      v11 = sub_29AABB028();
      sub_29A008E78(__p, "Weight quantizeUnitary3DVector: incompatible type BOOL");
      sub_29AA5B750(v11, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 112;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {

        return sub_29AAB46E4(a2, a3, a4, a5, a6, a1.n128_f64[0]);
      }

      return 112;
    }

    return sub_29AAB4144(a2, a3, a4, a6, a1);
  }
}

uint64_t sub_29AAB3CCC(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AAB3D20(uint64_t *a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v12 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v13 = a4;
    LOBYTE(v11) = *a1[4];
    *v59 = v11;
    sub_29AA7BAE8(&v60, a4, v59);
    LOBYTE(v14) = *a1[4];
    *__p = v14;
    sub_29AA7BAE8(v59, a4, __p);
    v16 = 0;
    v17 = v59[0];
    v18 = v60;
    v19 = a1[4];
    do
    {
      v20 = 0;
      do
      {
        LOBYTE(v15) = *(v19 + v20);
        v15 = LODWORD(v15);
        v21 = *&v18[4 * v20];
        if (v21 >= v15)
        {
          v21 = v15;
        }

        *&v18[4 * v20] = v21;
        if (v17[v20] > v15)
        {
          v15 = v17[v20];
        }

        v17[v20++] = v15;
      }

      while (a4 != v20);
      v16 += a4;
      v19 += a4;
    }

    while (v16 < v10);
    v22 = v60;
    v23 = *v17 - *v60;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = a4;
      }

      v25 = v17 + 1;
      v26 = (v60 + 4);
      v27 = v24 - 1;
      do
      {
        v28 = *v25++;
        v29 = v28;
        v30 = *v26++;
        v31 = v29 - v30;
        if (v31 >= v23)
        {
          v23 = v31;
        }

        --v27;
      }

      while (v27);
    }

    v32 = 1 << a5;
    if (a5)
    {
      if (v23 < 2.2204e-16)
      {
        v23 = 1.0;
      }

      v33 = (v32 + -1.0) / v23;
    }

    else
    {
      v33 = 1.0;
    }

    v34 = 0;
    v35 = 0;
    v36 = a1[4];
    while (2)
    {
      v37 = (*a2 + v34);
      v38 = v13;
      v39 = v22;
      v40 = v36;
      do
      {
        v41 = *v40++;
        v42 = llroundf(v33 * (v41 - *v39));
        if (v42 < 0 || v32 <= v42)
        {
          v43 = sub_29AABB028();
          std::to_string(&v54, v42);
          v44 = std::string::insert(&v54, 0, "Uniform quantization: values out of bound; qvalue=");
          v45 = *&v44->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v55, " and qp1=");
          v47 = *&v46->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, 1 << a5);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v53;
          }

          else
          {
            v48 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v53.__r_.__value_.__l.__size_;
          }

          v50 = std::string::append(&v56, v48, size);
          v51 = *&v50->__r_.__value_.__l.__data_;
          v58 = v50->__r_.__value_.__r.__words[2];
          *__p = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v43, __p);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v12 = 112;
          goto LABEL_53;
        }

        *v37++ = v42;
        ++v39;
        --v38;
      }

      while (v38);
      v35 += v13;
      v36 += v13;
      v34 += 4 * v13;
      if (v35 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v60)
    {
      sub_29A36CF34((a3 + 8), v60, v61, (v61 - v60) >> 2);
    }

    v12 = 0;
    *(a3 + 4) = 1.0 / v33;
LABEL_53:
    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }
  }

  return v12;
}

void sub_29AAB40A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB4144(unint64_t *a1, void *a2, uint64_t a3, char a4, __n128 a5)
{
  v5 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v63, v5);
    v8 = std::string::insert(&v63, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v65 = v8->__r_.__value_.__r.__words[2];
    v64 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v64);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v63.__r_.__value_.__r.__words[0];
    goto LABEL_59;
  }

  v15 = a1[4];
  v63.__r_.__value_.__s.__data_[0] = 0;
  sub_29AAB4860(v15, &v15[v5]);
  v16 = 1 << a4;
  v52 = v16 + -1.0;
  *v17.i32 = 1.0 / v52;
  *(a3 + 4) = 1.0 / v52;
  LODWORD(v64) = 0;
  sub_29A0AB144((a3 + 8), 3uLL, &v64, v17);
  sub_29A0A171C(a2, v5);
  if (v5 < 1)
  {
    return 0;
  }

  v20 = 0;
  v21 = (a1[4] + 2);
  for (i = (*a2 + 4); ; i = (i + 12))
  {
    v18.i8[0] = *(v21 - 2);
    v23 = v18.u32[0];
    v19.i8[0] = *(v21 - 1);
    v24 = v19.u32[0];
    *&v25 = v24 * 0.7152;
    LOBYTE(v25) = *v21;
    v26 = v25;
    v27 = llroundf(v52 * (((v23 * 0.2126) + (v24 * 0.7152)) + (v26 * 0.0722)));
    v28 = vadd_f32(vmul_n_f32(0x3F000000BDEAB368, v23), vmul_n_f32(0xBEE88CE7BEC55326, v24));
    v29 = vmul_n_f32(0x3D3B98C83F000000, v26);
    v19.i32[0] = vadd_f32(v28, v29).u32[0];
    v19.i32[1] = vsub_f32(v28, v29).i32[1];
    v18 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v19, 0x3F0000003F000000), v52)));
    if (v27 < 0 || v16 <= v27 || v18.i32[0] < 0 || v16 <= v18.i32[0] || v18.i32[1] < 0 || v16 <= v18.i32[1])
    {
      break;
    }

    v21 += 3;
    i[-1].i32[1] = v27;
    *i = v18;
    v20 += 3;
    if (v20 >= v5)
    {
      return 0;
    }
  }

  v53 = v18;
  v31 = sub_29AABB028();
  std::to_string(&v57, v16);
  v32 = std::string::insert(&v57, 0, "quantizeColorRGB: values out of bound qp1=");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v58, ", y=");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v56, v27);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &v56;
  }

  else
  {
    v36 = v56.__r_.__value_.__r.__words[0];
  }

  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v56.__r_.__value_.__l.__size_;
  }

  v38 = std::string::append(&v59, v36, size);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v60, ", u=");
  v41 = *&v40->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v55, v53.i32[0]);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &v55;
  }

  else
  {
    v42 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v55.__r_.__value_.__l.__size_;
  }

  v44 = std::string::append(&v61, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v62, ", v=");
  v47 = *&v46->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v54, v53.i32[1]);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &v54;
  }

  else
  {
    v48 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49 = v54.__r_.__value_.__l.__size_;
  }

  v50 = std::string::append(&v63, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v65 = v50->__r_.__value_.__r.__words[2];
  v64 = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v31, &v64);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v57.__r_.__value_.__r.__words[0];
LABEL_59:
    operator delete(v10);
  }

  return 112;
}

void sub_29AAB45DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAB46D0()
{
  if (*(v0 - 89) < 0)
  {
    JUMPOUT(0x29AAB46BCLL);
  }

  JUMPOUT(0x29AAB46C0);
}

uint64_t sub_29AAB46E4(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v19 = v16;
      v15 = v15;
      v20 = 0.0;
      v21 = v12;
      v22 = (v17 + v16);
      do
      {
        v23 = *v22++;
        v20 = v20 + v23;
        v24 = v14 * v23;
        *(v18 + 4 * v15++) = llroundf(v24);
        --v21;
      }

      while (v21);
      LOBYTE(v24) = *(v17 + v19 + v12);
      if (vabds_f32(1.0, v20 + LODWORD(v24)) > 0.00001)
      {
        break;
      }

      v16 = *a4 + v19;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v25 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v25, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

unsigned __int8 *sub_29AAB4860(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v3 = result[1];
    v4 = *result;
    if (v3 >= v4)
    {
      v5 = result + 1;
    }

    else
    {
      ++result;
      v5 = v2;
    }

    v6 = v2 + 2;
    if (v2 + 2 != a2)
    {
      if (v2 + 3 == a2)
      {
LABEL_21:
        if (*v6 < *result)
        {
          return v6;
        }
      }

      else
      {
        if (v3 >= v4)
        {
          v7 = v4;
        }

        else
        {
          v7 = v3;
        }

        while (1)
        {
          v8 = v6[1];
          v9 = *v6;
          if (v8 >= v9)
          {
            if (v9 < v7)
            {
              v7 = *v6;
              result = v6;
            }

            if (v8 >= *v5)
            {
              v5 = v6 + 1;
            }
          }

          else
          {
            v7 = 0;
            if (v8 < *result)
            {
              result = v6 + 1;
            }

            v5 = v6;
          }

          v6 += 2;
          if (v6 == a2)
          {
            break;
          }

          if (v6 + 1 == a2)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29AAB4950(unint64_t *a1, uint64_t *a2, _BYTE *a3, unsigned int *a4, char a5, __n128 a6)
{
  v8 = *a3;
  if (v8 <= 1)
  {
    if (*a3)
    {
      if (v8 != 1)
      {
        return 112;
      }

      v10 = *a4;

      return sub_29AAB4A28(a1, a2, a3, v10, a5);
    }

    else
    {

      return sub_29AAB3CCC(a1, a2);
    }
  }

  else
  {
    if (v8 == 2)
    {
      v14 = v6;
      v15 = v7;
      v11 = sub_29AABB028();
      sub_29A008E78(__p, "Weight quantizeUnitary3DVector: incompatible type uint8_t");
      sub_29AA5B750(v11, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 112;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {

        return sub_29AAB46E4(a1, a2, a3, a4, a5, a6.n128_f64[0]);
      }

      return 112;
    }

    return sub_29AAB4E4C(a1, a2, a3, a5, a6);
  }
}

uint64_t sub_29AAB4A28(uint64_t *a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v12 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v13 = a4;
    LOBYTE(v11) = *a1[4];
    *v59 = v11;
    sub_29AA7BAE8(&v60, a4, v59);
    LOBYTE(v14) = *a1[4];
    *__p = v14;
    sub_29AA7BAE8(v59, a4, __p);
    v16 = 0;
    v17 = v59[0];
    v18 = v60;
    v19 = a1[4];
    do
    {
      v20 = 0;
      do
      {
        LOBYTE(v15) = *(v19 + v20);
        v15 = LODWORD(v15);
        v21 = *&v18[4 * v20];
        if (v21 >= v15)
        {
          v21 = v15;
        }

        *&v18[4 * v20] = v21;
        if (v17[v20] > v15)
        {
          v15 = v17[v20];
        }

        v17[v20++] = v15;
      }

      while (a4 != v20);
      v16 += a4;
      v19 += a4;
    }

    while (v16 < v10);
    v22 = v60;
    v23 = *v17 - *v60;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = a4;
      }

      v25 = v17 + 1;
      v26 = (v60 + 4);
      v27 = v24 - 1;
      do
      {
        v28 = *v25++;
        v29 = v28;
        v30 = *v26++;
        v31 = v29 - v30;
        if (v31 >= v23)
        {
          v23 = v31;
        }

        --v27;
      }

      while (v27);
    }

    v32 = 1 << a5;
    if (a5)
    {
      if (v23 < 2.2204e-16)
      {
        v23 = 1.0;
      }

      v33 = (v32 + -1.0) / v23;
    }

    else
    {
      v33 = 1.0;
    }

    v34 = 0;
    v35 = 0;
    v36 = a1[4];
    while (2)
    {
      v37 = (*a2 + v34);
      v38 = v13;
      v39 = v22;
      v40 = v36;
      do
      {
        v41 = *v40++;
        v42 = llroundf(v33 * (v41 - *v39));
        if (v42 < 0 || v32 <= v42)
        {
          v43 = sub_29AABB028();
          std::to_string(&v54, v42);
          v44 = std::string::insert(&v54, 0, "Uniform quantization: values out of bound; qvalue=");
          v45 = *&v44->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v55, " and qp1=");
          v47 = *&v46->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, 1 << a5);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v53;
          }

          else
          {
            v48 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v53.__r_.__value_.__l.__size_;
          }

          v50 = std::string::append(&v56, v48, size);
          v51 = *&v50->__r_.__value_.__l.__data_;
          v58 = v50->__r_.__value_.__r.__words[2];
          *__p = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v43, __p);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v12 = 112;
          goto LABEL_53;
        }

        *v37++ = v42;
        ++v39;
        --v38;
      }

      while (v38);
      v35 += v13;
      v36 += v13;
      v34 += 4 * v13;
      if (v35 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v60)
    {
      sub_29A36CF34((a3 + 8), v60, v61, (v61 - v60) >> 2);
    }

    v12 = 0;
    *(a3 + 4) = 1.0 / v33;
LABEL_53:
    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }
  }

  return v12;
}

void sub_29AAB4DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB4E4C(unint64_t *a1, void *a2, uint64_t a3, char a4, __n128 a5)
{
  v5 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v65, v5);
    v8 = std::string::insert(&v65, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v67 = v8->__r_.__value_.__r.__words[2];
    v66 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v66);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v65.__r_.__value_.__r.__words[0];
    goto LABEL_62;
  }

  v15 = a1[4];
  v65.__r_.__value_.__s.__data_[0] = 0;
  sub_29AAB542C(v15, &v15[v5]);
  if (*v17 < 2u)
  {
    v19 = 1 << a4;
    v54 = v19 + -1.0;
    *v16.i32 = 1.0 / v54;
    *(a3 + 4) = 1.0 / v54;
    LODWORD(v66) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v66, v16);
    sub_29A0A171C(a2, v5);
    if (v5 < 1)
    {
      return 0;
    }

    v22 = 0;
    v23 = (a1[4] + 2);
    for (i = (*a2 + 4); ; i = (i + 12))
    {
      v20.i8[0] = *(v23 - 2);
      v25 = v20.u32[0];
      v21.i8[0] = *(v23 - 1);
      v26 = v21.u32[0];
      *&v27 = v26 * 0.7152;
      LOBYTE(v27) = *v23;
      v28 = v27;
      v29 = llroundf(v54 * (((v25 * 0.2126) + (v26 * 0.7152)) + (v28 * 0.0722)));
      v30 = vadd_f32(vmul_n_f32(0x3F000000BDEAB368, v25), vmul_n_f32(0xBEE88CE7BEC55326, v26));
      v31 = vmul_n_f32(0x3D3B98C83F000000, v28);
      v21.i32[0] = vadd_f32(v30, v31).u32[0];
      v21.i32[1] = vsub_f32(v30, v31).i32[1];
      v20 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v21, 0x3F0000003F000000), v54)));
      if (v29 < 0 || v19 <= v29 || v20.i32[0] < 0 || v19 <= v20.i32[0] || v20.i32[1] < 0 || v19 <= v20.i32[1])
      {
        break;
      }

      v23 += 3;
      i[-1].i32[1] = v29;
      *i = v20;
      v22 += 3;
      if (v22 >= v5)
      {
        return 0;
      }
    }

    v55 = v20;
    v33 = sub_29AABB028();
    std::to_string(&v59, v19);
    v34 = std::string::insert(&v59, 0, "quantizeColorRGB: values out of bound qp1=");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v60, ", y=");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v58, v29);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v58;
    }

    else
    {
      v38 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v40 = std::string::append(&v61, v38, size);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&v62, ", u=");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v57, v55.i32[0]);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v57;
    }

    else
    {
      v44 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v57.__r_.__value_.__l.__size_;
    }

    v46 = std::string::append(&v63, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v64, ", v=");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, v55.i32[1]);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v56;
    }

    else
    {
      v50 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v51 = v56.__r_.__value_.__l.__size_;
    }

    v52 = std::string::append(&v65, v50, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v67 = v52->__r_.__value_.__r.__words[2];
    v66 = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v33, &v66);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v59.__r_.__value_.__r.__words[0];
      goto LABEL_62;
    }
  }

  else
  {
    v18 = sub_29AABB028();
    sub_29A008E78(&v66, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v18, &v66);
    if (SHIBYTE(v67) < 0)
    {
      v10 = v66;
LABEL_62:
      operator delete(v10);
    }
  }

  return 112;
}

void sub_29AAB5324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_29AAB542C(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v4 = result[1];
    v5 = *result;
    if (v4 >= v5)
    {
      v6 = result + 1;
    }

    else
    {
      ++result;
      v6 = v2;
    }

    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 <= v5)
      {
        LOBYTE(v8) = v5;
      }

      else
      {
        LOBYTE(v8) = v4;
      }

      if (v4 >= v5)
      {
        LOBYTE(v4) = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = v7[1];
        v10 = *v7;
        if (v9 >= v10)
        {
          if (v10 < v4)
          {
            LOBYTE(v4) = *v7;
            result = v7;
          }

          v12 = v9 >= v8;
          if (v9 > v8)
          {
            LOBYTE(v8) = v7[1];
          }

          if (v12)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v9 < v4)
          {
            LOBYTE(v4) = v7[1];
            result = v7 + 1;
          }

          v8 = *v6;
          v11 = v10 >= v8;
          if (v10 > v8)
          {
            LOBYTE(v8) = *v7;
          }

          if (v11)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_29AAB5518(unint64_t *a1, uint64_t *a2, _BYTE *a3, __n128 a4, unsigned int *a5, char a6)
{
  v8 = *a3;
  if (v8 <= 1)
  {
    if (*a3)
    {
      if (v8 != 1)
      {
        return 112;
      }

      v10 = *a5;

      return sub_29AAB55F0(a1, a2, a3, v10, a6);
    }

    else
    {

      return sub_29AAB3028(a1, a2);
    }
  }

  else
  {
    if (v8 == 2)
    {
      v14 = v6;
      v15 = v7;
      v11 = sub_29AABB028();
      sub_29A008E78(__p, "Weight quantizeUnitary3DVector: incompatible type unsigned int");
      sub_29AA5B750(v11, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 112;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {

        return sub_29AAB5FE0(a1, a2, a3, a5, a6, a4.n128_f64[0]);
      }

      return 112;
    }

    return sub_29AAB5A14(a1, a2, a3, a6, a4);
  }
}

uint64_t sub_29AAB55F0(uint64_t *a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = a4;
    *v58 = *a1[4];
    sub_29AA7BAE8(&v59, a4, v58);
    *__p = *a1[4];
    sub_29AA7BAE8(v58, a4, __p);
    v13 = 0;
    v14 = v58[0];
    v15 = v59;
    v16 = 4 * a4;
    v17 = a1[4];
    do
    {
      v18 = 0;
      do
      {
        v19 = *(v17 + v18);
        v20 = *&v15[v18];
        if (v20 >= v19)
        {
          v20 = *(v17 + v18);
        }

        *&v15[v18] = v20;
        if (v14[v18 / 4] > v19)
        {
          v19 = v14[v18 / 4];
        }

        v14[v18 / 4] = v19;
        v18 += 4;
      }

      while (v16 != v18);
      v13 += a4;
      v17 += v16;
    }

    while (v13 < v10);
    v21 = v59;
    v22 = *v14 - *v59;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = a4;
      }

      v24 = v14 + 1;
      v25 = (v59 + 4);
      v26 = v23 - 1;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v30 = v28 - v29;
        if (v30 >= v22)
        {
          v22 = v30;
        }

        --v26;
      }

      while (v26);
    }

    v31 = 1 << a5;
    if (a5)
    {
      if (v22 < 2.2204e-16)
      {
        v22 = 1.0;
      }

      v32 = (v31 + -1.0) / v22;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 0;
    v34 = 0;
    v35 = a1[4];
    while (2)
    {
      v36 = (*a2 + v33);
      v37 = v12;
      v38 = v21;
      v39 = v35;
      do
      {
        v40 = *v39++;
        v41 = llroundf(v32 * (v40 - *v38));
        if (v41 < 0 || v31 <= v41)
        {
          v42 = sub_29AABB028();
          std::to_string(&v53, v41);
          v43 = std::string::insert(&v53, 0, "Uniform quantization: values out of bound; qvalue=");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v54.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v54.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v54, " and qp1=");
          v46 = *&v45->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v52, 1 << a5);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v52;
          }

          else
          {
            v47 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v52.__r_.__value_.__l.__size_;
          }

          v49 = std::string::append(&v55, v47, size);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v57 = v49->__r_.__value_.__r.__words[2];
          *__p = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v42, __p);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          v11 = 112;
          goto LABEL_53;
        }

        *v36++ = v41;
        ++v38;
        --v37;
      }

      while (v37);
      v34 += v12;
      v35 += v16;
      v33 += v16;
      if (v34 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v59)
    {
      sub_29A36CF34((a3 + 8), v59, v60, (v60 - v59) >> 2);
    }

    v11 = 0;
    *(a3 + 4) = 1.0 / v32;
LABEL_53:
    if (v58[0])
    {
      v58[1] = v58[0];
      operator delete(v58[0]);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  return v11;
}

void sub_29AAB5978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB5A14(unint64_t *a1, void *a2, uint64_t a3, char a4, __n128 a5)
{
  v5 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v63, v5);
    v8 = std::string::insert(&v63, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v65 = v8->__r_.__value_.__r.__words[2];
    v64 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v64);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v63.__r_.__value_.__r.__words[0];
    goto LABEL_62;
  }

  v15 = a1[4];
  v63.__r_.__value_.__s.__data_[0] = 0;
  sub_29AAB6158(v15, &v15[v5]);
  if (*v17 < 2u)
  {
    v19 = 1 << a4;
    v52 = v19 + -1.0;
    *v16.i32 = 1.0 / v52;
    *(a3 + 4) = 1.0 / v52;
    LODWORD(v64) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v64, v16);
    sub_29A0A171C(a2, v5);
    if (v5 < 1)
    {
      return 0;
    }

    v20 = 0;
    v21 = (a1[4] + 8);
    for (i = (*a2 + 4); ; i = (i + 12))
    {
      v23 = vcvt_f32_u32(*(v21 - 2));
      v24 = *v21;
      v25 = llroundf(v52 * (vaddv_f32(vmul_f32(v23, 0x3F3717593E59B3D0)) + (v24 * 0.0722)));
      v26 = vadd_f32(vmul_n_f32(0x3F000000BDEAB368, v23.f32[0]), vmul_lane_f32(0xBEE88CE7BEC55326, v23, 1));
      v27 = vmul_n_f32(0x3D3B98C83F000000, v24);
      v28.i32[0] = vadd_f32(v26, v27).u32[0];
      v28.i32[1] = vsub_f32(v26, v27).i32[1];
      v29 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v28, 0x3F0000003F000000), v52)));
      if (v25 < 0 || v19 <= v25 || v29.i32[0] < 0 || v19 <= v29.i32[0] || v29.i32[1] < 0 || v19 <= v29.i32[1])
      {
        break;
      }

      v21 += 3;
      i[-1].i32[1] = v25;
      *i = v29;
      v20 += 3;
      if (v20 >= v5)
      {
        return 0;
      }
    }

    v53 = v29;
    v31 = sub_29AABB028();
    std::to_string(&v57, v19);
    v32 = std::string::insert(&v57, 0, "quantizeColorRGB: values out of bound qp1=");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v58, ", y=");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, v25);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v56;
    }

    else
    {
      v36 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    v38 = std::string::append(&v59, v36, size);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v40 = std::string::append(&v60, ", u=");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, v53.i32[0]);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v55;
    }

    else
    {
      v42 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v55.__r_.__value_.__l.__size_;
    }

    v44 = std::string::append(&v61, v42, v43);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v62, ", v=");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v54, v53.i32[1]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v54;
    }

    else
    {
      v48 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v54.__r_.__value_.__l.__size_;
    }

    v50 = std::string::append(&v63, v48, v49);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v65 = v50->__r_.__value_.__r.__words[2];
    v64 = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v31, &v64);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_62;
    }
  }

  else
  {
    v18 = sub_29AABB028();
    sub_29A008E78(&v64, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v18, &v64);
    if (SHIBYTE(v65) < 0)
    {
      v10 = v64;
LABEL_62:
      operator delete(v10);
    }
  }

  return 112;
}

void sub_29AAB5ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB5FE0(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 4 * v16);
      do
      {
        v22 = *v21++;
        v19 = v19 + v22;
        *(v18 + 4 * v15++) = llroundf(v14 * v22);
        --v20;
      }

      while (v20);
      if (vabds_f32(1.0, v19 + *(v17 + 4 * (v16 + v12))) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v23 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v23, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

unsigned int *sub_29AAB6158(unsigned int *result, unsigned int *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= v5 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v10 = *v7;
        v9 = v7[1];
        if (v9 >= *v7)
        {
          if (v10 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          v11 = v9 >= v8;
          if (v9 > v8)
          {
            v8 = v7[1];
          }

          if (v11)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v9 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          v8 = *v6;
          if (v10 > *v6)
          {
            v8 = *v7;
          }

          if (v10 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_29AAB6234(unint64_t *a1, int32x2_t **a2, _BYTE *a3, unsigned int *a4, uint64_t a5, __n128 a6)
{
  v6 = *a3;
  if (v6 <= 1)
  {
    if (!*a3)
    {
      return sub_29AAB6290(a1, a2);
    }

    if (v6 == 1)
    {
      return sub_29AAB62F4(a1, a2, a3, *a4, a5);
    }
  }

  else
  {
    switch(v6)
    {
      case 2u:
        return sub_29AAB672C(a1, a2, a4, a5);
      case 3u:
        return sub_29AAB6838(a1, a2, a3, a5, a6);
      case 4u:
        return sub_29AAB6E5C(a1, a2, a3, a4, a5, a6.n128_f64[0]);
    }
  }

  return 112;
}

uint64_t sub_29AAB6290(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v7];
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AAB62F4(uint64_t *a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = a4;
    *v58 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1[4]];
    sub_29AA7BAE8(&v59, a4, v58);
    *__p = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1[4]];
    sub_29AA7BAE8(v58, a4, __p);
    v13 = 0;
    v14 = v58[0];
    v15 = v59;
    v16 = 2 * a4;
    v17 = a1[4];
    do
    {
      v18 = 0;
      do
      {
        v19 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v17 + 2 * v18)];
        v20 = *&v15[4 * v18];
        if (v20 >= v19)
        {
          v20 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v17 + 2 * v18)];
        }

        *&v15[4 * v18] = v20;
        if (v19 < v14[v18])
        {
          v19 = v14[v18];
        }

        v14[v18++] = v19;
      }

      while (a4 != v18);
      v13 += a4;
      v17 += v16;
    }

    while (v13 < v10);
    v21 = v59;
    v22 = *v14 - *v59;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = a4;
      }

      v24 = v14 + 1;
      v25 = (v59 + 4);
      v26 = v23 - 1;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v30 = v28 - v29;
        if (v30 >= v22)
        {
          v22 = v30;
        }

        --v26;
      }

      while (v26);
    }

    v31 = 1 << a5;
    if (a5)
    {
      if (v22 < 2.2204e-16)
      {
        v22 = 1.0;
      }

      v32 = (v31 + -1.0) / v22;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 0;
    v34 = 0;
    v35 = a1[4];
    while (2)
    {
      v36 = (*a2 + v33);
      v37 = v12;
      v38 = v21;
      v39 = v35;
      do
      {
        v40 = *v39++;
        v41 = llroundf(v32 * (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v40] - *v38));
        if (v41 < 0 || v31 <= v41)
        {
          v42 = sub_29AABB028();
          std::to_string(&v53, v41);
          v43 = std::string::insert(&v53, 0, "Uniform quantization: values out of bound; qvalue=");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v54.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v54.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v54, " and qp1=");
          v46 = *&v45->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v52, 1 << a5);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v52;
          }

          else
          {
            v47 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v52.__r_.__value_.__l.__size_;
          }

          v49 = std::string::append(&v55, v47, size);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v57 = v49->__r_.__value_.__r.__words[2];
          *__p = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v42, __p);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          v11 = 112;
          goto LABEL_53;
        }

        *v36++ = v41;
        ++v38;
        --v37;
      }

      while (v37);
      v34 += v12;
      v35 += v16;
      v33 += 4 * v12;
      if (v34 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v59)
    {
      sub_29A36CF34((a3 + 8), v59, v60, (v60 - v59) >> 2);
    }

    v11 = 0;
    *(a3 + 4) = 1.0 / v32;
LABEL_53:
    if (v58[0])
    {
      v58[1] = v58[0];
      operator delete(v58[0]);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  return v11;
}

void sub_29AAB6690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 120);
  if (v42)
  {
    *(v40 - 112) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB672C(unint64_t *a1, void *a2, _DWORD *a3, int a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 112;
  }

  v5 = a4;
  result = 112;
  if (a4 >= 3 && !(v4 % 3) && *a3 == 3)
  {
    sub_29A0A171C(a2, 2 * (v4 / 3));
    if (v4 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = -1 << (v5 - 1);
      do
      {
        sub_29AA7CA5C((*a2 + v11), (*a2 + v11 + 4), ~v13, pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 2 * v12)], pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 2 * v12 + 2)], pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 2 * v12 + 4)]);
        v12 += 3;
        v11 += 8;
      }

      while (v12 < v4);
    }

    result = 0;
    --*a3;
  }

  return result;
}

uint64_t sub_29AAB6838(unint64_t *a1, int32x2_t **a2, uint64_t a3, char a4, __n128 a5)
{
  v5 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v65, v5);
    v8 = std::string::insert(&v65, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v67 = v8->__r_.__value_.__r.__words[2];
    v66 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v66);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v65.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  v15 = a1[4];
  v65.__r_.__value_.__s.__data_[0] = 0;
  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*sub_29AAB6FDC(v15, &v15[v5])] >= 0.0 && pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v16] <= 1.0)
  {
    v20 = 1 << a4;
    v54 = v20 + -1.0;
    *v17.i32 = 1.0 / v54;
    *(a3 + 4) = 1.0 / v54;
    LODWORD(v66) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v66, v17);
    sub_29A0A171C(a2, v5);
    if (v5 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = (a1[4] + 2);
    for (i = *a2 + 1; ; i = (i + 12))
    {
      v24.f32[0] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v22 - 1)];
      v25 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v22];
      v26.f32[0] = v25 * 0.7152;
      v27 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v22[1]];
      v28 = v24.f32[0] * 0.5;
      v24.f32[1] = v27;
      v26.f32[1] = (v24.f32[0] * -0.1146) + (v25 * -0.3854);
      v29 = vadd_f32(vmul_f32(v24, 0x3F0000003E59B3D0), v26);
      v26.i32[1] = 1056964608;
      v26.f32[0] = v27 * 0.0722;
      v30 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v29, v26), v54)));
      v31 = llroundf(v54 * (((v28 + (v25 * -0.4542)) + (v27 * -0.0458)) + 0.5));
      v32 = v30.i32[0];
      if (v30.i32[0] < 0 || v20 <= v30.i32[0] || v30.i32[1] < 0 || v20 <= v30.i32[1] || v31 < 0 || v20 <= v31)
      {
        break;
      }

      result = 0;
      v22 += 3;
      i[-1] = v30;
      i->i32[0] = v31;
      v21 += 3;
      if (v21 >= v5)
      {
        return result;
      }
    }

    v55 = v30.i32[1];
    v33 = sub_29AABB028();
    std::to_string(&v59, v20);
    v34 = std::string::insert(&v59, 0, "quantizeColorRGB: values out of bound qp1=");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v60, ", y=");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v58, v32);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v58;
    }

    else
    {
      v38 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v40 = std::string::append(&v61, v38, size);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&v62, ", u=");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v57, v55);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v57;
    }

    else
    {
      v44 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v57.__r_.__value_.__l.__size_;
    }

    v46 = std::string::append(&v63, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v64, ", v=");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, v31);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v56;
    }

    else
    {
      v50 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v51 = v56.__r_.__value_.__l.__size_;
    }

    v52 = std::string::append(&v65, v50, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v67 = v52->__r_.__value_.__r.__words[2];
    v66 = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v33, &v66);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v59.__r_.__value_.__r.__words[0];
      goto LABEL_13;
    }
  }

  else
  {
    v18 = sub_29AABB028();
    sub_29A008E78(&v66, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v18, &v66);
    if (SHIBYTE(v67) < 0)
    {
      v10 = v66;
LABEL_13:
      operator delete(v10);
    }
  }

  return 112;
}

void sub_29AAB6D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 169) < 0)
  {
    operator delete(*(v54 - 192));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAB6E5C(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 2 * v16);
      do
      {
        v22 = *v21++;
        v23 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v22];
        v19 = v19 + v23;
        *(v18 + 4 * v15++) = llroundf(v14 * v23);
        --v20;
      }

      while (v20);
      if (vabds_f32(1.0, v19 + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v17 + 2 * (v16 + v12))]) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v24 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v24, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

unsigned __int16 *sub_29AAB6FDC(unsigned __int16 *result, unsigned __int16 *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v4 = result[1];
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4];
    v6 = *result;
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v6];
    if (v5 >= v7)
    {
      v8 = result + 1;
    }

    else
    {
      ++result;
      v8 = v2;
    }

    v9 = v2 + 2;
    if (v9 != a2)
    {
      if (v5 >= v7)
      {
        LOWORD(v4) = v6;
      }

      while (v9 + 1 != a2)
      {
        v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9[1]];
        v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v9];
        if (v10 >= v11)
        {
          if (v11 < pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4])
          {
            LOWORD(v4) = *v9;
            result = v9;
          }

          if (v10 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v8])
          {
            v8 = v9 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v10 < pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4])
          {
            LOWORD(v4) = v9[1];
            result = v9 + 1;
          }

          if (v11 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v8])
          {
            v8 = v9;
          }
        }

        v9 += 2;
        if (v9 == a2)
        {
          return result;
        }
      }

      if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v9] < pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*result])
      {
        return v9;
      }
    }
  }

  return result;
}

uint64_t sub_29AAB70F0(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_29AAA03B4(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

std::string::size_type *sub_29AAB7170(std::string *__str, std::string *this)
{
  std::string::operator=(this, __str);
  std::string::operator=(this + 1, (__str + 112));
  sub_29AA600AC(__str[5].__r_.__value_.__s.__data_[16], &v7);
  if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v7 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  std::string::operator=(this + 2, EmptyString);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  LODWORD(this[3].__r_.__value_.__l.__data_) = __str[6].__r_.__value_.__l.__data_;
  this[3].__r_.__value_.__s.__data_[4] = __str[6].__r_.__value_.__s.__data_[4];
  sub_29A008E78(&v7, off_29F295D30[__str[3].__r_.__value_.__s.__data_[0]]);
  if (this[4].__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(this[3].__r_.__value_.__l.__size_);
  }

  *&this[3].__r_.__value_.__r.__words[1] = v7;
  this[4].__r_.__value_.__r.__words[0] = v8;
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = HIDWORD(__str[3].__r_.__value_.__r.__words[0]);
  result = &this[4].__r_.__value_.__r.__words[2];
  if (&this[4].__r_.__value_.__r.__words[2] != &__str[3].__r_.__value_.__r.__words[1])
  {
    result = sub_29A36CF34(result, __str[3].__r_.__value_.__l.__size_, __str[3].__r_.__value_.__r.__words[2], (__str[3].__r_.__value_.__r.__words[2] - __str[3].__r_.__value_.__l.__size_) >> 2);
  }

  this[5].__r_.__value_.__s.__data_[16] = __str[6].__r_.__value_.__s.__data_[5];
  return result;
}

void *sub_29AAB7290()
{
  v33[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747A98))
  {
    v2[0] = 0;
    sub_29A008E78(v3, "nm");
    v4 = 2;
    sub_29A008E78(v5, "fg2ss");
    v6 = 1;
    sub_29A008E78(v7, "ssn");
    v8 = 3;
    sub_29A008E78(v9, "fn");
    v10 = 4;
    sub_29A008E78(v11, "sc");
    v12 = 5;
    sub_29A008E78(v13, "sh");
    v14 = 6;
    sub_29A008E78(v15, "attr");
    v16 = 7;
    sub_29A008E78(v17, "nm");
    v18 = 8;
    sub_29A008E78(v19, "tp");
    v20 = 9;
    sub_29A008E78(v21, "int");
    v22 = 10;
    sub_29A008E78(v23, "usdCPV");
    v24 = 11;
    sub_29A008E78(v25, "isPV");
    v26 = 12;
    sub_29A008E78(v27, "fn");
    v28 = 13;
    sub_29A008E78(v29, "sc");
    v30 = 14;
    sub_29A008E78(v31, "sh");
    v32 = 15;
    sub_29A008E78(v33, "hasI");
    sub_29AABA918(&unk_2A1747A80, v2, 16);
    v1 = 128;
    do
    {
      if (SHIBYTE(v2[v1 - 1]) < 0)
      {
        operator delete(*&v2[v1 - 6]);
      }

      v1 -= 8;
    }

    while (v1 * 4);
    __cxa_guard_release(&qword_2A1747A98);
  }

  return &unk_2A1747A80;
}

void sub_29AAB7538(_Unwind_Exception *a1)
{
  v3 = v1 + 488;
  v4 = -512;
  while (1)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    v3 -= 32;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A1747A98);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAB75DC(uint64_t a1, unsigned __int8 **a2, char *a3)
{
  pxrInternal__aapl__pxrReserved__::JsParseString(a2, 0, a3, &v15);
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v15))
  {
    v4 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v4, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = 300;
  }

  else
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v15);
    sub_29A1519B8(__p, JsObject);
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v10, __p);
    v7 = sub_29AAB7754(a1, &v10);
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v7)
    {
      v8 = sub_29AABB028();
      std::operator+<char>();
      sub_29AA5B750(v8, &v10);
      if (v12 < 0)
      {
        operator delete(v10);
      }

      v5 = 301;
    }

    else
    {
      v5 = 0;
    }

    sub_29A09932C(__p, __p[1]);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  return v5;
}

void sub_29AAB7704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_29A09932C(&a12, a13);
  v15 = *(v13 - 24);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AAB7754(uint64_t a1, void ***this)
{
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(this))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(this);
    sub_29A1519B8(&v112, JsObject);
    sub_29AAB7290();
    LODWORD(v101.__r_.__value_.__l.__data_) = 0;
    v5 = sub_29AAB97FC(&unk_2A1747A80, &v101);
    if (v113 == sub_29A01BCCC(&v112, v5))
    {
      v37 = sub_29AABB028();
      sub_29AAB7290();
      LODWORD(__p[0]) = 0;
      sub_29AAB97FC(&unk_2A1747A80, __p);
      std::operator+<char>();
    }

    else
    {
      sub_29AAB7290();
      LODWORD(v101.__r_.__value_.__l.__data_) = 6;
      v6 = sub_29AAB97FC(&unk_2A1747A80, &v101);
      if (v113 != sub_29A01BCCC(&v112, v6))
      {
        memset(&v101, 0, sizeof(v101));
        v103[0] = 0;
        v103[1] = 0;
        v102 = v103;
        memset(&v104, 0, sizeof(v104));
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        sub_29AAB7290();
        LODWORD(v98) = 0;
        __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v98);
        v7 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p, &v93);
        if (pxrInternal__aapl__pxrReserved__::JsValue::IsString((v7 + 7)))
        {
          sub_29AAB7290();
          LODWORD(v98) = 0;
          __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v98);
          v8 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p, &v93);
          String = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v8 + 7));
          std::string::operator=(&v101, String);
          sub_29AAB7290();
          LODWORD(v98) = 3;
          v10 = sub_29AAB97FC(&unk_2A1747A80, &v98);
          if (v113 == sub_29A01BCCC(&v112, v10) || (sub_29AAB7290(), LODWORD(v93) = 3, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v93), v11 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p, &v89), !pxrInternal__aapl__pxrReserved__::JsValue::IsString((v11 + 7))))
          {
            v38 = sub_29AABB028();
            sub_29AAB7290();
            LODWORD(v98) = 3;
            sub_29AAB97FC(&unk_2A1747A80, &v98);
            std::operator+<char>();
          }

          else
          {
            sub_29AAB7290();
            LODWORD(v98) = 3;
            __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v98);
            v12 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p, &v93);
            v13 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v12 + 7));
            std::string::operator=(&v104, v13);
            sub_29AAB7290();
            LODWORD(v98) = 4;
            v14 = sub_29AAB97FC(&unk_2A1747A80, &v98);
            if (v113 == sub_29A01BCCC(&v112, v14) || (sub_29AAB7290(), LODWORD(v93) = 4, __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v93), v15 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p, &v89), !pxrInternal__aapl__pxrReserved__::JsValue::IsReal((v15 + 7))))
            {
              v38 = sub_29AABB028();
              sub_29AAB7290();
              LODWORD(v98) = 4;
              sub_29AAB97FC(&unk_2A1747A80, &v98);
              std::operator+<char>();
            }

            else
            {
              sub_29AAB7290();
              LODWORD(v98) = 4;
              __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v98);
              v16 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p, &v93);
              Real = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(v16 + 7);
              v105 = Real;
              sub_29AAB7290();
              LODWORD(v98) = 5;
              v18 = sub_29AAB97FC(&unk_2A1747A80, &v98);
              if (v113 != sub_29A01BCCC(&v112, v18))
              {
                sub_29AAB7290();
                LODWORD(v93) = 5;
                __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v93);
                v19 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p, &v89);
                if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v19 + 7)))
                {
                  sub_29AAB7290();
                  LODWORD(v93) = 5;
                  __p[0] = sub_29AAB97FC(&unk_2A1747A80, &v93);
                  v20 = sub_29AABAB28(&v112, __p[0], &unk_29B4D6118, __p, &v89);
                  JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v20 + 7);
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  sub_29A151C2C(&v98, *JsArray, JsArray[1], (JsArray[1] - *JsArray) >> 4);
                  *(&v106 + 1) = v106;
                  v22 = v98;
                  for (i = v99; v22 != i; v22 += 16)
                  {
                    v24 = *(v22 + 8);
                    v93 = *v22;
                    v94 = v24;
                    if (v24)
                    {
                      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    IsReal = pxrInternal__aapl__pxrReserved__::JsValue::IsReal(&v93);
                    if (IsReal)
                    {
                      v26 = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(&v93);
                      *__p = v26;
                      sub_29A0C2184(&v106, __p);
                    }

                    else
                    {
                      v27 = sub_29AABB028();
                      sub_29AAB7290();
                      LODWORD(v89) = 5;
                      sub_29AAB97FC(&unk_2A1747A80, &v89);
                      std::operator+<char>();
                      sub_29AA5B750(v27, __p);
                      if (SBYTE7(v78) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    if (v94)
                    {
                      sub_29A014BEC(v94);
                    }

                    if (!IsReal)
                    {
                      goto LABEL_121;
                    }
                  }

                  v28 = *(a1 + 220);
                  if (v28 <= 1 && (v28 != 1 || *(a1 + 221) < 5u))
                  {
                    goto LABEL_55;
                  }

                  sub_29AAB7290();
                  LODWORD(__p[0]) = 2;
                  v29 = sub_29AAB97FC(&unk_2A1747A80, __p);
                  if (v113 == sub_29A01BCCC(&v112, v29) || (sub_29AAB7290(), LODWORD(v89) = 2, v93 = sub_29AAB97FC(&unk_2A1747A80, &v89), v30 = sub_29AABAB28(&v112, v93, &unk_29B4D6118, &v93, &v96), !pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v30 + 7))))
                  {
                    v49 = sub_29AABB028();
                    sub_29AAB7290();
                    LODWORD(v93) = 2;
                    sub_29AAB97FC(&unk_2A1747A80, &v93);
                    std::operator+<char>();
LABEL_67:
                    sub_29AA5B750(v49, __p);
                    if (SBYTE7(v78) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    goto LABEL_121;
                  }

                  sub_29AAB7290();
                  LODWORD(v89) = 2;
                  v93 = sub_29AAB97FC(&unk_2A1747A80, &v89);
                  v31 = sub_29AABAB28(&v112, v93, &unk_29B4D6118, &v93, &v96);
                  v32 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v31 + 7);
                  __p[0] = 0;
                  __p[1] = 0;
                  *&v78 = 0;
                  sub_29A151C2C(__p, *v32, v32[1], (v32[1] - *v32) >> 4);
                  v33 = *(&v109 + 1);
                  v34 = v109;
                  while (v33 != v34)
                  {
                    v33 -= 3;
                    sub_29A0EB800(v33);
                  }

                  *(&v109 + 1) = v34;
                  v50 = __p[0];
                  v76 = __p[1];
                  if (__p[0] == __p[1])
                  {
LABEL_91:
                    sub_29AAB7290();
                    LODWORD(v93) = 1;
                    v62 = sub_29AAB97FC(&unk_2A1747A80, &v93);
                    if (v113 == sub_29A01BCCC(&v112, v62) || (sub_29AAB7290(), LODWORD(v96) = 1, v89 = sub_29AAB97FC(&unk_2A1747A80, &v96), v63 = sub_29AABAB28(&v112, v89, &unk_29B4D6118, &v89, &v91), !pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v63 + 7))))
                    {
                      v69 = sub_29AABB028();
                      sub_29AAB7290();
                      LODWORD(v89) = 1;
                      sub_29AAB97FC(&unk_2A1747A80, &v89);
                      std::operator+<char>();
                      sub_29AA5B750(v69, &v93);
                      if (SHIBYTE(v95) < 0)
                      {
                        operator delete(v93);
                      }
                    }

                    else
                    {
                      sub_29AAB7290();
                      LODWORD(v96) = 1;
                      v89 = sub_29AAB97FC(&unk_2A1747A80, &v96);
                      v64 = sub_29AABAB28(&v112, v89, &unk_29B4D6118, &v89, &v91);
                      v65 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v64 + 7);
                      v93 = 0;
                      v94 = 0;
                      v95 = 0;
                      sub_29A151C2C(&v93, *v65, v65[1], (v65[1] - *v65) >> 4);
                      v66 = *(&v110 + 1);
                      v67 = v111;
                      while (v67 != v66)
                      {
                        v68 = *(v67 - 1);
                        v67 -= 3;
                        if (v68 < 0)
                        {
                          operator delete(*v67);
                        }
                      }

                      *&v111 = v66;
                      v71 = v93;
                      v72 = v94;
                      if (v93 == v94)
                      {
LABEL_118:
                        v89 = &v93;
                        sub_29A0176E4(&v89);
                        v93 = __p;
                        sub_29A0176E4(&v93);
LABEL_55:
                        sub_29AAB7290();
                        LODWORD(__p[0]) = 6;
                        v93 = sub_29AAB97FC(&unk_2A1747A80, __p);
                        v40 = sub_29AABAB28(&v112, v93, &unk_29B4D6118, &v93, &v89);
                        if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v40 + 7)))
                        {
                          sub_29AAB7290();
                          LODWORD(__p[0]) = 6;
                          v89 = sub_29AAB97FC(&unk_2A1747A80, __p);
                          v41 = sub_29AABAB28(&v112, v89, &unk_29B4D6118, &v89, &v96);
                          v42 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v41 + 7);
                          v93 = 0;
                          v94 = 0;
                          v95 = 0;
                          v43 = sub_29A151C2C(&v93, *v42, v42[1], (v42[1] - *v42) >> 4);
                          v90 = 0uLL;
                          v89 = &v90;
                          v44 = v93;
                          v45 = v94;
                          v46 = &v90;
                          if (v93 == v94)
                          {
LABEL_64:
                            sub_29AABAC40(&v102, v46, &v90);
                            sub_29AAB987C(a1, &v101);
                            v36 = 0;
                          }

                          else
                          {
                            while (1)
                            {
                              shared_owners = v44->__shared_owners_;
                              v96 = v44->__vftable;
                              v97 = shared_owners;
                              if (shared_owners)
                              {
                                atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              v82 = 0;
                              v83 = 0;
                              v84 = 0;
                              v86 = 0;
                              v87 = 0;
                              v85 = 0;
                              *__p = 0u;
                              v78 = 0u;
                              v79 = 0u;
                              v80 = 0u;
                              v81 = 0;
                              if (sub_29AAB996C(v43, &v96, __p))
                              {
                                break;
                              }

                              v91 = __p;
                              v48 = sub_29AA7DF08(&v89, __p, &unk_29B4D6118, &v91, &v88);
                              sub_29AABA88C((v48 + 7), __p);
                              sub_29AA654EC(__p);
                              v43 = v97;
                              if (v97)
                              {
                                sub_29A014BEC(v97);
                              }

                              v44 = (v44 + 16);
                              if (v44 == v45)
                              {
                                v46 = v89;
                                goto LABEL_64;
                              }
                            }

                            sub_29AA654EC(__p);
                            if (v97)
                            {
                              sub_29A014BEC(v97);
                            }

                            v36 = 301;
                          }

                          sub_29AA7AD68(&v89, v90);
                          __p[0] = &v93;
                          sub_29A0176E4(__p);
                          goto LABEL_122;
                        }

                        v49 = sub_29AABB028();
                        sub_29AAB7290();
                        LODWORD(v93) = 6;
                        sub_29AAB97FC(&unk_2A1747A80, &v93);
                        std::operator+<char>();
                        goto LABEL_67;
                      }

                      while (1)
                      {
                        v73 = v71->__shared_owners_;
                        v96 = v71->__vftable;
                        v97 = v73;
                        if (v73)
                        {
                          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        IsString = pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v96);
                        if (IsString)
                        {
                          pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v96);
                          sub_29A070BA0(&v110 + 8);
                        }

                        v75 = sub_29AABB028();
                        sub_29AAB7290();
                        LODWORD(v91) = 1;
                        sub_29AAB97FC(&unk_2A1747A80, &v91);
                        std::operator+<char>();
                        sub_29AA5B750(v75, &v89);
                        if (SHIBYTE(v90) < 0)
                        {
                          operator delete(v89);
                        }

                        if (v97)
                        {
                          sub_29A014BEC(v97);
                        }

                        if (!IsString)
                        {
                          break;
                        }

                        v71 = (v71 + 16);
                        if (v71 == v72)
                        {
                          goto LABEL_118;
                        }
                      }

                      v89 = &v93;
                      sub_29A0176E4(&v89);
                    }
                  }

                  else
                  {
                    while (1)
                    {
                      v51 = *(v50 + 1);
                      v96 = *v50;
                      v97 = v51;
                      if (v51)
                      {
                        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v96))
                      {
                        break;
                      }

                      v93 = &v93;
                      v94 = &v93;
                      v95 = 0;
                      v52 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v96);
                      v53 = *v52;
                      v54 = v52[1];
                      while (1)
                      {
                        if (v53 == v54)
                        {
                          sub_29AA5E490(&v109, &v93);
                          v61 = 1;
                          goto LABEL_87;
                        }

                        v55 = *(v53 + 8);
                        v91 = *v53;
                        v92 = v55;
                        if (v55)
                        {
                          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        IsInt = pxrInternal__aapl__pxrReserved__::JsValue::IsInt(&v91);
                        if (IsInt)
                        {
                          Int = pxrInternal__aapl__pxrReserved__::JsValue::GetInt(&v91);
                          v58 = operator new(0x18uLL);
                          v58[4] = Int;
                          v59 = v93;
                          *v58 = v93;
                          *(v58 + 1) = &v93;
                          v59[1] = v58;
                          v93 = v58;
                          ++v95;
                        }

                        else
                        {
                          v60 = sub_29AABB028();
                          sub_29AAB7290();
                          v88 = 2;
                          sub_29AAB97FC(&unk_2A1747A80, &v88);
                          std::operator+<char>();
                          sub_29AA5B750(v60, &v89);
                          if (SHIBYTE(v90) < 0)
                          {
                            operator delete(v89);
                          }
                        }

                        if (v92)
                        {
                          sub_29A014BEC(v92);
                        }

                        if (!IsInt)
                        {
                          break;
                        }

                        v53 += 16;
                      }

                      v61 = 0;
LABEL_87:
                      sub_29A0EB800(&v93);
                      if (v97)
                      {
                        sub_29A014BEC(v97);
                      }

                      if ((v61 & 1) == 0)
                      {
                        goto LABEL_120;
                      }

                      v50 += 16;
                      if (v50 == v76)
                      {
                        goto LABEL_91;
                      }
                    }

                    v70 = sub_29AABB028();
                    sub_29AAB7290();
                    LODWORD(v89) = 2;
                    sub_29AAB97FC(&unk_2A1747A80, &v89);
                    std::operator+<char>();
                    sub_29AA5B750(v70, &v93);
                    if (SHIBYTE(v95) < 0)
                    {
                      operator delete(v93);
                    }

                    if (v97)
                    {
                      sub_29A014BEC(v97);
                    }
                  }

LABEL_120:
                  v93 = __p;
                  sub_29A0176E4(&v93);
LABEL_121:
                  v36 = 301;
LABEL_122:
                  __p[0] = &v98;
                  sub_29A0176E4(__p);
LABEL_43:
                  __p[0] = &v110 + 8;
                  sub_29A012C90(__p);
                  __p[0] = &v109;
                  sub_29AA7B3C4(__p);
                  if (*(&v107 + 1))
                  {
                    *&v108 = *(&v107 + 1);
                    operator delete(*(&v107 + 1));
                  }

                  if (v106)
                  {
                    *(&v106 + 1) = v106;
                    operator delete(v106);
                  }

                  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v104.__r_.__value_.__l.__data_);
                  }

                  sub_29AA7AD68(&v102, v103[0]);
                  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v101.__r_.__value_.__l.__data_);
                  }

LABEL_51:
                  sub_29A09932C(&v112, v113[0]);
                  return v36;
                }
              }

              v38 = sub_29AABB028();
              sub_29AAB7290();
              LODWORD(v98) = 5;
              sub_29AAB97FC(&unk_2A1747A80, &v98);
              std::operator+<char>();
            }
          }
        }

        else
        {
          v38 = sub_29AABB028();
          sub_29AAB7290();
          LODWORD(v98) = 0;
          sub_29AAB97FC(&unk_2A1747A80, &v98);
          std::operator+<char>();
        }

        sub_29AA5B750(v38, __p);
        if (SBYTE7(v78) < 0)
        {
          operator delete(__p[0]);
        }

        v36 = 301;
        goto LABEL_43;
      }

      v37 = sub_29AABB028();
      sub_29AAB7290();
      LODWORD(__p[0]) = 6;
      sub_29AAB97FC(&unk_2A1747A80, __p);
      std::operator+<char>();
    }

    sub_29AA5B750(v37, &v101);
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    v36 = 301;
    goto LABEL_51;
  }

  v35 = sub_29AABB028();
  sub_29A008E78(&v101, "parseJsonMesh: Not an object!");
  sub_29AA5B750(v35, &v101);
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  return 301;
}