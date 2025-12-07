void sub_29B00DCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B00DD40(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    v11 = 959;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec3d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
    LOBYTE(v13) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0uLL;
      v11 = 0;
      v7 = &v10;
      sub_29A194A04(v6, a3 + 1, &v7);
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

void sub_29B00E398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00E3D0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29B00E8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B00E92C(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10 = "usdImaging/instanceAdapter.cpp";
    v11 = "operator()";
    v12 = 959;
    v13 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec3f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
    LOBYTE(v14) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v11) = 0;
      v10 = 0;
      v7 = &v10;
      sub_29A193304(v6, a3 + 1, &v7);
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

void sub_29B00EF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00EFBC(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29B00F494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B00F518(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec3h>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3h]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      WORD2(v7) = 0;
      LODWORD(v7) = 0;
      v10[0] = &v7;
      sub_29A193E08(v6, a3 + 1, v10);
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

void sub_29B00FB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00FBA8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29B010080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B010104(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10 = "usdImaging/instanceAdapter.cpp";
    v11 = "operator()";
    v12 = 959;
    v13 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec3i>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
    LOBYTE(v14) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v11) = 0;
      v10 = 0;
      v7 = &v10;
      sub_29A21C418(v6, a3 + 1, &v7);
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

void **sub_29B010608(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FD868(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3i>::Invoke, &stru_2A20409B8);
  }
}

void sub_29B0107F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B010828(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29B010D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B010D84(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec4d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A196FC0(v6, a3 + 1, &v7);
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

void sub_29B0113C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B011400(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29B0118D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B01195C(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    v11 = 959;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec4f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
    LOBYTE(v13) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0uLL;
      v7 = &v10;
      sub_29A19596C(v6, a3 + 1, &v7);
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

void sub_29B011F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B011FCC(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29B0124A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B012528(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec4h>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4h]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A196490(v6, a3 + 1, v10);
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

void sub_29B012B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B012B98(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29B013070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B0130F4(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    v11 = 959;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec4i>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
    LOBYTE(v13) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0uLL;
      v7 = &v10;
      sub_29A21E52C(v6, a3 + 1, &v7);
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

void **sub_29B0135DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FE4B4(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4i>::Invoke, &stru_2A20409F8);
  }
}

void sub_29B0137C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B0137F8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29B013CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B013D54(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<BOOL>::operator()(const std::vector<UsdPrim> &, size_t) [T = BOOL]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LOBYTE(v7) = 0;
      v10[0] = &v7;
      sub_29A20CFDC(v6, a3 + 1, v10);
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

void **sub_29B014238(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A2CB120(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B0142CC, &stru_2A2042410);
  }
}

double sub_29B0142CC@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29B01431C;
  a1[2] = &stru_2A2042410;
  return result;
}

void sub_29B01431C(void *a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }
}

void sub_29B0144B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B0144F0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
}

void sub_29B0149C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B014A4C(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<char>::operator()(const std::vector<UsdPrim> &, size_t) [T = char]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LOBYTE(v7) = 0;
      v10[0] = &v7;
      sub_29AC82EDC(v6, a3 + 1, v10);
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

void **sub_29B014F30(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD64314(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B014FC4, &stru_2A2042428);
  }
}

double sub_29B014FC4@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29B015014;
  a1[2] = &stru_2A2042428;
  return result;
}

void sub_29B015014(void *a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
  }
}

void sub_29B0151B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B0151E8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29B0156C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B015744(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<double>::operator()(const std::vector<UsdPrim> &, size_t) [T = double]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A18FD48(v6, a3 + 1, v10);
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

void sub_29B015D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B015DB8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29B016290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B016314(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (*(a1 + 3) <= a3)
  {
    v11[0] = "usdImaging/instanceAdapter.cpp";
    v11[1] = "operator()";
    v11[2] = 959;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<float>::operator()(const std::vector<UsdPrim> &, size_t) [T = float]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v8) = 0;
      v11[0] = &v8;
      sub_29A18E224(v6, a3 + 1, v11, v7);
    }
  }

  memset(v10, 0, sizeof(v10));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v10, &v9);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v8, *a1, &v9);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v8);
}

void sub_29B016950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B016988(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
}

void sub_29B016E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B016EE4(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<short>::operator()(const std::vector<UsdPrim> &, size_t) [T = short]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LOWORD(v7) = 0;
      v10[0] = &v7;
      sub_29AC834AC(v6, a3 + 1, v10);
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

void **sub_29B0173C8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD81948(a1))
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
    v4 = MEMORY[0x29EDC94F0];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B01745C, v4);
  }
}

_WORD *sub_29B01745C@<X0>(void *a1@<X8>)
{
  result = operator new(2uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94F0];
  a1[1] = sub_29B0174A4;
  a1[2] = v3;
  return result;
}

void sub_29B0174A4(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29B017600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B017638(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29B017B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B017B94(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<int>::operator()(const std::vector<UsdPrim> &, size_t) [T = int]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v7) = 0;
      v10[0] = &v7;
      sub_29A19D7EC(v6, a3 + 1, v10);
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

void sub_29B0181C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B018200(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

void sub_29B0186D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B01875C(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<unsigned short>::operator()(const std::vector<UsdPrim> &, size_t) [T = unsigned short]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LOWORD(v7) = 0;
      v10[0] = &v7;
      sub_29A19BDAC(v6, a3 + 1, v10);
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

void **sub_29B018C40(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD81C64(a1))
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
    v4 = MEMORY[0x29EDC94F8];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B018CD4, v4);
  }
}

_WORD *sub_29B018CD4@<X0>(void *a1@<X8>)
{
  result = operator new(2uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94F8];
  a1[1] = sub_29B018D1C;
  a1[2] = v3;
  return result;
}

void sub_29B018D1C(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29B018E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B018EB0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29B019388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B01940C(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<unsigned int>::operator()(const std::vector<UsdPrim> &, size_t) [T = unsigned int]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v7) = 0;
      v10[0] = &v7;
      sub_29A19CAF8(v6, a3 + 1, v10);
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

void sub_29B019A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B019A78(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29B019F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B019FD4(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<unsigned char>::operator()(const std::vector<UsdPrim> &, size_t) [T = unsigned char]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LOBYTE(v7) = 0;
      v10[0] = &v7;
      sub_29A19E2EC(v6, a3 + 1, v10);
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

void sub_29B01A5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B01A630(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29B01AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B01AB8C(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a1 + 3) <= a3)
  {
    sub_29B2CEC00(v8, a3, a1 + 3);
  }

  memset(v7, 0, sizeof(v7));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v7, &v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v5, *a1, &v6);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v5);
}

void sub_29B01B170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01B1A8(uint64_t a1)
{
  v4 = (a1 + 64);
  sub_29A1E234C(&v4);
  sub_29A216064((a1 + 24));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29B01B680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B01B704(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a1 + 3) <= a3)
  {
    sub_29B2CECAC(v8, a3, a1 + 3);
  }

  memset(v7, 0, sizeof(v7));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v7, &v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v5, *a1, &v6);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v5);
}

void **sub_29B01BBC8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1FA80C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B01BC5C, &stru_2A2047398);
  }
}

double sub_29B01BC5C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29B01BCAC;
  a1[2] = &stru_2A2047398;
  return result;
}

void sub_29B01BCAC(void *a1)
{
  if (a1)
  {
    sub_29A216064(a1);

    operator delete(a1);
  }
}

void sub_29B01C170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B01C1F4(uint64_t *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2)
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

void sub_29B01C334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char a17)
{
  sub_29A57F434(&a11);
  sub_29A1DCEA8(&a15);
  a11 = &a17;
  sub_29A1E234C(&a11);
  _Unwind_Resume(a1);
}

void sub_29B01C808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B01C88C(char **result, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29B01C8C8(result, v4);
  }

  else if (!v3)
  {
    sub_29ABF5B70(result, &(*result)[40 * a2]);
  }
}

void sub_29B01C8C8(char **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(a1[1], v11);
      v5 += v11;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v21 = a1;
    if (v9)
    {
      v10 = sub_29A10E224(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v18 = v10;
    v19 = &v10[40 * v6];
    *(&v20 + 1) = &v10[40 * v9];
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v19, v12);
    *&v20 = &v19[v12];
    v13 = a1[1];
    v14 = &(*a1)[v19 - v13];
    sub_29ACCE3D0(a1, *a1, v13, v14, v15);
    v16 = *a1;
    *a1 = v14;
    v17 = a1[2];
    *(a1 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    sub_29ACCE544(&v18);
  }
}

void sub_29B01CA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ACCE544(va);
  _Unwind_Resume(a1);
}

BOOL sub_29B01CA54(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  sub_29B01CB68(a1, a2, &v9);
  v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::ComputeCollectionsContainingPath(*(a1 + 8), &v9, &v8);
    v6 = **(a1 + 16);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 16) + 8) - v6) >> 3) > a3)
    {
      if ((v6 + 40 * a3) != &v8)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    sub_29A792748();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
  sub_29A1DE3A4(&v9);
  return v5;
}

void sub_29B01CB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B01CB68(uint64_t *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject **a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  memset(v6, 0, sizeof(v6));
  sub_29A2FCAE8(v6, (a2[1] - *a2) >> 5);
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v6, a3);
  v7 = v6;
  sub_29A1E234C(&v7);
}

void sub_29B01CC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01CC5C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B001EE8(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29B01D130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01D1B4(void *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v6 = a1[11];
  v7 = *v6;
  if (a3 >= (v6[1] - *v6) >> 2)
  {
    v12[0] = "usdImaging/instanceAdapter.cpp";
    v12[1] = "operator()";
    v12[2] = 2341;
    v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMapVariabilityFn::operator()(const std::vector<UsdPrim> &, size_t)";
    v13 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "instanceIdx < visibility->size()", 0))
    {
      return 1;
    }

    v7 = *a1[11];
  }

  v8 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v8 == v9)
    {
      v10 = sub_29B01D294(a1, a2);
      goto LABEL_8;
    }

    if (sub_29B01D38C(a1, v8))
    {
      break;
    }

    v8 = (v8 + 32);
  }

  v10 = 2;
LABEL_8:
  *(v7 + 4 * a3) = v10;
  return 1;
}

uint64_t sub_29B01D294(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetTimeWithOffset(*(a1 + 80), 0.0);
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  return 1;
}

void sub_29B01D374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01D38C(void *a1, uint64_t a2)
{
  v4 = sub_29B0060B0(a1, a2);
  if (a1[4] + 48 * a1[5] == v4)
  {
    v16 = 0;
    v5 = a1[10];
    v11 = *a2;
    v6 = *(a2 + 8);
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v13, (a2 + 16));
    sub_29A1E2240(&v14, (a2 + 20));
    v7 = *(a2 + 24);
    v15 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v8)
    {
      v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v9)
    {
      v9 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(v5, &v11, (v8 + 1264), 1024, (v9 + 104), &v16, 1, 0);
  }

  return *(v4 + 40) & 1;
}

void sub_29B01D9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01DA34(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *v6;
  if (a3 >= (v6[1] - *v6) >> 2)
  {
    v11 = "usdImaging/instanceAdapter.cpp";
    v12 = "operator()";
    v13 = 2445;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMapFn::operator()(const std::vector<UsdPrim> &, size_t)";
    v15 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v11, "instanceIdx < visibility->size()", 0))
    {
      return 1;
    }

    v7 = **(a1 + 16);
  }

  v8 = *(v7 + 4 * a3);
  if (v8 == 3)
  {
    v11 = "usdImaging/instanceAdapter.cpp";
    v12 = "operator()";
    v13 = 2453;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMapFn::operator()(const std::vector<UsdPrim> &, size_t)";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v11, "instanceVis != _InstancerData::Unknown", 0);
    v8 = *(v7 + 4 * a3);
  }

  if (v8 == 1 || v8 == 2 && sub_29B01DB50(a1, a2))
  {
    v9 = *(a1 + 24);
    LODWORD(v11) = a3;
    sub_29A7ACA64(v9, &v11);
  }

  return 1;
}

uint64_t sub_29B01DB50(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2)
{
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  return 1;
}

void sub_29B01DC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29B01DC2C(void *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0111A4(a1, a2);
    v6 = 0;
    v7 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v8 = v7 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v9 = vdupq_n_s64(v7);
    v10 = a1[1];
    v11 = v10 + 4 * a2;
    v12 = *a3;
    v13 = v8 + 4;
    v14 = (v10 + 8);
    do
    {
      v15 = vdupq_n_s64(v6);
      v16 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B430070)));
      if (vuzp1_s16(v16, *v9.i8).u8[0])
      {
        *(v14 - 2) = v12;
      }

      if (vuzp1_s16(v16, *&v9).i8[2])
      {
        *(v14 - 1) = v12;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B433E10)))).i32[1])
      {
        *v14 = v12;
        v14[1] = v12;
      }

      v6 += 4;
      v14 += 4;
    }

    while (v13 != v6);
    a1[1] = v11;
  }

  return a1;
}

void sub_29B01DD24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B01E1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01E23C(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter **a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, uint64_t a3)
{
  v3 = a3 - *(a1 + 6);
  if (v3 < 0)
  {
    return 1;
  }

  v4 = *a1[2];
  if (v3 < ((*(a1[2] + 1) - v4) >> 2))
  {
    if (*(v4 + 4 * v3) != 0x7FFFFFFF)
    {
      memset(&v6[4], 0, 24);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(v6, *a1, a1[1]);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v6);
    }

    return 1;
  }

  return 0;
}

void sub_29B01E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a10);
  a10 = &a14;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

void sub_29B01E430(int **a1)
{
  v1 = *a1;
  v5 = **a1;
  v2 = *(v1 + 1);
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v7, v1 + 4);
  sub_29A1E2240(&v8, v1 + 5);
  v3 = *(v1 + 3);
  v9 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v7))
  {
    sub_29A7E416C(&v5, &v4);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29B01E65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A57F434(va1);
  _Unwind_Resume(a1);
}

void sub_29B01EB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

int64x2_t sub_29B01EBB8(int64x2_t *a1, _DWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_29B01EC54(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 9));
  v7 = *v6 + 8 * (v4 & 0x1FF);
  if (a1[1].i64[0] == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == *v6)
  {
    v8 = *(v6 - 1) + 4096;
  }

  sub_29A1DDD84((v8 - 8), a2);
  sub_29A1DDDC0((v8 - 4), a2 + 1);
  result = vaddq_s64(a1[2], xmmword_29B435730);
  a1[2] = result;
  return result;
}

void sub_29B01EC54(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 - v2;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v3 - v2) << 6) - 1;
  }

  v6 = a1[4];
  if ((v5 - (a1[5] + v6)) < 0x200)
  {
    v7 = a1[3];
    v8 = *a1;
    v9 = v7 - *a1;
    if (v4 >= v9)
    {
      if (v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 >> 2;
      }

      v25 = a1;
      v22 = sub_29A00C9BC(a1, v10);
      v23 = v22;
      *&v24 = v22;
      *(&v24 + 1) = &v22[8 * v11];
      v21 = operator new(0x1000uLL);
      sub_29A0D6828(&v22, &v21);
      v13 = a1[1];
      v12 = a1[2];
      if (v13 != v12)
      {
        do
        {
          sub_29A0D6828(&v22, v13);
          v13 += 8;
          v12 = a1[2];
        }

        while (v13 != v12);
        v13 = a1[1];
      }

      v14 = *a1;
      v15 = v23;
      *a1 = v22;
      a1[1] = v15;
      v22 = v14;
      v23 = v13;
      v16 = a1[3];
      v17 = v24;
      *(a1 + 1) = v24;
      *&v24 = v12;
      *(&v24 + 1) = v16;
      if (v17 - v15 == 8)
      {
        v18 = 256;
      }

      else
      {
        v18 = a1[4] + 512;
      }

      a1[4] = v18;
      if (v12 != v13)
      {
        *&v24 = &v12[(v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      if (v2 == v8)
      {
        v22 = operator new(0x1000uLL);
        sub_29A0D6614(a1, &v22);
        v19 = a1[2];
        v22 = *(v19 - 8);
        a1[2] = v19 - 8;
      }

      else
      {
        v22 = operator new(0x1000uLL);
      }

      sub_29A0D671C(a1, &v22);
      if (a1[2] - a1[1] == 8)
      {
        v20 = 256;
      }

      else
      {
        v20 = a1[4] + 512;
      }

      a1[4] = v20;
    }
  }

  else
  {
    a1[4] = v6 + 512;
    v22 = *(v3 - 8);
    a1[2] = v3 - 8;
    sub_29A0D671C(a1, &v22);
  }
}

void sub_29B01EE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29B01EE7C(uint64_t a1, uint64_t *a2, int a3)
{
  if (a2[1] != *a2 && *(a1 + 104))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v4 = *(a1 + 32);
  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    v7 = v4[4];
    while (*(v7 + 4 * v6) != a3)
    {
      if (v5 == ++v6)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v12) = v6;
    sub_29A7ACA64(v16, &v12);
    if (*&v16[0])
    {
      if (!*(a1 + 104))
      {
        for (i = *(*(a1 + 24) + 128); i; i = *i)
        {
          v9 = *(a1 + 40);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v11, (i + 2));
          pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v12, v9, &v11);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
          sub_29A1DE3A4(&v11);
          *(a1 + 112) |= (*(*i[4] + 328))(i[4], *(a1 + 48), i + 2, &v12, *(a1 + 8), v16, *(a1 + 56));
          if ((v15 & 7) != 0)
          {
            atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
          sub_29A1DE3A4(&v14);
          if (v13)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
          }
        }
      }
    }
  }

LABEL_17:
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29B01F348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void **);
  sub_29A1DCEA8(va);
  va_copy(v16, va1);
  sub_29A1E234C(va2);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t *sub_29B01F3FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *(a2 + 24);
  v6 = *(a3 + 24);
  if (v5 != v6)
  {
    v4 = ((v5 - **(a2 + 16)) >> 3) + ((*(a2 + 16) - *(a3 + 16)) << 6) - ((v6 - **(a3 + 16)) >> 3);
  }

  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  sub_29B01F48C(a1, v11, v10, v4);
  return a1;
}

uint64_t *sub_29B01F48C(uint64_t *result, _OWORD *a2, _OWORD *a3, unint64_t a4)
{
  v16 = result;
  v17 = 0;
  if (a4)
  {
    v7 = result;
    sub_29A00C968(result, a4);
    v8 = a2[1];
    v15[0] = *a2;
    v15[1] = v8;
    v9 = a3[1];
    v14[0] = *a3;
    v14[1] = v9;
    return sub_29B01F514(v7, v15, v14, a4, v10, v11, v12, v13);
  }

  return result;
}

_DWORD *sub_29B01F514(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a3[1];
  v13[0] = *a3;
  v13[1] = v11;
  result = sub_29B01F56C(a1, v14, v13, v9);
  *(a1 + 8) = result;
  return result;
}

_DWORD *sub_29B01F56C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  v5 = *(a2 + 24);
  if (v5 != *(a3 + 24))
  {
    v8 = *(a2 + 16);
    do
    {
      if (v5 == *v8)
      {
        v5 = *(v8 - 1) + 4096;
      }

      sub_29A1E21F4(v4, (v5 - 8));
      sub_29A1E2240(v4 + 1, (v5 - 4));
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
      if (v9 == *v8)
      {
        *(a2 + 16) = v8 - 1;
        v9 = *--v8 + 4096;
      }

      v5 = v9 - 8;
      *(a2 + 24) = v9 - 8;
      v4 = v14 + 2;
      v14 += 2;
    }

    while (*(a3 + 24) != v9 - 8);
  }

  v12 = 1;
  sub_29A1E2280(v11);
  return v4;
}

void *sub_29B01F654@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  result[1] = v2;
  return result;
}

void *sub_29B01F660()
{
  v1 = nullsub_1780;
  return sub_29B020A78(&var8);
}

void sub_29B01F6C8(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_SCENE_LIGHTS))
  {
    sub_29B2CEEAC();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this)
{
  if ((atomic_load_explicit(&qword_2A1753E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753E28))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_SCENE_LIGHTS);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1753E20 = *v2 == 1;
    __cxa_guard_release(&qword_2A1753E28);
  }

  return byte_2A1753E20;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::GetImagingSubprimData(uint64_t *__return_ptr a1@<X8>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>)
{
  if (!*a3)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_29B01F828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 31);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim();
}

void sub_29B01FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A57F434(va);
  sub_29A1DCEA8(v13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_UnregisterLightCollections(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCollectionCache(this);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v4)
  {
    v4 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v6, a2, v4);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetStage(&v5, this);
}

void sub_29B01FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v12 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v12 + 8))(v12, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  sub_29A5AD4D8(&a9);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_UpdateCollectionsChanged(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  CollectionCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCollectionCache(this);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v6, a2);
  v6[3] = 0;
  v6[0] = &unk_2A20618F0;
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetLightLinkCollectionAPI(v6, v5);
  LOBYTE(a2) = pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::UpdateCollection(CollectionCache, v5);
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(v5);
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetShadowLinkCollectionAPI(v6, v5);
  LOBYTE(CollectionCache) = pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::UpdateCollection(CollectionCache, v5);
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(v5);
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(v6);
  return (a2 | CollectionCache) & 1;
}

void sub_29B01FF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(&a9);
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, int *a2, _DWORD *a3, _DWORD *a4)
{
  LODWORD(v20) = *a2;
  v7 = *(a2 + 1);
  v21 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v22, a2 + 4);
  sub_29A1E2240(&v23, a2 + 5);
  v8 = *(a2 + 3);
  v24 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v9)
  {
    v9 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(a1, &v20, 1, (v9 + 128), a4);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
  sub_29A1DE3A4(&v22);
  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v21, v10);
  }

  v15 = *a2;
  v11 = *(a2 + 1);
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v17, a2 + 4);
  sub_29A1E2240(&v18, a2 + 5);
  v12 = *(a2 + 3);
  v19 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v14)
  {
    v14 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(a1, &v15, (v13 + 1264), 2, (v14 + 104), a4, 1, 0);
}

void sub_29B02032C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  a12 = &a18;
  sub_29A7A3864(&a12);
  a12 = &a21;
  sub_29A5BB908(&a12);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  IsTransformationAffectedByAttrNamed = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, a2);
  if (IsTransformationAffectedByAttrNamed)
  {
    return 1;
  }

  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsTransformationAffectedByAttrNamed);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v10)
  {
    v10 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v10 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11 = ((*(v10 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
  }

  if (*(v11 + 23) >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *v11;
  }

  v13 = *(EmptyString + 23);
  if (v13 >= 0)
  {
    v14 = *(EmptyString + 23);
  }

  else
  {
    v14 = EmptyString[1];
  }

  v15 = strlen(v12);
  if (v14 < v15 || ((v16 = v15, v13 >= 0) ? (v17 = EmptyString) : (v17 = *EmptyString), v15 = strncmp(v17, v12, v16), v15))
  {
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v18 = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v19)
    {
      v19 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    v20 = (*v19 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*v19 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
    v21 = *(v20 + 23) >= 0 ? v20 : *v20;
    v22 = *(v18 + 23);
    v23 = v22 >= 0 ? *(v18 + 23) : v18[1];
    v24 = strlen(v21);
    if (v23 < v24)
    {
      return 2;
    }

    v25 = v24;
    v26 = v22 >= 0 ? v18 : *v18;
    if (strncmp(v26, v21, v25))
    {
      return 2;
    }
  }

  if (pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_UpdateCollectionsChanged(this, a2))
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::GetMaterialResource(pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v6);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_HasAPI(a2, SchemaInfo))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(v9, a2, v8);
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9[3] = "usdImaging/lightAdapter.cpp";
  v9[4] = "GetMaterialResource";
  v9[5] = 262;
  v9[6] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::GetMaterialResource(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29B0208D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_29A124AB0(&a23);
  a10 = &a13;
  sub_29A124AB0(&a10);
  sub_29ABE8884(&a16);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(&a24);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B020A08(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B020A38(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void *sub_29B020A78(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD1E0;
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

void sub_29B020B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B020B28(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B020B50@<D0>(_OWORD *a1@<X8>)
{
  sub_29B020B8C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B020B8C(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AD220;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20ACFA0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B020C38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AD220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B020CA4()
{
  v1 = nullsub_1781;
  return sub_29B0211F4(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAPIAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a4@<X4>, void *a5@<X8>)
{
  if (*a2 | *a3)
  {
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v8)
    {
      v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    if (!v9)
    {
      v9 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    }

    sub_29B020FB4(a1, a4, (v9 + 24), &v18);
    v19 = v18;
    v18 = 0uLL;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
    if (!v10)
    {
      v10 = sub_29ABEE510(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v14, a1);
    v15 = 0;
    v14[0] = &unk_2A20618F0;
    v11 = operator new(0x30uLL);
    v11->~__shared_weak_count = &unk_2A20AD358;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v11->~__shared_weak_count_0, v14);
    v11->~__shared_weak_count_0 = &unk_2A205F368;
    v12 = v15;
    v11->__on_zero_shared_weak = v15;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11->__on_zero_shared_weak = (v11->__on_zero_shared_weak & 0xFFFFFFFFFFFFFFF8);
    }

    v11->~__shared_weak_count_0 = &unk_2A20618F0;
    v11[1].~__shared_weak_count = a4;
    v21 = v11;
    v13 = operator new(0x20uLL);
    v13->__vftable = &unk_2A20AD3A0;
    v13->__shared_owners_ = 0;
    v13->__shared_weak_owners_ = 0;
    v13[1].__vftable = v11;
    v21 = 0;
    sub_29B021BF0(&v21);
    v16 = v11;
    v17 = v13;
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v8 + 19, &v19, v10, &v16, &v20);
    *a5 = v20;
    v20 = 0uLL;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(v14);
    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }
  }
}

void sub_29B020F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B020FB4@<X0>(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x268uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial::UsdImagingDataSourceMaterial(v8, a1, a2, a3);

  return sub_29AF7BD80(a4, v8);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingLightAPIAdapter::InvalidateImagingSubprim@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  *(a5 + 56) = 0x800000000;
  if (!(v6 | v7))
  {
    v8 = *a4;
    v9 = *(a4 + 8);
    if (*a4 != v9)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        if (v10)
        {
          goto LABEL_5;
        }

        if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          result = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        }

        v12 = *(result + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = result[1];
        }

        if (v12 >= 7)
        {
          if (v13 < 0)
          {
            result = *result;
          }

          result = strncmp(result, "inputs:", 7uLL);
          if (!result)
          {
            break;
          }
        }

        if ((v11 & 1) == 0)
        {
          if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            result = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          }

          v17 = *(result + 23);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = result[1];
          }

          if (v17 < 6)
          {
            goto LABEL_27;
          }

          if (v18 < 0)
          {
            result = *result;
          }

          result = strncmp(result, "light:", 6uLL);
          if (result)
          {
LABEL_27:
            v10 = 0;
            v11 = 0;
            goto LABEL_28;
          }

          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetDefaultLocator(result);
          result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
        }

        v10 = 0;
        v11 = 1;
LABEL_28:
        if (++v8 == v9)
        {
          return result;
        }
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(result);
      v15 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v14);
      v16 = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetDefaultLocator(v15);
      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v16);
LABEL_5:
      v10 = 1;
      goto LABEL_28;
    }
  }

  return result;
}

void sub_29B0211CC(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(a1);

  operator delete(v1);
}

void *sub_29B0211F4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD2C8;
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

void sub_29B021280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0212A4(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B0212CC@<D0>(_OWORD *a1@<X8>)
{
  sub_29B021308(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B021308(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AD308;
  v2[5] = 0;
  v2[3] = &unk_2A20AD270;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0213B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AD308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B021420(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B02145C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29B02149C(void *a1@<X8>)
{
  v1 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753E48, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A1753E48);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v4)
      {
        v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v5 = *(v4 + 34);
      v13 = v5;
      if ((v5 & 7) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
        {
          v13 = v6;
        }
      }

      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v7)
      {
        v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v8 = *(v7 + 85);
      v14 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v14 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v9)
      {
        v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v10 = *(v9 + 51);
      v15 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1753E30 = 0;
      *algn_2A1753E38 = 0;
      qword_2A1753E40 = 0;
      sub_29A12EF7C(&qword_2A1753E30, &v13, &v16, 3uLL);
      for (i = 16; i != -8; i -= 8)
      {
        v12 = *(&v13 + i);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A1753E30, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1753E48);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29B021734(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, _OWORD *a3@<X8>)
{
  v16[4] = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v6 + 34) ^ *a2) <= 7)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetFiltersRel((a1 + 8), v12);
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v12, v10);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12[1], v7);
    }

    v16[1] = &off_2A2048F00;
    sub_29A23E64C(v16);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v8 + 85) ^ *a2) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v9)
    {
      v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v9 + 51) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetMaterialSyncModeAttr((a1 + 8), v12);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v12);
    }

    sub_29A580660(v12, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::LookupLightParamAttribute(v12, a2);
  }

  LOBYTE(v10[0]) = 1;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v10, v12);
  *a3 = *v12;
}

void sub_29B021B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = *(v16 - 88);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B021BF0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((v2 + 8));
    pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v2);
    operator delete(v3);
  }

  return a1;
}

void sub_29B021C38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B021C68(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AD3F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B021CA8(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((a1 + 8));
    pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

    operator delete(v2);
  }
}

void *sub_29B021CF0()
{
  v1 = nullsub_1782;
  return sub_29B022A84(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::~UsdImagingLightFilterAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter *this)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 37);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::Populate()
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29B021F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFB3F6C(a3, v5 + 37, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, int *a2, uint64_t a3, _DWORD *a4)
{
  LODWORD(v22) = *a2;
  v7 = *(a2 + 1);
  v23 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v24, a2 + 4);
  sub_29A1E2240(&v25, a2 + 5);
  v8 = *(a2 + 3);
  v26 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v9)
  {
    v9 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(a1, &v22, 1, (v9 + 128), a4);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
  sub_29A1DE3A4(&v24);
  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v10);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdImagingIsHdMaterialNetworkTimeVarying(a2, v10))
  {
    *a4 |= 0x10u;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(a2, v21);
  v11 = v21[0];
  v12 = v21[1];
  while (v11 != v12)
  {
    v13 = sub_29A5A6058(v11);
    if (!pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(v13, v14))
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::GetNumTimeSamples(v11, v15);
    }

    v11 += 32;
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v19, a2);
  v19 = &unk_2A2061A18;
  if (v20 && (*(v20 + 57) & 8) == 0 && (off_2A2061A38(&v19) & 1) != 0 || (v17[0] = "usdImaging/lightFilterAdapter.cpp", v17[1] = "TrackVariability", v17[2] = 100, v17[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v18 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v17, "lightFilter", 0) & 1) != 0))
  {
    CollectionCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCollectionCache(a1);
    pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::GetFilterLinkCollectionAPI(&v19, v17);
    pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::UpdateCollection(CollectionCache, v17);
    pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(v17);
  }

  pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&v19);
  v17[0] = v21;
  sub_29A5BB908(v17);
}

void sub_29B022240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, char a18)
{
  pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&a15);
  a15 = &a18;
  sub_29A5BB908(&a15);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, a2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetMaterialResource(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetSceneLightsEnabled(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a2);
    v9 = &unk_2A2061A18;
    if (v10 && (*(v10 + 57) & 8) == 0 && (off_2A2061A38(&v9) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(v7, a2, v6);
      pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
    }

    v7[3] = "usdImaging/lightFilterAdapter.cpp";
    v7[4] = "GetMaterialResource";
    v7[5] = 174;
    v7[6] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetMaterialResource(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *(a3 + 8) = 0;
}

void sub_29B0225D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, ...)
{
  va_start(va, a27);
  sub_29A124AB0(&a27);
  a11 = &a14;
  sub_29A124AB0(&a11);
  sub_29ABE8884(&a17);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(va);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder((v27 - 136));
  pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&a24);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 37);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3@<X3>, void *a4@<X8>)
{
  if (!*a2)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v6)
    {
      v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    if (!v7)
    {
      v7 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    }

    sub_29B020FB4(a1, a3, (v7 + 32), &v8);
    v9 = v8;
    v8 = 0uLL;
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v6 + 19, &v9, &v10);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B02291C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29A1DCEA8(&a10);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::InvalidateImagingSubprim(uint64_t *EmptyString@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      while (1)
      {
        if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        }

        v8 = *(EmptyString + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = EmptyString[1];
        }

        if (v8 >= 7)
        {
          if (v9 < 0)
          {
            EmptyString = *EmptyString;
          }

          EmptyString = strncmp(EmptyString, "inputs:", 7uLL);
          if (!EmptyString)
          {
            break;
          }
        }

        v6 = (v6 + 8);
        if (v6 == v7)
        {
          return;
        }
      }

      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(EmptyString);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a2, a3, a4, a5);
  }
}

void *sub_29B022A84(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD658;
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

void sub_29B022B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B022B34(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B022B5C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B022B98(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B022B98(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AD698;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AD418;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B022C44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AD698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B022CB0()
{
  v1 = nullsub_1783;
  sub_29B024A58(&v2);
  v1 = nullsub_1784;
  v2.__vftable = *pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20AD9A8, &v2, &v1, 1, 32, 0, 0);
  sub_29B024B00(&v2);
  v1 = nullsub_1789;
  v2.__vftable = *pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20ADC78, &v2, &v1, 1, 32, 0, 0);
  return sub_29B024BA8(&v2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::~UsdImagingMaterialAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 19);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B022FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29B023004@<X0>(const pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::UsdImagingDataSourceMaterialPrim(v8, a1, a2, a3);

  return sub_29B025248(a4, v8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::InvalidateImagingSubprimFromDescendent@<X0>(pxrInternal__aapl__pxrReserved__::HdMaterialSchema *a1@<X0>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  *(a2 + 56) = 0x800000000;
  DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(a1);
  return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, DefaultLocator);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v3 + 19);
}

void sub_29B02374C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_29A57F434(va);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((v32 - 176));
  a13 = (v32 - 152);
  sub_29A124AB0(&a13);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial((v32 - 128));
  sub_29A1DCEA8((v32 - 104));
  sub_29A0E9CEC(v32 - 96);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, uint64_t a3, _DWORD *a4)
{
  v5 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v8, a2);
  v8 = &unk_2A2061000;
  if (v9 && (*(v9 + 57) & 8) == 0 && (off_2A2061020(v5) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetMaterialRenderContexts(a1);
    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource(&v8, v6);
  }

  v6[3] = "usdImaging/materialAdapter.cpp";
  v6[4] = "TrackVariability";
  v6[5] = 199;
  v6[6] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const";
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29B023C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void **a21)
{
  sub_29A57F434(&a21);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&a12);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&a15);
  a21 = &a18;
  sub_29A124AB0(&a21);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial((v21 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  return 8 * ((*(v5 + 158) ^ *a4) > 7uLL);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  sub_29A1E21F4(&v14, a3);
  sub_29A1E2240(&v15, a3 + 1);
  v9 = *a2;
  v7 = *(a2 + 1);
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v11, a2 + 4);
  sub_29A1E2240(&v12, a2 + 5);
  v8 = *(a2 + 3);
  v13 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9);
}

void sub_29B023F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A57F434(va);
  sub_29A1DCEA8((v11 - 56));
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFB3F6C(a3, v5 + 19, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ResyncDependents(this, a2, a3);

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ProcessPrimResync(this, a2, a3);
}

void sub_29B024848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B024A58(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD928;
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

void sub_29B024AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B024B00(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD9D0;
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

void sub_29B024B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B024BA8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20ADCA0;
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

void sub_29B024C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B024C58(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B024C80@<D0>(_OWORD *a1@<X8>)
{
  sub_29B024CBC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B024CBC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AD968;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AD6E8;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B024D68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AD968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B024DDC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B024E04@<D0>(_OWORD *a1@<X8>)
{
  sub_29B024E40(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B024E40(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20ADA10;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20ADA60;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B024EEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ADA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B024F58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B024F88(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_29B024FE0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B025008@<D0>(_OWORD *a1@<X8>)
{
  sub_29B025044(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B025044(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20ADCE0;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20ADD30;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0250F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ADCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B02515C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B02518C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void *sub_29B0251CC(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_29A186EF4(__dst + 3, a3);
  return __dst;
}

void sub_29B02522C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B025248(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20ADF58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B0252A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0252BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0252E4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B025314(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20ADFA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B025354()
{
  v1 = nullsub_1790;
  return sub_29B02594C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingAPIAdapter::GetImagingSubprimData(pxrInternal__aapl__pxrReserved__ **a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, void *a4@<X8>)
{
  if (*a2 | *a3)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    if (!v6)
    {
      v6 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    }

    if ((*(v6 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v6 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredPropertiesInNamespace(a1, EmptyString, v25);
    v8 = v25[0];
    v9 = atomic_load(&qword_2A1753E50);
    if (!v9)
    {
      v9 = sub_29B025B78();
    }

    if ((*v9 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v10 = ((*v9 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v10 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredPropertiesInNamespace(a1, v10, &v23);
    v11 = v24 - v23;
    v12 = *(&v25[0] + 1) - *&v25[0];
    v21 = &v23;
    sub_29A58C74C(&v21);
    v23 = v25;
    sub_29A58C74C(&v23);
    SchemaToken = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetSchemaToken(v13);
    v15 = SchemaToken;
    if (v11 <= v12)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = operator new(0x28uLL);
      *v16 = &unk_2A20AE0B8;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v16 + 2), a1);
      *(v16 + 4) = 0;
      *(v16 + 1) = &unk_2A20611A8;
      SchemaToken = operator new(0x20uLL);
      v17 = SchemaToken;
      *SchemaToken = &unk_2A20AE100;
      SchemaToken[1] = 0;
      SchemaToken[2] = 0;
      SchemaToken[3] = v16;
    }

    v23 = v16;
    v24 = v17;
    v18 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetSchemaToken(SchemaToken);
    if (v8 == *(&v8 + 1))
    {
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v19 = operator new(0x28uLL);
      v19->~__shared_weak_count = &unk_2A20AE178;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v19->~__shared_weak_count_0, a1);
      v19->__on_zero_shared_weak = 0;
      v19->~__shared_weak_count_0 = &unk_2A20611A8;
      v20 = operator new(0x20uLL);
      v20->__vftable = &unk_2A20AE1C0;
      v20->__shared_owners_ = 0;
      v20->__shared_weak_owners_ = 0;
      v20[1].__vftable = v19;
    }

    v21 = v19;
    v22 = v20;
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v15, &v23, v18, &v21, v25);
    *a4 = v25[0];
    v25[0] = 0uLL;
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }
}

size_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingAPIAdapter::InvalidateImagingSubprim@<X0>(size_t result@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2 | *a3 || (DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDefaultLocator(result), result = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetDefaultLocator(DefaultLocator), v8 = *a4, v9 = *(a4 + 8), *a4 == v9))
  {
LABEL_43:
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    v10 = result;
    while (1)
    {
      if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      if (!v12)
      {
        v12 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      }

      if ((*(v12 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v13 = ((*(v12 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      if (*(v13 + 23) >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = *v13;
      }

      v15 = *(EmptyString + 23);
      if (v15 >= 0)
      {
        v16 = *(EmptyString + 23);
      }

      else
      {
        v16 = EmptyString[1];
      }

      v17 = strlen(v14);
      if (v16 >= v17)
      {
        v18 = v17;
        v19 = v15 >= 0 ? EmptyString : *EmptyString;
        v17 = strncmp(v19, v14, v18);
        if (!v17)
        {
          v28 = a5;
          v29 = v10;
          goto LABEL_46;
        }
      }

      if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v20 = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v20 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
      }

      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      if (!v21)
      {
        v21 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      }

      v22 = (*(v21 + 13) & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*(v21 + 13) & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
      v23 = *(v22 + 23) >= 0 ? v22 : *v22;
      v24 = *(v20 + 23);
      v25 = v24 >= 0 ? *(v20 + 23) : v20[1];
      result = strlen(v23);
      if (v25 >= result)
      {
        v26 = result;
        v27 = v24 >= 0 ? v20 : *v20;
        result = strncmp(v27, v23, v26);
        if (!result)
        {
          break;
        }
      }

      if (++v8 == v9)
      {
        goto LABEL_43;
      }
    }

    v28 = a5;
    v29 = DefaultLocator;
LABEL_46:

    return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v28, v29);
  }

  return result;
}

void sub_29B025924(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(a1);

  operator delete(v1);
}

void *sub_29B02594C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AE028;
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

void sub_29B0259D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0259FC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B025A24@<D0>(_OWORD *a1@<X8>)
{
  sub_29B025A60(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B025A60(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AE068;
  v2[5] = 0;
  v2[3] = &unk_2A20ADFD0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B025B0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AE068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B025B78()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "material:");
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A1753E50, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A1753E50);
  }

  return v0;
}

void sub_29B025C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_29B025CE4(uint64_t a1)
{
  *a1 = &unk_2A20AE0B8;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B025D38(uint64_t a1)
{
  *a1 = &unk_2A20AE0B8;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29B025F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, ...)
{
  va_start(va, a18);
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29A95E544(va);
  sub_29AAF2D20(v18 - 120);
  sub_29A5B6480(v18 - 64);
  _Unwind_Resume(a1);
}

void sub_29B026010(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B026038(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B026068(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE150))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0260A8(uint64_t a1)
{
  *a1 = &unk_2A20AE178;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B0260FC(uint64_t a1)
{
  *a1 = &unk_2A20AE178;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29B026158(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetCollectionBindings((a1 + 8), a2, &v25);
  if (v25 == v26)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    sub_29A039314(&v22, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 4));
    v5 = v25;
    for (i = v26; v5 != i; v5 += 48)
    {
      if (sub_29A7E7F1C(v5, v4))
      {
        v19 = 0u;
        v17 = 0u;
        v18 = 0u;
        sub_29ABE8360(v5, &v15);
        v16 = v15;
        v15 = 0uLL;
        v7 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetCollectionPath(&v17, &v16);
        sub_29ABE8360(v5 + 2, &v13);
        v14 = v13;
        v13 = 0uLL;
        v8 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetMaterialPath(v7, &v14);
        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindingStrength((v5 + 16), &v10);
        sub_29ABCCFA4(&v10, &v11);
        v12 = v11;
        v11 = 0uLL;
        v9 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetBindingStrength(v8, &v12);
        pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::Build(v9, &v20);
        v21 = v20;
        v20 = 0uLL;
        sub_29A01729C(&v22, &v21);
        if (*(&v21 + 1))
        {
          sub_29A014BEC(*(&v21 + 1));
        }

        if (*(&v20 + 1))
        {
          sub_29A014BEC(*(&v20 + 1));
        }

        if (*(&v12 + 1))
        {
          sub_29A014BEC(*(&v12 + 1));
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (*(&v14 + 1))
        {
          sub_29A014BEC(*(&v14 + 1));
        }

        if (*(&v13 + 1))
        {
          sub_29A014BEC(*(&v13 + 1));
        }

        if (*(&v16 + 1))
        {
          sub_29A014BEC(*(&v16 + 1));
        }

        if (*(&v15 + 1))
        {
          sub_29A014BEC(*(&v15 + 1));
        }

        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }

        if (*(&v18 + 1))
        {
          sub_29A014BEC(*(&v18 + 1));
        }

        if (*(&v17 + 1))
        {
          sub_29A014BEC(*(&v17 + 1));
        }
      }
    }

    *&v21 = (v23 - v22) >> 4;
    *&v20 = v22;
    sub_29AC00FD8(&v21, &v20, &v17);
    *a3 = v17;
    *&v17 = &v22;
    sub_29A0176E4(&v17);
  }

  *&v17 = &v25;
  sub_29A7EC448(&v17);
}

void sub_29B026398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = (v23 - 112);
  sub_29A0176E4(&a23);
  a23 = (v23 - 88);
  sub_29A7EC448(&a23);
  _Unwind_Resume(a1);
}

void sub_29B026488(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0264B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B0264E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE210))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::UsdImagingMaterialBindingsResolvingSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::~UsdImagingMaterialBindingsResolvingSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex *this, const void *a2)
{
  *this = &unk_2A207B330;
  v2 = (this + 112);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), a2);
  sub_29ABD4DDC(v2);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::~UsdImagingMaterialBindingsResolvingSceneIndex(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  v7 = *(a3 + 8);
  if (v7)
  {
    v8 = operator new(0x28uLL);
    *v8 = &unk_2A20AE2B0;
    v8[1] = v7;
    v9 = *(a3 + 16);
    v8[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v8[3] = *(this + 14);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }
}

void sub_29B0267C4(_Unwind_Exception *a1)
{
  sub_29B0273DC(v2);
  sub_29AC2B620(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::_PrimsDirtied(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v25 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1754020, memory_order_acquire) & 1) == 0)
  {
    v15 = __cxa_guard_acquire(&qword_2A1754020);
    if (v15)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDefaultLocator(v15);
      v17 = sub_29ABD30AC(v22, DefaultLocator);
      v18 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetDefaultLocator(v17);
      sub_29ABD30AC(v23, v18);
      v20[0] = v22;
      v20[1] = 2;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1753E58, v20);
      for (i = 14; i != -14; i -= 14)
      {
        sub_29ABC3488(&v22[i]);
      }

      __cxa_atexit(sub_29ABE62AC, &unk_2A1753E58, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1754020);
    }
  }

  v5 = *v3;
  if (*(v3 + 7428) < 0x11u)
  {
    v5 = v3;
  }

  v6 = *(v3 + 7424);
  if (!v6)
  {
    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v4, v3);
  }

  v7 = (v5 + 8);
  v8 = 464 * v6;
  while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(v7, &unk_2A1753E58) & 1) == 0)
  {
    v7 = (v7 + 464);
    v8 -= 464;
    if (!v8)
    {
      return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v4, v3);
    }
  }

  v24 = 0x1000000000;
  if (*(v3 + 7428) >= 0x11u)
  {
    v10 = *v3;
  }

  else
  {
    v10 = v3;
  }

  v11 = *(v3 + 7424);
  if (v11)
  {
    v12 = 464 * v11;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v10 + 8), &unk_2A1753E58))
      {
        v13 = sub_29ABD2F88(v21, (v10 + 8));
        v14 = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDefaultLocator(v13);
        pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetDefaultLocator(v14);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::ReplacePrefix(v21, v20);
        sub_29AC094F8(v21, v20);
        sub_29ABD3178(v20);
      }

      sub_29AD9391C(v22, v10);
      v10 += 464;
      v12 -= 464;
    }

    while (v12);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v4, v22);
  return sub_29ABD3844(v22);
}

void sub_29B026B34(_Unwind_Exception *a1)
{
  v2 = &STACK[0x3D8];
  v3 = -112;
  do
  {
    v2 = (sub_29ABC3488(v2) - 56);
    v3 += 56;
  }

  while (v3);
  __cxa_guard_abort(&qword_2A1754020);
  _Unwind_Resume(a1);
}

void sub_29B026BEC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC((a1 + 24));
}

void sub_29B026C48(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC((a1 + 24));
}

void *sub_29B026CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetSchemaToken(v3);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29B026D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

double sub_29B026D20@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 + 1;
  v7 = (*(*a1[1] + 24))(&v14);
  if ((*pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetSchemaToken(v7) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetFromParent(v6, &v16);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16))
    {
      IsDefined = 1;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetFromParent(v6, &v15);
      IsDefined = pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v15);
      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (IsDefined)
    {
      sub_29ABC3244(&v14, &v13);
      v9 = operator new(0x28uLL);
      v11 = a1[1];
      v10 = a1[2];
      *v9 = &unk_2A20AE2F8;
      v9[1] = v11;
      v9[2] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v9[3] = a1[3];
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
    }
  }

  result = *&v14;
  *a3 = v14;
  return result;
}

void sub_29B026F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_29A014BEC(v12);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(a1);
}

void sub_29B026FB0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC((a1 + 24));
}

void sub_29B02700C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC((a1 + 24));
}

void sub_29B02706C(uint64_t a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetFromParent((a1 + 8), &v3);
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetPurposes(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29B0270B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0270D0(uint64_t a1@<X0>, atomic_uint **a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetFromParent((a1 + 8), &v11);
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDirectMaterialBinding(&v11, a2, &v9);
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::GetMaterialPath(&v9, &v7);
  if (v7)
  {
    (*(*v7 + 32))(&v6, 0.0);
    v15 = 0;
    v16 = 0;
    sub_29ABE8360(&v6, &v13);
    v14 = v13;
    v13 = 0uLL;
    v5 = pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::Builder::SetPath(&v15, &v14);
    pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::Builder::Build(&v17, v5);
    *a3 = v17;
    v17 = 0uLL;
    if (*(&v14 + 1))
    {
      sub_29A014BEC(*(&v14 + 1));
    }

    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    sub_29A1DE3A4(&v6);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29B027208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v18 = *(v16 - 40);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  sub_29A1DCEA8(&a10);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(a1);
}

void sub_29B027288(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0272B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE390))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0272F8(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
    sub_29A1DE3A4((a1 + 32));
    sub_29ABD4DDC((a1 + 24));
  }
}

void sub_29B02736C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B02739C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE408))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0273DC(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
    sub_29A1DE3A4((a1 + 32));
    sub_29ABD4DDC((a1 + 24));
  }
}

void *sub_29B02744C()
{
  v1 = nullsub_1791;
  return sub_29B02A710(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::~UsdImagingMeshAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 7);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B0276F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B027708@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshPrim::UsdImagingDataSourceMeshPrim(v8, a1, &v13, a3);
  sub_29B02A93C(a4, v8);
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B027C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI(va);
  sub_29A1DCEA8(a10);
  _Unwind_Resume(a1);
}

void sub_29B028818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_29A57F434(va);
  v34 = *(v32 - 128);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
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

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::_IsBuiltinPrimvar(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, _DWORD *a3, __int16 a4, uint64_t a5, double a6)
{
  if (sub_29AF49C14(2))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::UpdateForTime(a1, a2, a3, a4, a5, a6);
  if ((a4 & 0x800) != 0)
  {
    PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
    sub_29AFB9C00(PrimvarDescCache, a3);
    v14 = 0;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v13)
    {
      v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29B02893C(a1, a2, (v13 + 1040), a6, &v14);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  if ((*(v10 + 35) ^ *a4) < 8)
  {
    return 256;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 58) ^ *a4) < 8)
  {
    return 256;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v13 + 130) ^ *a4) < 8)
  {
    return 2304;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v14 + 42) ^ *a4) < 8)
  {
    return 256;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v15 + 43) ^ *a4) < 8)
  {
    return 256;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v16 + 53) ^ *a4) < 8)
  {
    return 256;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v17)
  {
    v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v17 + 91) ^ *a4) < 8)
  {
    return 256;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v18)
  {
    v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v18 + 60) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v19)
  {
    v19 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v19 + 41) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v20)
  {
    v20 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v20 + 135) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v21)
  {
    v21 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v21 + 23) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v22)
  {
    v22 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v22 + 24) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v23)
  {
    v23 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v23 + 25) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v24)
  {
    v24 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v24 + 18) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v25)
  {
    v25 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v25 + 19) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v26)
  {
    v26 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v26 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v36, a2);
    v36[0] = &unk_2A2060168;
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v27)
    {
      v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v36, &v34);
    v35 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v34, v28);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4, v27 + 432, &v35, 2048);
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v29)
  {
    v29 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v29 + 5) ^ *a4) <= 7)
  {
    goto LABEL_63;
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v30)
  {
    v30 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v30 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v36, a2);
    v36[0] = &unk_2A205FF58;
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v31)
    {
      v31 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v36, &v34);
    v35 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v34, v32);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4, v31 + 432, &v35, 2048);
  }

  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v33)
  {
    v33 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v33 + 5) ^ *a4) <= 7)
  {
LABEL_63:

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(this, a2, a3, a4, 2048, 1);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void sub_29B029524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetTopology(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2, double a4)
{
  v6 = a1;
  sub_29A0ECEEC(&v9, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  v8 = 0;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v7)
  {
    v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29B02893C(v6, a2, (v7 + 1040), a4, &v8);
}

void sub_29B029A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetSubdivTags@<X0>(pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29A0ECEEC(&v13, "usdImaging", "virtual PxOsdSubdivTags pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetSubdivTags(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v6);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v8);
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo);
  if (result)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v11)
    {
      v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29AFD7134(&v12, a2, (v11 + 480));
  }

  if (v13)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return result;
}

void sub_29B02A038(_Unwind_Exception *a1)
{
  v3 = *(v2 - 120);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(v2 - 104);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(v2 - 88);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AB72D70(v1);
}

void sub_29B02A150(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>)
{
  a1[4] = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v4, this, a3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, uint64_t a5@<X4>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a6@<X8>, double a7@<D0>)
{
  sub_29A0ECEEC(&v16, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v13)
  {
    v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v13 + 54) ^ *a4) <= 7)
  {
    v15 = 0;
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v14)
    {
      v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29B02893C(a1, a2, (v14 + 1040), a7, &v15);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(a1, a2, a4, a5, a6, a7);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v17, v16);
  }
}

void sub_29B02A650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void *sub_29B02A710(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AE690;
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

void sub_29B02A79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02A7C0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B02A7E8@<D0>(_OWORD *a1@<X8>)
{
  sub_29B02A824(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B02A824(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AE6D0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AE430;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B02A8D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AE6D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B02A93C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AE720;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B02A994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02A9B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B02A9D8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B02AA08(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE770))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B02AA48(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_SHOW_NATIVE_PROTOTYPE_SCENE_INDICES))
  {
    sub_29B2CF170();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::New(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v3 = 0;
  sub_29B02C560(&v6, a1, a2, a3);
}

void sub_29B02AB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::UsdImagingNiPrototypePropagatingSceneIndex(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(a1);
  *v8 = &unk_2A20AE798;
  v8[14] = &unk_2A20AE7E0;
  v9 = *a2;
  v8[15] = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 120) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = pxrInternal__aapl__pxrReserved__::HdDataSourceHash(&v13, 0.0, 0.0);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  *(a1 + 128) = v11;
  *(a1 + 136) = *a4;
  v12 = a4[1];
  *(a1 + 144) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AC899B0((a1 + 152));
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2A20AE7F8;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1;
  *(a1 + 208) = a1;
  *(a1 + 216) = &unk_2A20AE838;
  sub_29B02AF68(*(a1 + 136), a2, *(a1 + 128), &v13);
}

void sub_29B02AE38(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, uint64_t a4, atomic_uint *a5, ...)
{
  if (a5)
  {
    if (atomic_fetch_add_explicit(a5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a5 + 8))(a5, a2, a3);
    }
  }

  sub_29ABD4DDC((v5 + 8));
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_InstanceAggregationSceneIndexObserver::_InstanceAggregationSceneIndexObserver(void *result, uint64_t a2)
{
  *result = &unk_2A20AE7F8;
  result[1] = 0;
  result[2] = a2;
  return result;
}

{
  *result = &unk_2A20AE7F8;
  result[1] = 0;
  result[2] = a2;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_MergingSceneIndexObserver::_MergingSceneIndexObserver(void *result, uint64_t a2)
{
  *result = &unk_2A20AE838;
  result[1] = 0;
  result[2] = a2;
  return result;
}

{
  *result = &unk_2A20AE838;
  result[1] = 0;
  result[2] = a2;
  return result;
}

void sub_29B02AF68(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = a3;
  *a5 = 0;
  a5[1] = 0;
  *&v6 = a2;
  v5 = sub_29B02BFC0((a1 + 64), a2, &unk_29B4D6118, &v6, &v7);
  *&v6 = &v8;
  sub_29B02C144((v5 + 7), &v8, &unk_29B4D6118, &v6);
  if (v5[6])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  v7 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_Populate(pxrInternal__aapl__pxrReserved__::SdfPath *a1, void *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(v6, a2, v3);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::begin(v6);
  v5 = *v4;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::~UsdImagingNiPrototypePropagatingSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this)
{
  v2 = (this + 168);
  sub_29B02C93C(this + 160, *(this + 21));
  *(this + 20) = v2;
  *(this + 22) = 0;
  *v2 = 0;
  *(this + 23) = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_RemoveRef();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::~UsdImagingNiPrototypePropagatingSceneIndex(this);
}

void sub_29B02B5B0(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = sub_29A31B8F0(a1 + 64, a2);
  if (a1 + 72 != v5)
  {
    v6 = v5;
    sub_29B02C498((v5 + 56), a3);
    if (!v6[9])
    {
      v7 = sub_29B2C6E8C(v6 + 5);
      if (!(v8 & 1 | v7))
      {
        sub_29A03AFE8((a1 + 64), v6);
        sub_29B2CF034((v6 + 4));

        operator delete(v6);
      }
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_AddPrim(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetPrototypeNameFromInstancerPath(a2, &v7);
  if (v7)
  {
    v8 = a2;
    v4 = sub_29A88FF4C(this + 20, a2, &unk_29B4D6118, &v8);
    sub_29B02CACC(v4 + 5, 0);
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetBindingScopeFromInstancerPath(a2, &v10);
    v5 = sub_29AC1199C(this + 23);
    (*(*v5 + 16))(&v8);
    v6 = v9;
    v9 = 0uLL;
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    sub_29A1DE3A4(&v10);
    pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_New(&v7, &v6, this + 17);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*(this + 21))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::GetInputScenes(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this)
{
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_SHOW_NATIVE_PROTOTYPE_SCENE_INDICES);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v2 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  v3 = *(*sub_29AC899F8(this + 19) + 40);

  return v3();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::GetEncapsulatedScenes(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = *(this + 19);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC899F8(this + 19) + 16);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC899F8(this + 19) + 24);

  return v2();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_InstanceAggregationSceneIndexObserver::PrimsAdded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 260) >= 0x11u)
  {
    v3 = *a3;
  }

  else
  {
    v3 = a3;
  }

  v4 = *(a3 + 256);
  if (v4)
  {
    v6 = 16 * v4;
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_AddPrim(*(a1 + 16), v3);
      v3 = (v3 + 16);
      v6 -= 16;
    }

    while (v6);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_InstanceAggregationSceneIndexObserver::PrimsRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 128);
  if (*(a3 + 132) >= 0x11u)
  {
    v4 = *a3;
  }

  else
  {
    v4 = a3;
  }

  if (v3)
  {
    v6 = 8 * v3;
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_RemovePrim(*(a1 + 16), v4);
      v4 = (v4 + 8);
      v6 -= 8;
    }

    while (v6);
  }
}

void sub_29B02BD2C(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void sub_29B02BD54(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29B02BD7C@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
    appended = pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v10, v6, a2);
    PrototypePath = pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetPrototypePath(appended);
    sub_29B02C268(a1, &v10, PrototypePath, &v11);
    *a3 = v11;
    v11 = 0;
    sub_29B02C308(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  else
  {
    sub_29B02C210(a1, &v11);
    *a3 = v11;
    v11 = 0;
    return sub_29B02C2D8(&v11);
  }
}

uint64_t *sub_29B02BFC0(uint64_t ***a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v7 = sub_29A153CF4(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29B02C058(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

double sub_29B02C058@<D0>(uint64_t a1@<X0>, uint64_t **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = **a2;
  *(v6 + 4) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v6 + 4) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = 0.0;
  *(v6 + 56) = 0u;
  *(v6 + 9) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 7) = v6 + 64;
  *(a3 + 16) = 1;
  return result;
}

void sub_29B02C0E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B02C0E8(a1, *a2);
    sub_29B02C0E8(a1, a2[1]);
    sub_29B2CF0B8((a2 + 4));

    operator delete(a2);
  }
}

uint64_t **sub_29B02C144(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = (a1 + 8);
LABEL_10:
    v11 = operator new(0x48uLL);
    *(v11 + 4) = **a4;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *sub_29B02C210@<X0>(uint64_t *a1@<X0>, pxrInternal__aapl__pxrReserved__::HdSceneIndexBase **a2@<X8>)
{
  v4 = operator new(0xA8uLL);
  result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex::UsdImaging_NiPrototypePruningSceneIndex(v4, a1);
  *a2 = v4;
  return result;
}

uint64_t sub_29B02C268@<X0>(uint64_t *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xC0uLL);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::UsdImagingRerootingSceneIndex(v8, a1, a2, a3);
  *a4 = v8;
  return result;
}

void **sub_29B02C338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void ***a3@<X8>)
{
  v6 = operator new(0x1340uLL);
  result = pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::HdFlatteningSceneIndex(v6, a1, a2);
  *a3 = v6;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *sub_29B02C3F8@<X0>(void *a1@<X0>, char a2@<W1>, const pxrInternal__aapl__pxrReserved__::TfToken **a3@<X2>, pxrInternal__aapl__pxrReserved__::HdSceneIndexBase **a4@<X8>)
{
  v8 = operator new(0xA8uLL);
  result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::UsdImaging_NiInstanceAggregationSceneIndex(v8, a1, a2, a3);
  *a4 = v8;
  return result;
}

void sub_29B02C498(uint64_t **a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = (a1 + 1);
    do
    {
      v5 = v2[4];
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v2;
      }

      v2 = v2[v7];
    }

    while (v2);
    if (v4 != (a1 + 1) && v4[4] <= a2)
    {
      v8 = sub_29B2C6E8C(v4 + 5);
      if (!(v9 & 1 | v8))
      {
        v10 = sub_29B2C6E8C(v4 + 7);
        if (!(v11 & 1 | v10))
        {
          sub_29A03AFE8(a1, v4);
          sub_29B2CF0B8((v4 + 4));

          operator delete(v4);
        }
      }
    }
  }
}

void sub_29B02C5D4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20AE8E0;
  sub_29B02C6C4(a1 + 3, a2, a3, a4);
}

void sub_29B02C650(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AE8E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B02C748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  sub_29ABD4DDC(v3);
}

uint64_t sub_29B02C770(uint64_t a1, uint64_t a2)
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

void sub_29B02C808(uint64_t a1, uint64_t a2)
{
  sub_29B02C85C(a2 + 64, *(a2 + 72));
  sub_29B02C88C(a2 + 32);
  v3 = (a2 + 8);
  sub_29A124AB0(&v3);
  sub_29ABD4DDC(a2);
}

void sub_29B02C85C(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    sub_29B2CF1A4(a2, result);
  }
}

uint64_t sub_29B02C88C(uint64_t a1)
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

void sub_29B02C93C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B02C93C(a1, *a2);
    sub_29B02C93C(a1, a2[1]);
    sub_29B02C998((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29B02C998(uint64_t a1)
{
  sub_29B02CACC((a1 + 8), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void *sub_29B02C9E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29B02CA40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B02CA58(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29B02CAB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02CACC(uint64_t **a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_29B02CB08(v3);
  }
}

void sub_29B02CB08(uint64_t *a1)
{
  v2 = sub_29AC899F8(a1 + 1);
  pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex::RemoveInputScene(v2, a1);
  sub_29AC4F160(a1 + 1);
}

void sub_29B02CB58(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t *a3, uint64_t *a4)
{
  InstancerPath = pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetInstancerPath(a1);
  sub_29B02C268(a3, InstancerPath, a2, &v9);
  *a1 = v9;
  v9 = 0;
  sub_29B02C308(&v9);
  *(a1 + 1) = *a4;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex>::_AddRef();
}

void *sub_29B02CC10()
{
  v1 = nullsub_1792;
  return sub_29B02EE64(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::~UsdImagingNurbsCurvesAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter *this)
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 10);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B02CE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, _DWORD *a3, __int16 a4, uint64_t a5, double a6)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::UpdateForTime(a1, a2, a3, a4, a5, a6);
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  sub_29AFB9C00(PrimvarDescCache, a3);
  if (a4 < 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v16, a2);
    v17 = 0;
    v16[0] = &unk_2A2060598;
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v11)
    {
      v11 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v16, (v11 + 48), v15);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v15, v12);
  }

  if ((a4 & 0x800) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v16, a2);
    v17 = 0;
    v16[0] = &unk_2A2060598;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v13)
    {
      v13 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v16, (v13 + 40), v15);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v15, v14);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 165) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v28, a2);
    v28[0] = &unk_2A205FD48;
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v12)
    {
      v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomCurves::GetWidthsInterpolation(v28, &v26);
    v27 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v26, v13);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4, v12 + 672, &v27, 0x8000);
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v14 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v28, a2);
    v28[0] = &unk_2A2060168;
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v15)
    {
      v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v28, &v26);
    v27 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v26, v16);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4, v15 + 432, &v27, 2048);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v18)
  {
    v18 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v18 + 6) ^ *a4) <= 7)
  {
    v19 = this;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = 0x8000;
    goto LABEL_30;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v24)
  {
    v24 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  v25 = *(v24 + 5) ^ *a4;
  v19 = this;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  if (v25 <= 7)
  {
    v23 = 2048;
LABEL_30:

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(v19, v20, v21, v22, v23, 1);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void sub_29B02E20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::~UsdGeomPointBased(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::GetTopology(void x0_0, pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
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

void sub_29B02E3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, uint64_t a5@<X4>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a6@<X8>, double a7@<D0>)
{
  sub_29A0ECEEC(&v22, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v13)
  {
    v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v13 + 54) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v14)
    {
      v14 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v14 + 40), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v15);
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v16)
  {
    v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v16 + 84) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v17)
    {
      v17 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v17 + 48), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v18);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(a1, a2, a4, a5, a6, a7);
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }
}

void sub_29B02EA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 11);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B02ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B02ECFC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim::UsdImagingDataSourceNurbsCurvesPrim(v8, a1, &v13, a3);
  sub_29B02F090(a4, v8);
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

double pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim::Invalidate(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  *(a5 + 56) = 0x800000000;
  return result;
}

void *sub_29B02EE64(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AEB90;
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

void sub_29B02EEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02EF14(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B02EF3C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B02EF78(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B02EF78(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AEBD0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AE930;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B02F024(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AEBD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B02F090(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AEC20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B02F0E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02F104(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B02F12C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B02F15C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AEC70))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B02F19C()
{
  v1 = nullsub_1793;
  return sub_29B0302C0(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::~UsdImagingNurbsPatchAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter *this)
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B02F3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetMeshPoints(pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v5, a1, (v4 + 816));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  if ((*(v10 + 151) ^ *a4) < 8)
  {
    return 256;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 163) ^ *a4) < 8)
  {
    return 256;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 91) ^ *a4) < 8)
  {
    return 256;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetMeshTopology(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v5, a1);
  v4[62] = 0;
  v5 = &unk_2A20600B8;
  pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch::GetUVertexCountAttr(v3, v4);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<int>();
}

void sub_29B02FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 9);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B030144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B030158@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim::UsdImagingDataSourceNurbsPatchPrim(v8, a1, &v13, a3);
  sub_29B0304EC(a4, v8);
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

double pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim::Invalidate(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  *(a5 + 56) = 0x800000000;
  return result;
}

void *sub_29B0302C0(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AEEF8;
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

void sub_29B03034C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B030370(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B030398@<D0>(_OWORD *a1@<X8>)
{
  sub_29B0303D4(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B0303D4(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AEF38;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AEC98;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B030480(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AEF38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B0304EC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AEF88;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B030544(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B030560(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B030588(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B0305B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AEFD8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0305F8(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_SHOW_POINT_PROTOTYPE_SCENE_INDICES))
  {
    sub_29B2CF1FC();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetDataSource(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this@<X0>, void *x8_0@<X8>)
{
  (*(*this + 16))(&v6);
  v8 = v7;
  v7 = 0uLL;
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent(&v8, &v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetPiPropagatedPrototypes(&v4, &v6);
  v5 = v4;
  v4 = 0uLL;
  sub_29B030728(&v5, x8_0);
  if (*(&v5 + 1))
  {
    sub_29A014BEC(*(&v5 + 1));
  }

  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }
}

void sub_29B0306FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  v17 = *(v15 - 24);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B030728@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20AF138, 0)) != 0)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_CreateDataSource@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = operator new(0x20uLL);
  v6[3] = 0;
  v6[2] = 0;
  *v6 = &unk_2A20AF160;
  v6[1] = v6 + 2;
  sub_29B033074(a3, v6);
  sub_29A1E21F4(&v20, a2);
  v7 = sub_29A1E2240(&v21, a2 + 1);
  v22 = 0;
  SchemaToken = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSchemaToken(v7);
  memset(v14, 0, sizeof(v14));
  v9 = a3[1];
  v12 = *a3;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetPiPropagatedPrototypes(v14, &v12);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::Build(&v15, v10);
  v16 = v15;
  v15 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v16, &v17);
  v23 = v17;
  v17 = 0uLL;
  memset(v18, 0, sizeof(v18));
  sub_29AC3E6DC(v18, &v20, &v24, 1uLL);
  (*(*this + 40))(this, v18);
  v19 = v18;
  sub_29AC3E968(&v19);
  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  return sub_29ABF7D9C(v14);
}

void sub_29B0309B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetOrCreateDataSource(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetDataSource(this, &v7);
  if (v7)
  {
    v6 = v8;
    *a3 = v7;
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_CreateDataSource(this, a2, a3);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B030AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::AddPropagatedPrototype(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v4 = MEMORY[0x2A1C7C4A8](this);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v21 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetOrCreateDataSource(v4, v9, &v15);
  sub_29B030D64(v15, v8, v6);
  if ((atomic_load_explicit(&qword_2A1754060, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_2A1754060);
    if (v12)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetDefaultLocator(v12);
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      if (!v14)
      {
        v14 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1754028, DefaultLocator, v14 + 8);
      __cxa_atexit(sub_29ABC33B4, qword_2A1754028, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1754060);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v16, qword_2A1754028);
  sub_29ABD2F24(&v17, v10, v16);
  v20 = 0x1000000001;
  sub_29ABD3720(&v17, v19, v19);
  (*(*v11 + 56))(v11, v19);
  sub_29ABD3844(v19);
  sub_29ABD3178(&v18);
}

void sub_29B030CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  __cxa_guard_abort(&qword_2A1754060);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(a1);
}

int *sub_29B030D64(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a2;
  v4 = sub_29B032D44((a1 + 8), a2, &unk_29B4D6118, &v6);
  sub_29A2258F0(v4 + 10, a3);
  return sub_29A225948(v4 + 11, a3 + 1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::RemovePropagatedPrototype(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v10[17] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetDataSource(this, &v6);
  if (v6)
  {
    sub_29B032E48((v6 + 8), a3);
    if (!*(v6 + 24))
    {
      sub_29A1E21F4(&v8, a2);
      sub_29A1E2240(&v9, a2 + 1);
      v10[16] = 0x1000000001;
      sub_29A1E21F4(v10, &v8);
      sub_29A1E2240(v10 + 1, &v9);
      (*(*this + 48))(this, v10);
      sub_29AC26348(v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
      sub_29A1DE3A4(&v8);
    }
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29B030EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_RerootingSceneIndex@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, uint64_t *a2@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t *a4@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(this) && pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(a3))
  {
    *a4 = *a2;

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  sub_29B02C268(a2, this, a3, &v9);
  *a4 = v9;
  v9 = 0;
  return sub_29B02C308(&v9);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v7 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(a1, a2, &v7, v5, v6);
}

{
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v7 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(a1, a2, &v7, v5, v6);
}

void sub_29B031068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(uint64_t a1, uint64_t a2, _DWORD *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  *a1 = &unk_2A20AF000;
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  v10 = *(a2 + 8);
  *(a1 + 24) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), a4);
  sub_29A1E2240((a1 + 36), a4 + 1);
  sub_29A1E21F4((a1 + 40), a5);
  sub_29A1E2240((a1 + 44), a5 + 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_RerootingSceneIndex(a4, *a2, a4, &v11);
  pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex::New(&v11, a3, a4);
}

void sub_29B0311F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  sub_29B0331B0(v12, *v13);
  sub_29ABD4DDC((v11 + 56));
}

void sub_29B031334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *this)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(v3, this + 6, this + 8);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::begin(v3);
  v2 = *v1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *this)
{
  v11[17] = *MEMORY[0x29EDCA608];
  v2 = *(this + 10);
  if (v2)
  {
    v11[16] = 0x1000000000;
    if (v2 >= 0x11)
    {
      sub_29AC3D990(v11, v2);
    }

    v3 = *(this + 8);
    v4 = this + 72;
    if (v3 != this + 72)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v10, (v3 + 32), (this + 32), (this + 40), 1);
        sub_29AC4DAF8(v11, &v10);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
        sub_29A1DE3A4(&v10);
        v5 = *(v3 + 1);
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
            v6 = *(v3 + 2);
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
    }

    v8 = sub_29AF2A104((*(this + 2) + 8));
    (*(*v8 + 48))(v8, v11);
    sub_29B0331B0(this + 64, *(this + 9));
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 8) = v4;
    sub_29AC26348(v11);
  }

  v9 = sub_29AC899F8((*(this + 2) + 24));
  pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex::RemoveInputScene(v9, this + 7);
  sub_29B0331B0(this + 64, *(this + 9));
  sub_29ABD4DDC(this + 7);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(this);
}

void sub_29B031754(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerHash(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v5 = *(this + 10);
  v6 = *(this + 11);
  v7 = v5 + *(a2 + 1) + ((*(a2 + 1) + *a2 + (*(a2 + 1) + *a2) * (*(a2 + 1) + *a2)) >> 1);
  v8 = v6 + v5 + ((v7 + v7 * v7) >> 1);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("ForInstancer%zx", a2, a3, bswap64(0x9E3779B97F4A7C55 * (v6 + ((v8 + v8 * v8) >> 1))));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a4, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_29B03185C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerTopology(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *a1@<X0>, _OWORD *a2@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetSchemaToken(a1);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  sub_29ABE9C5C(a1, &v6);
  v7 = v6;
  v6 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::Builder::SetPrototypes(&v8, &v7);
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::Builder::Build(v5, &v12);
  v13 = v12;
  v12 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v13, &v14);
  *a2 = v14;
  v14 = 0uLL;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }

  if (*(&v6 + 1))
  {
    sub_29A014BEC(*(&v6 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }

  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }
}

void sub_29B031974(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 - 56);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v9 - 72);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (a9)
  {
    sub_29A014BEC(a9);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29AD0B460(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancerPrototypes(void *a1, uint64_t ***a2, pxrInternal__aapl__pxrReserved__::SdfPath *this, unint64_t *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v23, this, (a1 + 4), (a1 + 5), 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerHash(a1, this, v8, &v22);
  sub_29B0333C4(v20, a4[4], a4[4] + 8 * *a4);
  if (*a2 != (a2 + 1))
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::find<pxrInternal__aapl__pxrReserved__::SdfPath>();
  }

  sub_29A1E2AEC(v20, *(&v20[0] + 1));
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_29B031ED4(v20, *a4);
  v9 = *a4;
  if (*a4)
  {
    v10 = a4[4];
    v11 = 8 * v9;
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v19, v10, &v22);
      sub_29B033448(v20, v19);
      v25 = v10;
      v12 = (sub_29A88FF4C(a2, v10, &unk_29B4D6118, &v25) + 10);
      if (!*v12)
      {
        v13 = operator new(0x58uLL);
        pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(v13, (a1 + 2), &v23, v10, v19);
        sub_29B03353C(v12, v13);
        v14 = sub_29B031E54((a1[2] + 16));
        pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::AddPropagatedPrototype(v14, v10, &v22, v19);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v19 + 1);
      sub_29A1DE3A4(v19);
      v10 = (v10 + 8);
      v11 -= 8;
    }

    while (v11);
  }

  v15 = sub_29AF2A104((a1[2] + 8));
  sub_29A1E21F4(&v25, &v23);
  sub_29A1E2240(&v25 + 1, &v23 + 1);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v16)
  {
    v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v17 = *(v16 + 21);
  v26 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerTopology(v20, &v27);
  memset(v19, 0, sizeof(v19));
  sub_29AC3E6DC(v19, &v25, &v28, 1uLL);
  (*(*v15 + 40))(v15, v19);
  v24 = v19;
  sub_29AC3E968(&v24);
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
  sub_29A1DE3A4(&v25);
  sub_29ABED558(v20);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
  return sub_29A1DE3A4(&v23);
}

void sub_29B031D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_29A1DCEA8(va2);
  sub_29ABED558(va);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B031E54(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void sub_29B031ED4(unint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    v6 = sub_29ABF47AC(a1, a2);
    goto LABEL_9;
  }

  if (a1[3])
  {
    v4 = a1;
  }

  else
  {
    v4 = (v3 - 2);
  }

  if (*v4 < a2)
  {
    v5 = *a1;
    v6 = sub_29ABF47AC(a1, a2);
    sub_29A7D8ED8(v3, &v3[2 * v5], v6);
LABEL_9:
    sub_29ABED558(a1);
    a1[4] = v6;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_GetPrototypes(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent((a1 + 8), &v5);
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetPrototypes(&v3, &v5);
  if (v3)
  {
    (*(*v3 + 32))(v3, 0.0);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B031FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(void *a1, uint64_t ***a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = sub_29AC1199C(a1 + 6);
  (*(*v6 + 16))(v7);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_GetPrototypes(v7, v9);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancerPrototypes(a1, a2, a3, v9);
  sub_29ABED558(v9);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if ((v7[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v7[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29B0320E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  sub_29ABED558(va);
  if (a7)
  {
    sub_29A014BEC(a7);
  }

  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v7[0] = a2;
  v6 = sub_29A389294((a1 + 64), a2, &unk_29B4D6118, v7, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_GetPrototypes(a3, v7);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancerPrototypes(a1, v6 + 5, a2, v7);
  sub_29ABED558(v7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(uint64_t ***this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v6 = a2;
  v4 = sub_29A389294(this + 8, a2, &unk_29B4D6118, &v6, &v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(this, v4 + 5, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::PrimsAdded(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *this, uint64_t a2, uint64_t a3)
{
  v12[17] = *MEMORY[0x29EDCA608];
  if (*(a3 + 260) >= 0x11u)
  {
    v3 = *a3;
  }

  else
  {
    v3 = a3;
  }

  v4 = *(a3 + 256);
  if (v4)
  {
    v6 = 16 * v4;
    do
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v7)
      {
        v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v7 + 21) ^ *(v3 + 1)) > 7)
      {
        if (sub_29B033578(this + 8, v3))
        {
          v8 = sub_29AF2A104((*(this + 2) + 8));
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v9, v3, (this + 32), (this + 40), 1);
          sub_29A1E21F4(&v10, &v9);
          sub_29A1E2240(&v11, &v9 + 1);
          v12[16] = 0x1000000001;
          sub_29A1E21F4(v12, &v10);
          sub_29A1E2240(v12 + 1, &v11);
          (*(*v8 + 48))(v8, v12);
          sub_29AC26348(v12);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
          sub_29A1DE3A4(&v10);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
          sub_29A1DE3A4(&v9);
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(this, v3);
      }

      v3 = (v3 + 16);
      v6 -= 16;
    }

    while (v6);
  }
}

void sub_29B0323D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, void *a12)
{
  sub_29AC26348(&a12);
  sub_29AC3C0E4(&a10);
  sub_29A1DCEA8(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::PrimsDirtied(void *a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2A17540A0, memory_order_acquire) & 1) == 0)
  {
    v9 = __cxa_guard_acquire(&qword_2A17540A0);
    if (v9)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v9);
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
      if (!v11)
      {
        v11 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1754068, DefaultLocator, v11 + 1);
      __cxa_atexit(sub_29ABC33B4, qword_2A1754068, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17540A0);
    }
  }

  if (*(a3 + 7428) >= 0x11u)
  {
    v5 = *a3;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a3 + 7424);
  if (v6)
  {
    v7 = 464 * v6;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains((v5 + 8), qword_2A1754068))
      {
        v8 = sub_29A55CDFC((a1 + 8), v5);
        if (a1 + 9 != v8)
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(a1, (v8 + 40), v5);
        }
      }

      v5 += 464;
      v7 -= 464;
    }

    while (v7);
  }
}

void **pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::PrimsRemoved(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0x1000000000;
  v3 = *(a3 + 128);
  if (*(a3 + 132) >= 0x11u)
  {
    v4 = *a3;
  }

  else
  {
    v4 = a3;
  }

  if (v3)
  {
    v6 = (a1 + 9);
    v7 = (v4 + 8 * v3);
    do
    {
      v8 = v6;
      if (*v6)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
      }

      while (v6 != v8 && pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v8 + 4), v4))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v11, (v8 + 4), (a1 + 4), (a1 + 5), 1);
        sub_29AC4DAF8(v12, &v11);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
        sub_29A1DE3A4(&v11);
        v8 = sub_29B0335C0(a1 + 8, v8);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v7);
    if (v13)
    {
      v9 = sub_29AF2A104(a1[2] + 1);
      (*(*v9 + 48))(v9, v12);
    }
  }

  return sub_29AC26348(v12);
}

void sub_29B0326DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29AC26348(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::UsdImagingPiPrototypePropagatingSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(a1);
  *v3 = &unk_2A20AF040;
  v3[14] = &unk_2A20AF088;
  sub_29B03360C(&v4, a2);
}

void sub_29B032834(_Unwind_Exception *a1)
{
  v3 = v2;
  operator delete(v3);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((v1 + 17), v5);
  v6 = v1[16];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::GetInputScenes(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *this)
{
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_SHOW_POINT_PROTOTYPE_SCENE_INDICES);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v2 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  v3 = *(*sub_29AC899F8((*(this + 15) + 24)) + 40);

  return v3();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::GetEncapsulatedScenes(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *this)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = *(*(this + 15) + 24);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC899F8((*(this + 15) + 24)) + 16);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC899F8((*(this + 15) + 24)) + 24);

  return v2();
}

pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::_MergingSceneIndexObserver *pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::_MergingSceneIndexObserver::_MergingSceneIndexObserver(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::_MergingSceneIndexObserver *this, pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *a2)
{
  *this = &unk_2A20AF0A0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  sub_29B033A10(&v5, this);
  v3 = sub_29AC899F8((*(*(this + 2) + 120) + 24));
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::AddObserver(v3, &v5);
  sub_29B28F9E0(&v5);
  return this;
}

void sub_29B032C78(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void sub_29B032CA0(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver **a1)
{
  sub_29B033504(a1 + 20);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 17), v2);
  v3 = a1[16];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);
}

void sub_29B032CF0(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver **a1)
{
  sub_29B033504(a1 + 20);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 17), v2);
  v3 = a1[16];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);

  operator delete(v4);
}

uint64_t *sub_29B032D44(uint64_t ***a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v10, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v11 = *a4;
    sub_29B032DD8((v7 + 4), &v11);
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

uint64_t sub_29B032DD8(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  *a1 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 12));
  return a1;
}

uint64_t sub_29B032E48(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29A31B8F0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_29A03AFE8(a1, v3);
  sub_29A349A74(v4 + 4);
  operator delete(v4);
  return 1;
}

void sub_29B032EA4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20AF160;
  sub_29A349AC0(a1 + 8, *(a1 + 2));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B032F00(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20AF160;
  sub_29A349AC0(a1 + 8, *(a1 + 2));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29B032F60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, a1[3]);
  v5 = a1[1];
  v6 = a1 + 2;
  if (v5 != v6)
  {
    do
    {
      result = sub_29A1D8028(a2, v5 + 4);
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  return result;
}

void sub_29B032FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B033018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_29A31B8F0(a1 + 8, a2);
  if (a1 + 16 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    result = sub_29ABE8360((result + 40), &v6);
    *a3 = v6;
  }

  return result;
}

void *sub_29B033074(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AF190;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B0330CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0330E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B033110(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B033140(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AF1E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0331B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B0331B0(a1, *a2);
    sub_29B0331B0(a1, a2[1]);
    sub_29B033278((a2 + 5), a2[6]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 9);
    sub_29A1DE3A4(a2 + 8);

    operator delete(a2);
  }
}

_DWORD *sub_29B03322C(uint64_t a1, uint64_t a2)
{
  sub_29B033278(a2 + 8, *(a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

void sub_29B033278(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B033278(a1, *a2);
    sub_29B033278(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(v4);
      operator delete(v5);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 9);
    sub_29A1DE3A4(a2 + 8);

    operator delete(a2);
  }
}

_DWORD *sub_29B0332FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void *sub_29B033350(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29B0333AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B0333C4(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return a1;
}

void sub_29B033448(uint64_t *a1, _DWORD *a2)
{
  if (!*(a1 + 2))
  {
    v4 = *a1;
    if (!a1[3])
    {
      v5 = a1[4];
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = a1[4];
      if (v5)
      {
        if (a1[3])
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        v9 = sub_29A1E21F4((v5 + 8 * v4), a2);
        sub_29A1E2240(v9 + 1, a2 + 1);
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_29B2CF2AC(a1, v4, a2);
    goto LABEL_13;
  }

  sub_29B2CF230(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver **sub_29B033504(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(v2);
  }

  return a1;
}

void sub_29B03353C(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver **a1, pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(v3);
  }
}

uint64_t sub_29B033578(uint64_t **a1, uint64_t a2)
{
  v3 = sub_29A55CDFC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_29B0335C0(a1, v3);
  return 1;
}

uint64_t *sub_29B0335C0(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_29A03AFE8(a1, a2);
  sub_29B03322C(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_29B033668(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20AF208;
  sub_29B033758(a1 + 3, a2);
}

void sub_29B0336E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AF208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B033884(pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex **a1@<X8>)
{
  v2 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::HdRetainedSceneIndex(v2);
  *v2 = &unk_2A20AF258;
  *a1 = v2;
}

void sub_29B0338E8(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1)
{
  *a1 = &unk_2A20844A8;
  sub_29AC3E4EC(a1 + 14);

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);
}

void sub_29B03393C(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1)
{
  *a1 = &unk_2A20844A8;
  sub_29AC3E4EC(a1 + 14);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);

  operator delete(v2);
}

void *sub_29B033A10(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29B033A6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B033A84()
{
  v1 = nullsub_1794;
  return sub_29B03497C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::~UsdImagingPlaneAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 12);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B033D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B033D40@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29B034BA8(v8, a1, &v13, a3);
  sub_29B03519C(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::InvalidateImagingSubprim(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    sub_29B033EA8(a1, a2, a3, a4, a5);
  }

  *(a5 + 56) = 0x800000000;
}

void sub_29B033EA8(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, uint64_t a4@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29B034F08();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178(v11);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B034094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 164) ^ *a4) < 8)
  {
    return 32;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 67) ^ *a4) < 8)
  {
    return 32;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 3) ^ *a4) < 8)
  {
    return 32;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetMeshPoints(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v10, a1);
  v9 = 0x4000000000000000;
  v10[0] = &unk_2A2060110;
  v8 = 0x4000000000000000;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v4 = *(v3 + 170);
  v7 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v5;
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPlane::GetWidthAttr(v10, &v6);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
}

void sub_29B034814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_29A5888DC(&a15);
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPlane::~UsdGeomPlane((v19 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetMeshTopology(pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter *this@<X0>, uint64_t a2@<X8>)
{
  PlaneTopology = pxrInternal__aapl__pxrReserved__::UsdImagingGetPlaneTopology(this);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(v4, PlaneTopology, 0);
  *(a2 + 8) = &off_2A20A8498;
  sub_29AFBD25C(a2, v4);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetTopology(uint64_t a1@<X8>)
{
  v2 = sub_29A0ECEEC(&v3, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetMeshTopology(v2, a1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v4, v3);
  }
}

void *sub_29B03497C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AF520;
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

void sub_29B034A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B034A2C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B034A54@<D0>(_OWORD *a1@<X8>)
{
  sub_29B034A90(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B034A90(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AF560;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AF2C0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B034B3C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AF560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B034BA8(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 8);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, (a3 + 16));
  sub_29A1E2240(&v15, (a3 + 20));
  v9 = *(a3 + 24);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::UsdImagingDataSourceGprim(a1, a2, &v12, a4);
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

  *a1 = &unk_2A20AF5B0;
  return a1;
}

void sub_29B034CD4(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B034D70(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void *sub_29B034E10@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29B034E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29B034E64(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29B034F08();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29B034F08()
{
  if ((atomic_load_explicit(&qword_2A14FA278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA278))
  {
    v1 = sub_29B034FE8(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA250, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA250, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA278);
  }

  return &unk_2A14FA250;
}

unint64_t sub_29B034FE8@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomPlane::GetSchemaAttributeNames(0);
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v5 = *v3;
      if ((*(result + 296) ^ *v3) >= 8)
      {
        v6 = *v3;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v7, v3);
        v8[0] = &unk_2A20A6098;
        v8[1] = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v8[3] = v8;
        sub_29AF7EF90(a1, &v6);
        sub_29AF72C3C(v8);
        result = sub_29ABC3488(v7);
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29B035150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29B03519C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AF5F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B0351F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B035210(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B035238(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B035268(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AF648))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B0352A8()
{
  v1 = nullsub_1795;
  return sub_29B035628(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::~UsdImagingPluginLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 33);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 33);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::Populate()
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, v6 + 33, a2, a3);
}

void *sub_29B035628(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AF8B0;
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