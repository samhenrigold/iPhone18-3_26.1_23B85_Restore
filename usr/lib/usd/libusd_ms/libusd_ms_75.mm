uint64_t pxrInternal__aapl__pxrReserved__::PcpGatherDependentNamespaceEdits@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, pxrInternal__aapl__pxrReserved__::PcpCache ***a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 48) = 0;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  *(a7 + 64) = 0u;
  v50 = a7 + 64;
  *(a7 + 56) = 1065353216;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 1065353216;
  *(a7 + 104) = 0u;
  *(a7 + 120) = 0u;
  *(a7 + 136) = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 1065353216;
  v71 = 0;
  v72 = 0;
  v11 = (a3[1] - *a3) >> 4;
  v73 = 0;
  sub_29A44FA30(&v71, v11);
  v12 = *a3;
  for (i = a3[1]; v12 != i; v12 += 16)
  {
    v14 = *(v12 + 8);
    v64 = *v12;
    v65 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 2, 1u, memory_order_relaxed);
    }

    v66 = 0;
    sub_29A44FB0C(&v71, &v64);
    v15 = v65;
    if (v65 && atomic_fetch_add_explicit(v65 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (*a4)
  {
    sub_29A41CF24(&v78, a4);
    pxrInternal__aapl__pxrReserved__::PcpLayerRelocatesEditBuilder::PcpLayerRelocatesEditBuilder(&v64, &v78, a5);
    sub_29B28F9E0(&v78);
    v58[0] = 0;
    v58[1] = 0;
    *&v59 = 0;
    if ((pxrInternal__aapl__pxrReserved__::PcpLayerRelocatesEditBuilder::Relocate(&v64, a1, a2, v58) & 1) == 0)
    {
      v78 = "pcp/dependentNamespaceEditUtils.cpp";
      v79 = "PcpGatherDependentNamespaceEdits";
      v80 = 1651;
      v81 = "PcpDependentNamespaceEdits pxrInternal__aapl__pxrReserved__::PcpGatherDependentNamespaceEdits(const SdfPath &, const SdfPath &, const SdfLayerHandleVector &, const PcpLayerStackRefPtr &, const SdfLayerHandle &, const std::vector<const PcpCache *> &)";
      v82 = 0;
      v47 = v58;
      if (SBYTE7(v59) < 0)
      {
        v47 = v58[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v78, 1, "Cannot get relocates edits because: %s", v47);
    }

    pxrInternal__aapl__pxrReserved__::PcpLayerRelocatesEditBuilder::GetEdits(&v78, &v64);
    v48 = v78;
    if (v78 != v79)
    {
      if (v71 != v72)
      {
        pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
      }

      v49 = v78[1];
      v61 = *v78;
      v62 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(v49 + 2, 1u, memory_order_relaxed);
      }

      v63 = 1;
      sub_29A44FB0C(&v71, &v61);
      sub_29B28CF5C(&v62);
      sub_29A4596AC(v50, v48, v48);
    }

    v77 = &v78;
    sub_29A459624(&v77);
    if (SBYTE7(v59) < 0)
    {
      operator delete(v58[0]);
    }

    sub_29A1FFFD0(v70, v70[1]);
    v78 = &v69;
    sub_29A459624(&v78);
    if (__p == 1)
    {
      sub_29A1EF938(&v64, v65);
    }
  }

  v16 = *a6;
  v51 = a6[1];
  if (*a6 != v51)
  {
    do
    {
      v52 = v16;
      v17 = *v16;
      if (sub_29A418240(5))
      {
        LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(v17);
        sub_29A4182A4(LayerStackIdentifier);
        v21 = &v64;
        if (v67 < 0)
        {
          v21 = v64;
        }

        sub_29A44FBC0("Computing dependent namespace edits for PcpCache %s", v19, v20, v21);
        if (v67 < 0)
        {
          operator delete(v64);
        }
      }

      v53 = sub_29A418240(5);
      if (v53)
      {
        sub_29B2A4188();
      }

      if (v71 != v72)
      {
        pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(v17, v71, &v60);
      }

      if (v53)
      {
        sub_29B2A418C();
      }

      v16 = v52 + 1;
    }

    while (v52 + 1 != v51);
  }

  v22 = v75;
  if (v75)
  {
    v24 = (v75 + 32);
    v23 = *(v75 + 32);
    v57 = (v75 + 16);
    v25 = *(v75 + 40);
    v26 = (v25 - v23) >> 4;
    if (v26 >= 2)
    {
      v27 = 126 - 2 * __clz(v26);
      v28 = v25 == v23 ? 0 : v27;
      sub_29A4574BC(v23, *(v75 + 40), v28, 1);
      v29 = v22[4];
      v25 = v22[5];
      v30 = v29 + 2;
      if (v25 != v29 + 2)
      {
        do
        {
          if (*v30 == *v29)
          {
            if (v30[1] != v29[1])
            {
              sub_29A1DA6E4(v57);
            }

            sub_29A458C20(&v64, (v30 + 2), v25, v30);
            v25 = v31;
            for (j = v22[5]; j != v25; sub_29A4542B0((v22 + 4), j))
            {
              j -= 4;
            }

            v22[5] = v25;
          }

          else
          {
            v29 += 2;
            v30 += 2;
          }
        }

        while (v30 != v25);
      }
    }

    v34 = v22[7];
    v33 = v22[8];
    if (v34 != v33)
    {
      do
      {
        sub_29A1E21F4(v58, v34);
        sub_29A1E2240(v58 + 1, v34 + 1);
        v58[1] = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v58[1]);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v58[1] + 1);
        v36 = v22[4];
        v35 = v22[5];
        if (v35 != v36)
        {
          v64 = &v36[16 * (((v35 - v36) >> 4) >> 1)];
          v65 = (v64 + 8);
          v78 = v58;
          v79 = &v58[1];
          sub_29A458A28(&v77, &v64, &v78);
        }

        v37 = v22[5];
        if (v35 == v37 || *v37 != *v34)
        {
          sub_29A457360(v22 + 4, v37, v58);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v58[1] + 1);
        sub_29A1DE3A4(&v58[1]);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v58 + 1);
        sub_29A1DE3A4(v58);
        v34 += 2;
      }

      while (v34 != v33);
      v25 = v22[5];
    }

    v38 = *v24;
    if (*v24 != v25)
    {
      do
      {
        v39 = *v24;
        v40 = v38;
        do
        {
          if (v40 == v39)
          {
            goto LABEL_52;
          }

          v40 = (v40 - 16);
        }

        while (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v38, v40));
        v39 = (v40 + 16);
LABEL_52:
        if (v39 == *v24 || (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v39 - 2) || pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v38 + 2)) && (pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v64, v38, (v39 - 16), (v39 - 8), 1), v41 = v64, v42 = *(v38 + 1), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v64 + 1), sub_29A1DE3A4(&v64), v41 != v42))
        {
          v38 = (v38 + 16);
          v44 = v22[5];
        }

        else
        {
          sub_29A458C20(&v64, v38 + 16, v22[5], v38);
          v44 = v43;
          for (k = v22[5]; k != v44; sub_29A4542B0((v22 + 4), k))
          {
            k = (k - 16);
          }

          v22[5] = v44;
        }
      }

      while (v38 != v44);
    }

    sub_29A458FE8(a7 + 24, v57, v57, (v22 + 4));
  }

  v64 = &v71;
  sub_29A163228(&v64);
  return sub_29A44FC2C(&v74);
}

void sub_29A44F734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  a26 = &a55;
  sub_29A163228(&a26);
  v57 = sub_29A44FC2C(v55 - 240);
  *(v55 - 240) = a22 + 128;
  sub_29A012C90(v57);
  *(v55 - 240) = a14;
  sub_29A012C90((v55 - 240));
  sub_29A4592D4(a13);
  sub_29A459338(a22 + 24);
  *(v55 - 240) = a22;
  sub_29A45939C((v55 - 240));
  _Unwind_Resume(a1);
}

char **sub_29A44FA30(char **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A012C48(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[24 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A459424(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A163564(&v12);
  }

  return result;
}

void sub_29A44FAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A163564(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A44FB0C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A4594F0(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A44FB60(uint64_t a1)
{
  sub_29A1FFFD0(a1 + 56, *(a1 + 64));
  v3 = (a1 + 32);
  sub_29A459624(&v3);
  if (*(a1 + 24) == 1)
  {
    sub_29A1EF938(a1, *(a1 + 8));
  }

  return a1;
}

void sub_29A44FBC0(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v4, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(a1, va, a3);
  sub_29A44FF3C(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A44FC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A44FC2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_29B2A3F18((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpGatherLayersToEditForSpecMove(uint64_t *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v7);
  v9 = *Layers;
  v10 = *(Layers + 8);
  if (*Layers != v10)
  {
    do
    {
      v11 = sub_29A3302A8(v9);
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v11, a2))
      {
        sub_29A321960(&v12, v9);
        sub_29A44FEF0(a5, &v12);
        sub_29B28CF5C(&v13);
      }

      ++v9;
    }

    while (v9 != v10);
  }

  if (*a5 != a5[1])
  {
    sub_29A1DA6E4(*a5);
  }
}

_OWORD *sub_29A44FEF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A459D60(a1, a2);
  }

  else
  {
    *v3 = *a2;
    result = v3 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_29A44FF3C(const std::string *a1)
{
  sub_29A00944C(__b, 2 * dword_2A1741F10, 32);
  pxrInternal__aapl__pxrReserved__::TfStringTrim(&v12, " \n\t\r", a1);
  sub_29A008E78(v10, "\n");
  std::operator+<char>();
  pxrInternal__aapl__pxrReserved__::TfStringReplace(&v12, v10, &__p, &v13);
  if ((v18 & 0x80u) == 0)
  {
    v2 = __b;
  }

  else
  {
    v2 = __b[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v3 = v18;
  }

  else
  {
    v3 = __b[1];
  }

  v4 = std::string::insert(&v13, 0, v2, v3);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v14, "\n");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16 = v6->__r_.__value_.__r.__words[2];
  v15 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(&v15);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_29A4500A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 41) < 0)
  {
    operator delete(*(v38 - 64));
  }

  if (*(v38 - 17) < 0)
  {
    operator delete(*(v38 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A450150(pxrInternal__aapl__pxrReserved__::PcpPrimIndex **a1)
{
  v182 = *MEMORY[0x29EDCA608];
  v1 = a1[3];
  v2 = a1[4];
  if (v1 == v2)
  {
    return v1 != v2;
  }

  v136 = a1[3];
  v140 = *(v2 - 40);
  v4 = v2;
  sub_29A1E21F4(&v141, v2 - 6);
  sub_29A1E2240(&v142, v4 - 5);
  sub_29A1E21F4(&v143, v4 - 4);
  sub_29A1E2240(&v144, v4 - 3);
  v135 = v4;
  v145 = *(v4 - 4);
  v5 = (a1[4] - 40);
  sub_29A453A30(v5);
  a1[4] = v5;
  if (sub_29A418240(5))
  {
    sub_29A452FB4(&v140);
  }

  v137 = sub_29A418240(5);
  if (v137)
  {
    sub_29B2A4188();
  }

  sub_29A453A84((a1 + 6), &v140, &v140);
  if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(&v140) & 1) == 0)
  {
    if (sub_29A418240(5))
    {
      ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v140);
      v8 = &v178;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A204E198, ArcType, &v178);
      if (SBYTE7(v179) < 0)
      {
        v8 = v178;
      }

      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v151, &v140);
      sub_29A453CD0(v151);
      if (v172 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      sub_29A44FBC0("Skipping spec edits for %s node %s which cannot contribute specs", v9, v10, v8, v11);
      if (SHIBYTE(v172) < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A424AA8(v151);
    }

    goto LABEL_71;
  }

  v6 = v145 == 1 && !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v143);
  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v140);
  HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(Path, &v141);
  v138 = &v141;
  if (HasPrefix)
  {
    HasPrefix = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v140);
    v138 = HasPrefix;
  }

  if ((v145 & 0x100) != 0)
  {
    goto LABEL_21;
  }

  v176[0] = 0;
  v176[1] = -1;
  if (*pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v140) == *v138)
  {
    HasPrefix = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetChildrenRange(&v178, &v140);
    *v151 = v178;
    v16 = *(&v179 + 1);
    v15 = v179;
    v152 = v179;
    v17 = v180;
    v19 = *(&v178 + 1);
    v18 = v178;
    while (1)
    {
      if (v19 == v17 && v18 == v16 && v15 == *(&v17 + 1))
      {
        goto LABEL_21;
      }

      v165 = v18;
      v166 = v15;
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(&v165) && !sub_29A454078(a1 + 6, &v165))
      {
        pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeSubtreeRange(__p, *a1, &v165);
        v20 = v6;
        v22 = __p[0];
        v21 = __p[1];
        v23 = v172;
        if (__p[0] != v172 || __p[1] != v173)
        {
          v24 = v173 - 1;
          while (1)
          {
            v25 = v21;
            *&v160 = v22;
            *(&v160 + 1) = v21;
            if (!sub_29A454078(a1 + 6, &v160) && pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(&v160) && (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(&v160) & 1) != 0)
            {
              break;
            }

            v21 = v25 + 1;
            if (v22 == v23 && v24 == v25)
            {
              goto LABEL_38;
            }
          }

          *v176 = v160;
LABEL_172:
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v138);
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v165, &v140);
          v117 = __p;
          sub_29A453CD0(&v165);
          if (v172 < 0)
          {
            v117 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v160, v176);
          sub_29A453CD0(&v160);
          if (SHIBYTE(v152) >= 0)
          {
            v120 = v151;
          }

          else
          {
            v120 = v151[0];
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot edit specs for <%s> on node %s: found conflicting specs at node %s that will not be edited.", v118, v119, Text, v117, v120);
          if (SHIBYTE(v152) < 0)
          {
            operator delete(v151[0]);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v160 + 3);
          sub_29A1DE3A4(&v160 + 2);
          sub_29A41B088(&v160);
        }

LABEL_38:
        v6 = v20;
      }

      HasPrefix = pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator::increment(v151);
      v18 = v151[0];
      v19 = v151[1];
      v15 = v152;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v178, v138);
  v86 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v140);
  v87 = v178;
  v88 = *v86;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v178 + 1);
  sub_29A1DE3A4(&v178);
  if (v87 == v88)
  {
    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v138);
    if (*NameToken || (*&v178 = "pcp/dependentNamespaceEditUtils.cpp", *(&v178 + 1) = "_HasConflictingChildSpecsInUneditedNodes", *&v179 = 850, *(&v179 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_PrimIndexDependentNodeEditProcessor::_HasConflictingChildSpecsInUneditedNodes(const PcpNodeRef &, const TfToken &, PcpNodeRef *)", LOBYTE(v180) = 0, HasPrefix = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v178, "!childName.IsEmpty()", 0), (HasPrefix & 1) != 0))
    {
      HasPrefix = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetChildrenRange(&v178, &v140);
      *v151 = v178;
      v91 = *(&v179 + 1);
      v90 = v179;
      v152 = v179;
      v92 = v180;
      v94 = *(&v178 + 1);
      v93 = v178;
      while (v94 != v92 || v93 != v91 || v90 != *(&v92 + 1))
      {
        v165 = v93;
        v166 = v90;
        if (!sub_29A454078(a1 + 6, &v165))
        {
          pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeSubtreeRange(__p, *a1, &v165);
          v96 = __p[0];
          v95 = __p[1];
          v97 = v172;
          if (__p[0] != v172 || __p[1] != v173)
          {
            v99 = v173 - 1;
            do
            {
              v100 = v95;
              *&v160 = v96;
              *(&v160 + 1) = v95;
              if (!sub_29A454078(a1 + 6, &v160) && pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(&v160))
              {
                if ((LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v160), v102 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v160), pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v158, v102, NameToken), pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(&v160)) && (pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(LayerStack, &v158) & 1) != 0 || (v103 = sub_29A4184C4(LayerStack), pxrInternal__aapl__pxrReserved__::PcpLayerStack::HasRelocates(v103)) && (v104 = sub_29A4184C4(LayerStack), IncrementalRelocatesTargetToSource = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIncrementalRelocatesTargetToSource(v104), sub_29A454170(IncrementalRelocatesTargetToSource, &v158)))
                {
                  v106 = 0;
                  *v176 = v160;
                }

                else
                {
                  v106 = 1;
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v158 + 1);
                sub_29A1DE3A4(&v158);
                if (!v106)
                {
                  goto LABEL_172;
                }
              }

              v95 = v100 + 1;
            }

            while (v96 != v97 || v99 != v100);
          }
        }

        HasPrefix = pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator::increment(v151);
        v93 = v151[0];
        v94 = v151[1];
        v90 = v152;
      }
    }

LABEL_21:
    if (v6)
    {
      v14 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(HasPrefix);
      sub_29A1E21F4(v176, v14);
      sub_29A1E2240(v176 + 1, v14 + 1);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v176, v138, &v141, &v143, 1);
    }

    v26 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v140);
    pxrInternal__aapl__pxrReserved__::PcpGatherLayersToEditForSpecMove(v26, v138, __p);
    v27 = __p[0];
    if (__p[0] != __p[1])
    {
      if (!sub_29A418240(5))
      {
        pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v138);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v176);
      sub_29A1DA6E4(v27);
    }

    v28 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v140);
    v29 = sub_29A4184C4(v28);
    Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v29);
    v32 = *Layers;
    v31 = *(Layers + 8);
    if (*Layers != v31)
    {
      do
      {
        v33 = sub_29A3302A8(v32);
        pxrInternal__aapl__pxrReserved__::SdfLayer::GetDefaultPrimAsPath(v33, &v178);
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(&v178, v138))
        {
          if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v176))
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v151, &v178, v138, v176, 1);
            if (pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath(v151))
            {
              v34 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v151);
              v158 = v34;
              if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v158 &= 0xFFFFFFFFFFFFFFF8;
              }
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::SdfPath::GetAsToken(v151, &v158);
            }

            v40 = a1[1];
            v41 = sub_29A321960(&v160, v32);
            v42 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v41);
            sub_29A1E21F4(&v161, v42);
            sub_29A1E2240(&v162, v42 + 1);
            v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v43)
            {
              v43 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            v44 = *(v43 + 12);
            v163 = v44;
            if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v163 &= 0xFFFFFFFFFFFFFFF8;
            }

            sub_29A454034(&v158, v164);
            sub_29A453F90(v40, &v160);
            sub_29A186B14(v164);
            if ((v163 & 7) != 0)
            {
              atomic_fetch_add_explicit((v163 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v162);
            sub_29B2A4190(&v161, &v160 + 1, &v160, &v158);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v151 + 1);
            sub_29A1DE3A4(v151);
          }

          else
          {
            v35 = a1[1];
            v36 = sub_29A321960(&v165, v32);
            v37 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v36);
            sub_29A1E21F4(&v167, v37);
            sub_29A1E2240(&v168, v37 + 1);
            v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v38)
            {
              v38 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            v39 = *(v38 + 12);
            v169 = v39;
            if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v169 &= 0xFFFFFFFFFFFFFFF8;
            }

            v170[1] = 0;
            sub_29A453F90(v35, &v165);
            sub_29A186B14(v170);
            if ((v169 & 7) != 0)
            {
              atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v168);
            sub_29B2A0A84(&v167, &v166);
          }
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v178 + 1);
        sub_29A1DE3A4(&v178);
        ++v32;
      }

      while (v32 != v31);
    }

    *&v178 = __p;
    sub_29A38A7B4(&v178);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v176 + 1);
    sub_29A1DE3A4(v176);
    goto LABEL_71;
  }

  *&v178 = "pcp/dependentNamespaceEditUtils.cpp";
  *(&v178 + 1) = "_HasUneditedUpstreamSpecConflicts";
  *&v179 = 764;
  *(&v179 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_PrimIndexDependentNodeEditProcessor::_HasUneditedUpstreamSpecConflicts(const PcpNodeRef &, const SdfPath &)";
  LOBYTE(v180) = 0;
  v107 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v138);
  v108 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v140);
  v109 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v108);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v178, 1, "Descendant site path <%s> is not a direct namespace child of node site path <%s>. Namespace descendant sites are expected to be at most a direct namespace child.", v107, v109);
LABEL_71:
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v140))
  {
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v140) == 6)
    {
      v158 = sub_29A4549DC(&v140);
      v159 = v45;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v158);
      v156 = v46;
      v157 = v47;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetChildrenReverseRange(v151, &v156);
      *v176 = *v151;
      v48 = v152;
      v49 = v153;
      v177 = v152;
      v50 = v154;
      v51 = v155[0];
      v52 = v151[1];
      v53 = v151[0];
      while (1)
      {
        if (v52 == v50 && v53 == v49 && v48 == v51)
        {
          goto LABEL_183;
        }

        *&v150 = v53;
        *(&v150 + 1) = v48;
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v150) != 6)
        {
          goto LABEL_183;
        }

        v148 = sub_29A4549DC(&v150);
        v149 = v54;
        OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(&v148);
        v57 = v56;
        ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v148);
        if ((v57 != v59 || OriginNode != ParentNode) && v57 == v159 && v158 == OriginNode)
        {
          break;
        }

        pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator::increment(v176);
        v52 = v176[1];
        v53 = v176[0];
        v48 = v177;
      }

      v110 = sub_29A454B10(OriginNode, v57);
      v147[0] = v110;
      v147[1] = v111;
      if (v111 != v149 || v148 != v110)
      {
        v112 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(&v148, v147);
        v113 = !v112;
        if (v112)
        {
          v114 = &v148;
        }

        else
        {
          v114 = v147;
        }

        if (v113)
        {
          v115 = &v148;
        }

        else
        {
          v115 = v147;
        }

        v110 = sub_29A45512C(v114, v115);
      }

      v146[0] = v110;
      v146[1] = v111;
      sub_29A454D88(v147, v146, __p);
      goto LABEL_170;
    }

    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v140) != 1 || pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v140) != 1 && (__p[0] = "pcp/dependentNamespaceEditUtils.cpp", __p[1] = "_GetNextImpliedInherit", v172 = 1319, v173 = "_ImpliedNodeAndTransferFunction pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetNextImpliedInherit(const PcpNodeRef &)", LOBYTE(v174) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "originNode.GetArcType() == PcpArcTypeInherit", 0) & 1) == 0) || (v158 = sub_29A454B10(v140, *(&v140 + 1)), v159 = v60, !v158) || v60 == -1 || (v156 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v158), v157 = v61, !v156) || v61 == -1)
    {
LABEL_183:
      *&v178 = 0;
      *(&v178 + 1) = -1;
      v179 = 0u;
      v180 = 0u;
      memset(v181, 0, 24);
      sub_29A41AF24(&v179);
      goto LABEL_184;
    }

    v62 = *(&v140 + 1);
    v139 = v140;
    v64 = v158;
    v63 = v159;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetChildrenRange(v151, &v156);
      *v176 = *v151;
      v65 = v152;
      v66 = v153;
      v177 = v152;
      v67 = v154;
      v68 = v155[0];
      v69 = v151[1];
      v70 = v151[0];
      while (1)
      {
        v71 = v69 == v67 && v70 == v66;
        if (v71 && v65 == v68)
        {
          break;
        }

        if (v65 != v63 || v70 != v64)
        {
          v73 = *v70[2];
          v74 = v65;
          if (v65 != 0xFFFF)
          {
            do
            {
              v75 = v73 + 48 * v74;
              v76 = *(v75 + 34);
              if (v76 != 0xFFFF)
              {
                break;
              }

              v74 = *(v75 + 24);
              v76 = 0xFFFFLL;
            }

            while (v74 != 0xFFFF);
            __p[0] = v70;
            __p[1] = v65;
            v172 = v73;
            LOBYTE(v173) = 0;
            if (v65 != v76)
            {
              do
              {
                v77 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(__p);
                if (v77 != 6 && v77 != 1)
                {
                  goto LABEL_112;
                }

                v79 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(__p);
                if (v80 == v62 && v139 == v79)
                {
                  v150 = *__p;
                  if (!__p[0] || __p[1] == -1)
                  {
                    break;
                  }

                  if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(&v150) & 1) == 0)
                  {
                    v62 = *(&v150 + 1);
                    v139 = v150;
                    goto LABEL_130;
                  }

                  sub_29A454D88(&v158, &v156, __p);
LABEL_170:
                  v178 = v150;
                  sub_29A41BCAC(&v179, __p);
                  *(v181 + 8) = v175;
                  sub_29A41AF74(__p);
LABEL_184:
                  if (v178 && *(&v178 + 1) != -1)
                  {
                    if (!sub_29A418240(5))
                    {
                      if (sub_29A418240(5))
                      {
                        sub_29B2A4188();
                      }

                      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtOriginRootIntroduction(v151, &v140, v121);
                      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtOriginRootIntroduction(v176, &v178, v122);
                      if (sub_29A418240(5))
                      {
                        v125 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v151);
                        v126 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v176);
                        sub_29A44FBC0("Origin node path at class introduction: <%s>\nImplied node path at class introduction: <%s>", v127, v128, v125, v126);
                      }

                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v158);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v158 + 1);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v156);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v156 + 1);
                      if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v151, &v141))
                      {
                        if (sub_29A418240(5))
                        {
                          v129 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v141);
                          sub_29A44FBC0("Spec move at <%s> affects implied node's path at introduction", v130, v131, v129);
                        }

                        pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(&v179, &v141, __p);
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
                      }

                      if (sub_29A418240(5))
                      {
                        v132 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v141);
                        sub_29A44FBC0("Spec move at <%s> affects implied node's descendant", v133, v134, v132);
                      }

                      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(__p, &v141, v151, v176, 1);
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
                    }

                    sub_29A453254(&v140);
                  }

                  sub_29A41AF74(&v179);
                  *v151 = v140;
                  v152 = 0;
                  v153 = -1;
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v154);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v154 + 1);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v155);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v155 + 1);
                  __p[0] = v151;
                  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v151) == 6)
                  {
                    *&v178 = sub_29A4549DC(v151);
                    *(&v178 + 1) = v123;
                    sub_29A45553C(__p, &v178);
                  }

                  sub_29A45553C(__p, v151);
                }

                if ((v173 & 1) == 0)
                {
                  v81 = __p[1];
                  LODWORD(v82) = *(v172 + 48 * __p[1] + 28);
                  if (v82 != 0xFFFF)
                  {
                    goto LABEL_118;
                  }
                }

                else
                {
LABEL_112:
                  v81 = __p[1];
                }

                v82 = 0xFFFFLL;
                if (v81 != 0xFFFF)
                {
                  while (1)
                  {
                    v83 = v172 + 48 * v81;
                    LODWORD(v82) = *(v83 + 34);
                    if (v82 != 0xFFFF)
                    {
                      break;
                    }

                    v81 = *(v83 + 24);
                    __p[1] = v81;
                    v82 = 0xFFFFLL;
                    if (v81 == 0xFFFF)
                    {
                      goto LABEL_119;
                    }
                  }

LABEL_118:
                  v82 = v82;
                  __p[1] = v82;
                }

LABEL_119:
                LOBYTE(v173) = 0;
              }

              while (v82 != v76 || __p[0] != v70);
            }
          }
        }

        pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator::increment(v176);
        v69 = v176[1];
        v70 = v176[0];
        v65 = v177;
      }

LABEL_130:
      v64 = v156;
      v63 = v157;
      v156 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v156);
      v157 = v85;
      if (!v156 || v85 == -1)
      {
        goto LABEL_183;
      }
    }
  }

  if (v137)
  {
    sub_29B2A418C();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v144);
  sub_29A1DE3A4(&v143);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v142);
  sub_29A1DE3A4(&v141);
  v2 = v135;
  v1 = v136;
  return v1 != v2;
}

void sub_29A4528A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (*(v43 - 233) < 0)
  {
    operator delete(*(v43 - 256));
  }

  if (v42)
  {
    sub_29B2A418C();
  }

  sub_29A4539E4(&a42);
  if (a22)
  {
    sub_29B2A418C();
  }

  sub_29A453998(&a28);
  _Unwind_Resume(a1);
}

void sub_29A452FB4(_BYTE *a1)
{
  sub_29A00B6DC(&v7);
  v3 = *(v7 - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((&v7 + v3));
  std::ios_base::imbue((&v7 + v3), v4);
  std::locale::~locale(&v9);
  v5 = *(&v7 + v3 + 40);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v8, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v8);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
}

void sub_29A453230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

void sub_29A453254(void *a1)
{
  sub_29A00B6DC(&v7);
  v3 = *(v7 - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((&v7 + v3));
  std::ios_base::imbue((&v7 + v3), v4);
  std::locale::~locale(&v9);
  v5 = *(&v7 + v3 + 40);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v8, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v8);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
}

void sub_29A453450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A453474(void *a1, _BYTE *a2)
{
  if (sub_29A418240(5))
  {
    sub_29A452FB4(a2);
  }

  v4 = a1[3];
  v5 = a1[4];
  if (v4 == v5)
  {
    v12 = a1[5];
    if (v4 >= v12)
    {
      v23 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v4) >> 3);
      v24 = 2 * v23;
      if (2 * v23 <= 1)
      {
        v24 = 1;
      }

      if (v23 >= 0x333333333333333)
      {
        v25 = 0x666666666666666;
      }

      else
      {
        v25 = v24;
      }

      sub_29A457220(__p, v25, 0, (a1 + 3));
      sub_29A4571C4(*&__p[16], a2);
      *&__p[16] += 40;
      v26 = a1[3];
      v27 = a1[4];
      v28 = *&__p[8] + v26 - v27;
      sub_29A4572EC(v26, v27, v28);
      v29 = a1[3];
      a1[3] = v28;
      v30 = a1[5];
      v44 = *&__p[16];
      *(a1 + 2) = *&__p[16];
      *&__p[16] = v29;
      *&__p[24] = v30;
      *__p = v29;
      *&__p[8] = v29;
      result = sub_29A45729C(__p);
      v14 = v44;
      goto LABEL_36;
    }

LABEL_19:
    result = sub_29A4571C4(v5, a2);
    v14 = v5 + 40;
LABEL_36:
    a1[4] = v14;
    return result;
  }

  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3);
  do
  {
    v7 = &v4[40 * (v6 >> 1)];
    v8 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v7, a2);
    if (v8)
    {
      v6 += ~(v6 >> 1);
    }

    else
    {
      v6 >>= 1;
    }

    if (v8)
    {
      v4 = v7 + 40;
    }
  }

  while (v6);
  v5 = a1[4];
  v9 = a1[5];
  if (v5 < v9)
  {
    if (v4 != v5)
    {
      v10 = v5 - 40;
      v11 = a1[4];
      if (v5 >= 0x28)
      {
        v11 = a1[4];
        do
        {
          sub_29A4571C4(v11, v10);
          v10 += 40;
          v11 += 40;
        }

        while (v10 < v5);
      }

      a1[4] = v11;
      if (v5 != v4 + 40)
      {
        *(v5 - 40) = *(v5 - 80);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      *v4 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    goto LABEL_19;
  }

  v15 = a1[3];
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v15) >> 3) + 1;
  if (v16 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  v17 = &v4[-v15];
  v18 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v15) >> 3);
  v19 = 2 * v18;
  if (2 * v18 <= v16)
  {
    v19 = v16;
  }

  if (v18 >= 0x333333333333333)
  {
    v20 = 0x666666666666666;
  }

  else
  {
    v20 = v19;
  }

  sub_29A457220(v45, v20, 0xCCCCCCCCCCCCCCCDLL * (v17 >> 3), (a1 + 3));
  v21 = *&v45[16];
  if (*&v45[16] == *&v45[24])
  {
    if (*&v45[8] <= *v45)
    {
      if (*&v45[16] == *v45)
      {
        v31 = 1;
      }

      else
      {
        v31 = 0x999999999999999ALL * ((*&v45[16] - *v45) >> 3);
      }

      sub_29A457220(__p, v31, v31 >> 2, v46);
      v32 = *&v45[8];
      v33 = *&v45[8];
      v34 = *&__p[16];
      v35 = *&v45[16] - *&v45[8];
      if (*&v45[16] == *&v45[8])
      {
        v36 = *&__p[16];
      }

      else
      {
        v36 = *&__p[16] + v35;
        do
        {
          sub_29A4571C4(v34, v33);
          v34 += 40;
          v33 += 40;
          v35 -= 40;
        }

        while (v35);
        v32 = *&v45[8];
      }

      v37 = *__p;
      v38 = *&v45[24];
      *__p = *v45;
      *v45 = v37;
      *&__p[8] = v32;
      *&v45[16] = v36;
      *&v45[24] = *&__p[24];
      *&__p[24] = v38;
      sub_29A45729C(__p);
      v21 = *&v45[16];
    }

    else
    {
      v22 = (1 - 0x3333333333333333 * ((*&v45[8] - *v45) >> 3)) / -2;
      if (*&v45[8] != *&v45[16])
      {
        *(*&v45[8] + 40 * v22) = **&v45[8];
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      v21 = *&v45[8] - 40 * ((1 - 0x3333333333333333 * ((*&v45[8] - *v45) >> 3)) / 2);
      *&v45[8] += 40 * v22;
      *&v45[16] = v21;
    }
  }

  sub_29A4571C4(v21, a2);
  *&v45[16] += 40;
  sub_29A4572EC(v4, a1[4], *&v45[16]);
  v39 = a1[3];
  v40 = *&v45[8];
  *&v45[16] += a1[4] - v4;
  a1[4] = v4;
  v41 = v40 + v39 - v4;
  sub_29A4572EC(v39, v4, v41);
  v42 = a1[3];
  a1[3] = v41;
  v43 = a1[5];
  *(a1 + 2) = *&v45[16];
  *&v45[16] = v42;
  *&v45[24] = v43;
  *v45 = v42;
  *&v45[8] = v42;
  return sub_29A45729C(v45);
}

void sub_29A45396C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A453998(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 7);
  sub_29A1DE3A4(a1 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  return a1;
}

_DWORD *sub_29A4539E4(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 11);
  sub_29A1DE3A4(a1 + 10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9);
  sub_29A1DE3A4(a1 + 8);
  return a1;
}

_DWORD *sub_29A453A30(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 7);
  sub_29A1DE3A4(a1 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);

  return sub_29A1DE3A4(a1 + 4);
}

void *sub_29A453A84(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, _OWORD *a3)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(this));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (i[3] == *(this + 1) && i[2] == *this)
          {
            return i;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v7;
  *(i + 1) = *a3;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    *i = *v21;
LABEL_42:
    *v21 = i;
    goto LABEL_43;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v22 >= v8)
      {
        v22 %= v8;
      }
    }

    else
    {
      v22 &= v8 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return i;
}

uint64_t sub_29A453CD0(uint64_t *a1)
{
  sub_29A00B6DC(&v8);
  v3 = *(v8 - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((&v8 + v3));
  std::ios_base::imbue((&v8 + v3), v4);
  std::locale::~locale(&v14);
  v5 = *(&v10[3].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v13, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v13);
  }

  std::locale::~locale(&v7);
  pxrInternal__aapl__pxrReserved__::operator<<(&v8, a1);
  std::stringbuf::str();
  v8 = *MEMORY[0x29EDC9538];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v12);
}

void sub_29A453ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A453EF0(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A454304(a1, a2);
  }

  else
  {
    sub_29A454414(a1, *(a1 + 8), a2);
    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *sub_29A453F3C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A453F90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A454630(a1, a2);
  }

  else
  {
    sub_29A454760(a1, *(a1 + 8), a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A453FDC(uint64_t a1)
{
  sub_29A186B14(a1 + 32);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B2A4268(a1);
  return a1;
}

uint64_t **sub_29A454078(void *a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this)
{
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = bswap64(0x9E3779B97F4A7C55 * UniqueIdentifier);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = v6 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    do
    {
      v11 = result[1];
      if (v6 == v11)
      {
        if (result[3] == *(this + 1) && result[2] == *this)
        {
          return result;
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v11 >= *&v5)
          {
            v11 %= *&v5;
          }
        }

        else
        {
          v11 &= *&v5 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_29A454170(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return 0;
}

char **sub_29A4541D8(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A3F18(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_29A454228(void ***a1)
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
        sub_29A4542B0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A4542B0(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);
  sub_29A1DE3A4(a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29A454304(char **a1, _DWORD *a2)
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *(&v17 + 1) = &v8[16 * v7];
  sub_29A454414(a1, v16, a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29A454474(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A4545B4(&v15);
  return v14;
}

void sub_29A454400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A4545B4(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A454414(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0(a2 + 1, a3 + 1);
  sub_29A1DDD84(a2 + 2, a3 + 2);

  return sub_29A1DDDC0(a2 + 3, a3 + 3);
}

uint64_t sub_29A454474(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A454414(a1, a4, v7);
      v7 += 4;
      a4 = v12 + 4;
      v12 += 4;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A4542B0(a1, v5);
      v5 += 4;
    }
  }

  return sub_29A454528(v9);
}

uint64_t sub_29A454528(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A454560(a1);
  }

  return a1;
}

uint64_t *sub_29A454560(uint64_t *result)
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
      result = sub_29A4542B0(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A4545B4(void **a1)
{
  sub_29A4545E8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A4545E8(_DWORD *result)
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
      result = sub_29A4542B0(v4, (v1 - 16));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A454630(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[48 * v2];
  *(&v16 + 1) = &v7[48 * v6];
  sub_29A454760(a1, v15, a2);
  *&v16 = v15 + 48;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A4547CC(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A454960(&v14);
  return v13;
}

void sub_29A45474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A454960(va);
  _Unwind_Resume(a1);
}

void *sub_29A454760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_29A1DDD84((a2 + 16), (a3 + 16));
  sub_29A1DDDC0((a2 + 20), (a3 + 20));
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = 0;

  return sub_29A186A3C((a2 + 32), (a3 + 32));
}

uint64_t sub_29A4547CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A454760(a1, a4, v7);
      v7 += 48;
      a4 = v12 + 48;
      v12 += 48;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A454880(a1, v5);
      v5 += 48;
    }
  }

  return sub_29A4548D4(v9);
}

uint64_t sub_29A454880(uint64_t a1, uint64_t a2)
{
  sub_29A186B14(a2 + 32);
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));
  return sub_29B2A4268(a2);
}

uint64_t sub_29A4548D4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A45490C(a1);
  }

  return a1;
}

uint64_t *sub_29A45490C(uint64_t *result)
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
      v3 -= 48;
      result = sub_29A454880(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A454960(void **a1)
{
  sub_29A454994(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A454994(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 48;
      result = sub_29A454880(v4, v1 - 48);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A4549DC(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a1) != 6 && (sub_29B2A42DC(v15) & 1) == 0)
  {
    return 0;
  }

  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1);
  v14 = v2;
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&ParentNode))
  {
    OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a1);
    v5 = v4;
    ParentNode = OriginNode;
    v14 = v4;
    v6 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1);
    if (v5 != v7 || OriginNode != v6)
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v12, &ParentNode);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v9, a1);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&v12, &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
      sub_29A1DE3A4(&v10);
      sub_29A41B088(&v9);
    }
  }

  return *a1;
}

uint64_t sub_29A454B10(uint64_t a1, uint64_t a2)
{
  v32[0] = a1;
  v32[1] = a2;
  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v32);
  if (ArcType != 1 && ArcType != 6)
  {
    v27 = "pcp/dependentNamespaceEditUtils.cpp";
    v28 = "_GetImpliedClassTreeSourceParent";
    v29 = 1136;
    v30 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetImpliedClassTreeSourceParent(const PcpNodeRef)";
    v31 = 0;
    v13 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v27, "PcpIsClassBasedArc(originNode.GetArcType())", 0);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(v32);
  for (i = v4; !pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&ParentNode); i = v11)
  {
    v5 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&ParentNode);
    if (v5 != 6 && v5 != 1)
    {
      break;
    }

    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v32) == 1 && pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&ParentNode) == 6)
    {
      v8 = sub_29A4549DC(&ParentNode);
      if (v7 != i || ParentNode != v8)
      {
        v27 = "pcp/dependentNamespaceEditUtils.cpp";
        v28 = "_GetImpliedClassTreeSourceParent";
        v29 = 1171;
        v30 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetImpliedClassTreeSourceParent(const PcpNodeRef)";
        v31 = 0;
        pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v22, v32);
        v14 = &v23;
        sub_29A453CD0(&v22);
        if (v24 < 0)
        {
          v14 = v23;
        }

        pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v17, &ParentNode);
        sub_29A453CD0(&v17);
        if (v21 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v27, "Unable to fix specs for implied inherits for an inherit node %s nested under the specializes node %s. This is a known bug that we cannot correct find the implied inherit node to fix in this scenario.", v15, v14, p_p);
        if (v21 < 0)
        {
          operator delete(__p);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
        sub_29A1DE3A4(&v18);
        sub_29A41B088(&v17);
      }
    }

    DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(v32, v7);
    if (DepthBelowIntroduction < pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(&ParentNode, v10))
    {
      break;
    }

    ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&ParentNode);
  }

  return ParentNode;
}

void sub_29A454D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A424AA8(&a12);
}

uint64_t sub_29A454D88@<X0>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(a1, a2, v20);
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetIntroPath(&v21, a1, v6);
  sub_29A393914(&v24, v20, &v21);
  sub_29A455288(v27, &v24, 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v19, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::Create(v27, v19, v29);
  sub_29A1EF938(v27, v27[1]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v26);
  sub_29A1DE3A4(&v25);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
  sub_29A1DE3A4(&v24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
  sub_29A1DE3A4(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v20 + 1);
  sub_29A1DE3A4(v20);
  for (i = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1); ; i = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(v20))
  {
    v20[0] = i;
    v20[1] = v8;
    if (v8 == *(a2 + 1) && *a2 == i)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(v20, v8, &v18);
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetIntroPath(&v17, v20, v9);
    sub_29A393914(&v21, &v18, &v17);
    sub_29A455288(v19, &v21, 1);
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v16, 0.0, 1.0);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::Create(v19, v16, &v24);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::Compose(v27, &v24, v29);
    v10 = sub_29A41AF74(v29);
    sub_29A41BCAC(v10, v27);
    v30 = v28;
    sub_29A41AF74(v27);
    sub_29A41AF74(&v24);
    sub_29A1EF938(v19, v19[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
    sub_29A1DE3A4(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
    sub_29A1DE3A4(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
    sub_29A1DE3A4(&v18);
  }

  pxrInternal__aapl__pxrReserved__::PcpMapExpression::Constant(&v24, v29);
  pxrInternal__aapl__pxrReserved__::PcpMapExpression::AddRootIdentity(v27, &v24);
  v13 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v27, v11, v12);
  sub_29A41B000(a3, v13);
  *(a3 + 40) = *(v13 + 40);
  if (v27[0])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v27[0], v14);
  }

  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24, v14);
  }

  return sub_29A41AF74(v29);
}

void sub_29A455028(_Unwind_Exception *a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a21, a2);
  }

  sub_29A41AF74(v21 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_29A45512C(void *a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this)
{
  while (1)
  {
    v11[0] = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(this);
    v11[1] = v4;
    if (!v11[0] || v4 == -1)
    {
      v6 = "pcp/dependentNamespaceEditUtils.cpp";
      v7 = "operator()";
      v8 = 1222;
      v9 = "auto pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetClosestSharedAncestorNode(const PcpNodeRef &, const PcpNodeRef &)::(anonymous class)::operator()(const PcpNodeRef &, const PcpNodeRef &) const";
      v10 = 0;
      sub_29A453254(a1);
    }

    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v11, a1))
    {
      break;
    }

    this = v11;
  }

  return v11[0];
}

void sub_29A455254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ***sub_29A455288(uint64_t ***a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_29A455308(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29A455308(uint64_t ***a1, void *a2, unint64_t *a3, _DWORD *a4)
{
  v6 = sub_29A455394(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    sub_29A23F744(v7 + 7, a4);
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

void *sub_29A455394(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 28), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 28) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 28))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_29A45553C(uint64_t *a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this)
{
  v3 = *a1;
  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(this);
  *(v3 + 16) = ParentNode;
  *(v3 + 24) = v5;
  if (!ParentNode || v5 == -1 || pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType((v3 + 16)) != 6)
  {
LABEL_20:
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(this, v5, &v27);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType((v3 + 16)) == 6 || (sub_29B2A4328(v32) & 1) != 0)
  {
    *&v27 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode((v3 + 16));
    *(&v27 + 1) = v6;
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&v27))
    {
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
LABEL_19:
      *(v3 + 16) = v7;
      *(v3 + 24) = v8;
      goto LABEL_20;
    }

    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode((v3 + 16));
    v31[0] = v9;
    v31[1] = v10;
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetChildrenReverseRange(&v27, v31);
    v25 = v27;
    v11 = v28;
    v12 = v29;
    v26 = v28;
    v13 = *(&v29 + 1);
    v14 = v30;
    v15 = v27;
    if (v27 != v29 || v28 != v30)
    {
      do
      {
        v24[0] = v15;
        v24[1] = v11;
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v24) != 6)
        {
          break;
        }

        OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(v24);
        v23[0] = OriginNode;
        v23[1] = v17;
        if (v17 == *(v3 + 24) && *(v3 + 16) == OriginNode)
        {
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v22, v23);
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v19, (v3 + 16));
          pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&v22, &v19);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
          sub_29A1DE3A4(&v20);
          sub_29A41B088(&v19);
        }

        pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator::increment(&v25);
        v15 = v25;
        v11 = v26;
      }

      while (v25 != __PAIR128__(v13, v12) || v26 != v14);
    }
  }

  v7 = 0;
  v8 = -1;
  goto LABEL_19;
}

void sub_29A4557B4(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t *a3, char *a4, std::type_info *a5, uint64_t a6)
{
  v6 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v6);
  if (*Layers != Layers[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp();
  }
}

void sub_29A455B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (*(v21 - 105) < 0)
  {
    operator delete(*(v21 - 128));
  }

  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

void sub_29A455BAC()
{
  sub_29A00B6DC(&v6);
  v2 = *(v6 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v6 + v2));
  std::ios_base::imbue((&v6 + v2), v3);
  std::locale::~locale(&v8);
  v4 = *(&v6 + v2 + 40);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v7, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v5);
  pxrInternal__aapl__pxrReserved__::operator<<<pxrInternal__aapl__pxrReserved__::SdfReference>();
}

void sub_29A455DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A455DD4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204EA00;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A455E20(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204EA00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_DWORD *sub_29A455E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_29A1E21F4(&v14, (a2 + 24));
  sub_29A1E2240(&v15, (a2 + 28));
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v14) && pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(&v14, *(a1 + 8)))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(*(a1 + 16)))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v13, &v14, *(a1 + 8), *(a1 + 16), 1);
      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v8 = *(a2 + 16);
      }

      sub_29A1E21F4(&v9, (a2 + 24));
      sub_29A1E2240(&v10, (a2 + 28));
      v11 = *(a2 + 32);
      pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(v12, (a2 + 48));
      sub_29A2258F0(&v9, &v13);
      sub_29A225948(&v10, &v13 + 1);
      sub_29A456080(a3, __p);
      sub_29A184A10(v12, 0);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
      sub_29A1DE3A4(&v9);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13 + 1);
      sub_29A1DE3A4(&v13);
    }

    else
    {
      *a3 = 0;
      a3[56] = 0;
    }
  }

  else
  {
    sub_29A3484BC(a3, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  return sub_29A1DE3A4(&v14);
}

void sub_29A455FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_29A1DCEA8((v14 - 48));
  sub_29A1DCEA8((v14 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29A456034(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204EA60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_29A456080(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (a2 + 3));
  __dst[56] = 1;
  return __dst;
}

void sub_29A456104(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_29A456128()
{
  sub_29A00B6DC(&v6);
  v2 = *(v6 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v6 + v2));
  std::ios_base::imbue((&v6 + v2), v3);
  std::locale::~locale(&v8);
  v4 = *(&v6 + v2 + 40);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v7, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v5);
  pxrInternal__aapl__pxrReserved__::operator<<<pxrInternal__aapl__pxrReserved__::SdfPayload>();
}

void sub_29A456324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A456350(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204EA80;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A45639C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204EA80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_DWORD *sub_29A4563CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A1E21F4(&v13, (a2 + 24));
  sub_29A1E2240(&v14, (a2 + 28));
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v13) && pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(&v13, *(a1 + 8)))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(*(a1 + 16)))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v12, &v13, *(a1 + 8), *(a1 + 16), 1);
      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v8 = *(a2 + 16);
      }

      sub_29A1E21F4(&v9, (a2 + 24));
      sub_29A1E2240(&v10, (a2 + 28));
      v11 = *(a2 + 32);
      sub_29A2258F0(&v9, &v12);
      sub_29A225948(&v10, &v12 + 1);
      sub_29A348B54(a3, __p);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
      sub_29A1DE3A4(&v9);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      sub_29A1DE3A4(&v12);
    }

    else
    {
      *a3 = 0;
      *(a3 + 48) = 0;
    }
  }

  else
  {
    sub_29A348B54(a3, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
  return sub_29A1DE3A4(&v13);
}

void sub_29A45652C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8((v13 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29A456578(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204EAE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A4565C4()
{
  sub_29A00B6DC(&v6);
  v2 = *(v6 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v6 + v2));
  std::ios_base::imbue((&v6 + v2), v3);
  std::locale::~locale(&v8);
  v4 = *(&v6 + v2 + 40);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v7, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v5);
  pxrInternal__aapl__pxrReserved__::operator<<<pxrInternal__aapl__pxrReserved__::SdfPath>();
}

void sub_29A4567C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A4567EC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204EB00;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A456838(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204EB00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_DWORD *sub_29A456868@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A1E21F4(&v8, a2);
  sub_29A1E2240(&v9, a2 + 1);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v8) && pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(&v8, *(a1 + 8)))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(*(a1 + 16)))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v7, &v8, *(a1 + 8), *(a1 + 16), 1);
      sub_29A1E21F4(a3, &v7);
      sub_29A1E2240((a3 + 4), &v7 + 1);
      *(a3 + 8) = 1;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7 + 1);
      sub_29A1DE3A4(&v7);
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
    }
  }

  else
  {
    sub_29A1E21F4(a3, a2);
    sub_29A1E2240((a3 + 4), a2 + 1);
    *(a3 + 8) = 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  return sub_29A1DE3A4(&v8);
}

void sub_29A45696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A456990(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204EB60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A4569DC(uint64_t *a1)
{
  sub_29A00B6DC(&v8);
  v3 = *(v8 - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((&v8 + v3));
  std::ios_base::imbue((&v8 + v3), v4);
  std::locale::~locale(&v14);
  v5 = *(&v10[3].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v13, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v13);
  }

  std::locale::~locale(&v7);
  pxrInternal__aapl__pxrReserved__::operator<<(&v8, a1);
  std::stringbuf::str();
  v8 = *MEMORY[0x29EDC9538];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v12);
}

void sub_29A456BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

void sub_29A456C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A456FDC(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A456C98(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = 0;
  sub_29A321960(v8 + 2, a2);
  *(v8 + 2) = *a3;
  v8[6] = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a4 + 16) = 1;
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
}

void *sub_29A456DCC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (*v6)
      {
        do
        {
          v8 = v7[1];
          if (v8 == a2)
          {
            pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
          }

          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 1;
    if (v3 >= 3)
    {
      v11 = (v3 & (v3 - 1)) != 0;
    }

    v12 = v11 | (2 * v3);
    v13 = vcvtps_u32_f32(v9 / v10);
    if (v12 <= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    sub_29A019AA0(a1, v14);
  }

  return 0;
}

uint64_t *sub_29A456F28(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void sub_29A456FDC(char **a1, char *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A3F94(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A45703C@<X0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, void *a3@<X0>)
{
  v5 = a3 + 1;
  v6 = *a3;
  if (a3 + 1 == *a3)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = *v5;
    v9 = v5;
    if (*v5)
    {
      do
      {
        v10 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      do
      {
        v10 = v9[2];
        v11 = *v10 == v9;
        v9 = v10;
      }

      while (v11);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(this, (v10 + 28)))
    {
      break;
    }

    v12 = *v5;
    if (*v5)
    {
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = v5[2];
        v11 = *v13 == v5;
        v5 = v13;
      }

      while (v11);
    }

    v5 = v13;
    if (v13 == v6)
    {
      v5 = v6;
      break;
    }
  }

  if (v5 == *a3)
  {
LABEL_18:
    sub_29A1E21F4(a1, this);

    return sub_29A1E2240(a1 + 1, this + 1);
  }

  else
  {
    v14 = *v5;
    if (*v5)
    {
      v15 = *v5;
      do
      {
        v16 = v15;
        v15 = v15[1];
      }

      while (v15);
    }

    else
    {
      v18 = v5;
      do
      {
        v16 = v18[2];
        v11 = *v16 == v18;
        v18 = v16;
      }

      while (v11);
    }

    if (v14)
    {
      do
      {
        v19 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      do
      {
        v19 = v5[2];
        v11 = *v19 == v5;
        v5 = v19;
      }

      while (v11);
    }

    return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a1, this, (v16 + 28), (v19 + 36), 1);
  }
}

_DWORD *sub_29A4571C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29A1DDD84((a1 + 16), (a2 + 16));
  sub_29A1DDDC0((a1 + 20), (a2 + 20));
  sub_29A1DDD84((a1 + 24), (a2 + 24));
  result = sub_29A1DDDC0((a1 + 28), (a2 + 28));
  *(a1 + 32) = *(a2 + 32);
  return result;
}

void *sub_29A457220(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 >= 0x666666666666667)
    {
      sub_29A00C8B8();
    }

    v7 = operator new(40 * a2);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[40 * a3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = &v7[40 * a2];
  return a1;
}

uint64_t sub_29A45729C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_29A453A30((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A4572EC(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      result = sub_29A4571C4(a3, v6);
      v6 += 40;
      a3 += 40;
    }

    while (v6 != a2);
    while (v5 != a2)
    {
      result = sub_29A453A30(v5);
      v5 += 10;
    }
  }

  return result;
}

char *sub_29A457360(void *a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = (&v7[-*a1] >> 4) + 1;
    if (v9 >> 60)
    {
      sub_29A00C9A4();
    }

    v10 = &a2[-v8];
    v11 = v6 - v8;
    v12 = v11 >> 3;
    if (v11 >> 3 <= v9)
    {
      v12 = (&v7[-*a1] >> 4) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 4;
    v21 = a1;
    if (v13)
    {
      v15 = sub_29A017BD4(a1, v13);
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    v18 = &v15[16 * v14];
    v19 = v18;
    v20 = &v15[16 * v13];
    sub_29A458D48(&v17, a3);
    v4 = sub_29A458E94(a1, &v17, v4);
    sub_29A4545B4(&v17);
  }

  else
  {
    if (a2 != v7)
    {
      sub_29A458CA8(a1, a2, a1[1], (a2 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    sub_29A454414(a1, a1[1], a3);
    a1[1] = v7 + 16;
  }

  return v4;
}

void sub_29A4574A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A4545B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4574BC(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v11 = a2 - 16;
  v4 = result;
  v5 = &a2[-result] >> 4;
  v6 = v5 - 2;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        sub_29A45847C(result, result + 16, v11);
      case 4:
        sub_29A45858C(result, result + 16, result + 32, v11);
      case 5:
        sub_29A45865C(result, result + 16, result + 32, result + 48, v11);
    }
  }

  else
  {
    if (v5 < 2)
    {
      return result;
    }

    if (v5 == 2)
    {
      v16 = a2 - 16;
      v17 = a2 - 8;
      v14 = result;
      v15 = result + 8;
      sub_29A458A28(&v13, &v16, &v14);
    }
  }

  if (v5 <= 23)
  {
    if (a4)
    {
      if (result != a2 && (result + 16) != a2)
      {
        v16 = (result + 16);
        v17 = (result + 24);
        v14 = result;
        v15 = result + 8;
        sub_29A458A28(&v13, &v16, &v14);
      }
    }

    else if (result != a2 && (result + 16) != a2)
    {
      v16 = (result + 16);
      v17 = (result + 24);
      v14 = result;
      v15 = result + 8;
      sub_29A458A28(&v13, &v16, &v14);
    }
  }

  else
  {
    v12 = result;
    if (a3)
    {
      if (v5 >= 0x81)
      {
        sub_29A45847C(result, result + 16 * (v5 >> 1), v11);
      }

      sub_29A45847C(result + 16 * (v5 >> 1), result, v11);
    }

    if (result != a2)
    {
      v7 = v6 >> 1;
      for (i = v6 >> 1; ; --i)
      {
        v9 = i;
        if (v7 >= i)
        {
          break;
        }

        if (!v9)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(result);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v4 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v4 + 2);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v4 + 3);
          v16 = (v12 + 16);
          v17 = (v12 + 24);
          v14 = v12 + 32;
          v15 = v12 + 40;
          sub_29A458A28(&v13, &v16, &v14);
        }
      }

      v10 = result + 16 * ((2 * i) | 1);
      if (2 * i + 2 < v5)
      {
        v16 = (result + 16 * ((2 * i) | 1));
        v17 = (v10 + 8);
        v14 = v10 + 16;
        v15 = v10 + 24;
        sub_29A458A28(&v13, &v16, &v14);
      }

      v16 = (result + 16 * ((2 * i) | 1));
      v17 = (v10 + 8);
      v14 = result + 16 * i;
      v15 = v14 + 8;
      sub_29A458A28(&v13, &v16, &v14);
    }
  }

  return result;
}

void sub_29A458374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_29A453F3C(va);
  _Unwind_Resume(a1);
}

void sub_29A45847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a2 + 8;
  v3[0] = a1;
  v3[1] = a1 + 8;
  sub_29A458A28(&v5, v4, v3);
}

uint64_t sub_29A45875C(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_29A45847C(a1, a1 + 16, (a2 - 4));
      case 4:
        sub_29A45858C(a1, a1 + 16, a1 + 32, (a2 - 4));
      case 5:
        sub_29A45865C(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 4));
    }

LABEL_11:
    sub_29A45847C(a1, a1 + 16, a1 + 32);
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v6[0] = a2 - 4;
      v6[1] = a2 - 2;
      v5[0] = a1;
      v5[1] = a1 + 8;
      sub_29A458A28(&v4, v6, v5);
    }

    goto LABEL_11;
  }

  return 1;
}

void sub_29A458A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A453F3C(va);
  _Unwind_Resume(a1);
}

void sub_29A458AE4(int *a1, uint64_t a2)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v4 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v5 = a1[2];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1 + 2);
  v6 = a1[3];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A458C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

uint64_t sub_29A458CA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      sub_29A454414(a1, v8, v10);
      v10 += 4;
      v8 += 4;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A458F50(&v12, a2, v7, v6);
}

_DWORD *sub_29A458D48(void *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 3;
      }

      v9 = a1[4];
      v24 = v9;
      v10 = sub_29A017BD4(v9, v8);
      v11 = &v10[16 * (v8 >> 2)];
      v13 = &v10[16 * v12];
      v14 = *(a1 + 1);
      v15 = v14;
      v16 = v11;
      v17 = *(&v14 + 1) - v14;
      if (*(&v14 + 1) != v14)
      {
        v16 = &v11[v17];
        v18 = v11;
        do
        {
          sub_29A454414(v9, v18, v15);
          v18 += 16;
          v15 += 4;
          v17 -= 16;
        }

        while (v17);
        v14 = *(a1 + 1);
      }

      v21 = *a1;
      *a1 = v10;
      a1[1] = v11;
      v22 = v14;
      v19 = a1[3];
      a1[2] = v16;
      a1[3] = v13;
      v23 = v19;
      sub_29A4545B4(&v21);
      v4 = a1[2];
    }

    else
    {
      v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
      sub_29A458C20(&v21, v5, v4, v5 - 16 * v6);
      v4 = v7;
      a1[1] -= 16 * v6;
      a1[2] = v7;
    }
  }

  result = sub_29A454414(a1[4], v4, a2);
  a1[2] += 16;
  return result;
}

uint64_t sub_29A458E94(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  sub_29A454474(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A454474(a1, v7, a3, v9);
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

uint64_t sub_29A458F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

void sub_29A45925C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A459274(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A459274(char **a1, char *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A4098(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A4592D4(uint64_t a1)
{
  sub_29A459310(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A459310(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B2A4374(a2);
  }
}

uint64_t sub_29A459338(uint64_t a1)
{
  sub_29A459374(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A459374(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B2A43B0(a2);
  }
}

void sub_29A45939C(void ***a1)
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
        v4 -= 48;
        sub_29A454880(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A459424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(a4 + 16) = *(v4 + 16);
      v4 += 24;
      a4 += 24;
    }

    while (v4 != a3);
    v9 = a4;
    v7 = 1;
    if (a2 != a3)
    {
      sub_29B290040();
    }
  }

  return sub_29A4594B8(v6);
}

uint64_t sub_29A4594B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A163530(a1);
  }

  return a1;
}

uint64_t sub_29A4594F0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
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

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[24 * v6];
  *v8 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8[16] = *(a2 + 16);
  *&v17 = v8 + 24;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29A459424(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A163564(&v15);
  return v14;
}

void sub_29A459610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A163564(va);
  _Unwind_Resume(a1);
}

void sub_29A459624(void ***a1)
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
        v4 -= 40;
        sub_29B2A4110(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A45991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A456FDC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A459934(uint64_t a1)
{
  sub_29A459970(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A459970(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4599B4(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A4599B4(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

unsigned int *sub_29A459A08(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  sub_29A459AA0(a1, a2, a3, &__p);
  v4 = sub_29A459B50(a1, __p);
  if ((v5 & 1) == 0)
  {
    v6 = __p;
    __p = 0;
    if (v6)
    {
      if (v9 == 1)
      {
        sub_29A4599B4(v6 + 4);
      }

      operator delete(v6);
    }
  }

  return v4;
}

void sub_29A459A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A459D04(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A459AA0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = 0;
  result = sub_29A23E7D8(v8 + 4, a2, a3);
  *(a4 + 16) = 1;
  v10 = *(v8 + 6);
  v11 = *(v8 + 7);
  v12 = v10 + *(v8 + 5) + ((*(v8 + 5) + *(v8 + 4) + (*(v8 + 5) + *(v8 + 4)) * (*(v8 + 5) + *(v8 + 4))) >> 1);
  v13 = v11 + v10 + ((v12 + v12 * v12) >> 1);
  v8[1] = bswap64(0x9E3779B97F4A7C55 * (v11 + ((v13 + v13 * v13) >> 1)));
  return result;
}

unsigned int *sub_29A459B50(uint64_t *a1, unsigned int *a2)
{
  v2 = a2;
  v4 = a2 + 4;
  v5 = a2[6];
  v6 = a2[7];
  v7 = v5 + a2[5] + ((a2[5] + a2[4] + (a2[5] + a2[4]) * (a2[5] + a2[4])) >> 1);
  v8 = v6 + v5 + ((v7 + v7 * v7) >> 1);
  v9 = bswap64(0x9E3779B97F4A7C55 * (v6 + ((v8 + v8 * v8) >> 1)));
  *(v4 - 1) = v9;
  v10 = sub_29A459BE8(a1, v9, v4);
  if (v10)
  {
    return v10;
  }

  sub_29A456F28(a1, v2);
  return v2;
}

void *sub_29A459BE8(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3 && i[3] == a3[1])
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v10 = (*(a1 + 24) + 1);
  v11 = *(a1 + 32);
  if (!v3 || (v11 * v3) < v10)
  {
    v12 = 2 * v3;
    v13 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v14 = v13 | v12;
    v15 = vcvtps_u32_f32(v10 / v11);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
  }

  return 0;
}

void sub_29A459D04(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4599B4(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A459D60(char **a1, uint64_t a2)
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

  v16 = v8;
  v17 = &v8[16 * v2];
  *(&v18 + 1) = &v8[16 * v7];
  v9 = v17;
  *v17 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v18 = v9 + 16;
  v10 = a1[1];
  v11 = &v8[16 * v2 + &(*a1)[-v10]];
  sub_29A38A848(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A0ED41C(&v16);
  return v15;
}

void sub_29A459E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A459E94(_DWORD *a1)
{

  return sub_29A1DCEA8(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext::PcpDynamicFileFormatContext(uint64_t a1, _OWORD *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = *a2;
  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  return a1;
}

{
  *a1 = *a2;
  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext::_IsAllowedFieldForArguments(pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, BOOL *a3)
{
  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(this);
  v4 = sub_29A4184C4(LayerStack);
  Identifier = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v4);
  sub_29A1DA6E4(Identifier);
}

void pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext::ComposeValue(pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v4 = a3;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext::_IsAllowedFieldForArguments(this, a2, &v3);
}

void sub_29A45A21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A45A38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A45A520(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext::ComposeAttributeDefaultValue(pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v12 = a3;
  v5 = *(this + 6);
  if (v5)
  {
    sub_29A372EA4(v5, a2, a2);
  }

  v11 = &v12;
  sub_29A45A558(v13, this, 1);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v6)
  {
    v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v7 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  Path = &v15;
  if (!v7)
  {
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v13);
  }

  sub_29A45B810(v13, v13, Path, a2, (v6 + 88), &v11);
  v9 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v16);
  sub_29A1DE3A4(&v15);
  return v9;
}

void sub_29A45A4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A45A520(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Pcp_CreateDynamicFileFormatContext@<X0>(_OWORD *a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  sub_29A1E21F4((a7 + 16), a2);
  result = sub_29A1E2240((a7 + 20), a2 + 1);
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_29A45A520(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  return a1;
}

uint64_t sub_29A45A558(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 32);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 24) = a3;
  *(a1 + 25) = 0;
  *(a1 + 32) = *a2;
  sub_29A1E21F4((a1 + 48), (a2 + 16));
  sub_29A1E2240((a1 + 52), (a2 + 20));
  *(a1 + 56) = *(a2 + 24);
  return a1;
}

BOOL sub_29A45A5BC(void *a1, pxrInternal__aapl__pxrReserved__ *a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, pxrInternal__aapl__pxrReserved__ **a6)
{
  pxrInternal__aapl__pxrReserved__::Pcp_TranslatePathFromNodeToRootOrClosestNode(a2, a3, &v23);
  v17 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(v25) && (v10 = a1[2]) != 0 && ((v22 = *(v10 + 24), v11 = *(v10 + 40), pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v19, &v23), v14 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate((v11 + 40), v12, v13), pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v14, &v19, &v21), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20), sub_29A1DE3A4(&v19), (v15 = a1[2]) == 0) ? (*a1 = 0, a1[1] = -1) : (*a1 = *(v15 + 24), a1[2] = *v15), v16 = sub_29A45A5BC(a1, &v22, &v21, a4, a5, a6), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1), sub_29A1DE3A4(&v21), (v16 & 1) != 0) || sub_29A45A74C(a1, v25, &v23, a4, a5, a6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
  sub_29A1DE3A4(&v23);
  return v17;
}

void sub_29A45A710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A45AB94(va1);
  _Unwind_Resume(a1);
}

BOOL sub_29A45A74C(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, pxrInternal__aapl__pxrReserved__ **a6)
{
  v52 = *MEMORY[0x29EDCA608];
  if (*a4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v49, a3, a4);
  }

  else
  {
    sub_29A1E21F4(&v49, a3);
    sub_29A1E2240(&v49 + 1, a3 + 1);
  }

  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
  v13 = sub_29A4184C4(LayerStack);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v13);
  v15 = *Layers;
  v16 = *(Layers + 8);
  if (*Layers == v16)
  {
LABEL_15:
    v20 = *(a2 + 1);
    if (v20 == *(a1 + 40))
    {
      v21 = *a2;
      v22 = *a2 == *(a1 + 32);
    }

    else
    {
      v22 = 0;
      v21 = *a2;
    }

    v47 = v21;
    v48 = v20;
    v23 = **(v21 + 16);
    v24 = *(v23 + 48 * v20 + 28);
    v41 = v21;
    v42 = v24;
    v43 = v23;
    v44 = v21;
    v45 = 0xFFFFLL;
    v46 = v23;
    while (v42 != v45 || v41 != v44)
    {
      if (v22)
      {
        v25 = *(a1 + 56);
        v26 = sub_29A41E444(&v41);
        if (pxrInternal__aapl__pxrReserved__::PcpCompareSiblingPayloadNodeStrength((a1 + 32), v25, v26, v27) == -1)
        {
          goto LABEL_32;
        }
      }

      v28 = sub_29A45ABD4(&v41);
      MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v28);
      pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v40, a3);
      v32 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v30, v31);
      pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(&v50, v32, &v40);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
      sub_29A1DE3A4(&v40);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v50))
      {
        v33 = sub_29A45ABD4(&v41);
        pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(v33, v34, &v40);
        if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(&v40))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(v38, &v40);
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v39, &v50, v38, &v40, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
        sub_29A1DE3A4(&v40);
        v35 = sub_29A41E444(&v41);
        v36 = sub_29A45A74C(a1, v35, &v50, a4, a5, a6);
      }

      else
      {
        v36 = 6;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v50 + 1);
      sub_29A1DE3A4(&v50);
      if (v36 != 6)
      {
        if (v36)
        {
          goto LABEL_32;
        }
      }

      sub_29A41E490(&v41);
    }
  }

  else
  {
    while (1)
    {
      v51 = 0;
      v17 = sub_29A3302A8(v15);
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v17, &v49, a5, &v50))
      {
        if (sub_29A185258(&v50))
        {
          v18 = *a6;
          v19 = (v51 & 4) != 0 ? (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(&v50) : v50;
          pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive(v18, v19, 0);
        }

        else
        {
          v41 = "pcp/dynamicFileFormatContext.cpp";
          v42 = "operator()";
          v43 = 265;
          v44 = "auto pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext::ComposeValue(const TfToken &, VtValue *)::(anonymous class)::operator()(VtValue &&) const";
          LOBYTE(v45) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v41, 1, "Expected value to contain VtDictionary");
        }

        *(a1 + 25) = 1;
        if (*(a1 + 24))
        {
          break;
        }
      }

      sub_29A186B14(&v50);
      if (++v15 == v16)
      {
        goto LABEL_15;
      }
    }

    sub_29A186B14(&v50);
LABEL_32:
    v22 = 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v49 + 1);
  sub_29A1DE3A4(&v49);
  return v22;
}

_DWORD *sub_29A45AB94(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void *sub_29A45ABD4(void *result)
{
  if (result[1] == result[4] && *result == result[3])
  {
    sub_29B2A43EC();
  }

  return result;
}

BOOL sub_29A45AC20(void *a1, pxrInternal__aapl__pxrReserved__ *a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, void ***a6)
{
  pxrInternal__aapl__pxrReserved__::Pcp_TranslatePathFromNodeToRootOrClosestNode(a2, a3, &v23);
  v17 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(v25) && (v10 = a1[2]) != 0 && ((v22 = *(v10 + 24), v11 = *(v10 + 40), pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v19, &v23), v14 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate((v11 + 40), v12, v13), pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v14, &v19, &v21), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20), sub_29A1DE3A4(&v19), (v15 = a1[2]) == 0) ? (*a1 = 0, a1[1] = -1) : (*a1 = *(v15 + 24), a1[2] = *v15), v16 = sub_29A45AC20(a1, &v22, &v21, a4, a5, a6), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1), sub_29A1DE3A4(&v21), (v16 & 1) != 0) || sub_29A45ADB0(a1, v25, &v23, a4, a5, a6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
  sub_29A1DE3A4(&v23);
  return v17;
}

void sub_29A45AD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A45AB94(va1);
  _Unwind_Resume(a1);
}

BOOL sub_29A45ADB0(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, void ***a6)
{
  v49 = *MEMORY[0x29EDCA608];
  if (*a4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v40, a3, a4);
  }

  else
  {
    sub_29A1E21F4(&v40, a3);
    sub_29A1E2240(&v40 + 1, a3 + 1);
  }

  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
  v13 = sub_29A4184C4(LayerStack);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v13);
  v15 = *Layers;
  v16 = *(Layers + 8);
  if (*Layers == v16)
  {
LABEL_8:
    v18 = *(a2 + 1);
    if (v18 == *(a1 + 40))
    {
      v19 = *a2;
      v20 = *a2 == *(a1 + 32);
    }

    else
    {
      v20 = 0;
      v19 = *a2;
    }

    v47 = v19;
    v48 = v18;
    v21 = **(v19 + 16);
    v22 = *(v21 + 48 * v18 + 28);
    v41 = v19;
    v42 = v22;
    v43 = v21;
    v44 = v19;
    v45 = 0xFFFFLL;
    v46 = v21;
    while (v42 != v45 || v41 != v44)
    {
      if (v20)
      {
        v23 = *(a1 + 56);
        v24 = sub_29A41E444(&v41);
        if (pxrInternal__aapl__pxrReserved__::PcpCompareSiblingPayloadNodeStrength((a1 + 32), v23, v24, v25) == -1)
        {
          goto LABEL_25;
        }
      }

      v26 = sub_29A45ABD4(&v41);
      MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v26);
      pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v38, a3);
      v30 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v28, v29);
      pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(&v39, v30, &v38);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38 + 1);
      sub_29A1DE3A4(&v38);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v39))
      {
        v31 = sub_29A45ABD4(&v41);
        pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(v31, v32, &v38);
        if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(&v38))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(v36, &v38);
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v37, &v39, v36, &v38, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38 + 1);
        sub_29A1DE3A4(&v38);
        v33 = sub_29A41E444(&v41);
        v34 = sub_29A45ADB0(a1, v33, &v39, a4, a5, a6);
      }

      else
      {
        v34 = 6;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v39 + 1);
      sub_29A1DE3A4(&v39);
      if (v34 != 6)
      {
        if (v34)
        {
          goto LABEL_25;
        }
      }

      sub_29A41E490(&v41);
    }
  }

  else
  {
    while (1)
    {
      v42 = 0;
      v17 = sub_29A3302A8(v15);
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v17, &v40, a5, &v41))
      {
        sub_29A18606C(**a6, &v41);
        *(a1 + 25) = 1;
        if (*(a1 + 24))
        {
          break;
        }
      }

      sub_29A186B14(&v41);
      if (++v15 == v16)
      {
        goto LABEL_8;
      }
    }

    sub_29A186B14(&v41);
LABEL_25:
    v20 = 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
  sub_29A1DE3A4(&v40);
  return v20;
}

BOOL sub_29A45B180(void *a1, pxrInternal__aapl__pxrReserved__ *a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, uint64_t **a6)
{
  pxrInternal__aapl__pxrReserved__::Pcp_TranslatePathFromNodeToRootOrClosestNode(a2, a3, &v23);
  v17 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(v25) && (v10 = a1[2]) != 0 && ((v22 = *(v10 + 24), v11 = *(v10 + 40), pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v19, &v23), v14 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate((v11 + 40), v12, v13), pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v14, &v19, &v21), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20), sub_29A1DE3A4(&v19), (v15 = a1[2]) == 0) ? (*a1 = 0, a1[1] = -1) : (*a1 = *(v15 + 24), a1[2] = *v15), v16 = sub_29A45B180(a1, &v22, &v21, a4, a5, a6), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1), sub_29A1DE3A4(&v21), (v16 & 1) != 0) || sub_29A45B310(a1, v25, &v23, a4, a5, a6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
  sub_29A1DE3A4(&v23);
  return v17;
}

void sub_29A45B2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A45AB94(va1);
  _Unwind_Resume(a1);
}

BOOL sub_29A45B310(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, uint64_t **a6)
{
  v52 = *MEMORY[0x29EDCA608];
  if (*a4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v43, a3, a4);
  }

  else
  {
    sub_29A1E21F4(&v43, a3);
    sub_29A1E2240(&v43 + 1, a3 + 1);
  }

  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
  v13 = sub_29A4184C4(LayerStack);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v13);
  v15 = *Layers;
  v16 = *(Layers + 8);
  if (*Layers == v16)
  {
LABEL_11:
    v21 = *(a2 + 1);
    if (v21 == *(a1 + 40))
    {
      v22 = *a2;
      v23 = *a2 == *(a1 + 32);
    }

    else
    {
      v23 = 0;
      v22 = *a2;
    }

    v50 = v22;
    v51 = v21;
    v24 = **(v22 + 16);
    v25 = *(v24 + 48 * v21 + 28);
    v44 = v22;
    v45 = v25;
    v46 = v24;
    v47 = v22;
    v48 = 0xFFFFLL;
    v49 = v24;
    while (v45 != v48 || v44 != v47)
    {
      if (v23)
      {
        v26 = *(a1 + 56);
        v27 = sub_29A41E444(&v44);
        if (pxrInternal__aapl__pxrReserved__::PcpCompareSiblingPayloadNodeStrength((a1 + 32), v26, v27, v28) == -1)
        {
          goto LABEL_28;
        }
      }

      v29 = sub_29A45ABD4(&v44);
      MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v29);
      pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v41, a3);
      v33 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v31, v32);
      pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(&v42, v33, &v41);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v41 + 1);
      sub_29A1DE3A4(&v41);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v42))
      {
        v34 = sub_29A45ABD4(&v44);
        pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(v34, v35, &v41);
        if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(&v41))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(v39, &v41);
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v40, &v42, v39, &v41, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v41 + 1);
        sub_29A1DE3A4(&v41);
        v36 = sub_29A41E444(&v44);
        v37 = sub_29A45B310(a1, v36, &v42, a4, a5, a6);
      }

      else
      {
        v37 = 6;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v42 + 1);
      sub_29A1DE3A4(&v42);
      if (v37 != 6)
      {
        if (v37)
        {
          goto LABEL_28;
        }
      }

      sub_29A41E490(&v44);
    }
  }

  else
  {
    while (1)
    {
      v45 = 0;
      v17 = sub_29A3302A8(v15);
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v17, &v43, a5, &v44))
      {
        v18 = **a6;
        v19 = *(v18 + 8);
        v20 = v19 >= *(v18 + 16) ? sub_29A45B704(**a6, &v44) : sub_29A186A3C(v19, &v44) + 2;
        *(v18 + 8) = v20;
        *(a1 + 25) = 1;
        if (*(a1 + 24))
        {
          break;
        }
      }

      sub_29A186B14(&v44);
      if (++v15 == v16)
      {
        goto LABEL_11;
      }
    }

    sub_29A186B14(&v44);
LABEL_28:
    v23 = 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v43 + 1);
  sub_29A1DE3A4(&v43);
  return v23;
}

uint64_t sub_29A45B704(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *(&v17 + 1) = &v8[16 * v7];
  sub_29A186A3C(v16, a2);
  *&v17 = v16 + 16;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29A1D1BB4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A1D1C24(&v15);
  return v14;
}

void sub_29A45B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A1D1C24(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A45B810(void *a1, pxrInternal__aapl__pxrReserved__ *a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, void ***a6)
{
  pxrInternal__aapl__pxrReserved__::Pcp_TranslatePathFromNodeToRootOrClosestNode(a2, a3, &v23);
  v17 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(v25) && (v10 = a1[2]) != 0 && ((v22 = *(v10 + 24), v11 = *(v10 + 40), pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v19, &v23), v14 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate((v11 + 40), v12, v13), pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v14, &v19, &v21), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20), sub_29A1DE3A4(&v19), (v15 = a1[2]) == 0) ? (*a1 = 0, a1[1] = -1) : (*a1 = *(v15 + 24), a1[2] = *v15), v16 = sub_29A45B810(a1, &v22, &v21, a4, a5, a6), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1), sub_29A1DE3A4(&v21), (v16 & 1) != 0) || sub_29A45B9A0(a1, v25, &v23, a4, a5, a6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
  sub_29A1DE3A4(&v23);
  return v17;
}

void sub_29A45B964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A45AB94(va1);
  _Unwind_Resume(a1);
}

BOOL sub_29A45B9A0(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, void ***a6)
{
  v49 = *MEMORY[0x29EDCA608];
  if (*a4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v40, a3, a4);
  }

  else
  {
    sub_29A1E21F4(&v40, a3);
    sub_29A1E2240(&v40 + 1, a3 + 1);
  }

  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
  v13 = sub_29A4184C4(LayerStack);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v13);
  v15 = *Layers;
  v16 = *(Layers + 8);
  if (*Layers == v16)
  {
LABEL_8:
    v18 = *(a2 + 1);
    if (v18 == *(a1 + 40))
    {
      v19 = *a2;
      v20 = *a2 == *(a1 + 32);
    }

    else
    {
      v20 = 0;
      v19 = *a2;
    }

    v47 = v19;
    v48 = v18;
    v21 = **(v19 + 16);
    v22 = *(v21 + 48 * v18 + 28);
    v41 = v19;
    v42 = v22;
    v43 = v21;
    v44 = v19;
    v45 = 0xFFFFLL;
    v46 = v21;
    while (v42 != v45 || v41 != v44)
    {
      if (v20)
      {
        v23 = *(a1 + 56);
        v24 = sub_29A41E444(&v41);
        if (pxrInternal__aapl__pxrReserved__::PcpCompareSiblingPayloadNodeStrength((a1 + 32), v23, v24, v25) == -1)
        {
          goto LABEL_25;
        }
      }

      v26 = sub_29A45ABD4(&v41);
      MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v26);
      pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v38, a3);
      v30 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v28, v29);
      pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(&v39, v30, &v38);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38 + 1);
      sub_29A1DE3A4(&v38);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v39))
      {
        v31 = sub_29A45ABD4(&v41);
        pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(v31, v32, &v38);
        if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(&v38))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(v36, &v38);
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v37, &v39, v36, &v38, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38 + 1);
        sub_29A1DE3A4(&v38);
        v33 = sub_29A41E444(&v41);
        v34 = sub_29A45B9A0(a1, v33, &v39, a4, a5, a6);
      }

      else
      {
        v34 = 6;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v39 + 1);
      sub_29A1DE3A4(&v39);
      if (v34 != 6)
      {
        if (v34)
        {
          goto LABEL_25;
        }
      }

      sub_29A41E490(&v41);
    }
  }

  else
  {
    while (1)
    {
      v42 = 0;
      v17 = sub_29A3302A8(v15);
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v17, &v40, a5, &v41))
      {
        sub_29A18606C(**a6, &v41);
        *(a1 + 25) = 1;
        if (*(a1 + 24))
        {
          break;
        }
      }

      sub_29A186B14(&v41);
      if (++v15 == v16)
      {
        goto LABEL_8;
      }
    }

    sub_29A186B14(&v41);
LABEL_25:
    v20 = 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
  sub_29A1DE3A4(&v40);
  return v20;
}

void ***pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::PcpDynamicFileFormatDependencyData(void ***this, uint64_t **a2)
{
  *this = 0;
  v3 = *a2;
  if (*a2)
  {
    v4 = operator new(0x48uLL);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    sub_29A45C478(v4, *v3, v3[1], 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3));
    sub_29A45C59C((v4 + 3), (v3 + 3));
    sub_29A45C59C((v4 + 6), (v3 + 6));
    v5 = *this;
    *this = v4;
    if (v5)
    {
      sub_29A41AE40(this, v5);
    }
  }

  return this;
}

void sub_29A45BE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_29A1602D4(v11 + 24, *(v11 + 32));
  a10 = v11;
  sub_29A41AE9C(&a10);
  operator delete(v11);
  v13 = *v10;
  *v10 = 0;
  if (v13)
  {
    sub_29A41AE40(v10, v13);
  }

  _Unwind_Resume(a1);
}

uint64_t **pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::AddDependencyContext(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v10 = *a1;
  if (!*a1)
  {
    v10 = operator new(0x48uLL);
    *v10 = 0u;
    v10[1] = 0u;
    v10[2] = 0u;
    *(v10 + 3) = v10 + 2;
    *(v10 + 8) = 0;
    *(v10 + 7) = 0;
    *(v10 + 6) = v10 + 56;
    *a1 = v10;
  }

  v11 = *(v10 + 1);
  if (v11 >= *(v10 + 2))
  {
    v12 = sub_29A45C5F4(v10, &v14, a3);
  }

  else
  {
    *v11 = a2;
    v12 = (v11 + 3);
    sub_29A186A3C(v11 + 1, a3);
  }

  *(v10 + 1) = v12;
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::_Data::_AddRelevantFieldNames(*a1, a4);
  return pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::_Data::_AddRelevantAttributeNames(*a1, a5);
}

uint64_t **pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::_Data::_AddRelevantFieldNames(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    return sub_29A45C3F0((a1 + 24), *a2, a2 + 1);
  }

  else
  {
    return sub_29A13F534((a1 + 24), a2);
  }
}

uint64_t **pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::_Data::_AddRelevantAttributeNames(uint64_t a1, void *a2)
{
  if (*(a1 + 64))
  {
    return sub_29A45C3F0((a1 + 48), *a2, a2 + 1);
  }

  else
  {
    return sub_29A13F534((a1 + 48), a2);
  }
}

uint64_t **pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::AppendDependencyData(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = result;
    result = *result;
    if (result)
    {
      v5 = *v2;
      v6 = *(v2 + 8);
      if (*v2 != v6)
      {
        do
        {
          v7 = *v4;
          v8 = *(*v4 + 8);
          if (v8 >= *(*v4 + 16))
          {
            v9 = sub_29A45C7FC(*v4, v5);
          }

          else
          {
            *v8 = *v5;
            v9 = (v8 + 3);
            sub_29A186A3C(v8 + 1, v5 + 1);
          }

          *(v7 + 8) = v9;
          v5 += 3;
        }

        while (v5 != v6);
        result = *v4;
        v2 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::_Data::_AddRelevantFieldNames(result, (v2 + 24));
      v10 = *v4;
      v11 = (*a2 + 48);

      return pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::_Data::_AddRelevantAttributeNames(v10, v11);
    }

    else
    {
      *v4 = v2;
      *a2 = 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::CanFieldChangeAffectFileFormatArguments(pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v4 = *this;
  if (!*this)
  {
    return 0;
  }

  v5 = *(v4 + 32);
  if (v5)
  {
    v9 = *a2 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v10 = v5[4] & 0xFFFFFFFFFFFFFFF8;
      if (v9 >= v10)
      {
        break;
      }

LABEL_7:
      v5 = *v5;
      if (!v5)
      {
        return 0;
      }
    }

    if (v10 < v9)
    {
      ++v5;
      goto LABEL_7;
    }

    v12 = *v4;
    v13 = *(v4 + 8);
    if (*v4 != v13)
    {
      do
      {
        v14 = *v12;
        if (!*v12)
        {
          v15[0] = "pcp/dynamicFileFormatDependencyData.cpp";
          v15[1] = "CanFieldChangeAffectFileFormatArguments";
          v15[2] = 89;
          v15[3] = "BOOL pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::CanFieldChangeAffectFileFormatArguments(const TfToken &, const VtValue &, const VtValue &) const";
          v16 = 0;
          if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v15, "contextData.first", 0))
          {
            goto LABEL_14;
          }

          v14 = *v12;
        }

        if ((*(*v14 + 24))(v14, a2, a3, a4, v12 + 1))
        {
          return 1;
        }

LABEL_14:
        v12 += 3;
      }

      while (v12 != v13);
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::CanAttributeDefaultValueChangeAffectFileFormatArguments(pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v4 = *this;
  if (!*this)
  {
    return 0;
  }

  v5 = *(v4 + 56);
  if (v5)
  {
    v9 = *a2 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v10 = v5[4] & 0xFFFFFFFFFFFFFFF8;
      if (v9 >= v10)
      {
        break;
      }

LABEL_7:
      v5 = *v5;
      if (!v5)
      {
        return 0;
      }
    }

    if (v10 < v9)
    {
      ++v5;
      goto LABEL_7;
    }

    v12 = *v4;
    v13 = *(v4 + 8);
    if (*v4 != v13)
    {
      do
      {
        v14 = *v12;
        if (!*v12)
        {
          v15[0] = "pcp/dynamicFileFormatDependencyData.cpp";
          v15[1] = "CanAttributeDefaultValueChangeAffectFileFormatArguments";
          v15[2] = 123;
          v15[3] = "BOOL pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::CanAttributeDefaultValueChangeAffectFileFormatArguments(const TfToken &, const VtValue &, const VtValue &) const";
          v16 = 0;
          if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v15, "contextData.first", 0))
          {
            goto LABEL_14;
          }

          v14 = *v12;
        }

        if ((*(*v14 + 32))(v14, a2, a3, a4, v12 + 1))
        {
          return 1;
        }

LABEL_14:
        v12 += 3;
      }

      while (v12 != v13);
    }
  }

  return 0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::GetRelevantFieldNames(pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData *this)
{
  if ((atomic_load_explicit(byte_2A1741F18, memory_order_acquire) & 1) == 0)
  {
    v2 = this;
    sub_29B2A443C();
    this = v2;
  }

  if (*this)
  {
    return (*this + 24);
  }

  else
  {
    return &qword_2A1741F28;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::GetRelevantAttributeNames(pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData *this)
{
  if ((atomic_load_explicit(byte_2A1741F20, memory_order_acquire) & 1) == 0)
  {
    v2 = this;
    sub_29B2A44AC();
    this = v2;
  }

  if (*this)
  {
    return (*this + 48);
  }

  else
  {
    return &qword_2A1741F40;
  }
}

uint64_t **sub_29A45C3F0(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A1DE8C4(v5, v5 + 1, v4 + 4, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29A45C478(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29A45C500(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29A45C4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A41AE9C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A45C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_29A186EF4((a4 + v7 + 8), (a2 + v7 + 8));
      v7 += 24;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_29A45C574(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 16;
    do
    {
      v5 = sub_29A186B14(v5) - 24;
      v4 += 24;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A45C59C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  sub_29A45C3F0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_29A45C5F4(uint64_t *a1, void *a2, void *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[24 * v3];
  v17 = v9;
  v18 = v10;
  *(&v19 + 1) = &v9[24 * v8];
  *v10 = *a2;
  sub_29A186A3C(v10 + 1, a3);
  *&v19 = v10 + 24;
  v11 = a1[1];
  v12 = &v10[*a1 - v11];
  sub_29A45C72C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A45C7A8(&v17);
  return v16;
}

void sub_29A45C718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A45C7A8(va);
  _Unwind_Resume(a1);
}

void sub_29A45C72C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 8);
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 3;
      *(v6 - 1) = v9;
      v6 = sub_29A186A3C(v6, v7 + 1) + 3;
      v7 = v8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      sub_29A186B14((v5 + 1));
      v5 += 3;
    }
  }
}

uint64_t sub_29A45C7A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_29A186B14(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A45C7FC(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
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

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[24 * v6];
  *v8 = *a2;
  sub_29A186A3C(v8 + 1, a2 + 1);
  *&v17 = v8 + 24;
  v9 = *(a1 + 8);
  v10 = &v8[*a1 - v9];
  sub_29A45C72C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A45C7A8(&v15);
  return v14;
}

void sub_29A45C91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A45C7A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A45C930(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_29A45C36C, a2, a3);
}

void sub_29A45C96C()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 0, "PcpErrorType_ArcCycle", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 1, "PcpErrorType_ArcPermissionDenied", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 3, "PcpErrorType_IndexCapacityExceeded", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 4, "PcpErrorType_ArcCapacityExceeded", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 5, "PcpErrorType_ArcNamespaceDepthCapacityExceeded", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 6, "PcpErrorType_InconsistentPropertyType", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 7, "PcpErrorType_InconsistentAttributeType", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 8, "PcpErrorType_InconsistentAttributeVariability", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 9, "PcpErrorType_InternalAssetPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 10, "PcpErrorType_InvalidPrimPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 11, "PcpErrorType_InvalidAssetPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 12, "PcpErrorType_InvalidInstanceTargetPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 13, "PcpErrorType_InvalidExternalTargetPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 14, "PcpErrorType_InvalidTargetPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 15, "PcpErrorType_InvalidReferenceOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 16, "PcpErrorType_InvalidSublayerOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 17, "PcpErrorType_InvalidSublayerOwnership", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 18, "PcpErrorType_InvalidSublayerPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 19, "PcpErrorType_InvalidVariantSelection", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 20, "PcpErrorType_MutedAssetPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 21, "PcpErrorType_InvalidAuthoredRelocation", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 22, "PcpErrorType_InvalidConflictingRelocation", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 23, "PcpErrorType_InvalidSameTargetRelocations", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 24, "PcpErrorType_OpinionAtRelocationSource", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 25, "PcpErrorType_PrimPermissionDenied", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 26, "PcpErrorType_PropertyPermissionDenied", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 27, "PcpErrorType_SublayerCycle", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 28, "PcpErrorType_TargetPermissionDenied", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 29, "PcpErrorType_UnresolvedPrimPath", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204F3B0, 30, "PcpErrorType_VariableExpressionError", 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpErrorBase::PcpErrorBase(uint64_t a1, int a2)
{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = a2;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((a1 + 16));
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(pxrInternal__aapl__pxrReserved__::PcpErrorBase *this)
{
  *this = &unk_2A204EBC8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 25);
  sub_29B2A4A30(this);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorArcCycle::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x80uLL);
  *v2 = &unk_2A204EBC8;
  v2[2] = 0;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((v2 + 4));
  *v2 = &unk_2A204EBF0;
  *(v2 + 14) = 0;
  *(v2 + 15) = 0;
  *(v2 + 13) = 0;

  return sub_29A462660(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorArcCycle *pxrInternal__aapl__pxrReserved__::PcpErrorArcCycle::PcpErrorArcCycle(pxrInternal__aapl__pxrReserved__::PcpErrorArcCycle *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 0;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EBF0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  return this;
}

{
  *this = &unk_2A204EBC8;
  *(this + 2) = 0;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EBF0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorArcCycle::~PcpErrorArcCycle(pxrInternal__aapl__pxrReserved__::PcpErrorArcCycle *this)
{
  *this = &unk_2A204EBF0;
  v2 = (this + 104);
  sub_29A46276C(&v2);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
}

{
  *this = &unk_2A204EBF0;
  v2 = (this + 104);
  sub_29A46276C(&v2);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
}

{
  *this = &unk_2A204EBF0;
  v3 = (this + 104);
  sub_29A46276C(&v3);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
  operator delete(v2);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorArcCycle::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorArcCycle *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 13) == *(this + 14))
  {
    *&a2->__r_.__value_.__l.__data_ = 0uLL;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    sub_29A008E78(a2, "Cycle detected:\n");
    v4 = *(this + 13);
    v5 = *(this + 14) - v4;
    if (v5)
    {
      v6 = 0;
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 5);
      while (1)
      {
        v8 = v4 + 96 * v6;
        if (v6)
        {
          break;
        }

LABEL_12:
        sub_29A45D1D8(v8);
        if (v19 >= 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s\n", v12, v13, v14);
        if ((v21 & 0x80u) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        if ((v21 & 0x80u) == 0)
        {
          v16 = v21;
        }

        else
        {
          v16 = __p[1];
        }

        std::string::append(a2, v15, v16);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }

        v4 = *(this + 13);
        v17 = *(this + 14);
        if (v6)
        {
          if (++v6 < 0xAAAAAAAAAAAAAAABLL * ((v17 - v4) >> 5))
          {
            std::string::append(a2, "which ");
            v4 = *(this + 13);
            v17 = *(this + 14);
          }
        }

        else
        {
          v6 = 1;
        }

        v7 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v4) >> 5);
        if (v6 >= v7)
        {
          return;
        }
      }

      if (v6 + 1 >= v7)
      {
        std::string::append(a2, "CANNOT ");
        v9 = *(v8 + 88) - 1;
        v10 = "refer to:\n";
        if (v9 <= 4)
        {
          v11 = off_29F295938;
          goto LABEL_10;
        }
      }

      else
      {
        v9 = *(v8 + 88) - 1;
        v10 = "refers to:\n";
        if (v9 < 5)
        {
          v11 = off_29F295910;
LABEL_10:
          v10 = v11[v9];
        }
      }

      std::string::append(a2, v10);
      goto LABEL_12;
    }
  }
}

void sub_29A45D188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A45D1D8(uint64_t *a1)
{
  sub_29A00B6DC(&v8);
  v3 = *(v8 - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((&v8 + v3));
  std::ios_base::imbue((&v8 + v3), v4);
  std::locale::~locale(&v14);
  v5 = *(&v10[3].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v13, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v13);
  }

  std::locale::~locale(&v7);
  pxrInternal__aapl__pxrReserved__::operator<<(&v8, a1);
  std::stringbuf::str();
  v8 = *MEMORY[0x29EDC9538];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v12);
}

void sub_29A45D3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x120uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied::PcpErrorArcPermissionDenied(v2);

  return sub_29A462828(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied *pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied::PcpErrorArcPermissionDenied(pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 1;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EC18;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 104));
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 192));
  return this;
}

void sub_29A45D4D4(_Unwind_Exception *a1)
{
  sub_29A436D38(v1 + 104);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied::~PcpErrorArcPermissionDenied(pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied *this)
{
  *this = &unk_2A204EC18;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 69);
  sub_29B2A4ADC(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 47);
  sub_29B2A4B88(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied::~PcpErrorArcPermissionDenied(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied *this@<X0>, std::string *a2@<X8>)
{
  sub_29A45D1D8(this + 13);
  if ((v17 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s\nCANNOT ", v4, v5, v6);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(this + 70) - 1;
  if (v7 >= 5)
  {
    v8 = "refer to:\n";
  }

  else
  {
    v8 = off_29F295938[v7];
  }

  std::string::append(a2, v8);
  sub_29A45D1D8(this + 24);
  if (v15 >= 0)
  {
    v11 = &v14;
  }

  else
  {
    v11 = v14;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s\nwhich is private.", v9, v10, v11);
  if ((v17 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = __p[1];
  }

  std::string::append(a2, v12, v13);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }
}

void sub_29A45D6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x178uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild::PcpErrorArcToProhibitedChild(v2);

  return sub_29A462934(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild *pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild::PcpErrorArcToProhibitedChild(pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 2;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EC40;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 104));
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 192));
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 280));
  return this;
}

void sub_29A45D7F4(_Unwind_Exception *a1)
{
  sub_29A436D38(v1 + 192);
  sub_29A436D38(v1 + 104);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild::~PcpErrorArcToProhibitedChild(pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild *this)
{
  *this = &unk_2A204EC40;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 91);
  sub_29B2A4C34(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 69);
  sub_29B2A4ADC(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 47);
  sub_29B2A4B88(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild::~PcpErrorArcToProhibitedChild(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorArcToProhibitedChild *this@<X0>, std::string *a2@<X8>)
{
  sub_29A45D1D8(this + 13);
  if ((v20 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s\nCANNOT ", v4, v5, v6);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(this + 92) - 1;
  if (v7 >= 5)
  {
    v8 = "refer to:\n";
  }

  else
  {
    v8 = off_29F295938[v7];
  }

  std::string::append(a2, v8);
  sub_29A45D1D8(this + 24);
  sub_29A45D1D8(this + 35);
  v11 = &v17;
  if (v18 < 0)
  {
    v11 = v17;
  }

  if (v16 >= 0)
  {
    v12 = &v15;
  }

  else
  {
    v12 = v15;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s\nwhich is a prohibited child of its parent because it would require allowing opinions from the source of a relocation at %s.", v9, v10, v11, v12);
  if ((v20 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v14 = v20;
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(a2, v13, v14);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }
}

void sub_29A45DA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v29 + 23) < 0)
  {
    operator delete(*v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A45DA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    JUMPOUT(0x29A45DA84);
  }

  JUMPOUT(0x29A45DA88);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded::New@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v4 = operator new(0x68uLL);
  *v4 = &unk_2A204EBC8;
  v4[2] = a1;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((v4 + 4));
  *v4 = &unk_2A204EC68;

  return sub_29A462A40(a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded::PcpErrorCapacityExceeded(uint64_t a1, int a2)
{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = a2;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((a1 + 16));
  *a1 = &unk_2A204EC68;
  return a1;
}

{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = a2;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((a1 + 16));
  *a1 = &unk_2A204EC68;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded::~PcpErrorCapacityExceeded(pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded *this)
{
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded *this@<X0>, std::string *a2@<X8>)
{
  sub_29A008E78(&v9, "Composition graph capacity exceeded: ");
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204F3B0, *(this + 2), __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29A45DCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(uint64_t a1, int a2)
{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = a2;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((a1 + 16));
  *a1 = &unk_2A204EC90;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 128));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 132));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 160));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 164));
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::~PcpErrorInconsistentPropertyBase(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase *this)
{
  *this = &unk_2A204EC90;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 41);
  sub_29A1DE3A4(this + 40);
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 33);
  sub_29A1DE3A4(this + 32);
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyType::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xB0uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(v2, 6);
  *v2 = &unk_2A204ECB8;

  return sub_29A462B4C(a1, v2);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyType::PcpErrorInconsistentPropertyType(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyType *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(this, 6);
  *result = &unk_2A204ECB8;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(this, 6);
  *result = &unk_2A204ECB8;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyType::~PcpErrorInconsistentPropertyType(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyType *this)
{
  pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::~PcpErrorInconsistentPropertyBase(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyType::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyType *this)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 96));
  v3 = String;
  v4 = (this + 104);
  if (*(this + 127) < 0)
  {
    v4 = *v4;
  }

  v5 = *(String + 23);
  v6 = *String;
  v7 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 128));
  v8 = (this + 136);
  if (*(this + 159) < 0)
  {
    v8 = *v8;
  }

  if (*(this + 42) == 1)
  {
    v9 = "an attribute";
  }

  else
  {
    v9 = "a relationship";
  }

  if (*(v7 + 23) >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = *v7;
  }

  if (v5 < 0)
  {
    v3 = v6;
  }

  v11 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 160));
  if (*(v11 + 23) >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = *v11;
  }

  if (*(this + 43) == 1)
  {
    v15 = "an attribute";
  }

  else
  {
    v15 = "a relationship";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("The property <%s> has inconsistent spec types.  The defining spec is @%s@<%s> and is %s spec.  The conflicting spec is @%s@<%s> and is %s spec.  The conflicting spec will be ignored.", v12, v13, v3, v4, v10, v9, v8, v14, v15);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xB8uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(v2, 7);
  *v2 = &unk_2A204ECE0;
  v2[21] = 0;
  v2[22] = 0;

  return sub_29A462C58(a1, v2);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType::PcpErrorInconsistentAttributeType(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(this, 7);
  *result = &unk_2A204ECE0;
  result[21] = 0;
  result[22] = 0;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(this, 7);
  *result = &unk_2A204ECE0;
  result[21] = 0;
  result[22] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType::~PcpErrorInconsistentAttributeType(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType *this)
{
  *this = &unk_2A204ECE0;
  v1 = *(this + 22);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = *(this + 21);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::~PcpErrorInconsistentPropertyBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType::~PcpErrorInconsistentAttributeType(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType *this)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 96));
  v3 = String;
  v4 = (this + 104);
  if (*(this + 127) < 0)
  {
    v4 = *v4;
  }

  v5 = *(String + 23);
  v6 = *String;
  v7 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 128));
  v8 = v7;
  v9 = *(this + 21) & 0xFFFFFFFFFFFFFFF8;
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

  v11 = (this + 136);
  if (*(this + 159) < 0)
  {
    v11 = *v11;
  }

  v12 = *(v7 + 23);
  v13 = *v7;
  v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 160));
  v17 = *(this + 22) & 0xFFFFFFFFFFFFFFF8;
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

  if (*(v14 + 23) >= 0)
  {
    v19 = v14;
  }

  else
  {
    v19 = *v14;
  }

  if (v12 >= 0)
  {
    v20 = v8;
  }

  else
  {
    v20 = v13;
  }

  if (v5 >= 0)
  {
    v21 = v3;
  }

  else
  {
    v21 = v6;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("The attribute <%s> has specs with inconsistent value types.  The defining spec is @%s@<%s> with value type '%s'.  The conflicting spec is @%s@<%s> with value type '%s'.  The conflicting spec will be ignored.", v15, v16, v21, v4, v20, v10, v11, v19, v18);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeVariability::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xB0uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(v2, 8);
  *v2 = &unk_2A204ED08;

  return sub_29A462D64(a1, v2);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeVariability::PcpErrorInconsistentAttributeVariability(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeVariability *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(this, 8);
  *result = &unk_2A204ED08;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::PcpErrorInconsistentPropertyBase(this, 8);
  *result = &unk_2A204ED08;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeVariability::~PcpErrorInconsistentAttributeVariability(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeVariability *this)
{
  pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyBase::~PcpErrorInconsistentPropertyBase(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeVariability::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeVariability *this)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 96));
  if (*(String + 23) >= 0)
  {
    v3 = String;
  }

  else
  {
    v3 = *String;
  }

  v4 = (this + 104);
  if (*(this + 127) < 0)
  {
    v4 = *v4;
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 128));
  if (*(v5 + 23) >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *v5;
  }

  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&stru_2A20495A8, *(this + 42), v18);
  if (v19 >= 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  v8 = (this + 136);
  if (*(this + 159) < 0)
  {
    v8 = *v8;
  }

  v9 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 160));
  v10 = *(v9 + 23);
  v11 = *v9;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&stru_2A20495A8, *(this + 43), __p);
  if (v10 >= 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (v17 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("The attribute <%s> has specs with inconsistent variability.  The defining spec is @%s@<%s> with variability '%s'.  The conflicting spec is @%s@<%s> with variability '%s'.  The conflicting variability will be ignored.", v12, v13, v3, v4, v6, v7, v8, v14, v15);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_29A45E590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xE0uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::PcpErrorInvalidPrimPath(v2);

  return sub_29A462E70(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::PcpErrorInvalidPrimPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 10;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204ED30;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 104));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 49);
  *(this + 25) = 0;
  *(this + 26) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::~PcpErrorInvalidPrimPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath *this)
{
  *this = &unk_2A204ED30;
  v2 = *(this + 26);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 49);
  sub_29A1DE3A4(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 47);
  sub_29B2A4B88(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::~PcpErrorInvalidPrimPath(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath *this)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, *(this + 54), v18);
  if (v19 >= 0)
  {
    v2 = v18;
  }

  else
  {
    v2 = v18[0];
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 192));
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&v9, this + 200, this + 46);
  sub_29A45D1D8(&v9);
  if (v17 >= 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid %s path <%s> introduced by %s-- must be an absolute prim path with no variant selections.", v4, v5, v2, Text, v6);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&v13);
  v20 = &v12;
  sub_29A0176E4(&v20);
  v7 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v10;
  if (v10 && atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_29A45E920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 65) < 0)
  {
    operator delete(*(v9 - 88));
  }

  sub_29A436D38(va);
  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPathBase::PcpErrorInvalidAssetPathBase(uint64_t a1, int a2)
{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = a2;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((a1 + 16));
  *a1 = &unk_2A204ED58;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((a1 + 104));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 192));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 196));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPath::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x128uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPathBase::PcpErrorInvalidAssetPathBase(v2, 11);
  *v2 = &unk_2A204ED80;

  return sub_29A462F7C(a1, v2);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPath::PcpErrorInvalidAssetPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPathBase::PcpErrorInvalidAssetPathBase(this, 11);
  *result = &unk_2A204ED80;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPathBase::PcpErrorInvalidAssetPathBase(this, 11);
  *result = &unk_2A204ED80;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPath::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPath *this)
{
  v2 = (this + 224);
  if (*(this + 247) < 0)
  {
    v2 = *v2;
  }

  v3 = v20;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, *(this + 66), v20);
  if (v21 < 0)
  {
    v3 = v20[0];
  }

  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&v11, this + 248, this + 46);
  sub_29A45D1D8(&v11);
  if (v19 >= 0)
  {
    v6 = &v18;
  }

  else
  {
    v6 = v18;
  }

  if (*(this + 295) < 0)
  {
    v8 = " -- ";
    v7 = *(this + 34);
    if (!*(this + 35))
    {
      v8 = "";
    }
  }

  else
  {
    v7 = this + 272;
    if (*(this + 295))
    {
      v8 = " -- ";
    }

    else
    {
      v8 = "";
    }
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Could not open asset @%s@ for %s introduced by %s%s%s.", v4, v5, v2, v3, v6, v8, v7);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
  sub_29A1DE3A4(&v16);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&v15);
  v22 = &v14;
  sub_29A0176E4(&v22);
  v9 = v13;
  if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_29A45ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (*(v13 - 81) < 0)
  {
    operator delete(*(v13 - 104));
  }

  sub_29A436D38(va);
  if (*(v13 - 57) < 0)
  {
    operator delete(*(v13 - 80));
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorMutedAssetPath::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x128uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPathBase::PcpErrorInvalidAssetPathBase(v2, 20);
  *v2 = &unk_2A204EDA8;

  return sub_29A463088(a1, v2);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorMutedAssetPath::PcpErrorMutedAssetPath(pxrInternal__aapl__pxrReserved__::PcpErrorMutedAssetPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPathBase::PcpErrorInvalidAssetPathBase(this, 20);
  *result = &unk_2A204EDA8;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAssetPathBase::PcpErrorInvalidAssetPathBase(this, 20);
  *result = &unk_2A204EDA8;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorMutedAssetPath::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorMutedAssetPath *this)
{
  v2 = (this + 224);
  if (*(this + 247) < 0)
  {
    v2 = *v2;
  }

  v3 = v18;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, *(this + 66), v18);
  if (v19 < 0)
  {
    v3 = v18[0];
  }

  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&v9, this + 248, this + 46);
  sub_29A45D1D8(&v9);
  if (v17 >= 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Asset @%s@ was muted for %s introduced by %s.", v4, v5, v2, v3, v6);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&v13);
  v20 = &v12;
  sub_29A0176E4(&v20);
  v7 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v10;
  if (v10 && atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_29A45EF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 65) < 0)
  {
    operator delete(*(v9 - 88));
  }

  sub_29A436D38(va);
  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(uint64_t a1, int a2)
{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = a2;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((a1 + 16));
  *a1 = &unk_2A204EDD0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 104));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 108));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 112));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 116));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 144));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 148));
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::~PcpErrorTargetPathBase(pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase *this)
{
  *this = &unk_2A204EDD0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 37);
  sub_29B2A4CE0(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 29);
  sub_29A1DE3A4(this + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 27);
  sub_29A1DE3A4(this + 26);

  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(v2, 12);
  *v2 = &unk_2A204EDF8;

  return sub_29A463194(a1, v2);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath::PcpErrorInvalidInstanceTargetPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(this, 12);
  *result = &unk_2A204EDF8;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(this, 12);
  *result = &unk_2A204EDF8;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath::~PcpErrorInvalidInstanceTargetPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath *this)
{
  pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::~PcpErrorTargetPathBase(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath *this)
{
  v2 = *(this + 30);
  if (v2 != 1 && v2 != 8)
  {
    v4[0] = "pcp/errors.cpp";
    v4[1] = "ToString";
    v4[2] = 528;
    v4[3] = "virtual std::string pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath::ToString() const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "ownerSpecType == SdfSpecTypeAttribute || ownerSpecType == SdfSpecTypeRelationship", 0);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 104));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 112));
  sub_29A1DA6E4(this + 16);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA8uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath::PcpErrorInvalidExternalTargetPath(v2);

  return sub_29A4632A0(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath::PcpErrorInvalidExternalTargetPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(this, 13);
  *v2 = &unk_2A204EE20;
  v3 = (v2 + 160);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((v2 + 156));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v3);
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath::~PcpErrorInvalidExternalTargetPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath *this)
{
  *this = &unk_2A204EE20;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 40);
  sub_29A1DE3A4(this + 39);

  pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::~PcpErrorTargetPathBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath::~PcpErrorInvalidExternalTargetPath(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath *this)
{
  v2 = *(this + 30);
  if (v2 != 1 && v2 != 8)
  {
    __p[0] = "pcp/errors.cpp";
    __p[1] = "ToString";
    __p[2] = 563;
    __p[3] = "virtual std::string pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath::ToString() const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "ownerSpecType == SdfSpecTypeAttribute || ownerSpecType == SdfSpecTypeRelationship", 0);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 104));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 112));
  sub_29A1DA6E4(this + 16);
}

void sub_29A45F5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(v2, 14);
  *v2 = &unk_2A204EE48;

  return sub_29A4633AC(a1, v2);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath::PcpErrorInvalidTargetPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(this, 14);
  *result = &unk_2A204EE48;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(this, 14);
  *result = &unk_2A204EE48;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath::~PcpErrorInvalidTargetPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath *this)
{
  pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::~PcpErrorTargetPathBase(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath *this)
{
  v2 = *(this + 30);
  if (v2 != 1 && v2 != 8)
  {
    v4[0] = "pcp/errors.cpp";
    v4[1] = "ToString";
    v4[2] = 600;
    v4[3] = "virtual std::string pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath::ToString() const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "ownerSpecType == SdfSpecTypeAttribute || ownerSpecType == SdfSpecTypeRelationship", 0);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 104));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 112));
  sub_29A1DA6E4(this + 16);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOffset::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOffset::PcpErrorInvalidSublayerOffset(v2);

  return sub_29A4634B8(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOffset *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOffset::PcpErrorInvalidSublayerOffset(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOffset *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 16;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EE70;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(this + 17, 0.0, 1.0);
  return this;
}

void sub_29A45F8E4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  sub_29B2A4D54(v1);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(v1);
  _Unwind_Resume(a1);
}

void sub_29A45F9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A45F9DC(double *a1)
{
  sub_29A00B6DC(&v8);
  v3 = *(v8 - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((&v8 + v3));
  std::ios_base::imbue((&v8 + v3), v4);
  std::locale::~locale(&v14);
  v5 = *(&v10[3].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v13, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v13);
  }

  std::locale::~locale(&v7);
  pxrInternal__aapl__pxrReserved__::operator<<(&v8, a1);
  std::stringbuf::str();
  v8 = *MEMORY[0x29EDC9538];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v12);
}

void sub_29A45FBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&a9);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xB8uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset::PcpErrorInvalidReferenceOffset(v2);

  return sub_29A4635C4(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset::PcpErrorInvalidReferenceOffset(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 15;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EE98;
  *(this + 13) = 0;
  *(this + 14) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 30);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 31);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 38);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 39);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(this + 20, 0.0, 1.0);
  return this;
}

void sub_29A45FD20(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v2 + 24));
  if (*(v1 + 151) < 0)
  {
    operator delete(*v2);
  }

  sub_29B2A4D9C((v1 + 120), v1);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset::~PcpErrorInvalidReferenceOffset(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset *this)
{
  *this = &unk_2A204EE98;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 39);
  sub_29A1DE3A4(this + 38);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 31);
  sub_29B2A4E0C(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset::~PcpErrorInvalidReferenceOffset(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset *this)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, *(this + 44), v22);
  if (v23 >= 0)
  {
    v2 = v22;
  }

  else
  {
    v2 = v22[0];
  }

  sub_29A45F9DC(this + 20);
  if (v21 >= 0)
  {
    v3 = &v20;
  }

  else
  {
    v3 = v20;
  }

  v4 = (this + 128);
  if (*(this + 151) < 0)
  {
    v4 = *v4;
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 152));
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&v11, this + 104, this + 30);
  sub_29A45D1D8(&v11);
  if (v19 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid %s offset %s for @%s@<%s> introduced by %s. Using no offset instead.", v6, v7, v2, v3, v4, Text, p_p);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
  sub_29A1DE3A4(&v16);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&v15);
  v24 = &v14;
  sub_29A0176E4(&v24);
  v9 = v13;
  if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_29A45FFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_29A436D38(&a14);
  if (*(v30 - 97) < 0)
  {
    operator delete(*(v30 - 120));
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOwnership::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA8uLL);
  *v2 = &unk_2A204EBC8;
  *(v2 + 2) = 17;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((v2 + 16));
  *v2 = &unk_2A204EEC0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;

  return sub_29A4636D0(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOwnership *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOwnership::PcpErrorInvalidSublayerOwnership(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOwnership *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 17;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EEC0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  return this;
}

{
  *this = &unk_2A204EBC8;
  *(this + 2) = 17;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EEC0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOwnership::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerOwnership *this, uint64_t a2, char *a3)
{
  memset(&v5[2], 0, 24);
  v3 = *(this + 19);
  v5[0] = *(this + 18);
  v5[1] = v3;
  if (v5[0] != v3)
  {
    v4 = sub_29A4603AC(v5, a2, a3);
    sub_29A1DA6E4(v4);
  }

  sub_29A1DA6E4(this + 16);
}

void sub_29A460340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  __p = (v23 - 56);
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4603AC(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A46042C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerPath::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA8uLL);
  *v2 = &unk_2A204EBC8;
  *(v2 + 2) = 18;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((v2 + 16));
  *v2 = &unk_2A204EEE8;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;

  return sub_29A4637DC(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerPath *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerPath::PcpErrorInvalidSublayerPath(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerPath *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 18;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EEE8;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  return this;
}

{
  *this = &unk_2A204EBC8;
  *(this + 2) = 18;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EEE8;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerPath::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSublayerPath *this)
{
  v2 = (this + 120);
  if (*(this + 143) < 0)
  {
    v2 = *v2;
  }

  v3 = sub_29B293A0C(this + 13);
  if (v4 & 1 | v3)
  {
    sub_29A1DA6E4(this + 13);
  }

  if (*(this + 167) < 0)
  {
    v7 = " -- ";
    v6 = *(this + 18);
    if (!*(this + 19))
    {
      v7 = "";
    }
  }

  else
  {
    v6 = this + 144;
    if (*(this + 167))
    {
      v7 = " -- ";
    }

    else
    {
      v7 = "";
    }
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Could not load sublayer @%s@ of layer @%s@%s%s; skipping.", v4, v5, v2, "<NULL>", v7, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpErrorRelocationBase::PcpErrorRelocationBase(uint64_t a1, int a2)
{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = a2;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((a1 + 16));
  *a1 = &unk_2A204EF10;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA8uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation::PcpErrorInvalidAuthoredRelocation(v2);

  return sub_29A4638E8(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation::PcpErrorInvalidAuthoredRelocation(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 21;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EF38;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 26);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 27);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 29);
  *(this + 15) = 0;
  *(this + 16) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 34);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 35);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation::~PcpErrorInvalidAuthoredRelocation(void **this)
{
  *this = &unk_2A204EF38;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 35);
  sub_29B2A4E7C(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 29);
  sub_29A1DE3A4(this + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 27);
  sub_29A1DE3A4(this + 26);

  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation::~PcpErrorInvalidAuthoredRelocation(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidAuthoredRelocation *this)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 104));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 112));
  sub_29A1DA6E4(this + 15);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xC0uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation::PcpErrorInvalidConflictingRelocation(v2);

  return sub_29A4639F4(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation::PcpErrorInvalidConflictingRelocation(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 22;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EF60;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 26);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 27);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 29);
  *(this + 15) = 0;
  *(this + 16) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 34);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 35);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 36);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 37);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 38);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 39);
  *(this + 20) = 0;
  *(this + 21) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 44);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 45);
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation::~PcpErrorInvalidConflictingRelocation(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation *this)
{
  *this = &unk_2A204EF60;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 45);
  sub_29B2A4EF0(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 39);
  sub_29A1DE3A4(this + 38);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 37);
  sub_29A1DE3A4(this + 36);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 35);
  sub_29B2A4E7C(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 29);
  sub_29A1DE3A4(this + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 27);
  sub_29A1DE3A4(this + 26);

  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation::~PcpErrorInvalidConflictingRelocation(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidConflictingRelocation *this)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 104));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 112));
  sub_29A1DA6E4(this + 15);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x88uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations::PcpErrorInvalidSameTargetRelocations(v2);

  return sub_29A463B00(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations *pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations::PcpErrorInvalidSameTargetRelocations(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 23;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EF88;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 26);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 27);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations::~PcpErrorInvalidSameTargetRelocations(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations *this)
{
  *this = &unk_2A204EF88;
  v2 = (this + 108);
  v3 = (this + 112);
  sub_29A463C0C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(this + 26);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations::~PcpErrorInvalidSameTargetRelocations(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 14);
  if (v3 != *(this + 15))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*(this + 14));
    sub_29A1DA6E4((v3 + 8));
  }

  v4.__r_.__value_.__r.__words[0] = "pcp/errors.cpp";
  v4.__r_.__value_.__l.__size_ = "ToString";
  v4.__r_.__value_.__r.__words[2] = 863;
  v5 = "virtual std::string pxrInternal__aapl__pxrReserved__::PcpErrorInvalidSameTargetRelocations::ToString() const";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "PcpErrorInvalidSameTargetRelocations must have sources");
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_29A46112C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorOpinionAtRelocationSource::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x80uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorOpinionAtRelocationSource::PcpErrorOpinionAtRelocationSource(v2);

  return sub_29A463CE8(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorOpinionAtRelocationSource *pxrInternal__aapl__pxrReserved__::PcpErrorOpinionAtRelocationSource::PcpErrorOpinionAtRelocationSource(pxrInternal__aapl__pxrReserved__::PcpErrorOpinionAtRelocationSource *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 24;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EFB0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 30);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 31);
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorOpinionAtRelocationSource::~PcpErrorOpinionAtRelocationSource(pxrInternal__aapl__pxrReserved__::PcpErrorOpinionAtRelocationSource *this)
{
  *this = &unk_2A204EFB0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 31);
  sub_29B2A4E0C(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorOpinionAtRelocationSource::~PcpErrorOpinionAtRelocationSource(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x118uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied::PcpErrorPrimPermissionDenied(v2);

  return sub_29A463DF4(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied *pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied::PcpErrorPrimPermissionDenied(pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 25;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204EFD8;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 104));
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 192));
  return this;
}

void sub_29A461414(_Unwind_Exception *a1)
{
  sub_29A436D38(v1 + 104);
  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied::~PcpErrorPrimPermissionDenied(pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied *this)
{
  *this = &unk_2A204EFD8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 69);
  sub_29B2A4ADC(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 47);
  sub_29B2A4B88(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied::~PcpErrorPrimPermissionDenied(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorPrimPermissionDenied *this)
{
  sub_29A45D1D8(this + 13);
  sub_29A45D1D8(this + 24);
  if (v9 >= 0)
  {
    v4 = &v8;
  }

  else
  {
    v4 = v8;
  }

  if (v7 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s\nwill be ignored because:\n%s\nis private and overrides its opinions.", v2, v3, v4, p_p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_29A46157C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied::PcpErrorPropertyPermissionDenied(v2);

  return sub_29A463F00(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied *pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied::PcpErrorPropertyPermissionDenied(pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 26;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204F000;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 26);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 27);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied::~PcpErrorPropertyPermissionDenied(void **this)
{
  *this = &unk_2A204F000;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 27);
  sub_29A1DE3A4(this + 26);

  pxrInternal__aapl__pxrReserved__::PcpErrorBase::~PcpErrorBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied::~PcpErrorPropertyPermissionDenied(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied *this)
{
  v1 = (this + 120);
  if (*(this + 143) < 0)
  {
    v1 = *v1;
  }

  if (*(this + 28) == 1)
  {
    v2 = "an attribute";
  }

  else
  {
    v2 = "a relationship";
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 104));
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("The layer at @%s@ has an illegal opinion about %s <%s> which is private across a reference, inherit, or variant.  Ignoring.", v4, v5, v1, v2, Text);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorSublayerCycle::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x88uLL);
  *v2 = &unk_2A204EBC8;
  *(v2 + 2) = 27;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((v2 + 16));
  *v2 = &unk_2A204F028;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;

  return sub_29A46400C(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorSublayerCycle *pxrInternal__aapl__pxrReserved__::PcpErrorSublayerCycle::PcpErrorSublayerCycle(pxrInternal__aapl__pxrReserved__::PcpErrorSublayerCycle *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 27;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204F028;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return this;
}

{
  *this = &unk_2A204EBC8;
  *(this + 2) = 27;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204F028;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(v2, 28);
  *v2 = &unk_2A204F050;

  return sub_29A464118(a1, v2);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied::PcpErrorTargetPermissionDenied(pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(this, 28);
  *result = &unk_2A204F050;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::PcpErrorTargetPathBase(this, 28);
  *result = &unk_2A204F050;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied::~PcpErrorTargetPermissionDenied(pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied *this)
{
  pxrInternal__aapl__pxrReserved__::PcpErrorTargetPathBase::~PcpErrorTargetPathBase(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied *this)
{
  v2 = *(this + 30);
  if (v2 != 1 && v2 != 8)
  {
    v4[0] = "pcp/errors.cpp";
    v4[1] = "ToString";
    v4[2] = 1020;
    v4[3] = "virtual std::string pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied::ToString() const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "ownerSpecType == SdfSpecTypeAttribute || ownerSpecType == SdfSpecTypeRelationship", 0);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 104));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 112));
  sub_29A1DA6E4(this + 16);
}

void *pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath::New@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xF0uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath::PcpErrorUnresolvedPrimPath(v2);

  return sub_29A464224(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath *pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath::PcpErrorUnresolvedPrimPath(pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 29;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204F078;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 104));
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 57);
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath::~PcpErrorUnresolvedPrimPath(pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath *this)
{
  *this = &unk_2A204F078;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 57);
  sub_29B2A4F64(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 47);
  sub_29B2A4B88(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath::~PcpErrorUnresolvedPrimPath(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorUnresolvedPrimPath *this)
{
  v2 = v29;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, *(this + 58), v29);
  if (v30 < 0)
  {
    v2 = v29[0];
  }

  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&v20, this + 208, this + 56);
  v3 = &v27;
  sub_29A45D1D8(&v20);
  if (v28 < 0)
  {
    v3 = v27;
  }

  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&v11, this + 192, this + 46);
  sub_29A45D1D8(&v11);
  if (v19 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Unresolved %s prim path %s introduced by %s", v4, v5, v2, v3, p_p);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
  sub_29A1DE3A4(&v16);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&v15);
  v31 = &v14;
  sub_29A0176E4(&v31);
  v7 = v13;
  if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26);
  sub_29A1DE3A4(&v25);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&v24);
  v11 = &v23;
  sub_29A0176E4(&v11);
  v9 = v22;
  if (v22 && atomic_fetch_add_explicit((v22 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v21;
  if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }
}

void sub_29A462008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_29A436D38(&a13);
  if (*(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
  }

  sub_29A436D38(&a30);
  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError::New@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v2 = operator new(0xC8uLL);
  pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError::PcpErrorVariableExpressionError(v2);

  return sub_29A464330(a1, v2);
}

pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError *pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError::PcpErrorVariableExpressionError(pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError *this)
{
  *this = &unk_2A204EBC8;
  *(this + 2) = 30;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite((this + 16));
  *this = &unk_2A204F0A0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 49);
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError::~PcpErrorVariableExpressionError(pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError *this)
{
  *this = &unk_2A204F0A0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 49);
  sub_29B2A500C(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError::~PcpErrorVariableExpressionError(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError::ToString(pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError *this)
{
  v2 = &v19;
  std::string::basic_string(&v19, (this + 104), 0, 0x20uLL, &v22);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v2 = v19.__r_.__value_.__r.__words[0];
  }

  v3 = (this + 152);
  if (*(this + 175) < 0)
  {
    v3 = *v3;
  }

  memset(&v18, 0, sizeof(v18));
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath((this + 192)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(__p, (this + 192));
    if (v21 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("at %s ", v4, v5, v6);
    if ((v24 & 0x80u) == 0)
    {
      v7 = &v22;
    }

    else
    {
      v7 = v22;
    }

    if ((v24 & 0x80u) == 0)
    {
      v8 = v24;
    }

    else
    {
      v8 = v23;
    }

    std::string::append(&v18, v7, v8);
    if (v24 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_29B293A0C(this + 22);
  if (v10 & 1 | v9)
  {
    sub_29A1DA6E4(this + 22);
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("in @%s@", v10, v11, "<expired>");
  if ((v24 & 0x80u) == 0)
  {
    v12 = &v22;
  }

  else
  {
    v12 = v22;
  }

  if ((v24 & 0x80u) == 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v23;
  }

  std::string::append(&v18, v12, v13);
  if (v24 < 0)
  {
    operator delete(v22);
  }

  v16 = &v18;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v18.__r_.__value_.__r.__words[0];
  }

  v17 = (this + 128);
  if (*(this + 151) < 0)
  {
    v17 = *v17;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Error evaluating expression %s for %s %s: %s", v14, v15, v2, v3, v16, v17);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_29A4623D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 49) < 0)
  {
    operator delete(*(v30 - 72));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpRaiseErrors(uint64_t *result, uint64_t a2, char *a3)
{
  v3 = result[1];
  v10 = *result;
  for (i = v3; v10 != i; result = sub_29A4625E0(&v10))
  {
    v8[0] = "pcp/errors.cpp";
    v8[1] = "PcpRaiseErrors";
    v8[2] = 1115;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::PcpRaiseErrors(const PcpErrorVector &)";
    v9 = 0;
    v4 = sub_29A462560(&v10, a2, a3);
    (*(**v4 + 16))(__p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 3, "%s", v5);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_29A462544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A462560(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::PcpErrorBase>>>::operator*() [T = const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::PcpErrorBase>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A4625E0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::PcpErrorBase>>>::operator++() [T = const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::PcpErrorBase>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *sub_29A462660(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F3D0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A4626B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4626D4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A4626FC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A46272C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F420))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A46276C(void ***a1)
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
        v4 -= 96;
        sub_29A4627F4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_29A462828(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F448;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A462880(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A46289C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A4628C4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A4628F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F498))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A462934(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F4C0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A46298C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4629A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A4629D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A462A00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F510))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A462A40(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F538;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A462A98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A462AB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A462ADC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A462B0C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F588))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A462B4C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F5B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A462BA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A462BC0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A462BE8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A462C18(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F600))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A462C58(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F628;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A462CB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A462CCC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A462CF4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A462D24(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F678))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A462D64(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F6A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A462DBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A462DD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A462E00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A462E30(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F6F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A462E70(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F718;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A462EC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A462EE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A462F0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A462F3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F768))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A462F7C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F790;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A462FD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A462FF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A463018(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A463048(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F7E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A463088(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F808;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A4630E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4630FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A463124(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A463154(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F858))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A463194(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F880;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A4631EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A463208(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A463230(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A463260(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F8D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A4632A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F8F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A4632F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A463314(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A46333C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A46336C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F948))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A4633AC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F970;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A463404(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A463420(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A463448(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A463478(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204F9C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A4634B8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204F9E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A463510(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2A50AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A46352C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A463554(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A463584(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204FA38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}