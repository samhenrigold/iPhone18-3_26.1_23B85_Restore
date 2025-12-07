uint64_t sub_29AE10C54(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AE1848C(a1, a2);
  }

  else
  {
    sub_29AE0D0AC(a1, a1[1], a2);
    result = v3 + 104;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29AE10CA0(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_29A124AB0(&v4);
  sub_29A186B14(a1 + 16);
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AE10D0C(uint64_t a1)
{
  sub_29A0EB570(a1 + 48);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::_BuildEquivalentMaterialNetwork(uint64_t *a1, uint64_t *a2, void *a3)
{
  v87[2] = *MEMORY[0x29EDCA608];
  sub_29AE185D4(a3);
  v6 = atomic_load(&qword_2A174EEC0);
  if (!v6)
  {
    v6 = sub_29AE175EC();
  }

  if ((v6[26] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v6[26] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v84, EmptyString);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v8 = a1[3];
  v9 = a1 + 4;
  v73 = a2;
  if (v8 != a1 + 4)
  {
    do
    {
      __p[0] = v8 + 5;
      sub_29A0A71C8(&v81, __p);
      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
    for (i = v82; v81 != v82; i = v82)
    {
      v14 = *(i - 1);
      v82 = (i - 1);
      if (!sub_29A328A44(a3, v14))
      {
        sub_29A55CDFC(a1, v14);
        std::to_string(&v74, 0);
        v15 = std::string::insert(&v74, 0, "N");
        v16 = *&v15->__r_.__value_.__l.__data_;
        v78[0] = *(&v15->__r_.__value_.__l + 2);
        *__p = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v86, __p);
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v87, &v84, &v86);
        v75.__r_.__value_.__r.__words[0] = v14;
        sub_29A55CB38(a3, v14, &unk_29B4D6118, &v75);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  if (a2 != a1)
  {
    sub_29A34AC54(a2 + 6, a1[6], a1[7], (a1[7] - a1[6]) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(a2 + 9, a1 + 9);
  v17 = a1[3];
  if (v17 != v9)
  {
    v74.__r_.__value_.__r.__words[0] = v17 + 40;
    v18 = sub_29A55CB38(a3, (v17 + 40), &unk_29B4D6118, &v74);
    sub_29A1E21F4(__p, v18 + 6);
    sub_29A1E2240(__p + 1, v18 + 7);
    v19 = *(v17 + 48);
    __p[1] = v19;
    if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __p[1] = (__p[1] & 0xFFFFFFFFFFFFFFF8);
    }

    sub_29AE18630(a2 + 3, v17 + 32, v17 + 32, __p);
  }

  v20 = *a1;
  if (*a1 != a1 + 1)
  {
    v78[0] = 0;
    v78[1] = 0;
    __p[0] = 0;
    __p[1] = v78;
    v80[0] = 0;
    v80[1] = 0;
    v79 = v80;
    sub_29A166F2C(__p, v20 + 5);
    if ((atomic_load_explicit(&qword_2A174EEF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EEF8))
    {
      v38 = atomic_load(&qword_2A174EF00);
      if (!v38)
      {
        v38 = sub_29AE15A48();
      }

      v39 = v38[12];
      v40 = atomic_load(&qword_2A174EF00);
      if (!v40)
      {
        v40 = sub_29AE15A48();
      }

      sub_29AE15FD8(qword_2A174EED0, v39, v40[13], 0);
      __cxa_atexit(sub_29A657A90, qword_2A174EED0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174EEF8);
    }

    v21 = atomic_load(&qword_2A174EF00);
    if (!v21)
    {
      v21 = sub_29AE15A48();
    }

    if ((*v21 ^ v20[5]) < 8)
    {
      goto LABEL_33;
    }

    Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(v21);
    v23 = atomic_load(&qword_2A174EEC0);
    if (!v23)
    {
      v23 = sub_29AE175EC();
    }

    ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(Instance, (v20 + 5), v23);
    if (ShaderNodeByIdentifierAndType && (ShaderNodeByIdentifierAndType = sub_29A16039C(qword_2A174EED0, ShaderNodeByIdentifierAndType + 8)) != 0)
    {
LABEL_33:
      if (&__p[1] != (v20 + 6))
      {
        sub_29AC44B28(&__p[1], v20[6], v20 + 7);
      }
    }

    else
    {
      v25 = v20[6];
      if (v25 != v20 + 7)
      {
        do
        {
          if ((v25[4] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v26 = ((v25[4] & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ShaderNodeByIdentifierAndType);
          }

          v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v27)
          {
            v27 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if ((*(v27 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v28 = ((*(v27 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v28 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
          }

          pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(v26, v28, &v75);
          if (v76 == 1)
          {
            sub_29AE18740(&__p[1], (v25 + 4));
          }

          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          v29 = v25[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v25[2];
              v12 = *v30 == v25;
              v25 = v30;
            }

            while (!v12);
          }

          v25 = v30;
        }

        while (v30 != v20 + 7);
      }
    }

    v31 = v20[9];
    if (v31 != (v20 + 10))
    {
      memset(&v74, 0, sizeof(v74));
      v33 = v31[5];
      v32 = v31[6];
      while (v33 != v32)
      {
        v87[0] = v33;
        v34 = sub_29A55CB38(a3, v33, &unk_29B4D6118, v87);
        sub_29A1E21F4(&v75, v34 + 6);
        sub_29A1E2240(v75.__r_.__value_.__r.__words + 1, v34 + 7);
        v35 = *(v33 + 8);
        v75.__r_.__value_.__l.__size_ = v35;
        if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v75.__r_.__value_.__l.__size_ &= 0xFFFFFFFFFFFFFFF8;
        }

        size = v74.__r_.__value_.__l.__size_;
        if (v74.__r_.__value_.__l.__size_ >= v74.__r_.__value_.__r.__words[2])
        {
          v74.__r_.__value_.__l.__size_ = sub_29AC44FB0(&v74.__r_.__value_.__l.__data_, &v75);
          if ((v75.__r_.__value_.__s.__data_[8] & 7) != 0)
          {
            atomic_fetch_add_explicit((v75.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          sub_29A1DDD84(v74.__r_.__value_.__l.__size_, &v75);
          sub_29A1DDDC0((size + 4), v75.__r_.__value_.__r.__words + 1);
          *(size + 8) = v75.__r_.__value_.__l.__size_;
          v75.__r_.__value_.__l.__size_ = 0;
          v74.__r_.__value_.__l.__size_ = size + 16;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v75.__r_.__value_.__r.__words + 1);
        sub_29A1DE3A4(&v75);
        v33 += 16;
      }

      sub_29AE1894C(&v79, (v31 + 4), v31 + 4, &v74);
    }

    v74.__r_.__value_.__r.__words[0] = (v20 + 4);
    v37 = sub_29A55CB38(a3, v20 + 8, &unk_29B4D6118, &v74);
    sub_29AE189E4(v73, (v37 + 3), (v37 + 3), __p);
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  v41 = a2[3];
  if (v41 != a2 + 4)
  {
    do
    {
      v42 = (v41[4] & 0xFFFFFFFFFFFFFFF8);
      if (__p[1])
      {
        v42 += (__p[0] + v42 + (__p[0] + v42) * (__p[0] + v42)) >> 1;
      }

      else
      {
        LOBYTE(__p[1]) = 1;
      }

      __p[0] = v42;
      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v41 + 5));
      v44 = *(Name + 23);
      if (v44 >= 0)
      {
        v45 = Name;
      }

      else
      {
        v45 = *Name;
      }

      if (v44 >= 0)
      {
        v46 = *(Name + 23);
      }

      else
      {
        v46 = Name[1];
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(__p, v45, v46);
      v47 = v41[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v41[2];
          v12 = *v48 == v41;
          v41 = v48;
        }

        while (!v12);
      }

      v41 = v48;
    }

    while (v48 != a2 + 4);
  }

  v51 = *a2;
  v50 = (a2 + 1);
  v49 = v51;
  if (v51 == v50)
  {
    v56 = __p[0];
  }

  else
  {
    do
    {
      v52 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v49 + 32));
      v53 = *(v52 + 23);
      if (v53 >= 0)
      {
        v54 = v52;
      }

      else
      {
        v54 = *v52;
      }

      if (v53 >= 0)
      {
        v55 = *(v52 + 23);
      }

      else
      {
        v55 = v52[1];
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(__p, v54, v55);
      v56 = *(v49 + 5) & 0xFFFFFFFFFFFFFFF8;
      if (__p[1])
      {
        v56 += (__p[0] + v56 + (__p[0] + v56) * (__p[0] + v56)) >> 1;
      }

      else
      {
        LOBYTE(__p[1]) = 1;
      }

      __p[0] = v56;
      v57 = *(v49 + 6);
      if (v57 != v49 + 56)
      {
        do
        {
          __p[0] = ((*(v57 + 4) & 0xFFFFFFFFFFFFFFF8) + ((v56 + (*(v57 + 4) & 0xFFFFFFFFFFFFFFF8) + (v56 + (*(v57 + 4) & 0xFFFFFFFFFFFFFFF8)) * (v56 + (*(v57 + 4) & 0xFFFFFFFFFFFFFFF8))) >> 1));
          Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash((v57 + 40));
          v56 = Hash;
          if (__p[1])
          {
            v56 = Hash + ((__p[0] + Hash + (__p[0] + Hash) * (__p[0] + Hash)) >> 1);
          }

          else
          {
            LOBYTE(__p[1]) = 1;
          }

          __p[0] = v56;
          v59 = *(v57 + 1);
          if (v59)
          {
            do
            {
              v60 = v59;
              v59 = *v59;
            }

            while (v59);
          }

          else
          {
            do
            {
              v60 = *(v57 + 2);
              v12 = *v60 == v57;
              v57 = v60;
            }

            while (!v12);
          }

          v57 = v60;
        }

        while (v60 != v49 + 56);
      }

      v61 = *(v49 + 9);
      if (v61 != v49 + 80)
      {
        do
        {
          v62 = *(v61 + 5);
          v56 = (*(v61 + 4) & 0xFFFFFFFFFFFFFFF8) + ((v56 + (*(v61 + 4) & 0xFFFFFFFFFFFFFFF8) + (v56 + (*(v61 + 4) & 0xFFFFFFFFFFFFFFF8)) * (v56 + (*(v61 + 4) & 0xFFFFFFFFFFFFFFF8))) >> 1);
          __p[0] = v56;
          v63 = *(v61 + 6);
          while (v62 != v63)
          {
            v64 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v62);
            v65 = *(v64 + 23);
            if (v65 >= 0)
            {
              v66 = v64;
            }

            else
            {
              v66 = *v64;
            }

            if (v65 >= 0)
            {
              v67 = *(v64 + 23);
            }

            else
            {
              v67 = v64[1];
            }

            pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(__p, v66, v67);
            v56 = *(v62 + 1) & 0xFFFFFFFFFFFFFFF8;
            if (__p[1])
            {
              v56 += (__p[0] + v56 + (__p[0] + v56) * (__p[0] + v56)) >> 1;
            }

            else
            {
              LOBYTE(__p[1]) = 1;
            }

            __p[0] = v56;
            v62 = (v62 + 16);
          }

          v68 = *(v61 + 1);
          if (v68)
          {
            do
            {
              v69 = v68;
              v68 = *v68;
            }

            while (v68);
          }

          else
          {
            do
            {
              v69 = *(v61 + 2);
              v12 = *v69 == v61;
              v61 = v69;
            }

            while (!v12);
          }

          v61 = v69;
        }

        while (v69 != v49 + 80);
      }

      v70 = *(v49 + 1);
      if (v70)
      {
        do
        {
          v71 = v70;
          v70 = *v70;
        }

        while (v70);
      }

      else
      {
        do
        {
          v71 = *(v49 + 2);
          v12 = *v71 == v49;
          v49 = v71;
        }

        while (!v12);
      }

      v49 = v71;
    }

    while (v71 != v50);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v85);
  sub_29A1DE3A4(&v84);
  return bswap64(0x9E3779B97F4A7C55 * v56);
}

void sub_29AE11964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, unint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char *a38)
{
  __cxa_guard_abort(&qword_2A174EEF8);
  sub_29ABF3348(&a37, a38);
  sub_29A5B0668(a15, a35);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(v38 - 160);
  if (v40)
  {
    *(v38 - 152) = v40;
    operator delete(v40);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v38 - 132));
  sub_29A1DE3A4((v38 - 136));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ApplyMaterialXFilter@<X0>(pxrInternal__aapl__pxrReserved__::SdrRegistry *a1@<X0>, _DWORD *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, std::string *a4@<X3>, uint64_t a5@<X4>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a6@<X5>, pxrInternal__aapl__pxrReserved__::SdrRegistry *a7@<X8>)
{
  v179[2] = *MEMORY[0x29EDCA608];
  Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(a1);
  v11 = Instance;
  v12 = atomic_load(&qword_2A174EEC0);
  if (!v12)
  {
    v125 = Instance;
    v126 = sub_29AE175EC();
    v11 = v125;
    v12 = v126;
  }

  v131 = a3;
  result = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(v11, a3, v12);
  if (result)
  {
    memset(v148, 0, sizeof(v148));
    v149 = 1065353216;
    v143 = v144;
    v144[0] = 0;
    v145[0] = 0;
    v145[1] = 0;
    v144[1] = 0;
    v144[2] = v145;
    v146 = 0u;
    v147 = 0u;
    v14 = pxrInternal__aapl__pxrReserved__::_BuildEquivalentMaterialNetwork(a1, &v143, v148);
    v157 = a4;
    v15 = sub_29A55CB38(v148, a4, &unk_29B4D6118, &v157);
    sub_29A1E21F4(&v141, v15 + 6);
    v16 = sub_29A1E2240(&v142, v15 + 7);
    *a7 = 0;
    *(a7 + 1) = 0;
    v17 = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(v16);
    v18 = atomic_load(&qword_2A174EEC0);
    if (!v18)
    {
      v18 = sub_29AE175EC();
    }

    ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(v17, a3, v18);
    v20 = atomic_load(&qword_2A174EEC0);
    if (!v20)
    {
      v20 = sub_29AE175EC();
    }

    v21 = v20[7] ^ ShaderNodeByIdentifierAndType[8];
    v22 = atomic_load(&qword_2A174EEC0);
    if (v21 <= 7)
    {
      if (!v22)
      {
        v22 = sub_29AE175EC();
      }

      LODWORD(v157) = 0;
      if (sub_29AE16540(a3, v22 + 9, &v157))
      {
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v23)
        {
          v23 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v24 = *(v23 + 1);
        goto LABEL_60;
      }

      v37 = atomic_load(&qword_2A174EEC0);
      if (!v37)
      {
        v37 = sub_29AE175EC();
      }

      LODWORD(v157) = 1065353216;
      v38 = sub_29AE16540(a3, v37 + 8, &v157);
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (v38)
      {
        if (!v23)
        {
LABEL_42:
          v23 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

LABEL_43:
        v24 = *(v23 + 4);
        goto LABEL_60;
      }

      if (!v23)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (!v22)
    {
      v22 = sub_29AE175EC();
    }

    v25 = v22[10] ^ ShaderNodeByIdentifierAndType[8];
    v26 = atomic_load(&qword_2A174EEC0);
    if (v25 <= 7)
    {
      if (!v26)
      {
        v26 = sub_29AE175EC();
      }

      LODWORD(v152[0]) = 0;
      if (sub_29AE16540(a3, v26 + 11, v152))
      {
        goto LABEL_25;
      }

      v27 = atomic_load(&qword_2A174EEC0);
      if (!v27)
      {
        v27 = sub_29AE175EC();
      }

      __asm { FMOV            V0.2S, #1.0 }

      v157 = _D0;
      v158 = 1065353216;
      if (sub_29AE16614(a3, v27 + 8, &v157))
      {
LABEL_25:
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v23)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (!v23)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (!v26)
    {
      v26 = sub_29AE175EC();
    }

    v33 = v26[12] ^ ShaderNodeByIdentifierAndType[8];
    v34 = atomic_load(&qword_2A174EEC0);
    if (v33 <= 7)
    {
      if (!v34)
      {
        v34 = sub_29AE175EC();
      }

      LODWORD(v152[0]) = 0;
      if (sub_29AE16540(a3, v34 + 13, v152))
      {
        goto LABEL_36;
      }

      v35 = atomic_load(&qword_2A174EEC0);
      if (!v35)
      {
        v35 = sub_29AE175EC();
      }

      __asm { FMOV            V0.2S, #1.0 }

      v157 = _D0;
      v158 = 1065353216;
      if (sub_29AE16614(a3, v35 + 14, &v157))
      {
LABEL_36:
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v23)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (!v23)
      {
LABEL_58:
        v23 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      }

LABEL_59:
      v24 = *v23;
LABEL_60:
      v44 = v24 & 0xFFFFFFFFFFFFFFF8;
      if (v44)
      {
        EmptyString = (v44 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
      }

      goto LABEL_63;
    }

    if (!v34)
    {
      v34 = sub_29AE175EC();
    }

    if ((v34[15] ^ ShaderNodeByIdentifierAndType[8]) <= 7)
    {
      v39 = atomic_load(&qword_2A174EEC0);
      if (!v39)
      {
        v39 = sub_29AE175EC();
      }

      if ((a3 + 40) == sub_29A31B8F0(a3 + 32, v39 + 16))
      {
        v98 = atomic_load(&qword_2A174EEC0);
        if (!v98)
        {
          v98 = sub_29AE175EC();
        }

        v99 = sub_29A31B8F0(a3 + 8, v98 + 16);
        v100 = v99;
        if ((a3 + 16) == v99 || (v101 = (v99 + 40), !sub_29A293A9C((v99 + 40))))
        {
          v40 = 0;
        }

        else
        {
          v102 = *(v100 + 48);
          if ((v102 & 4) != 0)
          {
            v101 = (*((v102 & 0xFFFFFFFFFFFFFFF8) + 168))(v100 + 40);
          }

          if (*v101 >= 3)
          {
            v40 = 0;
          }

          else
          {
            v40 = *v101;
          }
        }
      }

      else
      {
        v40 = 2;
      }

      v103 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (!v103)
      {
        v103 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      }

      v104 = *v103;
      v157 = v104;
      if ((v104 & 7) != 0 && (atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v157 = (v157 & 0xFFFFFFFFFFFFFFF8);
      }

      if (v40 == 2)
      {
        v109 = atomic_load(&qword_2A174EEC0);
        if (!v109)
        {
          v109 = sub_29AE175EC();
        }

        LODWORD(v152[0]) = 1065353216;
        if (!sub_29AE16540(a3, v109 + 18, v152))
        {
          goto LABEL_186;
        }

        v110 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v110)
        {
          v110 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v108 = (v110 + 32);
      }

      else
      {
        if (v40 != 1)
        {
          goto LABEL_186;
        }

        v105 = atomic_load(&qword_2A174EEC0);
        if (!v105)
        {
          v105 = sub_29AE175EC();
        }

        LODWORD(v152[0]) = 1065353216;
        if (!sub_29AE16540(a3, v105 + 17, v152))
        {
          goto LABEL_186;
        }

        v106 = atomic_load(&qword_2A174EEC0);
        if (!v106)
        {
          v106 = sub_29AE175EC();
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 1065353216;
        if (!sub_29AE16540(a3, v106 + 18, &__str))
        {
          goto LABEL_186;
        }

        v107 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v107)
        {
          v107 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v108 = (v107 + 8);
      }

      sub_29A166F2C(&v157, v108);
LABEL_186:
      v111 = atomic_load(&qword_2A174EEC0);
      if (!v111)
      {
        v111 = sub_29AE175EC();
      }

      LODWORD(v152[0]) = 0;
      v112 = sub_29AE16540(a3, v111 + 11, v152);
      if (v112)
      {
        v112 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v112)
        {
          v112 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v113 = *(v112 + 4);
      }

      else
      {
        v113 = v157;
      }

      v114 = v113 & 0xFFFFFFFFFFFFFFF8;
      if (v114)
      {
        EmptyString = (v114 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v112);
      }

      if ((v157 & 7) != 0)
      {
        atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_63;
    }

    v41 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v34);
    v42 = *v41;
    if ((ShaderNodeByIdentifierAndType[2] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v43 = ((ShaderNodeByIdentifierAndType[2] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v43 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v41);
    }

    sub_29AAC0094(v42, v43, &__str);
    sub_29B1EAB28(__str.__r_.__value_.__l.__data_, v152);
    if ((v152[1] - v152[0]) != 16)
    {
      goto LABEL_202;
    }

    v95 = (*(**(v152[1] - 2) + 64))(*(v152[1] - 2));
    v96 = strlen(off_2A14FDEF0[0]);
    v97 = *(v95 + 23);
    if (v97 < 0)
    {
      if (v96 != v95[1])
      {
        goto LABEL_202;
      }

      if (v96 == -1)
      {
        sub_29A0F26CC();
      }

      v95 = *v95;
    }

    else if (v96 != v97)
    {
LABEL_202:
      v115 = (*(**(v152[1] - 2) + 64))(*(v152[1] - 2));
      sub_29AE1605C(v115, &v157);
      if (v161 == 4 && v160 - 1 <= 1)
      {
        v116 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v116)
        {
          v116 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v117 = *(v116 + 4);
      }

      else
      {
        v116 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v116)
        {
          v116 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v117 = *v116;
      }

      v118 = v117 & 0xFFFFFFFFFFFFFFF8;
      if (v118)
      {
        EmptyString = (v118 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v116);
      }

      sub_29A0EB570(&v163);
      if (v159 < 0)
      {
        operator delete(v157);
      }

      goto LABEL_215;
    }

    if (memcmp(v95, off_2A14FDEF0[0], v96))
    {
      goto LABEL_202;
    }

    v119 = atomic_load(&qword_2A174EEC0);
    if (!v119)
    {
      v119 = sub_29AE175EC();
    }

    if ((v119[19] ^ ShaderNodeByIdentifierAndType[8]) > 7)
    {
      v123 = sub_29AE163B0(a1, a3);
      v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (v123)
      {
        if (!v122)
        {
LABEL_230:
          v122 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

LABEL_231:
        v124 = *(v122 + 4);
        goto LABEL_237;
      }

      if (!v122)
      {
        goto LABEL_235;
      }
    }

    else
    {
      v120 = atomic_load(&qword_2A174EEC0);
      if (!v120)
      {
        v120 = sub_29AE175EC();
      }

      if ((v120[20] ^ *a3) < 8)
      {
        goto LABEL_226;
      }

      v121 = atomic_load(&qword_2A174EEC0);
      if (!v121)
      {
        v121 = sub_29AE175EC();
      }

      if ((v121[21] ^ *a3) <= 7)
      {
LABEL_226:
        v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v122)
        {
          goto LABEL_230;
        }

        goto LABEL_231;
      }

      v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (!v122)
      {
LABEL_235:
        v122 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      }
    }

    v124 = *v122;
LABEL_237:
    v127 = v124 & 0xFFFFFFFFFFFFFFF8;
    if (v127)
    {
      EmptyString = (v127 + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v122);
    }

LABEL_215:
    v157 = v152;
    sub_29A0176E4(&v157);
    if (__str.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__str.__r_.__value_.__l.__size_);
    }

LABEL_63:
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v140, EmptyString);
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a6);
    v130 = *((*(*Hgi + 200))(Hgi) + 48);
    v47 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a6);
    v48 = *(*(*v47 + 192))(v47);
    v139 = v48;
    if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v139 = v48 & 0xFFFFFFFFFFFFFFF8;
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterMaterialXShader(v136, a6, bswap64(0x9E3779B97F4A7C55 * ((v140 & 0xFFFFFFFFFFFFFFF8) + (((v140 & 0xFFFFFFFFFFFFFFF8) + v14 + ((v140 & 0xFFFFFFFFFFFFFFF8) + v14) * ((v140 & 0xFFFFFFFFFFFFFFF8) + v14)) >> 1))));
    if (v138 == 1)
    {
      v129 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v49);
      v128 = pxrInternal__aapl__pxrReserved__::HdMtlxSearchPaths(v129);
      sub_29AE17204(&v157);
      v152[0] = &v152[1];
      v152[1] = 0;
      v154[0] = 0;
      v154[1] = 0;
      v153[0] = 0;
      v153[1] = v154;
      v156[0] = 0;
      v156[1] = 0;
      v155 = v156;
      pxrInternal__aapl__pxrReserved__::HdMtlxCreateMtlxDocumentFromHdNetwork(&v143, &v141, a2, v129, v152, &v150);
      v50 = v153[1];
      if (v153[1] != v154)
      {
        do
        {
          Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v50 + 28));
          v52 = sub_29A01BCCC(v152, Name);
          if (&v152[1] != v52)
          {
            v53 = *(v52 + 56);
            v54 = (v52 + 64);
            if (v53 != (v52 + 64))
            {
              do
              {
                v55 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v50 + 28));
                v56 = v55;
                if (*(v55 + 23) >= 0)
                {
                  v57 = *(v55 + 23);
                }

                else
                {
                  v57 = v55[1];
                }

                sub_29A022DE0(&v172, v57 + 1);
                if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v58 = &v172;
                }

                else
                {
                  v58 = v172.__r_.__value_.__r.__words[0];
                }

                if (v57)
                {
                  if (v56[23] >= 0)
                  {
                    v59 = v56;
                  }

                  else
                  {
                    v59 = *v56;
                  }

                  memmove(v58, v59, v57);
                }

                *(&v58->__r_.__value_.__l.__data_ + v57) = 95;
                v60 = *(v53 + 55);
                if (v60 >= 0)
                {
                  v61 = (v53 + 4);
                }

                else
                {
                  v61 = v53[4];
                }

                if (v60 >= 0)
                {
                  v62 = *(v53 + 55);
                }

                else
                {
                  v62 = v53[5];
                }

                v63 = std::string::append(&v172, v61, v62);
                v64 = *&v63->__r_.__value_.__l.__data_;
                v173.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
                *&v173.__r_.__value_.__l.__data_ = v64;
                v63->__r_.__value_.__l.__size_ = 0;
                v63->__r_.__value_.__r.__words[2] = 0;
                v63->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v172.__r_.__value_.__l.__data_);
                }

                sub_29AE17310(&v157, &v173, &v173, &v173);
                if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v173.__r_.__value_.__l.__data_);
                }

                v65 = v53[1];
                if (v65)
                {
                  do
                  {
                    v66 = v65;
                    v65 = *v65;
                  }

                  while (v65);
                }

                else
                {
                  do
                  {
                    v66 = v53[2];
                    _ZF = *v66 == v53;
                    v53 = v66;
                  }

                  while (!_ZF);
                }

                v53 = v66;
              }

              while (v66 != v54);
            }
          }

          v67 = v50[1];
          if (v67)
          {
            do
            {
              v68 = v67;
              v67 = *v67;
            }

            while (v67);
          }

          else
          {
            do
            {
              v68 = v50[2];
              _ZF = *v68 == v50;
              v50 = v68;
            }

            while (!_ZF);
          }

          v50 = v68;
        }

        while (v68 != v154);
      }

      v69 = atomic_load(&qword_2A174EEC0);
      if (!v69)
      {
        v69 = sub_29AE175EC();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName(&v141, (v69 + 22), &v169);
      v70 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v169);
      v173.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v169);
      v71 = sub_29B1E4F5C(&v157, v173.__r_.__value_.__l.__data_, &unk_29B4D6118, &v173, &v172);
      v72 = std::string::operator=((v71 + 5), v70);
      v73 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v72);
      v74 = *v73;
      if ((*v131 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v75 = ((*v131 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v75 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v73);
      }

      sub_29AAC0094(v74, v75, &__str);
      if (__str.__r_.__value_.__r.__words[0])
      {
        sub_29B1EA6E8(__str.__r_.__value_.__l.__data_, &v173);
        size = v173.__r_.__value_.__l.__size_;
        for (i = v173.__r_.__value_.__r.__words[0]; i != size; i += 16)
        {
          v81 = (*(**i + 64))();
          v82 = atomic_load(&qword_2A174EEC0);
          if (!v82)
          {
            v82 = sub_29AE175EC();
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v82 + 6), v81))
          {
            v83 = (*i + 48);
            v171 = v83;
            v84 = sub_29B1E4F5C(&v157, v83, &unk_29B4D6118, &v171, &v170);
            std::string::operator=((v84 + 5), v83);
          }
        }

        v172.__r_.__value_.__r.__words[0] = &v173;
        sub_29A0176E4(&v172);
      }

      if (__str.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__str.__r_.__value_.__l.__size_);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v169 + 1);
      v85 = sub_29A1DE3A4(&v169);
      if (v155 != v156)
      {
        sub_29AE15704(&v143, v155 + 28);
      }

      if ((v140 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v86 = ((v140 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v86 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v85);
      }

      std::string::operator=(&__p, v86);
      v168 = (v130 & 0x80) != 0;
      pxrInternal__aapl__pxrReserved__::HdSt_GenMaterialXShader(&v150, v129, v128, &v157, &v139, &v135);
      if (v151)
      {
        sub_29A014BEC(v151);
      }

      sub_29A1E2AEC(&v155, v156[0]);
      sub_29A1E2AEC(&v153[1], v154[0]);
      sub_29AAA3F44(v152, v152[1]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v166 < 0)
      {
        operator delete(v165);
      }

      sub_29A89AD9C(&v164);
      sub_29A89AD9C(&v162);
      sub_29A89AD9C(&v157);
      v87 = v135;
      v135 = 0uLL;
      v88 = *(a7 + 1);
      *a7 = v87;
      if (v88)
      {
        sub_29A014BEC(v88);
        if (*(&v135 + 1))
        {
          sub_29A014BEC(*(&v135 + 1));
        }
      }

      sub_29AE13704(v136, a7);
    }

    else
    {
      v77 = v136[1];
      v76 = v137;
      if (v137)
      {
        atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
      }

      v78 = *(a7 + 1);
      *a7 = v77;
      *(a7 + 1) = v76;
      if (v78)
      {
        sub_29A014BEC(v78);
      }
    }

    __str.__r_.__value_.__r.__words[2] = 0;
    v176 = 0;
    __str.__r_.__value_.__r.__words[0] = 0;
    __str.__r_.__value_.__l.__size_ = &__str.__r_.__value_.__r.__words[2];
    v178[0] = 0;
    v178[1] = 0;
    v177 = v178;
    v89 = atomic_load(&qword_2A174EEC0);
    if (!v89)
    {
      v89 = sub_29AE175EC();
    }

    sub_29A166F2C(&__str, v89 + 23);
    pxrInternal__aapl__pxrReserved__::HdStPackageFallbackDomeLightTexture(&v135);
    if ((v135 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v91 = ((v135 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v91 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v90);
    }

    pxrInternal__aapl__pxrReserved__::HdStPackageFallbackDomeLightTexture(&v174);
    if ((v174 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v93 = ((v174 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v93 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v92);
    }

    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v152, v91, v93);
    v179[1] = &off_2A2047B38;
    sub_29A215A28(v179, v152);
    v94 = atomic_load(&qword_2A174EEC0);
    if (!v94)
    {
      v94 = sub_29AE175EC();
    }

    v150 = v94 + 24;
    sub_29A94BD04(&__str.__r_.__value_.__l.__size_, (v94 + 24), &unk_29B4D6118, &v150);
  }

  *a7 = 0;
  *(a7 + 1) = 0;
  return result;
}

void sub_29AE13330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (*(v44 - 153) < 0)
  {
    operator delete(*(v44 - 176));
  }

  sub_29ADCA62C(&a23);
  if ((a30 & 7) != 0)
  {
    atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(a19 + 8);
  if (v46)
  {
    sub_29A014BEC(v46);
  }

  sub_29A1DCEA8(&a32);
  sub_29AC43430(&a34);
  sub_29A55B678(&a44);
  _Unwind_Resume(a1);
}

void sub_29AE135E4()
{
  *(v0 - 232) = v0 - 208;
  sub_29A0176E4((v0 - 232));
  JUMPOUT(0x29AE135FCLL);
}

void sub_29AE13704(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29AE18B3C(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AE137BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE137D4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x3E8uLL);
  result = sub_29AE13830(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29AE13830(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20953C8;
  pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::HdStMaterialXShaderGenMsl((a1 + 3), a2);
  return a1;
}

void sub_29AE138AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20953C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE13918(uint64_t a1)
{
  v1 = sub_29AE1454C(a1);

  operator delete(v1);
}

void sub_29AE13940(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AE13B08((a1 + 2), (a2 + 2));
}

void sub_29AE13A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0176E4(va);
  v5 = *(v3 + 360);
  if (v5)
  {
    *(v3 + 368) = v5;
    operator delete(v5);
  }

  sub_29AE14178((v3 + 320));
  sub_29AE14178((v3 + 280));
  sub_29AE14060(v3 + 240);
  sub_29AD97000(v3 + 200);
  sub_29A019EE8(v3 + 176, *(v3 + 184));
  sub_29AAC9380(va);
  sub_29AE144D4(v3 + 16);
  v6 = *(v3 + 8);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  _Unwind_Resume(a1);
}

void sub_29AE13B08(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A20C9058;
  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    sub_29A008D14((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  v7 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29AE13BF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE13C28(uint64_t a1)
{
  v1 = sub_29AE144D4(a1);

  operator delete(v1);
}

void *sub_29AE13C50(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29AE13CD8(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29AE13CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AAC9380(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AE13CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  v7 = 1;
  sub_29AD96618(v6);
  return a4;
}

uint64_t sub_29AE13DA0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B24C6C0(a1, i + 2, i + 1);
  }

  return a1;
}

uint64_t sub_29AE13E18(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B24C984(a1, i + 2, i + 1);
  }

  return a1;
}

void *sub_29AE13E90(void *__dst, __int128 *a2)
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

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_29AE13F18(__dst + 3, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
  return __dst;
}

void sub_29AE13EFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE13F18(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AE13FA0(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29AE13F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AE13FA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29AE14028(v7);
  return v4;
}

uint64_t sub_29AE14028(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

uint64_t sub_29AE14060(uint64_t a1)
{
  sub_29A1E686C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29AE1409C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B24CC48(a1, i + 2, (i + 2));
  }

  return a1;
}

void sub_29AE14114(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void **sub_29AE14178(void **a1)
{
  sub_29AE141B4(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AE141B4(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AE14200(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B24CF5C(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t *sub_29AE14278(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AE142D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE142F4(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AE1437C(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29AE1435C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AE1437C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29AE14404(v7);
  return v4;
}

uint64_t sub_29AE14404(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

uint64_t sub_29AE1443C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29AE144D4(uint64_t a1)
{
  *a1 = &unk_2A20C9058;
  v3 = (a1 + 72);
  sub_29A012C90(&v3);
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

uint64_t sub_29AE1454C(uint64_t a1)
{
  *a1 = &unk_2A2095418;
  sub_29A0EB4E8((a1 + 184));
  v7 = (a1 + 160);
  sub_29A0176E4(&v7);
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t sub_29AE145D8(uint64_t a1)
{
  sub_29AE1467C(a1 + 408);
  v5 = (a1 + 384);
  sub_29A0176E4(&v5);
  v2 = *(a1 + 360);
  if (v2)
  {
    *(a1 + 368) = v2;
    operator delete(v2);
  }

  sub_29AE14178((a1 + 320));
  sub_29AE14178((a1 + 280));
  sub_29AE14060(a1 + 240);
  sub_29AD97000(a1 + 200);
  sub_29A019EE8(a1 + 176, *(a1 + 184));
  v5 = (a1 + 152);
  sub_29AAC9380(&v5);
  sub_29AE144D4(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

uint64_t sub_29AE1467C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_29AE146FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_29AC4A310(a1);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
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

    sub_29A0D0518(a1, v11);
    result = sub_29AE1483C(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_29AC4A37C(&v17, a2, a2 + v13, v8);
    result = sub_29AE1483C(a1, a2 + v13, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AC4A37C(&v18, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v16 -= 16;
      result = sub_29ABF31FC(a1, v16);
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
  return result;
}

uint64_t sub_29AE1483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AE148D0(a1, v4, v6);
      v6 += 16;
      v4 = v12 + 16;
      v12 += 16;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ABF3170(v9);
  return v4;
}

_DWORD *sub_29AE148D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  result = sub_29A1E2240((a2 + 4), (a3 + 4));
  v6 = *(a3 + 8);
  *(a2 + 8) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_29AE14938(uint64_t *a1, uint64_t **a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  if (!v3)
  {
    v3 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  }

  v4 = *(v3 + 6);
  v7 = v4;
  v8 = &off_2A2044E88 + 1;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v7 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  if (!v5)
  {
    v5 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  }

  __p[0] = v5;
  sub_29A94BD04(a2, v5, &unk_29B4D6118, __p);
}

void sub_29AE14D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  __p = &a20;
  sub_29A0176E4(&__p);
  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29AE14DB0(const void **a1, uint64_t *a2, uint64_t **a3)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&qword_2A174EEC8);
  if (!v6)
  {
    v6 = sub_29AE152FC();
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==(v6, a1))
  {
    v7 = *(a2 + 23);
    if (v7 < 0)
    {
      if (a2[1] != 7)
      {
        goto LABEL_25;
      }

      a2 = *a2;
    }

    else if (v7 != 7)
    {
      goto LABEL_25;
    }

    if (*a2 == 1936682083 && *(a2 + 3) == 1953719667)
    {
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
      if (!v18)
      {
        v18 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
      }

      v15 = *(v18 + 15);
LABEL_28:
      v20[0] = v15;
      v20[1] = (&off_2A2044E88 + 1);
      if ((v15 & 7) != 0)
      {
        v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed) & 1) == 0)
        {
          v20[0] = v16;
        }
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
      if (!v17)
      {
        v17 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
      }

      v19 = (v17 + 64);
      sub_29A94BD04(a3, v17 + 64, &unk_29B4D6118, &v19);
    }

LABEL_25:
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    if (!v14)
    {
      v14 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    v15 = *(v14 + 12);
    goto LABEL_28;
  }

  v8 = atomic_load(&qword_2A174EEC8);
  if (!v8)
  {
    v8 = sub_29AE152FC();
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v8 + 1), a1))
  {
    sub_29AE15514(a2, v20);
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    if (!v9)
    {
      v9 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    v19 = v9;
    sub_29A94BD04(a3, v9, &unk_29B4D6118, &v19);
  }

  v10 = atomic_load(&qword_2A174EEC8);
  if (!v10)
  {
    v10 = sub_29AE152FC();
  }

  result = pxrInternal__aapl__pxrReserved__::TfToken::operator==((v10 + 2), a1);
  if (result)
  {
    sub_29AE15514(a2, v20);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    if (!v12)
    {
      v12 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    v19 = (v12 + 8);
    sub_29A94BD04(a3, v12 + 8, &unk_29B4D6118, &v19);
  }

  return result;
}

void sub_29AE150BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AE150E4(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC80[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29AE15148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29AE15164(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC80[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29AE151D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AE151F0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC78[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29AE15254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *sub_29AE15270(atomic_ullong *a1)
{
  result = sub_29AE152B8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType::~HdStTextureTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *sub_29AE152B8()
{
  v0 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType::HdStTextureTokens_StaticTokenType(v0);
  return v0;
}

uint64_t *sub_29AE152FC()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "filtertype");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "uaddressmode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "vaddressmode");
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
  atomic_compare_exchange_strong(&qword_2A174EEC8, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A174EEC8);
  }

  return v0;
}

void sub_29AE15478(_Unwind_Exception *a1)
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

pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *sub_29AE15514@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v3 = *(a1 + 23);
    if (v3 != 5)
    {
      if (v3 != 6)
      {
        if (v3 != 8 || *a1 != 0x746E6174736E6F63)
        {
LABEL_33:
          result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
          if (!result)
          {
            result = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
          }

          v8 = *(result + 6);
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      goto LABEL_29;
    }

    if (*a1 != 1835101283 || *(a1 + 4) != 112)
    {
      goto LABEL_33;
    }

LABEL_22:
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    if (!result)
    {
      result = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    v8 = *(result + 4);
    goto LABEL_36;
  }

  if (a1[1] == 8 && **a1 == 0x746E6174736E6F63)
  {
LABEL_25:
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    if (!result)
    {
      result = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    v8 = *(result + 3);
    goto LABEL_36;
  }

  v4 = a1[1];
  if (v4 != 6)
  {
    if (v4 != 5)
    {
      goto LABEL_33;
    }

    if (**a1 != 1835101283 || *(*a1 + 4) != 112)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  a1 = *a1;
LABEL_29:
  if (*a1 != 1920100717 || *(a1 + 2) != 29295)
  {
    goto LABEL_33;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  if (!result)
  {
    result = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  }

  v8 = *(result + 5);
LABEL_36:
  *a2 = v8;
  a2[1] = (&off_2A2044E88 + 1);
  if ((v8 & 7) != 0)
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v10;
    }
  }

  return result;
}

_DWORD *sub_29AE15744(uint64_t a1)
{
  sub_29ABF3348(a1 + 40, *(a1 + 48));
  sub_29A5B0668(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AE158CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  v5 = (a2 + 24);
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  v7 = a1 + 24;
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 16) = v5;
    *v5 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v7;
  }

  *(a1 + 40) = *(a2 + 40);
  v9 = (a2 + 48);
  v10 = *(a2 + 48);
  *(a1 + 48) = v10;
  v11 = a1 + 48;
  v12 = *(a2 + 56);
  *(a1 + 56) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *(a2 + 40) = v9;
    *v9 = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a1 + 40) = v11;
  }

  return a1;
}

void sub_29AE15980(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29ABECFB8((a1 + 16));
}

void sub_29AE15A08(_Unwind_Exception *a1)
{
  sub_29A5B0668(v1 + 16, *(v1 + 24));
  v3 = *(v1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AE15A48()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "ND_dot_filename");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "position");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "normal");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "tangent");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "bitangent");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "texcoord");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "geomcolor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "geompropvalue");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "swizzle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "convert");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "constant");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "atan2");
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
  atomic_compare_exchange_strong(&qword_2A174EF00, &v16, v0);
  if (v16)
  {
    v17 = sub_29AB67BC8(v0);
    operator delete(v17);
    return atomic_load(&qword_2A174EF00);
  }

  return v0;
}

void sub_29AE15E1C(_Unwind_Exception *a1)
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

uint64_t sub_29AE15FD8(uint64_t a1, uint64_t *a2, uint64_t *a3, size_t __n)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_29A019AA0(a1, __n);
  while (a2 != a3)
  {
    sub_29A169500(a1, a2, a2);
    ++a2;
  }

  return a1;
}

uint64_t sub_29AE1605C@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v28[4] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174EF20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EF20))
  {
    v13 = sub_29B246C60();
    sub_29A008E78(v22, "float");
    v22[3] = v13;
    v14 = sub_29B247ADC();
    sub_29A008E78(v23, "color3");
    v23[3] = v14;
    v15 = sub_29B247C28();
    v16 = sub_29A008E78(v24, "color4");
    v24[3] = v15;
    Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v16);
    sub_29A008E78(v25, "vector2");
    v25[3] = Vector2Name;
    v18 = sub_29B2470A0();
    sub_29A008E78(v26, "vector3");
    v26[3] = v18;
    v19 = sub_29B2471EC();
    sub_29A008E78(v27, "vector4");
    v27[3] = v19;
    v20 = sub_29B24844C();
    sub_29A008E78(v28, "surfaceshader");
    v28[3] = v20;
    sub_29AE1673C(&qword_2A174EF08, v22, 7);
    for (i = 0; i != -28; i -= 4)
    {
      if (SHIBYTE(v28[i + 2]) < 0)
      {
        operator delete(v28[i]);
      }
    }

    __cxa_atexit(sub_29AE16710, &qword_2A174EF08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174EF20);
  }

  v4 = sub_29A01BCCC(&qword_2A174EF08, a1);
  if (v4 == &unk_2A174EF10)
  {
    v5 = sub_29B246774();
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      sub_29A008D14(a2, *v5, *(v5 + 8));
    }

    else
    {
      v7 = *v5;
      *(a2 + 16) = *(v5 + 16);
      *a2 = v7;
    }

    v12 = *(v6 + 24);
    *(a2 + 40) = *(v6 + 40);
    *(a2 + 24) = v12;
    return sub_29AE168E8(a2 + 48, v6 + 48);
  }

  else
  {
    v8 = *(v4 + 56);
    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(a2, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      *(a2 + 16) = *(v8 + 2);
      *a2 = v9;
    }

    v10 = *(v8 + 24);
    *(a2 + 40) = *(v8 + 40);
    *(a2 + 24) = v10;
    return sub_29AE168E8(a2 + 48, (v8 + 3));
  }
}

void sub_29AE16308(_Unwind_Exception *a1)
{
  v3 = (v1 + 215);
  v4 = -224;
  v5 = (v1 + 215);
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A174EF20);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AE163B0(uint64_t a1, void *a2)
{
  v4 = sub_29B1C6D8C(&v22);
  v5 = v22;
  v6 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v4);
  v7 = v6[1];
  __p = *v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1C7188(v5, &__p);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v8 = v23;
  v19[0] = v22;
  v19[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, "MxTerminalNode");
  sub_29AE16960(v19, &__p, a2, a1, &v20);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v14 = v20;
  v15 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = sub_29B1F31FC(v9, v10);
  v12 = sub_29B249938(&v14, v11);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return v12;
}

void sub_29AE164D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AE16540(uint64_t a1, uint64_t *a2, float *a3)
{
  result = 1;
  if (a1 + 40 == sub_29A31B8F0(a1 + 32, a2))
  {
    v7 = sub_29A31B8F0(a1 + 8, a2);
    if (a1 + 16 == v7 || sub_29AE165B8((v7 + 40), a3))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29AE165B8(pxrInternal__aapl__pxrReserved__::VtValue *a1, float *a2)
{
  v3 = a1;
  result = sub_29A3F9DF4(a1);
  if (result)
  {
    v5 = *(v3 + 1);
    if ((v5 & 4) != 0)
    {
      v3 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return *v3 == *a2;
  }

  return result;
}

BOOL sub_29AE16614(uint64_t a1, uint64_t *a2, float *a3)
{
  result = 1;
  if (a1 + 40 == sub_29A31B8F0(a1 + 32, a2))
  {
    v7 = sub_29A31B8F0(a1 + 8, a2);
    if (a1 + 16 == v7 || sub_29AE1668C((v7 + 40), a3))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29AE1668C(pxrInternal__aapl__pxrReserved__::VtValue *a1, float *a2)
{
  result = sub_29A3FDE60(a1);
  if (result)
  {
    v5 = *(a1 + 1);
    if ((v5 & 4) != 0)
    {
      v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      v6 = *a1;
    }

    return *v6 == *a2 && v6[1] == a2[1] && v6[2] == a2[2];
  }

  return result;
}

uint64_t ***sub_29AE1673C(uint64_t ***a1, const void **a2, uint64_t a3)
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
      sub_29AE167BC(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29AE167BC(uint64_t ***a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AE16840(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29AE16840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *a2, *(a2 + 8));
  }

  else
  {
    *(result + 2) = *a2;
    *(result + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
  return result;
}

void sub_29AE168CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE168E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B248938(a1, i + 16, i + 2);
  }

  return a1;
}

void sub_29AE16960(pxrInternal__aapl__pxrReserved__ *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, std::string **a5@<X8>)
{
  v9 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(a1);
  v10 = *v9;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  sub_29AAC0094(v10, EmptyString, &v63);
  v12 = *a1;
  v61 = v63;
  v62 = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE170A8(v12, &v61, a2, a5);
  v34 = a5;
  v13 = v62;
  if (v62)
  {
    sub_29A014BEC(v62);
  }

  v14 = a3[4];
  if (v14 != a3 + 5)
  {
    while (1)
    {
      v15 = v63;
      v16 = (v14[4] & 0xFFFFFFFFFFFFFFF8) != 0 ? ((v14[4] & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
      sub_29B1EA508(v15, v16, &v59);
      if (v59)
      {
        break;
      }

LABEL_38:
      v13 = v60;
      if (v60)
      {
        sub_29A014BEC(v60);
      }

      v21 = v14[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v14[2];
          v23 = *v22 == v14;
          v14 = v22;
        }

        while (!v23);
      }

      v14 = v22;
      if (v22 == a3 + 5)
      {
        goto LABEL_46;
      }
    }

    v17 = (*(*v59 + 64))(v59);
    sub_29AE1605C(v17, &v54);
    if (SHIBYTE(v55) < 0)
    {
      sub_29A008D14(__p, v54, *(&v54 + 1));
    }

    else
    {
      *__p = v54;
      v50 = v55;
    }

    v51 = v56;
    v52 = v57;
    sub_29AE168E8(v53, v58);
    IsNone = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsNone(__p);
    sub_29A0EB570(v53);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
      if (IsNone)
      {
        goto LABEL_36;
      }
    }

    else if (IsNone)
    {
LABEL_36:
      sub_29A0EB570(v58);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(v54);
      }

      goto LABEL_38;
    }

    if (SHIBYTE(v55) < 0)
    {
      sub_29A008D14(__dst, v54, *(&v54 + 1));
    }

    else
    {
      *__dst = v54;
      v45 = v55;
    }

    v46 = v56;
    v47 = v57;
    sub_29AE168E8(v48, v58);
    IsSurfaceShader = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsSurfaceShader(__dst);
    sub_29A0EB570(v48);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__dst[0]);
      if (IsSurfaceShader)
      {
LABEL_25:
        sub_29AE15704(a4, v14[5]);
      }
    }

    else if (IsSurfaceShader)
    {
      goto LABEL_25;
    }

    if (v56 == 4 && BYTE1(v56) != 3)
    {
      sub_29A008E78(&v41, "0.5");
      if (*(&v56 + 1) >= 2uLL)
      {
        v20 = 1;
        do
        {
          std::string::append(&v41, ", 0.5");
          ++v20;
        }

        while (v20 < *(&v56 + 1));
      }

      sub_29B1EE794(*a5, v59 + 6, &v42);
      sub_29AD99E08(v42, &v41);
      if (v43)
      {
        sub_29A014BEC(v43);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_36;
  }

LABEL_46:
  v24 = a3[1];
  v25 = a3 + 2;
  if (v24 != a3 + 2)
  {
    do
    {
      v26 = v63;
      if ((v24[4] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v27 = ((v24[4] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
      }

      sub_29B1EA508(v26, v27, &v59);
      if (v59)
      {
        v28 = (*(*v59 + 64))(v59);
        sub_29AE1605C(v28, &v54);
        if (SHIBYTE(v55) < 0)
        {
          sub_29A008D14(v36, v54, *(&v54 + 1));
        }

        else
        {
          *v36 = v54;
          v37 = v55;
        }

        v38 = v56;
        v39 = v57;
        sub_29AE168E8(v40, v58);
        v29 = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsNone(v36);
        sub_29A0EB570(v40);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
        }

        v30 = v56 != 4 || v29;
        if ((v30 & 1) == 0 && BYTE1(v56) != 3)
        {
          sub_29B1EE794(*v34, v59 + 6, &v42);
          v31 = v42;
          pxrInternal__aapl__pxrReserved__::HdMtlxConvertToString((v24 + 5), &v41);
          sub_29AD99E08(v31, &v41);
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          if (v43)
          {
            sub_29A014BEC(v43);
          }
        }

        sub_29A0EB570(v58);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }
      }

      v13 = v60;
      if (v60)
      {
        sub_29A014BEC(v60);
      }

      v32 = v24[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v24[2];
          v23 = *v33 == v24;
          v24 = v33;
        }

        while (!v23);
      }

      v24 = v33;
    }

    while (v33 != v25);
  }

  if (v64)
  {
    sub_29A014BEC(v64);
  }
}

void sub_29AE16F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  v61 = *(v59 - 120);
  if (v61)
  {
    sub_29A014BEC(v61);
  }

  v62 = *(v59 - 104);
  if (v62)
  {
    sub_29A014BEC(v62);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE170A8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, std::string **a4@<X8>)
{
  v8 = sub_29AABE2F0(*a2);
  v9 = (*(**a2 + 64))();
  sub_29AD9617C(a1, v8, a3, v9, a4);
  sub_29AD985E8(*a4, (*a2 + 48));
}

void sub_29AE17140(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29AE17158(void **a1)
{
  sub_29A1E2AEC((a1 + 6), a1[7]);
  sub_29A1E2AEC((a1 + 3), a1[4]);
  sub_29AAA3F44(a1, a1[1]);
  return a1;
}

uint64_t sub_29AE171A0(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  sub_29A89AD9C(a1 + 80);
  sub_29A89AD9C(a1 + 40);

  return sub_29A89AD9C(a1);
}

uint64_t sub_29AE17204(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  sub_29A008E78((a1 + 120), "st");
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v2)
  {
    v2 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if ((*v2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v2);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14((a1 + 144), *EmptyString, EmptyString[1]);
  }

  else
  {
    v4 = *EmptyString;
    *(a1 + 160) = EmptyString[2];
    *(a1 + 144) = v4;
  }

  *(a1 + 168) = 0;
  return a1;
}

void sub_29AE172D4(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  sub_29A89AD9C(v3);
  sub_29A89AD9C(v2);
  sub_29A89AD9C(v1);
  _Unwind_Resume(a1);
}

const void **sub_29AE17310(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v9 = sub_29A12A708(a1, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29AE1756C(a1, v10, a3, a4, v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28[0];
    *v28[0] = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28[0];
    if (*v28[0])
    {
      v26 = *(*v28[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28[0];
      i = v28[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29AE17554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29AE1756C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x40uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  *(v10 + 1) = a2;
  result = sub_29A0F2E38(v10 + 16, a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t *sub_29AE175EC()
{
  v63 = *MEMORY[0x29EDCA608];
  v0 = operator new(0xF8uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "mtlx");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "st");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "texcoord");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "geomprop");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "index");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "default");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "filename");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "UsdPreviewSurface");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "opacity");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "opacityThreshold");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "standard_surface");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "transmission");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "open_pbr_surface");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "transmission_weight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "geometry_opacity");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "gltf_pbr");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "alpha_mode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "alpha_cutoff");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "alpha");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "convert");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 20, "ND_convert_color4_surfaceshader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 21, "ND_convert_vector4_surfaceshader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 22, "domeLightFallback");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 23, "ND_image_color3");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 24, "file");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 25, "sourceColorSpace");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 26, "NG_Anonymized");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 27, "geompropvalue");
  v1 = v0 + 28;
  v2 = *v0;
  v35 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v36 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v37 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v38 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v39 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v40 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v41 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v42 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v43 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v44 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v45 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v46 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v47 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v48 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v49 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[15];
  v50 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[16];
  v51 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[17];
  v52 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[18];
  v53 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[19];
  v54 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = v0[20];
  v55 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = v0[21];
  v56 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = v0[22];
  v57 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = v0[23];
  v58 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = v0[24];
  v59 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = v0[25];
  v60 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = v0[26];
  v61 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = v0[27];
  v62 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[29] = 0;
  v0[30] = 0;
  sub_29A12EF7C(v1, &v35, &v63, 0x1CuLL);
  for (i = 216; i != -8; i -= 8)
  {
    v31 = *(&v35 + i);
    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v32 = 0;
  atomic_compare_exchange_strong(&qword_2A174EEC0, &v32, v0);
  if (v32)
  {
    v33 = sub_29A880A54(v0);
    operator delete(v33);
    return atomic_load(&qword_2A174EEC0);
  }

  return v0;
}

void sub_29AE17DC0(_Unwind_Exception *a1)
{
  v4 = 216;
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
      v6 = v1[27];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[26];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[25];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[24];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[23];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[22];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[21];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[20];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[19];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[18];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[17];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[16];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[15];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[14];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[13];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[12];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[11];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[10];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[9];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[8];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[7];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[6];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[5];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[4];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[3];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[2];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[1];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t *sub_29AE1817C(uint64_t ***a1, const void **a2, __int128 *a3, void *a4)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AE18204(a1, a3, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

uint64_t sub_29AE18204@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29AE18278(v8 + 32, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AE18278(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  sub_29A186EF4((a1 + 24), a3);
  return a1;
}

void sub_29AE182BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE182D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AE182D8(a1, *a2);
    sub_29AE182D8(a1, a2[1]);
    sub_29A90D9D0((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_29AE18334(uint64_t ***a1, const void **a2, __int128 *a3, _DWORD *a4)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AE183BC(a1, a3, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

void *sub_29AE183BC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29A8FBAC4(v8 + 4, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29AE18430(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A90D9D0(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AE1848C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_29A00C9A4();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A09B7D4(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[104 * v2];
  *(&v16 + 1) = &v7[104 * v6];
  sub_29AE0D0AC(a1, v15, a2);
  *&v16 = v15 + 104;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29AE0CFF8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AE0D138(&v14);
  return v13;
}

void sub_29AE185C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AE0D138(va);
  _Unwind_Resume(a1);
}

void sub_29AE185D4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A55B6B4(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_29AE186C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1DDD84((a1 + 8), a3);
  sub_29A1DDDC0((a1 + 12), (a3 + 4));
  *(a1 + 16) = *(a3 + 8);
  *(a3 + 8) = 0;
  return a1;
}

uint64_t *sub_29AE18848@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t **a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29AE188D4(v8 + 4, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29AE188B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A94BD9C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AE188D4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(a1 + 1, a3);
  return a1;
}

uint64_t sub_29AE18A7C(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a1 + 16) = a3[1];
  v7 = a3 + 2;
  v8 = a3[2];
  *(a1 + 24) = v8;
  v9 = a1 + 24;
  v10 = a3[3];
  *(a1 + 32) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    a3[1] = v7;
    *v7 = 0;
    a3[3] = 0;
  }

  else
  {
    *(a1 + 16) = v9;
  }

  *(a1 + 40) = a3[4];
  v11 = a3 + 5;
  v12 = a3[5];
  *(a1 + 48) = v12;
  v13 = a1 + 48;
  v14 = a3[6];
  *(a1 + 56) = v14;
  if (v14)
  {
    *(v12 + 16) = v13;
    a3[4] = v11;
    *v11 = 0;
    a3[6] = 0;
  }

  else
  {
    *(a1 + 40) = v13;
  }

  return a1;
}

uint64_t sub_29AE18B3C(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29AE18BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_29AE18BE4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 5);
          sub_29AE18D74(v16, v9 + 4);
          v10 = sub_29A1682D8(v5, v16, v15 + 4);
          sub_29A00B204(v5, v16[0], v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_29A028760(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_29AE18DC4(&v13);
  }

  if (a2 != a3)
  {
    sub_29AE18E1C(v5);
  }

  return result;
}

void sub_29AE18D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AE18DC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE18D74(uint64_t a1, void *a2)
{
  sub_29A166F2C(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != a2 + 1)
  {
    sub_29AC4A1D0(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 4);
  }

  return a1;
}

uint64_t sub_29AE18DC4(uint64_t a1)
{
  sub_29ABF3348(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29ABF3348(*a1, v2);
  }

  return a1;
}

void sub_29AE18E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_29ABF32DC(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::HdStMaterialXShaderGen(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B24F1A8(a1);
  *v4 = &unk_2A2095458;
  sub_29AE1D980((v4 + 100), a2);
  sub_29AE1D980(a1 + 840, a2 + 40);
  v5 = sub_29AE1D980(a1 + 880, a2 + 80);
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  if (*(a2 + 167) < 0)
  {
    v5 = sub_29A008D14((a1 + 944), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v7 = *(a2 + 144);
    *(a1 + 960) = *(a2 + 160);
    *(a1 + 944) = v7;
  }

  *(a1 + 968) = *(a2 + 168);
  v8 = sub_29B1F31FC(v5, v6);
  v9 = (a2 + 120);
  v10 = *(a2 + 143);
  v11 = v10;
  v12 = *(a2 + 128);
  if ((v10 & 0x80u) == 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  v14 = v8[23];
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v8 + 1);
  }

  if (v13 != v14)
  {
    goto LABEL_16;
  }

  v16 = *v9;
  if (v11 >= 0)
  {
    v16 = v9;
  }

  v17 = v15 >= 0 ? v8 : *v8;
  if (!memcmp(v16, v17, v13))
  {
    sub_29A008E78(&__p, "st");
  }

  else
  {
LABEL_16:
    if (v11 < 0)
    {
      sub_29A008D14(&__p, *v9, v12);
    }

    else
    {
      __p = *v9;
    }
  }

  std::string::operator=((a1 + 920), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29AE19018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 943) < 0)
  {
    operator delete(*v15);
  }

  sub_29A89AD9C(v14 + 880);
  sub_29A89AD9C(v14 + 840);
  sub_29A89AD9C(v14 + 800);
  sub_29AE1909C(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE1909C(uint64_t a1)
{
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  return sub_29AE1D3D0(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::HdStMaterialXShaderGenMsl(uint64_t a1, uint64_t a2)
{
  *pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::HdStMaterialXShaderGen(a1, a2) = &unk_2A2095600;
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, &__p, sub_29AE191B4);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29AE19188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29AE19258(v15);
  _Unwind_Resume(a1);
}

void *sub_29AE191B4@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x240uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20957D8;
  bzero(v2 + 3, 0x228uLL);
  result = sub_29B267F7C(v2 + 3, v3);
  v2[3] = &unk_2A2095828;
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void sub_29AE19240(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE19258(uint64_t a1)
{
  *a1 = &unk_2A2095458;
  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  sub_29A89AD9C(a1 + 880);
  sub_29A89AD9C(a1 + 840);
  sub_29A89AD9C(a1 + 800);
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  return sub_29AE1D3D0(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::generate(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a3[1];
  v14 = *a3;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 272))(a1, a2, &v14, a4);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  sub_29B1FB384(v13, 1, -1);
  v9 = *a5;
  sub_29A008E78(__p, off_2A14FE6F8);
  v10 = sub_29B22FF64(v9, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitGlslfxMetalShader(a1, *(*a5 + 32), a4, v10);
}

void sub_29AE19578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_29B1FB3A8(&a15);
  v19 = *(v17 + 8);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitGlslfxMetalShader(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitGlslfxMetalHeader(a1, a3, a4);
  (*(*a1 + 368))(&v19, a1, a3);
  v8 = v19;
  if (!v19)
  {
    sub_29A008E78(__p, off_2A14FE548[0]);
    v21 = 0;
    v20 = 0;
    sub_29AE1D758(&v21, &v20, v14);
    v16 = *v14;
    v14[0] = 0;
    v14[1] = 0;
    sub_29AE19BF4(a3, __p, &v16);
    if (*(&v16 + 1))
    {
      sub_29A014BEC(*(&v16 + 1));
    }

    if (v14[1])
    {
      sub_29A014BEC(v14[1]);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, off_2A14FE548[0]);
    sub_29AE19D1C(a3, __p, v14);
    v9 = *v14;
    v14[0] = 0;
    v14[1] = 0;
    v10 = *(&v19 + 1);
    v19 = v9;
    if (v10)
    {
      sub_29A014BEC(v10);
      if (v14[1])
      {
        sub_29A014BEC(v14[1]);
      }
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v19;
  }

  (*(*v8 + 24))(v8, a3, a4);
  sub_29A008E78(__p, off_2A14FE500[0]);
  v11 = sub_29B246C60();
  sub_29A008E78(v14, "shadowOcclusion");
  v12 = sub_29B2408C8(a4, __p);
  v21 = 0;
  v22 = 0;
  sub_29B240028(v12, v11, v14, &v21, 0);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 176))(a1, a3, a4);
  v13 = v19;
  if (*(&v19 + 1))
  {
    atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B255E1C(a1, a3, &v13, a4);
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  (*(*a1 + 320))(a1, a3, a4);
  (*(*a1 + 336))(a1, a3, a4);
  (*(*a1 + 344))(a1, a3, a4);
  pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitMxFunctions(a1, a2, a3, a4);
}

void sub_29AE1996C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    sub_29A014BEC(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitGlslfxMetalHeader(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29AE1B494(a1, a3);
  (*(*a1 + 64))(a1, a3);
  (*(*a1 + 64))(a1, a3);
  (*(*a1 + 280))(a1);
  std::operator+<char>();
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define __METAL__ 1");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 304))(a1, a2, a3);
}

void sub_29AE19BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE19BF4(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = sub_29A5DAB7C((a1 + 240), a2);
  if (v6)
  {
    v7 = (v6 + 5);

    sub_29A017F80(v7, a3);
  }

  else
  {
    v8 = *(a3 + 1);
    v12 = *a3;
    v13 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = a2;
    v9 = sub_29B213848(a1 + 240, a2, &unk_29B4D6118, &v11, &v10);
    sub_29B213B5C((v9 + 5), &v12, &v14, 1uLL);
    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }
}

void sub_29AE19D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE19D1C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A5DAB7C((a1 + 240), a2);
  if (!v4 || (v5 = v4[6], v4[5] == v5))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(v5 - 2);

    sub_29AE1D9F8(v6, a3);
  }
}

void sub_29AE1A2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29AE1A368(void **a1, uint64_t a2, _BYTE *a3, std::string *a4)
{
  sub_29A008E78(&__str, "surfaceShader");
  std::string::operator=(a4 + 1, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "vec4 surfaceShader(vec4 Peye, vec3 Neye, vec4 color, vec4 patchCoord)");
  ((*a1)[10])(a1, &__str, a4, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B230974(a1, a4, 1);
  sub_29A008E78(&__str, "Initialize MaterialX Variables");
  sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "mxInit(Peye, Neye)");
  ((*a1)[10])(a1, &__str, a4, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v8 = **(a2 + 88);
  if ((*(a2 + 40) & 6) == 2)
  {
    if (*(v8 + 127) >= 0)
    {
      v9 = *(v8 + 127);
    }

    else
    {
      v9 = *(v8 + 112);
    }

    p_str = &__str;
    sub_29A022DE0(&__str, v9 + 27);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      v13 = *(v8 + 104);
      v12 = (v8 + 104);
      v11 = v13;
      if (v12[23] >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = v11;
      }

      memmove(p_str, v14, v9);
    }

    strcpy(p_str + v9, " = vec4(0.0, 0.0, 0.0, 1.0)");
    ((*a1)[10])(a1, &__str, a4, 1);
LABEL_45:
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v27 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_47;
  }

  if (a3[136] == 1)
  {
    if (*(v8 + 127) >= 0)
    {
      v15 = *(v8 + 127);
    }

    else
    {
      v15 = *(v8 + 112);
    }

    v16 = &__str;
    sub_29A022DE0(&__str, v15 + 45);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = __str.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      v19 = *(v8 + 104);
      v18 = (v8 + 104);
      v17 = v19;
      if (v18[23] >= 0)
      {
        v20 = v18;
      }

      else
      {
        v20 = v17;
      }

      memmove(v16, v20, v15);
    }

    strcpy(v16 + v15, " = vec4(mx_compute_depth_moments(), 0.0, 1.0)");
    ((*a1)[10])(a1, &__str, a4, 1);
    goto LABEL_45;
  }

  if (a3[145] == 1)
  {
    if (*(v8 + 127) >= 0)
    {
      v21 = *(v8 + 127);
    }

    else
    {
      v21 = *(v8 + 112);
    }

    v22 = &__str;
    sub_29A022DE0(&__str, v21 + 61);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = __str.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      v25 = *(v8 + 104);
      v24 = (v8 + 104);
      v23 = v25;
      if (v24[23] >= 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = v23;
      }

      memmove(v22, v26, v21);
    }

    strcpy(v22 + v21, " = vec4(mx_ggx_directional_albedo_generate_table(), 0.0, 1.0)");
    ((*a1)[10])(a1, &__str, a4, 1);
    goto LABEL_45;
  }

  if ((~*(a2 + 40) & 0x4004) != 0)
  {
    sub_29B230C5C(a1, a2, a3, a4, 0);
  }

  else
  {
    sub_29B230C5C(a1, a2, a3, a4, 1);
    v29 = *(a2 + 88);
    v30 = *(a2 + 96);
    while (v29 != v30)
    {
      v31 = *(*v29 + 240);
      if (v31)
      {
        v32 = *(v31 + 16);
        if (*(v32 + 8) == a2 && (*(v32 + 40) & 6) != 0)
        {
          sub_29B211F98(a1, v32, a3, a4);
        }
      }

      v29 += 8;
    }
  }

  sub_29A008E78(&v100, "vec4 mxOut = ");
  v33 = *(v8 + 240);
  if (v33)
  {
    if (*(v33 + 127) < 0)
    {
      sub_29A008D14(&__dst, *(v33 + 104), *(v33 + 112));
    }

    else
    {
      __dst = *(v33 + 104);
    }

    v38 = *(v8 + 271);
    if (v38 < 0)
    {
      v38 = *(v8 + 256);
    }

    if (v38)
    {
      (*(*a1[1] + 40))(&__str);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst = __str;
    }

    if ((*(a2 + 41) & 0x40) != 0)
    {
      if (a3[120] == 1)
      {
        std::operator+<char>();
        v46 = std::string::append(&v98, ".transparency, vec3(0.3333)), 0.0, 1.0)");
        v47 = *&v46->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        ((*a1)[10])(a1, &__str, a4, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if ((v102 & 0x80u) == 0)
        {
          v48 = v102;
        }

        else
        {
          v48 = v101;
        }

        v49 = &v97;
        sub_29A022DE0(&v97, v48 + 5);
        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v49 = v97.__r_.__value_.__r.__words[0];
        }

        if (v48)
        {
          if ((v102 & 0x80u) == 0)
          {
            v50 = &v100;
          }

          else
          {
            v50 = v100;
          }

          memmove(v49, v50, v48);
        }

        strcpy(v49 + v48, "vec4(");
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        v53 = std::string::append(&v97, p_dst, size);
        v54 = *&v53->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        v55 = std::string::append(&v98, ".color, outAlpha)");
        v56 = *&v55->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        ((*a1)[10])(a1, &__str, a4, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&v97, off_2A14FE290[0]);
        v57 = std::string::insert(&v97, 0, "if (outAlpha < ");
        v58 = *&v57->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        v59 = std::string::append(&v98, ")");
        v60 = *&v59->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        ((*a1)[10])(a1, &__str, a4, 0);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        sub_29B230974(a1, a4, 1);
        sub_29A008E78(&__str, "discard");
        ((*a1)[10])(a1, &__str, a4, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_29B230980(a1, a4, 0, 1);
        goto LABEL_222;
      }

      if ((v102 & 0x80u) == 0)
      {
        v61 = v102;
      }

      else
      {
        v61 = v101;
      }

      v62 = &v97;
      sub_29A022DE0(&v97, v61 + 5);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v62 = v97.__r_.__value_.__r.__words[0];
      }

      if (v61)
      {
        if ((v102 & 0x80u) == 0)
        {
          v63 = &v100;
        }

        else
        {
          v63 = v100;
        }

        memmove(v62, v63, v61);
      }

      strcpy(v62 + v61, "vec4(");
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &__dst;
      }

      else
      {
        v44 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = __dst.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v8, &__str);
      v40 = v95 == 4 && v94 - 1 < 2;
      sub_29A0EB570(v96);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (!v40)
      {
        sub_29B25A3B4(*(v8 + 24), &__dst);
      }

      if ((v102 & 0x80u) == 0)
      {
        v41 = v102;
      }

      else
      {
        v41 = v101;
      }

      v42 = &v97;
      sub_29A022DE0(&v97, v41 + 5);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v97.__r_.__value_.__r.__words[0];
      }

      if (v41)
      {
        if ((v102 & 0x80u) == 0)
        {
          v43 = &v100;
        }

        else
        {
          v43 = v100;
        }

        memmove(v42, v43, v41);
      }

      strcpy(v42 + v41, "vec4(");
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &__dst;
      }

      else
      {
        v44 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = __dst.__r_.__value_.__l.__size_;
      }
    }

    v64 = std::string::append(&v97, v44, v45);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v98.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v98.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = std::string::append(&v98, ".color, 1.0)");
    v67 = *&v66->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    ((*a1)[10])(a1, &__str, a4, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      v68 = v97.__r_.__value_.__r.__words[0];
LABEL_221:
      operator delete(v68);
    }
  }

  else
  {
    v34 = *(v8 + 128);
    v35 = *(v8 + 136);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = a1[1];
    if (v34)
    {
      v37 = *(v8 + 136);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v36 + 24))(&__dst);
      if (v37)
      {
        sub_29A014BEC(v37);
      }
    }

    else
    {
      v69 = sub_29B243874(v36, *(v8 + 24), 0);
      if (*(v69 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v69, *(v69 + 8));
      }

      else
      {
        v70 = *v69;
        __dst.__r_.__value_.__r.__words[2] = *(v69 + 16);
        *&__dst.__r_.__value_.__l.__data_ = v70;
      }
    }

    if (v35)
    {
      sub_29A014BEC(v35);
    }

    pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v8, &__str);
    v72 = v95 == 4 && v94 - 1 < 2;
    sub_29A0EB570(v96);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v72)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v100, &__dst.__r_.__value_.__l.__data_, &__str);
      ((*a1)[10])(a1, &__str, a4, 1);
    }

    else
    {
      if (*(v8 + 127) >= 0)
      {
        v73 = *(v8 + 127);
      }

      else
      {
        v73 = *(v8 + 112);
      }

      v74 = &__str;
      sub_29A022DE0(&__str, v73 + 4);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v74 = __str.__r_.__value_.__r.__words[0];
      }

      if (v73)
      {
        if (*(v8 + 127) >= 0)
        {
          v75 = (v8 + 104);
        }

        else
        {
          v75 = *(v8 + 104);
        }

        memmove(v74, v75, v73);
      }

      strcpy(v74 + v73, "_tmp");
      v76 = sub_29B2438AC(a1[1], *(v8 + 24));
      v77 = v76;
      if (*(v76 + 23) >= 0)
      {
        v78 = *(v76 + 23);
      }

      else
      {
        v78 = *(v76 + 8);
      }

      v79 = &v91;
      sub_29A022DE0(&v91, v78 + 1);
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v79 = v91.__r_.__value_.__r.__words[0];
      }

      if (v78)
      {
        if (v77[23] >= 0)
        {
          v80 = v77;
        }

        else
        {
          v80 = *v77;
        }

        memmove(v79, v80, v78);
      }

      *(&v79->__r_.__value_.__l.__data_ + v78) = 32;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = &__str;
      }

      else
      {
        v81 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v82 = __str.__r_.__value_.__l.__size_;
      }

      v83 = std::string::append(&v91, v81, v82);
      v84 = *&v83->__r_.__value_.__l.__data_;
      v92.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
      *&v92.__r_.__value_.__l.__data_ = v84;
      v83->__r_.__value_.__l.__size_ = 0;
      v83->__r_.__value_.__r.__words[2] = 0;
      v83->__r_.__value_.__r.__words[0] = 0;
      v85 = std::string::append(&v92, " = ");
      v86 = *&v85->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v87 = &__dst;
      }

      else
      {
        v87 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v88 = __dst.__r_.__value_.__l.__size_;
      }

      v89 = std::string::append(&v97, v87, v88);
      v90 = *&v89->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      ((*a1)[10])(a1, &v98, a4, 1);
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      sub_29B25A3B4(*(v8 + 24), &__str);
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v100, &__str.__r_.__value_.__l.__data_, &v98);
      ((*a1)[10])(a1, &v98, a4, 1);
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v68 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_221;
    }
  }

LABEL_222:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "mxOut = ApplyColorOverrides(mxOut)");
  ((*a1)[10])(a1, &__str, a4, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v102 < 0)
  {
    v27 = v100;
LABEL_47:
    operator delete(v27);
  }

LABEL_48:
  sub_29A008E78(&__str, "return mxOut");
  ((*a1)[10])(a1, &__str, a4, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B230980(a1, a4, 0, 1);
  return sub_29B2309A4(a1, a4);
}

void sub_29AE1B294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 105) < 0)
  {
    operator delete(*(v43 - 128));
  }

  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29AE1B494(void *a1, uint64_t a2)
{
  sub_29A008E78(&__p, "-- glslfx version 0.1");
  v32 = a2;
  (*(*a1 + 80))(a1, &__p, a2, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a2);
  sub_29A008E78(&__p, "File Generated with HdStMaterialXShaderGen.");
  sub_29B2309C0(a1, &__p.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a2);
  sub_29A008E78(&__p, "#import $TOOLS/hdSt/shaders/surfaceHelpers.glslfx\n");
  sub_29B2309AC(a1, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a2);
  sub_29A008E78(&__p, "-- configuration\n{\n");
  sub_29B2309AC(a1, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "    metadata: {\n");
  sub_29B2309AC(a1, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "");
  std::operator+<char>();
  v4 = std::string::append(&v39, "\n");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v40;
  }

  else
  {
    v6 = v40.__r_.__value_.__r.__words[0];
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, v6, size);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  sub_29B2309AC(a1, &__p, a2);
  sub_29A008E78(&v40, "    }, \n");
  sub_29B2309AC(a1, &v40, a2);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a1[108])
  {
    sub_29A008E78(&__p, "    attributes: {\n");
    sub_29B2309AC(a1, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v40, "");
    v8 = a1[107];
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = a1[2];
        v37 = a1[1];
        v38 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = v8 + 5;
        pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxGetTypeString(&v37, v8 + 5, &v39);
        if (v38)
        {
          sub_29A014BEC(v38);
        }

        v13 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v39.__r_.__value_.__l.__size_;
        }

        if (!v13)
        {
          __p.__r_.__value_.__r.__words[0] = "hdSt/materialXShaderGen.cpp";
          __p.__r_.__value_.__l.__size_ = "_EmitGlslfxHeader";
          __p.__r_.__value_.__r.__words[2] = 173;
          v35 = "void pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::_EmitGlslfxHeader(mx::ShaderStage &) const [Base = MaterialX__aapl::MslShaderGenerator]";
          v36 = 0;
          v14 = (v8 + 2);
          if (*(v8 + 39) < 0)
          {
            v14 = v8[2];
          }

          if (*(v8 + 63) < 0)
          {
            v11 = *v11;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MaterialX geomprop '%s' has unknown type '%s'", v12, v14, v11);
        }

        std::operator+<char>();
        v15 = std::string::append(&v33, ": {\n");
        v16 = *&v15->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v40, p_p, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v19 = std::string::append(&v33, "\n");
        v20 = *&v19->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v40, v21, v22);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        std::string::append(&v40, "        }");
        if (a1[108] - 1 <= v9)
        {
          v23 = "\n";
        }

        else
        {
          v23 = ",\n";
        }

        std::string::append(&v40, v23);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        v8 = *v8;
        ++v9;
      }

      while (v8);
    }

    sub_29B2309AC(a1, &v40, v32);
    sub_29A008E78(&__p, "    }, \n");
    sub_29B2309AC(a1, &__p, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  if (a1[103])
  {
    sub_29A008E78(&__p, "    textures: {\n");
    sub_29B2309AC(a1, &__p, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__p, "");
    v24 = a1[102];
    if (v24)
    {
      v25 = 0;
      do
      {
        std::operator+<char>();
        v26 = std::string::append(&v39, ": {\n        }");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v40;
        }

        else
        {
          v28 = v40.__r_.__value_.__r.__words[0];
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = v40.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v28, v29);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (a1[103] - 1 <= v25)
        {
          v30 = "\n";
        }

        else
        {
          v30 = ",\n";
        }

        std::string::append(&__p, v30);
        ++v25;
        v24 = *v24;
      }

      while (v24);
    }

    sub_29B2309AC(a1, &__p, v32);
    sub_29A008E78(&v40, "    }, \n");
    sub_29B2309AC(a1, &v40, v32);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&__p, "    techniques: {\n        default: {\n            surfaceShader: { \n                source: [ SurfaceHelpers.TangentSpace,\n                            MaterialX.Surface ]\n            }\n        }\n    }\n}\n\n");
  sub_29B2309AC(a1, &__p, v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "-- glsl MaterialX.Surface");
  (*(*a1 + 80))(a1, &__p, v32, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, v32);
  return sub_29B2309A4(a1, v32);
}

void sub_29AE1BBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE1BCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, "#if NUM_LIGHTS > 0");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define MAX_LIGHT_SOURCES NUM_LIGHTS");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#else");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define MAX_LIGHT_SOURCES 1");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#endif");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  std::to_string(&v23, *(a2 + 128));
  v8 = std::string::insert(&v23, 0, "#define DIRECTIONAL_ALBEDO_METHOD ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a3);
  result = sub_29B240E54(a3);
  if (*(result + 88) != *(result + 96))
  {
    v11 = result;
    v12 = sub_29B242ED8();
    (*(*a1 + 200))(a1, v11, a4, v12, a2, a3, 1);
    result = sub_29B2309A4(a1, a3);
  }

  for (i = *(a3 + 296); i; i = *i)
  {
    v14 = i[5];
    if (*(v14 + 88) != *(v14 + 96))
    {
      v15 = strlen(off_2A14FE500[0]);
      v16 = v15;
      v17 = *(v14 + 23);
      if (v17 < 0)
      {
        if (v15 != *(v14 + 8))
        {
          goto LABEL_26;
        }

        if (v15 == -1)
        {
          sub_29A0F26CC();
        }

        v18 = *v14;
      }

      else
      {
        v18 = i[5];
        if (v16 != v17)
        {
          goto LABEL_26;
        }
      }

      result = memcmp(v18, off_2A14FE500[0], v16);
      if (result)
      {
LABEL_26:
        std::operator+<char>();
        v19 = sub_29B2309C0(a1, __p, a3);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        v21 = sub_29B1F31FC(v19, v20);
        v22 = sub_29B242ED8();
        (*(*a1 + 200))(a1, v14, v21, v22, a2, a3, 1);
        result = sub_29B2309A4(a1, a3);
      }
    }
  }

  return result;
}

void sub_29AE1C0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE1C154(void *a1, uint64_t a2, uint64_t a3, std::string *a4, uint64_t a5)
{
  v9 = *(a2 + 40);
  v10 = (~v9 & 0x4004) == 0;
  v11 = (v9 >> 7) & 1;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 1)
  {
    v13 = *(a3 + 137);
    v14 = *(a3 + 136);
    sub_29A008E78(__p, off_2A14FE500[0]);
    v15 = sub_29B2408C8(a4, __p);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(__p[0]);
    }

    std::operator+<char>();
    (*(*a1 + 80))(a1, __p, a4, 0);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B230974(a1, a4, 1);
    v18 = sub_29B1F31FC(v16, v17);
    v19 = sub_29B242ED8();
    (*(*a1 + 200))(a1, v15, v18, v19, a3, a4, 0);
    sub_29B230980(a1, a4, 1, 1);
    sub_29B2309A4(a1, a4);
    if (v15[23] >= 0)
    {
      v20 = v15[23];
    }

    else
    {
      v20 = *(v15 + 1);
    }

    v21 = &v68;
    sub_29A022DE0(&v68, v20 + 1);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v68.__r_.__value_.__r.__words[0];
    }

    if (v20)
    {
      if (v15[23] >= 0)
      {
        v22 = v15;
      }

      else
      {
        v22 = *v15;
      }

      memmove(v21, v22, v20);
    }

    *(&v21->__r_.__value_.__l.__data_ + v20) = 32;
    v25 = *(v15 + 3);
    v24 = v15 + 24;
    v23 = v25;
    v26 = v24[23];
    if (v26 >= 0)
    {
      v27 = v24;
    }

    else
    {
      v27 = v23;
    }

    if (v26 >= 0)
    {
      v28 = v24[23];
    }

    else
    {
      v28 = *(v24 + 1);
    }

    v29 = std::string::append(&v68, v27, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = std::string::append(&v69, "[MAX_LIGHT_SOURCES]");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v67 = v31->__r_.__value_.__r.__words[2];
    *__p = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, __p, a4, 1);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    v33 = v13 | v14;
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    sub_29B2309A4(a1, a4);
    sub_29B2309A4(a1, a4);
  }

  else
  {
    v33 = *(a3 + 136);
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v34 = sub_29B240AA4(a4, __p);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(v34 + 11) != *(v34 + 12))
  {
    sub_29A008E78(__p, "MaterialX's VertexData");
    sub_29B2309C0(a1, __p, a4);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(__p[0]);
    }

    std::operator+<char>();
    std::operator+<char>();
    (*(*a1 + 80))(a1, &v69, a4, 0);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    sub_29B230974(a1, a4, 1);
    v37 = sub_29B1F31FC(v35, v36);
    v38 = sub_29B242ED8();
    (*(*a1 + 200))(a1, v34, v37, v38, a3, a4, 0);
    sub_29B230980(a1, a4, 0, 0);
    v39 = sub_29B242ED8();
    sub_29B2309AC(a1, v39, a4);
    sub_29B2309A4(a1, a4);
    if (v67 >= 0)
    {
      v40 = HIBYTE(v67);
    }

    else
    {
      v40 = __p[1];
    }

    sub_29A022DE0(&v68, v40 + 1);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v68;
    }

    else
    {
      v41 = v68.__r_.__value_.__r.__words[0];
    }

    if (v40)
    {
      if (v67 >= 0)
      {
        v42 = __p;
      }

      else
      {
        v42 = __p[0];
      }

      memmove(v41, v42, v40);
    }

    *(&v41->__r_.__value_.__l.__data_ + v40) = 32;
    v43 = v34[47];
    if (v43 >= 0)
    {
      v44 = v34 + 24;
    }

    else
    {
      v44 = *(v34 + 3);
    }

    if (v43 >= 0)
    {
      v45 = v34[47];
    }

    else
    {
      v45 = *(v34 + 4);
    }

    v46 = std::string::append(&v68, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v69, a4, 1);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    sub_29B2309A4(a1, a4);
    sub_29B2309A4(a1, a4);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29AE1DAA8(a1, v34, a4);
  if (v12)
  {
    sub_29B25603C(a1, a3, a4);
    sub_29B256300(a1, a3, a4);
  }

  if (v33)
  {
    sub_29AE1D8C4(__p, "pbrlib/genglsl/lib/mx_shadow.glsl");
    sub_29B2309D0(a1, __p, a3, a4);
  }

  if (*(a3 + 128) == 1 || *(a3 + 145) == 1)
  {
    sub_29AE1D8C4(__p, "pbrlib/genglsl/lib/mx_table.glsl");
    sub_29B2309D0(a1, __p, a3, a4);
  }

  if (*(a3 + 28) == 1)
  {
    sub_29A008E78(__p, off_2A14FE688[0]);
    v69.__r_.__value_.__r.__words[0] = __p;
    v48 = a5;
    v49 = sub_29B1D6E60(a5, __p, &unk_29B4D6118, &v69);
    MEMORY[0x29C2C1A60](v49 + 40, "mx_transform_uv_vflip.glsl");
  }

  else
  {
    sub_29A008E78(__p, off_2A14FE688[0]);
    v69.__r_.__value_.__r.__words[0] = __p;
    v48 = a5;
    v50 = sub_29B1D6E60(a5, __p, &unk_29B4D6118, &v69);
    MEMORY[0x29C2C1A60](v50 + 40, "mx_transform_uv.glsl");
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 138) == 1)
  {
    sub_29B24F0A8();
    std::operator+<char>();
    v51 = std::string::append(&v65, "/lib/");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    sub_29A008E78(v64, off_2A14FE688[0]);
    v70 = v64;
    v53 = sub_29B1D6E60(v48, v64, &unk_29B4D6118, &v70);
    v56 = v53[5];
    v54 = (v53 + 5);
    v55 = v56;
    v57 = v54[23];
    if (v57 >= 0)
    {
      v58 = v54;
    }

    else
    {
      v58 = v55;
    }

    if (v57 >= 0)
    {
      v59 = v54[23];
    }

    else
    {
      v59 = *(v54 + 1);
    }

    v60 = std::string::append(&v68, v58, v59);
    v61 = *&v60->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    sub_29AAC9330(__p, &v69);
    sub_29B2309D0(a1, __p, a3, a4);
  }

  sub_29B25A7D4(a1, a2, a3, &a4->__r_.__value_.__l.__data_);
  return sub_29B230B4C(a1, a2, a3, a4);
}

void sub_29AE1C974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  *(v43 - 96) = v42;
  sub_29A012C90((v43 - 96));
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsNone(void *a1)
{
  v2 = sub_29B246774();

  return sub_29A1B00DC(a1, v2);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsSurfaceShader(void *a1)
{
  v2 = sub_29B24844C();

  return sub_29A1B00DC(a1, v2);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeDescIsFilename(void *a1)
{
  v2 = sub_29B24805C();

  return sub_29A1B00DC(a1, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    v3 = sub_29B246774();
  }

  if (*(v3 + 23) < 0)
  {
    sub_29A008D14(a2, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    *(a2 + 16) = *(v3 + 16);
    *a2 = v4;
  }

  v5 = *(v3 + 24);
  *(a2 + 40) = *(v3 + 40);
  *(a2 + 24) = v5;
  return sub_29AE168E8(a2 + 48, v3 + 48);
}

void sub_29AE1CBE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxGetTypeString@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_29B246738(a2, a2);
  if (v5)
  {
    result = sub_29B2438AC(*a1, v5);
  }

  else
  {
    result = sub_29B246774();
  }

  if (*(result + 23) < 0)
  {
    v8 = *result;
    v9 = result[1];

    return sub_29A008D14(a3, v8, v9);
  }

  else
  {
    v7 = *result;
    *(a3 + 16) = result[2];
    *a3 = v7;
  }

  return result;
}

uint64_t sub_29AE1CC88(uint64_t a1)
{
  *a1 = &unk_2A2095458;
  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  sub_29A89AD9C(a1 + 880);
  sub_29A89AD9C(a1 + 840);
  sub_29A89AD9C(a1 + 800);
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  return sub_29AE1D3D0(a1);
}

void sub_29AE1CD38(uint64_t a1)
{
  *a1 = &unk_2A2095458;
  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  sub_29A89AD9C(a1 + 880);
  sub_29A89AD9C(a1 + 840);
  sub_29A89AD9C(a1 + 800);
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  v2 = sub_29AE1D3D0(a1);
  operator delete(v2);
}

void sub_29AE1CDF0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29B2309B4(a1, a2, a3, a4);
  if (a1[969] == 1)
  {
    v7 = *(a2 + 23);
    v8 = *(a2 + 8);
    if (v7 < 0 && v8 == 30)
    {
      v9 = *(*a2 + 16);
      v10 = *(*a2 + 22);
      v11 = **a2 == 0x3D204C2033636576 && *(*a2 + 8) == 0x6853746867696C20;
      v12 = 0x7269642E72656461;
    }

    else
    {
      if ((v7 & 0x80000000) == 0 || v8 != 32)
      {
        return;
      }

      v9 = *(*a2 + 16);
      v10 = *(*a2 + 24);
      v11 = **a2 == 0x4C203374616F6C66 && *(*a2 + 8) == 0x746867696C203D20;
      v12 = 0x642E726564616853;
    }

    if (v11 && v9 == v12 && v10 == 0x6E6F697463657269)
    {
      sub_29A008E78(__p, "occlusion = u_lightData[activeLightIndex].shadowOcclusion");
      (*(*a1 + 80))(a1, __p, a3, 1);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_29AE1CF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE1CF74(uint64_t a1, const void **a2, char *a3, const std::string::value_type *a4, uint64_t a5, std::string *a6, int a7)
{
  v40[3] = *MEMORY[0x29EDCA608];
  {
    sub_29A008E78(v33, off_2A14FE268[0]);
    sub_29A008E78(&v35, off_2A14FE2C0[0]);
    sub_29A008E78(v37, off_2A14FE2A8[0]);
    sub_29A008E78(v38, off_2A14FE2B0[0]);
    sub_29A008E78(v39, off_2A14FE2B8[0]);
    sub_29A008E78(v40, off_2A14FE2E0[0]);
    sub_29A9FDE68(&pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::emitVariableDeclarations(MaterialX__aapl::VariableBlock const&,std::string const&,std::string const&,MaterialX__aapl::GenContext &,MaterialX__aapl::ShaderStage &,BOOL)const::MxHdVariables, v33, 6);
    for (i = 0; i != -18; i -= 3)
    {
      if (SHIBYTE(v40[i + 2]) < 0)
      {
        operator delete(v40[i]);
      }
    }

    __cxa_atexit(sub_29AA7B2BC, &pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::emitVariableDeclarations(MaterialX__aapl::VariableBlock const&,std::string const&,std::string const&,MaterialX__aapl::GenContext &,MaterialX__aapl::ShaderStage &,BOOL)const::MxHdVariables, &dword_299FE7000);
  }

  v11 = strlen(off_2A14FE4F8[0]);
  v12 = v11;
  v13 = *(a2 + 23);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = a2;
    if (v12 != v13)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = memcmp(v14, off_2A14FE4F8[0], v12) == 0;
    goto LABEL_10;
  }

  if (v11 == a2[1])
  {
    if (v11 == -1)
    {
      sub_29A0F26CC();
    }

    v14 = *a2;
    goto LABEL_8;
  }

LABEL_9:
  v15 = 0;
LABEL_10:
  if (a2[12] != a2[11])
  {
    v16 = 0;
    while (1)
    {
      sub_29B230990(a1, a6);
      v17 = *(a2[11] + v16);
      MxTypeDesc = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v17, v33);
      if (*(a1 + 968))
      {
        break;
      }

      if (SHIBYTE(v34) < 0)
      {
        sub_29A008D14(__p, v33[0], v33[1]);
      }

      else
      {
        *__p = *v33;
        v29 = v34;
      }

      v30 = v35;
      v31 = v36;
      sub_29AE168E8(v32, v37);
      v20 = sub_29B24805C();
      v21 = sub_29A1B00DC(__p, v20);
      MxTypeDesc = sub_29A0EB570(v32);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
        if (!v21)
        {
          break;
        }
      }

      else if (!v21)
      {
        break;
      }

LABEL_27:
      sub_29A0EB570(v37);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v33[0]);
      }

      if (++v16 >= ((a2[12] - a2[11]) >> 3))
      {
        return;
      }
    }

    if (v15 && v35 <= 4u && ((1 << v35) & 0x16) != 0 && (*(&v35 + 1) - 5) > 0xFFFFFFFFFFFFFFFBLL || (MxTypeDesc = sub_29A00AF58(&pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::emitVariableDeclarations(MaterialX__aapl::VariableBlock const&,std::string const&,std::string const&,MaterialX__aapl::GenContext &,MaterialX__aapl::ShaderStage &,BOOL)const::MxHdVariables, (v17 + 32)), v22 = a3, v23 = a7, MxTypeDesc))
    {
      v22 = sub_29B1F31FC(MxTypeDesc, v19);
      v23 = 0;
    }

    sub_29B25A9D8(a1, v17, v22, a5, a6, v23);
    sub_29B2309AC(a1, a4, a6);
    sub_29B230998(a1, a6, 0);
    goto LABEL_27;
  }
}

void sub_29AE1D30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v30 = (v28 + 143);
  v31 = -144;
  v32 = (v28 + 143);
  while (1)
  {
    v33 = *v32;
    v32 -= 24;
    if (v33 < 0)
    {
      operator delete(*(v30 - 23));
    }

    v30 = v32;
    v31 += 24;
    if (!v31)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AE1D3D0(uint64_t a1)
{
  *a1 = &unk_2A20C9078;
  v2 = a1 + 144;
  sub_29A0EB570(a1 + 736);
  sub_29AE14178((a1 + 696));
  sub_29AE1D50C(a1 + 656);
  sub_29A0EB570(a1 + 608);
  sub_29AE14178((a1 + 568));
  sub_29AE1D50C(a1 + 528);
  sub_29A0EB570(a1 + 480);
  sub_29AE14178((a1 + 440));
  sub_29AE1D50C(a1 + 400);
  sub_29A0EB570(a1 + 352);
  sub_29AE14178((a1 + 312));
  sub_29AE1D50C(a1 + 272);
  sub_29A0EB570(a1 + 224);
  sub_29AE14178((a1 + 184));
  sub_29AE1D50C(v2);

  return sub_29AE1D49C(a1);
}

uint64_t sub_29AE1D49C(uint64_t a1)
{
  *a1 = &unk_2A20CAC10;
  sub_29A89AD9C(a1 + 96);
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A0EB4E8((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return a1;
}

uint64_t sub_29AE1D50C(uint64_t a1)
{
  sub_29AE1D548(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AE1D548(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      sub_29A156170(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29AE1D5BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20957D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE1D62C(uint64_t a1)
{
  v1 = sub_29AE1D68C(a1);

  operator delete(v1);
}

void sub_29AE1D654(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  *(*a3 + 969) = 1;
  sub_29B268888(a1, a2, a3, a4);
  *(v4 + 969) = 0;
}

uint64_t sub_29AE1D68C(uint64_t a1)
{
  *a1 = &unk_2A20CC3E8;
  sub_29A0EB570(a1 + 512);
  sub_29AE14178((a1 + 472));
  sub_29AE1D50C(a1 + 432);
  sub_29A0EB570(a1 + 384);
  sub_29AE14178((a1 + 344));
  sub_29AE1D50C(a1 + 304);
  sub_29A0EB570(a1 + 256);
  sub_29AE14178((a1 + 216));
  sub_29AE1D50C(a1 + 176);
  sub_29A0EB570(a1 + 128);
  sub_29AE14178((a1 + 88));
  sub_29AE1D50C(a1 + 48);
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29AE1D758(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  sub_29AE1D7D4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29AE1D7D4(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB680;
  sub_29B24D270((a1 + 3), *a2, *a3);
  return a1;
}

void sub_29AE1D858(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE1D8C4(void *a1, char *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A008E78(&__p, a2);
  }

  else
  {
    v3 = sub_29B1F31FC(a1, 0);
    if (v3[23] < 0)
    {
      sub_29A008D14(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v4 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v4;
    }
  }

  sub_29B20661C(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29AE1D950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE1D980(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B1D70D0(a1, i + 2, i + 1);
  }

  return a1;
}

void sub_29AE1D9F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20958E0, &unk_2A2095908, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29AE1DAA8(uint64_t a1, uint64_t a2, std::string *a3)
{
  sub_29A008E78(&__str, "mxInit");
  std::string::operator=(a3 + 1, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "void mxInit(vec4 Peye, vec3 Neye)");
  (*(*a1 + 80))(a1, &__str, a3, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B230974(a1, a3, 1);
  sub_29A008E78(&__str, "Convert HdData to MxData");
  sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, off_2A14FE4F0[0]);
  v6 = sub_29B2408C8(a3, &__str);
  sub_29A008E78(&__dst, off_2A14FE268[0]);
  v9 = sub_29B23EB84(v6, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_13:
    sub_29A008E78(&__str, "u_viewPosition = vec3(HdGet_worldToViewInverseMatrix() * vec4(0.0, 0.0, 0.0, 1.0))");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_15;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_15:
  v10 = (a1 + 920);
  if (*(a1 + 943) < 0)
  {
    sub_29A008D14(&__str, *(a1 + 920), *(a1 + 928));
  }

  else
  {
    *&__str.__r_.__value_.__l.__data_ = *v10;
    __str.__r_.__value_.__r.__words[2] = *(a1 + 936);
  }

  v11 = *(a2 + 88);
  v57 = a3;
  if (*(a2 + 96) == v11)
  {
LABEL_53:
    v62 = __str;
    goto LABEL_56;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(v11 + 8 * v12);
    if (*(v13 + 127) < 0)
    {
      sub_29A008D14(&__dst, *(v13 + 104), *(v13 + 112));
    }

    else
    {
      __dst = *(v13 + 104);
    }

    sub_29A008E78(&v64, off_2A14FE200[0]);
    v14 = (v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v64.__r_.__value_.__r.__words[2]) : v64.__r_.__value_.__l.__size_;
    v15 = std::string::compare(&__dst, 0, v14, off_2A14FE200[0]);
    v16 = v15;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
      if (!v16)
      {
LABEL_36:
        if (*(a1 + 943) < 0)
        {
          sub_29A008D14(&v62, *(a1 + 920), *(a1 + 928));
        }

        else
        {
          *&v62.__r_.__value_.__l.__data_ = *v10;
          v62.__r_.__value_.__r.__words[2] = *(a1 + 936);
        }

        goto LABEL_49;
      }
    }

    else if (!v15)
    {
      goto LABEL_36;
    }

    sub_29A008E78(&v64, off_2A14FE1B0[0]);
    v17 = (v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v64.__r_.__value_.__r.__words[2]) : v64.__r_.__value_.__l.__size_;
    v18 = std::string::compare(&__dst, 0, v17, off_2A14FE1B0[0]);
    if (v18)
    {
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      a3 = v57;
    }

    else
    {
      v19 = *(v13 + 24);
      Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v18);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      v28 = v19 == Vector2Name;
      a3 = v57;
      if (v28)
      {
        sub_29A008E78(&__p, off_2A14FE1B0[0]);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v64, &__dst, size + 1, 0xFFFFFFFFFFFFFFFFLL, v66);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v64;
        *(&v64.__r_.__value_.__s + 23) = 0;
        v64.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

LABEL_49:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (!v16)
    {
      break;
    }

    ++v12;
    v11 = *(a2 + 88);
    if (v12 >= (*(a2 + 96) - v11) >> 3)
    {
      goto LABEL_53;
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_56:
  v22 = &v62;
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v62.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("\n    // Calculate the worldspace position and normal vectors\n    vec3 positionWorld = vec3(HdGet_worldToViewInverseMatrix() * Peye);\n    vec3 normalWorld = vec3(HdGet_worldToViewInverseMatrix() * vec4(Neye, 0.0));\n\n    // Calculate the worldspace tangent vector \n#ifdef HD_HAS_%s\n    mat3 TBN = ComputeTBNMatrix(positionWorld, normalWorld, HdGet_%s());\n    vec3 tangentWorld = TBN[0];\n    vec3 bitangentWorld = TBN[1];\n#else \n    vec3 bitangentWorld = vec3(0, 1, 0);\n    vec3 tangentWorld = cross(normalWorld, bitangentWorld);\n    if (length(tangentWorld) < M_FLOAT_EPS) {\n        bitangentWorld = vec3(1, 0, 0);\n        tangentWorld = cross(normalWorld, bitangentWorld);\n    }\n#endif\n\n", v7, v8, v22, v22);
  sub_29B2309AC(a1, &__str, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 88) != *(a2 + 96))
  {
    std::operator+<char>();
    v23 = sub_29B242F58();
    sub_29AE1E950(a1, a2, &__str, (a2 + 24), v23, a3);
    sub_29B2309A4(a1, a3);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&__str, "Initialize Material Parameters");
  sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, off_2A14FE4F8[0]);
  v24 = sub_29B2408C8(a3, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v25 = v24[11];
  if (v24[12] != v25)
  {
    v26 = 0;
    do
    {
      v27 = *(v25 + 8 * v26);
      pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v27, &__str);
      v28 = v59 > 4u || ((1 << v59) & 0x16) == 0;
      if (!v28 && (v60 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
      {
        if (*(v27 + 127) >= 0)
        {
          v29 = *(v27 + 127);
        }

        else
        {
          v29 = *(v27 + 112);
        }

        sub_29A022DE0(&__p, v29 + 9);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v29)
        {
          if (*(v27 + 127) >= 0)
          {
            v31 = (v27 + 104);
          }

          else
          {
            v31 = *(v27 + 104);
          }

          memmove(p_p, v31, v29);
        }

        strcpy(p_p + v29, " = HdGet_");
        v32 = *(v27 + 127);
        if (v32 >= 0)
        {
          v33 = (v27 + 104);
        }

        else
        {
          v33 = *(v27 + 104);
        }

        if (v32 >= 0)
        {
          v34 = *(v27 + 127);
        }

        else
        {
          v34 = *(v27 + 112);
        }

        v35 = std::string::append(&__p, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v64.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v64.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v64, "()");
        a3 = v57;
        v38 = *&v37->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__dst, v57, 1);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      sub_29A0EB570(&v61);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v26;
      v25 = v24[11];
    }

    while (v26 < (v24[12] - v25) >> 3);
  }

  sub_29B2309A4(a1, a3);
  sub_29A008E78(&__str, "Initialize Indirect Light Textures and values");
  sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 968) == 1)
  {
    sub_29A008E78(&__str, "#ifdef HD_HAS_domeLightIrradiance");
    (*(*a1 + 80))(a1, &__str, a3, 0);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "u_envIrradiance = HdGetSampler_domeLightIrradiance()");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "u_envRadiance = HdGetSampler_domeLightPrefilter()");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "#else");
    (*(*a1 + 80))(a1, &__str, a3, 0);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "u_envIrradiance = HdGetSampler_domeLightFallback()");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "u_envRadiance = HdGetSampler_domeLightFallback()");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "#endif");
    (*(*a1 + 80))(a1, &__str, a3, 0);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&__str, "u_envRadianceMips = textureQueryLevels(u_envRadiance)");
  (*(*a1 + 80))(a1, &__str, a3, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a3);
  if (*(a1 + 968) == 1 && *(a1 + 824))
  {
    sub_29A008E78(&__str, "Initialize Material Textures");
    sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a3);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    for (i = *(a1 + 816); i; i = *i)
    {
      v40 = *(i + 39);
      if (v40 < 0)
      {
        if (i[3] != 17)
        {
          goto LABEL_136;
        }

        v41 = i[2];
      }

      else
      {
        v41 = i + 2;
        if (v40 != 17)
        {
          goto LABEL_136;
        }
      }

      v42 = *v41;
      v43 = v41[1];
      v44 = *(v41 + 16);
      if (v42 != 0x6867694C656D6F64 || v43 != 0x6361626C6C614674 || v44 != 107)
      {
LABEL_136:
        if (v40 >= 0)
        {
          v47 = *(i + 39);
        }

        else
        {
          v47 = i[3];
        }

        sub_29A022DE0(&v64, v47 + 16);
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = &v64;
        }

        else
        {
          v48 = v64.__r_.__value_.__r.__words[0];
        }

        if (v47)
        {
          if (*(i + 39) >= 0)
          {
            v49 = i + 2;
          }

          else
          {
            v49 = i[2];
          }

          memmove(v48, v49, v47);
        }

        strcpy(v48 + v47, " = HdGetSampler_");
        v50 = *(i + 63);
        if (v50 >= 0)
        {
          v51 = (i + 5);
        }

        else
        {
          v51 = i[5];
        }

        if (v50 >= 0)
        {
          v52 = *(i + 63);
        }

        else
        {
          v52 = i[6];
        }

        v53 = std::string::append(&v64, v51, v52);
        v54 = *&v53->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        v55 = std::string::append(&__dst, "()");
        v56 = *&v55->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__str, a3, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_29B2309A4(a1, a3);
  }

  sub_29A008E78(&__str, "mat4 hdTransformationMatrix = mat4(1.0)");
  (*(*a1 + 80))(a1, &__str, a3, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "#if NUM_LIGHTS > 0\n    for (int i = 0; i < NUM_LIGHTS; ++i) {\n        LightSource light = GetLightSource(i);\n\n        // Save the indirect light transformation\n        if (light.isIndirectLight) {\n            hdTransformationMatrix = light.worldToLightTransform;\n            // Note: in Storm, diffuse = lightColor * intensity;\n            u_envLightIntensity = max( max(light.diffuse.r, light.diffuse.g),\n                                   light.diffuse.b);\n        }\n        // Save the direct light data\n        else {\n            // Light Type and Position/Direction\n            // Distant lights have Hydra attenuation = vec3(0.0, 0.0, 0.0)\n            if (light.attenuation.x == 0.0 && light.attenuation.y == 0.0 && \n                light.attenuation.z == 0.0) {\n                $lightData[u_numActiveLightSources].type = 2; // directional\n\n                // Direction (Hydra position in ViewSpace)\n                $lightData[u_numActiveLightSources].direction = \n                    (HdGet_worldToViewInverseMatrix() * -light.position).xyz;\n            }\n            // Treat all other lights as Point lights\n            else {\n                $lightData[u_numActiveLightSources].type = 1; // point\n\n                // Position (Hydra position in ViewSpace)\n                $lightData[u_numActiveLightSources].position = \n                    (HdGet_worldToViewInverseMatrix() * light.position).xyz;\n            }\n\n            // Color and Intensity \n            // Note: in Storm, diffuse = lightColor * intensity;\n            float intensity = max( max(light.diffuse.r, light.diffuse.g), \n                                   light.diffuse.b);\n            vec3 lightColor = (intensity == 0.0)\n                ? light.diffuse.rgb : light.diffuse.rgb/intensity;\n            $lightData[u_numActiveLightSources].color = lightColor;\n            $lightData[u_numActiveLightSources].intensity = intensity;\n            \n            // Attenuation \n            // Hydra: vec3(const, linear, quadratic)\n            // MaterialX: const = 0.0, linear = 1.0, quadratic = 2.0\n            if (light.attenuation.z > 0) {\n                $lightData[u_numActiveLightSources].decay_rate = 2.0;\n            }\n            else if (light.attenuation.y > 0) {\n                $lightData[u_numActiveLightSources].decay_rate = 1.0;\n            }\n            else {\n                $lightData[u_numActiveLightSources].decay_rate = 0.0;\n            }\n\n            // ShadowOcclusion value\n            #if USE_SHADOWS\n                u_lightData[u_numActiveLightSources].shadowOcclusion = \n                    light.hasShadow ? shadowing(i, Peye) : 1.0;\n            #else \n                u_lightData[u_numActiveLightSources].shadowOcclusion = 1.0;\n            #endif\n\n            u_numActiveLightSources++;\n        }\n    }\n#endif\n");
  sub_29B2309AC(a1, &__str, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "u_envMatrix = u_envMatrix * hdTransformationMatrix");
  (*(*a1 + 80))(a1, &__str, a3, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B230980(a1, a3, 0, 1);
  sub_29B2309A4(a1, a3);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }
}

void sub_29AE1E770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE1E950(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, char *a5, uint64_t a6)
{
  if (*(a4 + 23) >= 0)
  {
    v12 = *(a4 + 23);
  }

  else
  {
    v12 = a4[1];
  }

  v13 = &v45;
  sub_29A022DE0(&v45, v12 + 3);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v45.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (*(a4 + 23) >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    memmove(v13, v14, v12);
  }

  *(&v13->__r_.__value_.__l.__data_ + v12) = 2112800;
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  v18 = std::string::append(&v45, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v20 = sub_29B24F0A8();
  v21 = sub_29B24F0A8();
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = *(v20 + 23);
  }

  else
  {
    v23 = v20[1];
  }

  v24 = *(v21 + 23);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = v21[1];
  }

  if (v23 != v24)
  {
    goto LABEL_31;
  }

  v26 = *v20;
  if (v22 >= 0)
  {
    v26 = v20;
  }

  v27 = v25 >= 0 ? v21 : *v21;
  if (!memcmp(v26, v27, v23))
  {
    v29 = std::string::append(&v48, "{");
  }

  else
  {
LABEL_31:
    v45.__r_.__value_.__r.__words[0] = "hdSt/materialXShaderGen.cpp";
    v45.__r_.__value_.__l.__size_ = "_EmitMxVertexDataDeclarations";
    v45.__r_.__value_.__r.__words[2] = 512;
    v46 = "void pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::_EmitMxVertexDataDeclarations(const mx::VariableBlock &, const std::string &, const std::string &, const std::string &, mx::ShaderStage &) const [Base = MaterialX__aapl::MslShaderGenerator]";
    v47 = 0;
    v28 = *v20;
    if (v22 >= 0)
    {
      v28 = v20;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v45, 1, "MaterialX Shader Generator doesn't support %s", v28);
  }

  v31 = *(a2 + 88);
  v32 = *(a2 + 96) - v31;
  if (v32)
  {
    v33 = 0;
    v34 = v32 >> 3;
    do
    {
      v35 = a5;
      if (v33 == v34 - 1)
      {
        v35 = sub_29B1F31FC(v29, v30);
        v31 = *(a2 + 88);
      }

      sub_29AE1EC9C(a1, *(v31 + 8 * v33), v35, &v45);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v45;
      }

      else
      {
        v36 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v45.__r_.__value_.__l.__size_;
      }

      v29 = std::string::append(&v48, v36, size);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      ++v33;
      v31 = *(a2 + 88);
      v34 = (*(a2 + 96) - v31) >> 3;
    }

    while (v33 < v34);
  }

  v38 = sub_29B24F0A8();
  v39 = *(v20 + 23);
  if (v39 >= 0)
  {
    v40 = *(v20 + 23);
  }

  else
  {
    v40 = v20[1];
  }

  v41 = *(v38 + 23);
  v42 = v41;
  if ((v41 & 0x80u) != 0)
  {
    v41 = v38[1];
  }

  if (v40 == v41)
  {
    v43 = v39 >= 0 ? v20 : *v20;
    v44 = v42 >= 0 ? v38 : *v38;
    if (!memcmp(v43, v44, v40))
    {
      std::string::append(&v48, "}");
    }
  }

  (*(*a1 + 80))(a1, &v48, a6, 1);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }
}

void sub_29AE1EC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE1EC9C(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string::value_type *a3@<X2>, uint64_t a4@<X8>)
{
  v66 = *MEMORY[0x29EDCA608];
  memset(&v63, 0, sizeof(v63));
  if (*(a2 + 127) < 0)
  {
    sub_29A008D14(&__str, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    __str = *(a2 + 104);
  }

  if (!std::string::compare(&__str, off_2A14FE1C0[0]) || !std::string::compare(&__str, off_2A14FE1C8[0]) || !std::string::compare(&__str, off_2A14FE1D0[0]) || !std::string::compare(&__str, off_2A14FE1D8[0]))
  {
    std::string::basic_string(&v61, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v60);
    v16 = a3[23];
    if (v16 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (v16 >= 0)
    {
      v18 = a3[23];
    }

    else
    {
      v18 = *(a3 + 1);
    }

    v19 = std::string::append(&v61, v17, v18);
    v21 = *v19;
    __dst.__r_.__value_.__r.__words[0] = *(v19 + 8);
    *(__dst.__r_.__value_.__r.__words + 7) = *(v19 + 15);
    v22 = *(v19 + 23);
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *v19 = 0;
    *(&v63.__r_.__value_.__r.__words[1] + 7) = *(__dst.__r_.__value_.__r.__words + 7);
    v63.__r_.__value_.__r.__words[0] = v21;
    v63.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
    *(&v63.__r_.__value_.__s + 23) = v22;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  if (!std::string::compare(&__str, off_2A14FE1E0[0]) || !std::string::compare(&__str, off_2A14FE1E8[0]))
  {
    v19 = std::operator+<char>();
LABEL_41:
    v63 = v61;
    goto LABEL_42;
  }

  v8 = strlen(off_2A14FE200[0]);
  if (!std::string::compare(&__str, 0, v8, off_2A14FE200[0]))
  {
    v23 = (a1 + 920);
    if (*(a1 + 943) < 0)
    {
      v23 = *v23;
    }

    v24 = a3[23];
    v25 = *a3;
    v26 = sub_29B2438AC(*(a1 + 8), *(a2 + 24));
    if (v24 >= 0)
    {
      v29 = a3;
    }

    else
    {
      v29 = v25;
    }

    if (*(v26 + 23) >= 0)
    {
      v30 = v26;
    }

    else
    {
      v30 = *v26;
    }

    if (a3[23] >= 0)
    {
      v31 = a3;
    }

    else
    {
      v31 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("\n    #ifdef HD_HAS_%s\n        HdGet_%s()%s\n    #else\n        %s(0.0)%s\n    #endif\n        ", v27, v28, v23, v23, v29, v30, v31);
    goto LABEL_41;
  }

  v9 = strlen(off_2A14FE1B0[0]);
  if (!std::string::compare(&__str, 0, v9, off_2A14FE1B0[0]))
  {
    v35 = strlen(off_2A14FE1B0[0]);
    std::string::basic_string(&v61, &__str, v35 + 1, 0xFFFFFFFFFFFFFFFFLL, &__dst);
    v36 = sub_29B243874(*(a1 + 8), *(a2 + 24), 0);
    if (*(v36 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v36, *(v36 + 8));
    }

    else
    {
      v37 = *v36;
      __dst.__r_.__value_.__r.__words[2] = *(v36 + 16);
      *&__dst.__r_.__value_.__l.__data_ = v37;
    }

    v39 = sub_29A8877BC((a1 + 880), &v61);
    v42 = v39;
    if (v39)
    {
      v43 = *(v39 + 63);
      if ((v43 & 0x8000000000000000) != 0)
      {
        v43 = v39[6];
      }

      if (v43)
      {
        v44 = sub_29B2438AC(*(a1 + 8), *(a2 + 24));
        sub_29A911628("(", v44, &v59);
        v45 = *(v42 + 63);
        if (v45 >= 0)
        {
          v46 = (v42 + 5);
        }

        else
        {
          v46 = v42[5];
        }

        if (v45 >= 0)
        {
          v47 = *(v42 + 63);
        }

        else
        {
          v47 = v42[6];
        }

        v48 = std::string::append(&v59, v46, v47);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        v50 = std::string::append(&v60, ")");
        v51 = v50->__r_.__value_.__r.__words[0];
        v64[0] = v50->__r_.__value_.__l.__size_;
        *(v64 + 7) = *(&v50->__r_.__value_.__r.__words[1] + 7);
        v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst.__r_.__value_.__r.__words[0] = v51;
        __dst.__r_.__value_.__l.__size_ = v64[0];
        *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v64 + 7);
        *(&__dst.__r_.__value_.__s + 23) = v52;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }
      }
    }

    v53 = &v61;
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v61.__r_.__value_.__r.__words[0];
    }

    if (a3[23] >= 0)
    {
      v54 = a3;
    }

    else
    {
      v54 = *a3;
    }

    p_dst = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("\n    #ifdef HD_HAS_%s\n        HdGet_%s()%s\n    #else\n        %s%s\n    #endif\n        ", v40, v41, v53, v53, v54, p_dst, v54);
    v63 = v60;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v10 = *(a2 + 128);
    v11 = *(a2 + 136);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 8);
    if (v10)
    {
      v13 = *(a2 + 136);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = (*(*v12 + 24))(&v61);
      if (v13)
      {
        sub_29A014BEC(v13);
      }
    }

    else
    {
      v14 = sub_29B243874(v12, *(a2 + 24), 1);
      if (*(v14 + 23) < 0)
      {
        v14 = sub_29A008D14(&v61, *v14, v14[1]);
      }

      else
      {
        v38 = *v14;
        v61.__r_.__value_.__r.__words[2] = v14[2];
        *&v61.__r_.__value_.__l.__data_ = v38;
      }
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v61.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v61.__r_.__value_.__l.__data_, a3, &__dst);
    }

    else
    {
      v57 = sub_29B1F31FC(v14, v15);
      if (v57[23] < 0)
      {
        sub_29A008D14(&__dst, *v57, *(v57 + 1));
      }

      else
      {
        v58 = *v57;
        __dst.__r_.__value_.__r.__words[2] = *(v57 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v58;
      }
    }

    v19 = std::string::operator=(&v63, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_95:
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_26:
    operator delete(v61.__r_.__value_.__l.__data_);
  }

LABEL_42:
  v32 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v63.__r_.__value_.__l.__size_;
  }

  if (v32)
  {
    v33 = &v63;
    if ((*(&v63.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_46:
      v34 = *&v33->__r_.__value_.__l.__data_;
      *(a4 + 16) = *(&v33->__r_.__value_.__l + 2);
      *a4 = v34;
      goto LABEL_49;
    }
  }

  else
  {
    v33 = sub_29B1F31FC(v19, v20);
    if ((*(&v33->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_46;
    }
  }

  sub_29A008D14(a4, v33->__r_.__value_.__l.__data_, v33->__r_.__value_.__l.__size_);
LABEL_49:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }
}

void sub_29AE1F2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 121) < 0)
  {
    operator delete(*(v39 - 144));
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdStBasisCurves::HdStBasisCurves(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdBasisCurves::HdBasisCurves(this, a2);
  *v2 = &unk_2A2095930;
  *(v2 + 232) = 0;
  result = 0.0;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) &= 0xF8u;
  return result;
}

{
  v2 = pxrInternal__aapl__pxrReserved__::HdBasisCurves::HdBasisCurves(this, a2);
  *v2 = &unk_2A2095930;
  *(v2 + 232) = 0;
  result = 0.0;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) &= 0xF8u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::~HdStBasisCurves(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this)
{
  v2 = *(this + 60);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurves::~HdBasisCurves(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStBasisCurves::~HdStBasisCurves(this);

  free(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::Sync(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5)
{
  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateVisibility(this, a2, a4);
  v11 = *a4;
  v12 = *a4 & 0x80;
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::HdStSetMaterialId(a2, a3, this, v10);
    v11 = *a4;
  }

  v13 = v11 & 0x800010 | v12;
  v14 = *(this + 504);
  pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateRepr(this, a2, a3, a5, a4);
  if (v13 || !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 4) && ((*(this + 504) ^ v14) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateMaterialTagsForAllReprs(this, a2, a3);
  }

  if ((v11 & 0x800190) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateShadersForAllReprs(this, a2, a3, (v11 & 0x800080) != 0, 1);
  }

  *a4 &= 0xFF800000;
}

uint64_t ***pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateRepr(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdInstancer **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  sub_29A0ECEEC(&v20, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateRepr(HdSceneDelegate *, HdRenderParam *, const TfToken &, HdDirtyBits *)");
  result = pxrInternal__aapl__pxrReserved__::HdRprim::_GetRepr(this, a4);
  v11 = result;
  if (*result)
  {
    *a5 &= *(this + 124) | 0xFFFFFF;
    if (sub_29ABCF8C0(26))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
      v15 = *a4 & 0xFFFFFFFFFFFFFFF8;
      if (v15)
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

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdStBasisCurves::_UpdateRepr for %s : Repr = %s\n", v13, v14, Text, v16);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::DumpDirtyBits(*a5);
    }

    result = pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(&v18, a4);
    v17 = *a5;
    if (v18 && (v17 & 0xFFFFFFFD) != 0)
    {
      result = pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItem(this, a2, a3, ***v11, a5, &v18);
      v17 = *a5;
    }

    *a5 = v17 & 0xFF7FFFFF;
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (v20)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v21, v20);
  }

  return result;
}

void sub_29AE1F714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateMaterialTagsForAllReprs(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3)
{
  if (sub_29ABCF8C0(26))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(%s) - Updating material tags for draw items of all reprs.\n", v7, v8, Text);
  }

  v9 = *(this + 55);
  for (i = *(this + 56); v9 != i; v9 = (v9 + 24))
  {
    pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(&v13, v9);
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(a2, a3, **v11, (this + 16), (*(this + 504) & 1), (*(this + 504) >> 1) & 1);
    }

    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AE1F854(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29B294B14((v2 + 8));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateShadersForAllReprs(pxrInternal__aapl__pxrReserved__::HdBasisCurves **this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, int a4, int a5)
{
  if (sub_29ABCF8C0(26))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 47));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(%s) - Updating geometric and material shaders for draw items of all reprs.\n", v9, v10, Text);
  }

  if (a4)
  {
    pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(this, a2);
  }

  (*(*a2 + 112))(a2, this + 47);
  v13 = this[55];
  v12 = this[56];
  v27 = this;
  if (v13 != v12)
  {
    v14 = v11;
    v26 = a2;
    v15 = 0;
    v16 = v11 & 1;
    do
    {
      pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(&v30, v13);
      v18 = *(v13 + 1);
      v19 = *(v13 + 2);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v30)
      {
        v20 = *v18;
        v21 = *v20;
        v22 = *(*v20 + 72);
        *(*v20 + 72) = v16;
        v15 |= v14 ^ v22;
        if (a5)
        {
          pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItemGeometricShader(v27, v26, a3, v21, &v30);
        }
      }

      if (v19)
      {
        sub_29A014BEC(v19);
      }

      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = (v13 + 24);
    }

    while (v13 != v12);
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::HdStMarkDrawBatchesDirty(a3, v17);
      if (sub_29ABCF8C0(26))
      {
        v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v27 + 47));
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Marking all batches dirty to trigger deep validation because the materialIsFinal was updated.\n", v24, v25, v23);
      }
    }
  }
}

void sub_29AE1FA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::Finalize(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(a2, a2);
  v4 = *(this + 55);
  for (i = *(this + 56); v4 != i; v4 = (v4 + 24))
  {
    pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(&v8, v4);
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseMaterialTagCount(a2, (**v6 + 32));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }

    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseRenderTagCount(a2, (this + 432));
}

void sub_29AE1FB7C(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29B294B14((v2 + 8));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItem(_BYTE *a1, pxrInternal__aapl__pxrReserved__::HdInstancer **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5, _DWORD *a6)
{
  sub_29A0ECEEC(&v31, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItem(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)");
  v13 = *a5;
  if ((v13 & 0x800000) != 0 || pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(v13, (a1 + 376), v12))
  {
    pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(a1, a2);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(*a5, (a1 + 376), v14))
  {
    a1[504] &= ~1u;
  }

  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateInstancer(a1, a2, a5);
  pxrInternal__aapl__pxrReserved__::HdStUpdateInstancerData(a2[1], a3, a1, a4, (a1 + 32), *a5);
  v17 = a1[504];
  if (v17)
  {
    IsInstancePrimvarExistentAndValid = 1;
  }

  else
  {
    v19 = a2[1];
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v20)
    {
      v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    IsInstancePrimvarExistentAndValid = pxrInternal__aapl__pxrReserved__::HdStIsInstancePrimvarExistentAndValid(v19, a1, (v20 + 160), v16);
    v17 = a1[504];
  }

  a1[504] = v17 & 0xFE | IsInstancePrimvarExistentAndValid;
  if (pxrInternal__aapl__pxrReserved__::HdStShouldPopulateConstantPrimvars(a5, (a1 + 376), v15))
  {
    v29 = 0;
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a4, a2, 0, &v29, 0, 0, 0, v27);
    if (v30)
    {
      sub_29A014BEC(v30);
    }

    pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(a1, (a1 + 32), a2, a3, a4, a5, v27, 0);
    v22 = a1[504];
    if (v22)
    {
      IsPrimvarExistentAndValid = 1;
    }

    else
    {
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v24)
      {
        v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      IsPrimvarExistentAndValid = pxrInternal__aapl__pxrReserved__::HdStIsPrimvarExistentAndValid(a1, a2, v27, v24 + 20);
      v22 = a1[504];
    }

    a1[504] = v22 & 0xFE | IsPrimvarExistentAndValid;
    v29 = v27;
    sub_29ABEE9FC(&v29);
  }

  v25 = *a5;
  if ((v25 & 0x7000110) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(a1, a2, a3, a4, a5, a6);
    v25 = *a5;
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(v25, (a1 + 376), v21))
  {
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(a1, a2, a3, a4, a5);
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVaryingPrimvars(a1, a2, a3, a4, a5);
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateElementPrimvars(a1, a2, a3, a4, a5);
  }

  *a5 &= 0xFF800000;
  result = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 12));
  if (!*result)
  {
    v27[0] = "hdSt/basisCurves.cpp";
    v27[1] = "_UpdateDrawItem";
    v27[2] = 238;
    v27[3] = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItem(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)";
    v28 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v27, "drawItem->GetConstantPrimvarRange()", 0);
  }

  if (v31)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v32, v31);
  }

  return result;
}

void sub_29AE1FEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, unsigned int *a5, _DWORD *a6)
{
  sub_29A0ECEEC(&v72, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v57, a2[1]);
  v70 = v57;
  v71 = v58;
  if (v58)
  {
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v58)
    {
      sub_29A014BEC(v58);
    }
  }

  v13 = a2[1];
  v14 = *a5;
  if ((v14 & 0x10) != 0)
  {
    v15 = (*(*a2 + 14))(a2, a1 + 376);
    *(a1 + 500) = v15;
    *(a1 + 504) = (v15 >> 54) & 4 | (v15 >> 47) & 2 | *(a1 + 504) & 0xF9;
    v14 = *a5;
  }

  IsTopologyDirty = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTopologyDirty(v14, (a1 + 376), v12);
  if ((IsTopologyDirty & 1) != 0 || pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDisplayStyleDirty(*a5, (a1 + 376), v16))
  {
    (*(*a2 + 6))(&v57, a2, a1 + 376);
    if (IsTopologyDirty)
    {
      v54 = v66;
      v55 = v67;
      v18 = v69;
      v56 = v68;
      if (v68)
      {
        v19 = (v68 - 16);
        if (*(&v55 + 1))
        {
          v19 = *(&v55 + 1);
        }

        atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
      }

      v20 = v61;
      v51 = v63;
      v52 = v64;
      v53 = v65;
      if (v65)
      {
        v21 = (v65 - 16);
        if (*(&v52 + 1))
        {
          v21 = *(&v52 + 1);
        }

        atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::HdStProcessTopologyVisibility(&v54, v20, &v51, v18, (a1 + 32), a4, a3, v13 + 440, &v70);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v22 = (*(v57 + 2))(&v57);
    *(a1 + 488) = v22;
    LOBYTE(v38) = *(a1 + 500) > 0;
    v23 = pxrInternal__aapl__pxrReserved__::ArchHash64(&v38, 1, v22);
    *(a1 + 488) = v23;
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBasisCurvesTopology(v70, v23, &v45);
    if (v50 == 1)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology::New(&v57, &v40);
      sub_29AE22678(&v45, &v40);
      if (v41)
      {
        sub_29A014BEC(v41);
      }
    }

    v24 = v46;
    v25 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = *(a1 + 480);
    *(a1 + 472) = v24;
    *(a1 + 480) = v25;
    if (v26)
    {
      sub_29A014BEC(v26);
      v24 = *(a1 + 472);
    }

    if (!v24)
    {
      v40 = "hdSt/basisCurves.cpp";
      v41 = "_PopulateTopology";
      v42 = 667;
      v43 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)";
      v44 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "_topology", 0);
    }

    if (sub_29ABCF8C0(27) && !pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::operator==(&v57, *(a1 + 472)))
    {
      v40 = "hdSt/basisCurves.cpp";
      v41 = "_PopulateTopology";
      v42 = 671;
      v43 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)";
      v44 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "srcTopology == *_topology", 0);
    }

    if (v49 == 1)
    {
      std::mutex::unlock(v48);
    }

    if (v47)
    {
      sub_29A014BEC(v47);
    }

    pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(&v57);
  }

  v39 = 0;
  v27 = *(a4 + 8);
  v28 = *a5;
  if (v27 == 9)
  {
    if ((v28 & 0x4000000) == 0)
    {
      goto LABEL_68;
    }

    *a5 = v28 & 0xFBFFFFFF;
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v31)
    {
      v31 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v30 = (v31 + 480);
  }

  else if (v27 == 8)
  {
    if ((v28 & 0x2000000) == 0)
    {
      goto LABEL_68;
    }

    *a5 = v28 & 0xFDFFFFFF;
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v29)
    {
      v29 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v30 = (v29 + 304);
  }

  else
  {
    if ((v28 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

    *a5 = v28 & 0xFEFFFFFF;
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v32)
    {
      v32 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v30 = (v32 + 312);
  }

  sub_29A166F2C(&v39, v30);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBasisCurvesIndexRange(&v57, v70, &v39, *(a1 + 488));
  if (v62 == 1)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    if (*a6 == 3)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology::GetPointsIndexBuilderComputation(*(a1 + 472), &v38);
    }

    v33 = *(a1 + 472);
    v34 = pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsRefinement(a1, *(a1 + 500));
    pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology::GetIndexBuilderComputation(v33, !v34, &v38);
    sub_29A01729C(&v45, &v38);
    if (*(&v38 + 1))
    {
      sub_29A014BEC(*(&v38 + 1));
    }

    sub_29AE22748(&v45, &v40);
    if (*pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 8)))
    {
      v35 = 42;
    }

    else
    {
      v35 = 40;
    }

    v36 = v70;
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v37)
    {
      v37 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateNonUniformBufferArrayRange(v36, &v40, v35, &v38, v37 + 616);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v70, &v38, &v45);
    sub_29AE227C0(&v57, &v38);
    if (*(&v38 + 1))
    {
      sub_29A014BEC(*(&v38 + 1));
    }

    *&v38 = &v40;
    sub_29ABC6FA0(&v38);
    v40 = &v45;
    sub_29A0176E4(&v40);
  }

  pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v58, *(a4 + 8), (a1 + 32), a3);
  if (v61 == 1)
  {
    std::mutex::unlock(v60);
  }

  if (v59)
  {
    sub_29A014BEC(v59);
  }

  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_68:
  if (v71)
  {
    sub_29A014BEC(v71);
  }

  if (v72)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v73, v72);
  }
}

void sub_29AE204F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  sub_29ADCA62C(&a20);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(va);
  v39 = *(v37 - 120);
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  sub_29A0E9CEC(v37 - 112);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **a4, unsigned int *a5)
{
  v54 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v48, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&i, a2[1]);
  v10 = i;
  if (*(&i + 1))
  {
    atomic_fetch_add_explicit((*(&i + 1) + 8), 1uLL, memory_order_relaxed);
    if (*(&i + 1))
    {
      sub_29A014BEC(*(&i + 1));
    }
  }

  i = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(this, a4, a2, 3, &i, 0, 0, 0, &v46);
  if (*(&i + 1))
  {
    sub_29A014BEC(*(&i + 1));
  }

  (*(*a2 + 46))(v45, a2, this + 376, 3);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  memset(v41, 0, sizeof(v41));
  v39 = 0uLL;
  v40 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  sub_29A039314(&v42, (v47 - v46) >> 5);
  pxrInternal__aapl__pxrReserved__::HdSt_GetExtComputationPrimvarsComputations((this + 376), a2, v45, *a5, &v42, v41, &v39, &v36);
  v13 = v46;
  v12 = v47;
  if (v46 != v47)
  {
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a5, (this + 376), v13, v11))
      {
        if (*(this + 59))
        {
          (*(*a2 + 15))(&i, a2, this + 376, v13);
          if (*(&i + 1))
          {
            v14 = *(this + 60);
            v35[0] = *(this + 59);
            v35[1] = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_29AE22890((this + 376), v13, 3, &i, v35, &v42);
            if (v14)
            {
              sub_29A014BEC(v14);
            }

            v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v15)
            {
              v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            if ((*(v15 + 20) ^ *v13) <= 7)
            {
              *(this + 504) |= 1u;
            }
          }

          sub_29A186B14(&i);
        }

        else
        {
          v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v16)
          {
            v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v16 + 59) ^ *v13) <= 7)
          {
            *&i = "hdSt/basisCurves.cpp";
            *(&i + 1) = "_PopulateVertexPrimvars";
            v51 = 880;
            v52 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)";
            v53 = 0;
            Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((this + 376));
            if (*(Name + 23) >= 0)
            {
              v18 = Name;
            }

            else
            {
              v18 = *Name;
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&i, 1, "No topology set for BasisCurve %s", v18);
            break;
          }
        }
      }

      v13 += 4;
    }

    while (v13 != v12);
  }

  v19 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v42, &v36, v19, *a5) & 1) == 0)
  {
    v20 = *a5;
    v33 = 0uLL;
    v34 = 0;
    if ((v20 & 0x40) != 0)
    {
      i = 0uLL;
      v51 = 0;
      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v19, &v46, v45, &i, (this + 376), &v31);
      sub_29AC1F70C(&v33);
      v33 = v31;
      v34 = v32;
      v32 = 0;
      v31 = 0uLL;
      v29 = &v31;
      sub_29ABC6FA0(&v29);
      *&v31 = &i;
      sub_29A124AB0(&v31);
    }

    v31 = 0uLL;
    v32 = 0;
    sub_29AE22748(&v42, &v31);
    sub_29AE22748(v41, &v31);
    pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(&v36, &v31);
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v21)
    {
      v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v10, v21 + 520, v19, &v31, &v33, 16, &v29);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v29, *(a4 + 13), (this + 32), a3);
    if (v42 == v43 && v36 == v37 || (v22 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13)), ((*(**v22 + 16))(*v22) & 1) != 0) || (*&i = "hdSt/basisCurves.cpp", *(&i + 1) = "_PopulateVertexPrimvars", v51 = 934, v52 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)", v53 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&i, "drawItem->GetVertexPrimvarRange()->IsValid()", 0) & 1) != 0))
    {
      if (v42 != v43)
      {
        v23 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v10, v23, &v42);
      }

      v25 = v36;
      v24 = v37;
      while (v25 != v24)
      {
        v26 = *(v25 + 4);
        v27 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(v10, v27, v25, v26);
        v25 += 3;
      }

      if (v39 != *(&v39 + 1))
      {
        for (i = v39; i != *(&i + 1); sub_29AE23894(&i))
        {
          v28 = sub_29AE23864(&i);
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v10, v28);
        }
      }
    }

    if (v30)
    {
      sub_29A014BEC(v30);
    }

    *&i = &v31;
    sub_29ABC6FA0(&i);
    *&i = &v33;
    sub_29ABC6FA0(&i);
  }

  *&i = &v36;
  sub_29A03CE34(&i);
  *&i = &v39;
  sub_29A0176E4(&i);
  *&i = v41;
  sub_29A0176E4(&i);
  *&i = &v42;
  sub_29A0176E4(&i);
  *&i = v45;
  sub_29ABF15A8(&i);
  *&i = &v46;
  sub_29ABEE9FC(&i);
  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (v48)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v49, v48);
  }
}

void sub_29AE20C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void ********a13, std::__shared_weak_count *a14, void *******a15, uint64_t a16, uint64_t a17, uint64_t a18, void ******a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *****a24, uint64_t a25, uint64_t a26, void ****a27, uint64_t a28, uint64_t a29, uint64_t a30, void ***a31, uint64_t a32, uint64_t a33, void **a34)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  a13 = &a15;
  sub_29ABC6FA0(&a13);
  a15 = &a19;
  sub_29ABC6FA0(&a15);
  a19 = &a24;
  sub_29A03CE34(&a19);
  a24 = &a27;
  sub_29A0176E4(&a24);
  a27 = &a31;
  sub_29A0176E4(&a27);
  a31 = &a34;
  sub_29A0176E4(&a31);
  a34 = (v34 - 208);
  sub_29ABF15A8(&a34);
  *(v34 - 208) = v34 - 184;
  sub_29ABEE9FC((v34 - 208));
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29A0E9CEC(v34 - 160);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVaryingPrimvars(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, void (***a2)(void ***__return_ptr, pxrInternal__aapl__pxrReserved__::HdRenderIndex **, char *, uint64_t *), pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **a4, unsigned int *a5)
{
  v43 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v36, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v38, a2[1]);
  v10 = v39;
  v23 = v38;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v39)
    {
      sub_29A014BEC(v39);
    }
  }

  v38 = 0;
  v39 = 0;
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(this, a4, a2, 2, &v38, 0, 0, 0, &v34);
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  *(this + 232) = 257;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_29A039314(&v31, (v35 - v34) >> 5);
  v13 = v34;
  v12 = v35;
  if (v34 != v35)
  {
    do
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v14)
      {
        v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v14 + 84) ^ *v13) > 7)
      {
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v15)
        {
          v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*(v15 + 54) ^ *v13) <= 7)
        {
          *(this + 465) = 0;
        }
      }

      else
      {
        *(this + 464) = 0;
      }

      if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a5, (this + 376), v13, v11))
      {
        (*a2)[15](&v38, a2, this + 376, v13);
        if (v39)
        {
          v16 = *(this + 60);
          v30[0] = *(this + 59);
          v30[1] = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29AE22890((this + 376), v13, 2, &v38, v30, &v31);
          if (v16)
          {
            sub_29A014BEC(v16);
          }

          v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v17)
          {
            v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v17 + 20) ^ *v13) <= 7)
          {
            *(this + 504) |= 1u;
          }
        }

        sub_29A186B14(&v38);
      }

      v13 += 4;
    }

    while (v13 != v12);
  }

  v18 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 18));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v31, v18, *a5) & 1) == 0)
  {
    v19 = *a5;
    v28 = 0uLL;
    v29 = 0;
    if ((v19 & 0x40) != 0)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v18, &v34, &v38, (this + 376), &v26);
      sub_29AC1F70C(&v28);
      v28 = v26;
      v29 = v27;
      v27 = 0;
      v26 = 0uLL;
      v24 = &v26;
      sub_29ABC6FA0(&v24);
      *&v26 = &v38;
      sub_29A124AB0(&v26);
    }

    v26 = 0uLL;
    v27 = 0;
    sub_29AE22748(&v31, &v26);
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v20)
    {
      v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v23, v20 + 520, v18, &v26, &v28, 8, &v24);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v24, *(a4 + 18), (this + 32), a3);
    if (v31 != v32)
    {
      v21 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 18));
      if ((*(**v21 + 16))(*v21) & 1) != 0 || (v38 = "hdSt/basisCurves.cpp", v39 = "_PopulateVaryingPrimvars", v40 = 1046, v41 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)", v42 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v38, "drawItem->GetVaryingPrimvarRange()->IsValid()", 0)))
      {
        v22 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 18));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v23, v22, &v31);
      }
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }

    v38 = &v26;
    sub_29ABC6FA0(&v38);
    v38 = &v28;
    sub_29ABC6FA0(&v38);
  }

  v38 = &v31;
  sub_29A0176E4(&v38);
  v38 = &v34;
  sub_29ABEE9FC(&v38);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v36)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v37, v36);
  }
}