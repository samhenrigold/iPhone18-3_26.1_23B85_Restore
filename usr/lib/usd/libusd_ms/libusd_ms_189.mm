void sub_29B061BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::_PrimsDirtied(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v18 = *MEMORY[0x29EDCA608];
  v17 = 0x1000000000;
  v5 = *(v2 + 7424);
  if (v5 >= 0x11)
  {
    sub_29AC14D54(v16, v5);
  }

  if (*(v4 + 184) == 1)
  {
    if (*(v3 + 7428) >= 0x11u)
    {
      v6 = *v3;
    }

    else
    {
      v6 = v3;
    }

    v7 = *(v3 + 7424);
    if (v7)
    {
      v8 = 464 * v7;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v6, (v4 + 144)))
        {
          sub_29AD9391C(v16, v6);
        }

        v6 = (v6 + 464);
        v8 -= 464;
      }

      while (v8);
    }
  }

  else
  {
    if (*(v3 + 7428) >= 0x11u)
    {
      v9 = *v3;
    }

    else
    {
      v9 = v3;
    }

    v10 = *(v3 + 7424);
    if (*(v4 + 185) == 1)
    {
      if (v10)
      {
        v11 = &v9[58 * v10];
        do
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v15, v9, (v4 + 144), (v4 + 152), 1);
          v12 = v9 + 1;
          sub_29AC2C3E8(v16, &v15, v12);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
          sub_29A1DE3A4(&v15);
          v9 = v12 + 57;
        }

        while (v9 != v11);
      }
    }

    else if (v10)
    {
      v13 = 464 * v10;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v9, (v4 + 144)))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v15, v9, (v4 + 144), (v4 + 152), 1);
          sub_29AC2C3E8(v16, &v15, v9 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
          sub_29A1DE3A4(&v15);
        }

        v9 += 58;
        v13 -= 464;
      }

      while (v13);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v4, v16);
  return sub_29ABD3844(v16);
}

void sub_29B061E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29ABD3844(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B061E64(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  *a1 = &unk_2A20B2070;
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  v8 = a4[1];
  *(a1 + 24) = *a4;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void *sub_29B061EF8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B2248;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B061F50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B061F68(uint64_t a1)
{
  *a1 = &unk_2A20B2070;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B061FEC(uint64_t a1)
{
  *a1 = &unk_2A20B2070;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

uint64_t sub_29B062074@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_29B0620AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  (*(*v4 + 24))(&v15);
  if (v15)
  {
    sub_29ABC3244(&v15, &v13);
    if (v13)
    {
      v5 = operator new(0x28uLL);
      sub_29B061E64(v5, (a1 + 8), (a1 + 16), &v13);
      sub_29B061EF8(&v12, v5);
      *a2 = v12;
    }

    else
    {
      if (v14)
      {
        sub_29A014BEC(v14);
      }

      sub_29ABE1B68(&v15, &v13);
      if (v13)
      {
        v6 = operator new(0x28uLL);
        *v6 = &unk_2A20B20B8;
        sub_29A1E21F4(v6 + 2, (a1 + 8));
        sub_29A1E2240(v6 + 3, (a1 + 12));
        sub_29A1E21F4(v6 + 4, (a1 + 16));
        sub_29A1E2240(v6 + 5, (a1 + 20));
        v7 = v14;
        *(v6 + 3) = v13;
        *(v6 + 4) = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = operator new(0x20uLL);
        v9 = &unk_2A20B2108;
      }

      else
      {
        if (v14)
        {
          sub_29A014BEC(v14);
        }

        sub_29AC34FD4(&v15, &v13);
        if (!v13)
        {
          if (v14)
          {
            sub_29A014BEC(v14);
          }

          v11 = v16;
          *a2 = v15;
          a2[1] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_22;
        }

        v6 = operator new(0x28uLL);
        *v6 = &unk_2A20B2180;
        sub_29A1E21F4(v6 + 2, (a1 + 8));
        sub_29A1E2240(v6 + 3, (a1 + 12));
        sub_29A1E21F4(v6 + 4, (a1 + 16));
        sub_29A1E2240(v6 + 5, (a1 + 20));
        v10 = v14;
        *(v6 + 3) = v13;
        *(v6 + 4) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = operator new(0x20uLL);
        v9 = &unk_2A20B21D0;
      }

      *v8 = v9;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = v6;
      *a2 = v6;
      a2[1] = v8;
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

LABEL_22:
  if (v16)
  {
    sub_29A014BEC(v16);
  }
}

void sub_29B062318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  (*(*v14 + 8))(v14, a2, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(a1);
}

void sub_29B062378(uint64_t a1)
{
  *a1 = &unk_2A20B20B8;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B0623FC(uint64_t a1)
{
  *a1 = &unk_2A20B20B8;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

_DWORD *sub_29B062484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 32))(&v4);
  *(a2 + 8) = &off_2A20470E8 + 1;
  sub_29A1E21F4(a2, &v4);
  sub_29A1E2240((a2 + 4), &v4 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  return sub_29A1DE3A4(&v4);
}

uint64_t sub_29B062514(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

_DWORD *sub_29B062544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  if (v4)
  {
    (*(*v4 + 32))(&v6);
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a2, &v6, (a1 + 1), (a1 + 2), 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    return sub_29A1DE3A4(&v6);
  }

  else
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 4));
  }
}

void sub_29B062618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B062630(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B062658(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B062688(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2158))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0626C8(uint64_t a1)
{
  *a1 = &unk_2A20B2180;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B06274C(uint64_t a1)
{
  *a1 = &unk_2A20B2180;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29B0627D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2076AF0;
  sub_29A18ECC8(a2, v3);
  sub_29ABED558(v3);
}

void sub_29B062848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABED558(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B062860(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_29B062890@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = a1[3];
  if (result)
  {
    result = (*(*result + 32))(a2);
    v5 = *a2;
    if (*a2)
    {
      result = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath((a1 + 1));
      if (result)
      {
        v8 = 0;
      }

      else
      {
        v9 = 0;
        v8 = 0;
        while (1)
        {
          result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((a2[4] + v9), (a1 + 1));
          if (result)
          {
            break;
          }

          ++v8;
          v9 += 8;
          if (v5 == v8)
          {
            return result;
          }
        }
      }

      if (v5 > v8)
      {
        sub_29AC6A5F4(a2, v6, v7);
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v10, (a2[4] + 8 * v8), (a1 + 1), (a1 + 2), 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void sub_29B0629EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B062A14(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B062A44(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2220))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B062A88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B062AB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B062AE0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2298))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCreateSceneIndices(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = 0;
  if (*(a1 + 25))
  {
    if ((atomic_load_explicit(&qword_2A1758720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758720))
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens);
      if (!v5)
      {
        v5 = sub_29AFCE258(&pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens);
      }

      LOBYTE(v6) = 1;
      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v6, &v11);
      *&__dst.__r_.__value_.__l.__data_ = v11;
      v11 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v5, &__dst, &v13);
      xmmword_2A1758710 = v13;
      v13 = 0uLL;
      if (__dst.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__dst.__r_.__value_.__l.__size_);
      }

      if (*(&v11 + 1))
      {
        sub_29A014BEC(*(&v11 + 1));
      }

      __cxa_atexit(sub_29ABE5FF4, &xmmword_2A1758710, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758720);
    }

    v7 = xmmword_2A1758710;
    if (*(&xmmword_2A1758710 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A1758710 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0uLL;
  }

  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::OverlayedContainerDataSources(&v7, (a1 + 8), &v10);
  sub_29B063590(&v10, &v9);
  v4 = *a2;
  *a2 = v9;
  v9 = 0;
  sub_29B290B2C(a2, v4);
  v8 = *a2;
  sub_29B293C98(a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_RemoveRef();
}

uint64_t sub_29B063590@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x390uLL);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::UsdImagingStageSceneIndex(v4, a1);
  *a2 = v4;
  return result;
}

uint64_t sub_29B0635E8(uint64_t *a1)
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

void *sub_29B0636AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x210uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSmallVectorDataSource::HdRetainedSmallVectorDataSource(v6, *a1, a2);

  return sub_29AC011AC(a3, v6);
}

void *sub_29B063818()
{
  result = operator new(0x10uLL);
  *result = &unk_2A20B22C0;
  return result;
}

void sub_29B063878(void x0_0, uint64_t *a1)
{
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::New(a1);
}

void sub_29B0638D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B0638EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2330))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29B063968(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_29B063BC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

void *sub_29B063C2C()
{
  v1 = nullsub_1809;
  return sub_29B0647A8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::~UsdImagingSphereAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 14);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B063ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B063EE8@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  sub_29B0649D4(v8, a1, &v13, a3);
  sub_29B064FC8(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::InvalidateImagingSubprim(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    sub_29B064050(a1, a2, a3, a4, a5);
  }

  *(a5 + 56) = 0x800000000;
}

void sub_29B064050(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, uint64_t a4@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29B064D34();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178(v11);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(this, a2);
}

void sub_29B06423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 115) ^ *a4) < 8)
  {
    return 32;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetPoints(void x0_0, const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v4, a1);
  v3 = 0x3FF0000000000000;
  v4[0] = &unk_2A2060648;
  pxrInternal__aapl__pxrReserved__::UsdGeomSphere::GetRadiusAttr(v4, &v5);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
}

void sub_29B064620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  pxrInternal__aapl__pxrReserved__::UsdGeomSphere::~UsdGeomSphere(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdMeshTopology *pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetTopology@<X0>(uint64_t a1@<X8>)
{
  sub_29A0ECEEC(&v4, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  if ((atomic_load_explicit(&qword_2A1758918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758918))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::GenerateTopology(0xA, 0xAuLL, 1, v3);
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(&unk_2A1758728, v3, 0);
    sub_29AB72E30(v3);
  }

  *(a1 + 8) = &off_2A20A8498;
  result = sub_29AFBD25C(a1, &unk_2A1758728);
  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }

  return result;
}

void *sub_29B0647A8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B25B0;
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

void sub_29B064834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B064858(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B064880@<D0>(_OWORD *a1@<X8>)
{
  sub_29B0648BC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B0648BC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B25F0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B2350;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B064968(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B25F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B0649D4(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20B2640;
  return a1;
}

void sub_29B064B00(uint64_t a1)
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

void sub_29B064B9C(uint64_t a1)
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

void *sub_29B064C3C@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29B064C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29B064C90(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29B064D34();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29B064D34()
{
  if ((atomic_load_explicit(&qword_2A14FA3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA3C0))
  {
    v1 = sub_29B064E14(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA398, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA398, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA3C0);
  }

  return &unk_2A14FA398;
}

unint64_t sub_29B064E14@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomSphere::GetSchemaAttributeNames(0);
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

void sub_29B064F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29B064FC8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B2688;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B065020(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B06503C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B065064(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B065094(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B26D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B0650D4()
{
  v1 = nullsub_1810;
  return sub_29B065454(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::~UsdImagingSphereLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 36);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 36);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::Populate()
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, v6 + 36, a2, a3);
}

void *sub_29B065454(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B2940;
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

void sub_29B0654E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B065504(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B06552C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B065568(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B065568(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B2980;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B2700;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B065614(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B2980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B065680()
{
  v1 = nullsub_1811;
  return sub_29B066250(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::~UsdImagingTetMeshAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B065928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B06593C@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::UsdImagingDataSourceTetMeshPrim(v8, a1, &v13, a3);
  sub_29B06647C(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(this, a2);
}

void sub_29B065B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  if ((*(v10 + 134) ^ *a4) < 8)
  {
    return 256;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 91) ^ *a4) < 8)
  {
    return 256;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetTopology(void x0_0, const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  sub_29A0ECEEC(&v9, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v4, a1);
  v4[0] = &unk_2A20606F8;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::GetSurfaceFaceVertexIndicesAttr(v4, &v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(v4);
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
}

void *sub_29B066250(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B2C30;
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

void sub_29B0662DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B066300(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B066328@<D0>(_OWORD *a1@<X8>)
{
  sub_29B066364(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B066364(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B2C70;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B29D0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B066410(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B2C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B06647C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B2CC0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B0664D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0664F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B066518(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B066548(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2D10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_GetUdimTiles(char *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = *MEMORY[0x29EDCA608];
  v5 = a1[23];
  v6 = *a1;
  v7 = *(a1 + 1);
  if (v5 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v5 >= 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  if (v9 < 6)
  {
    goto LABEL_20;
  }

  v12 = &v8[v9];
  v13 = v8;
  while (1)
  {
    v14 = memchr(v13, 60, v9 - 5);
    if (!v14)
    {
      goto LABEL_20;
    }

    if (*v14 == 1229215036 && *(v14 + 2) == 15949)
    {
      break;
    }

    v13 = v14 + 1;
    v9 = v12 - v13;
    if (v12 - v13 < 6)
    {
      goto LABEL_20;
    }
  }

  if (v14 == v12 || (v16 = v14 - v8, v16 == -1))
  {
LABEL_20:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if ((v5 & 0x80000000) != 0)
    {
      sub_29A008D14(&__dst, v6, v7);
    }

    else
    {
      __dst = *a1;
    }

    std::string::replace(&__dst, v16, 6uLL, "%i");
    v17 = pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::ArResolverScopedCache(v46);
    Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v17);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    sub_29B066998(a4, a2);
    if ((a2 & 0x80000000) == 0)
    {
      v19 = 0;
      v20 = a2 + 1001;
      if (a2 + 1001 <= 1001)
      {
        v20 = 1001;
      }

      v21 = v20 - 1000;
      do
      {
        v22 = sub_29B293A0C(a3);
        if (v23 & 1 | v22)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf(p_dst, v23, v24, (v19 + 1001));
          pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(a3, &__p, v40);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &__dst;
          }

          else
          {
            v26 = __dst.__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf(v26, v23, v24, (v19 + 1001));
        }

        pxrInternal__aapl__pxrReserved__::ArResolver::Resolve(Resolver);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          size = __p.__r_.__value_.__l.__size_;
          operator delete(__p.__r_.__value_.__l.__data_);
          if (size)
          {
LABEL_41:
            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v39, v40);
            v29 = a4[1];
            v28 = a4[2];
            if (v29 >= v28)
            {
              v30 = (v29 - *a4) >> 4;
              v31 = v30 + 1;
              if ((v30 + 1) >> 60)
              {
                sub_29A00C9A4();
              }

              v32 = v28 - *a4;
              if (v32 >> 3 > v31)
              {
                v31 = v32 >> 3;
              }

              if (v32 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v31;
              }

              v45 = a4;
              if (v33)
              {
                v34 = sub_29A017BD4(a4, v33);
              }

              else
              {
                v34 = 0;
              }

              v35 = &v34[16 * v30];
              __p.__r_.__value_.__r.__words[0] = v34;
              __p.__r_.__value_.__l.__size_ = v35;
              v44 = &v34[16 * v33];
              *v35 = v19;
              *(v35 + 8) = v39;
              v39 = 0;
              __p.__r_.__value_.__r.__words[2] = v35 + 16;
              sub_29AEAE75C(a4, &__p);
              v36 = a4[1];
              sub_29AEAE800(&__p);
              v37 = v39;
              a4[1] = v36;
              if ((v37 & 7) != 0)
              {
                atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            else
            {
              *v29 = v19;
              *(v29 + 8) = v39;
              a4[1] = v29 + 16;
            }
          }
        }

        else if (*(&__p.__r_.__value_.__s + 23))
        {
          goto LABEL_41;
        }

        if (v41 < 0)
        {
          operator delete(v40[0]);
        }

        ++v19;
      }

      while (v21 != v19);
    }

    sub_29B066A28(a4);
    pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(v46);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t *sub_29B066998(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v5[4] = result;
    v5[0] = sub_29A017BD4(result, a2);
    v5[1] = v5[0] + v3;
    v5[2] = v5[0] + v3;
    v5[3] = v5[0] + 16 * v4;
    sub_29AEAE75C(v2, v5);
    return sub_29AEAE800(v5);
  }

  return result;
}

void sub_29B066A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AEAE800(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B066A28(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = v4 >> 4;
    v13 = result;
    if (v1 == v2)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(result, v4 >> 4);
      v3 = v5[2] - *v5;
    }

    v9 = v7;
    v10 = &v7[16 * v6];
    v11 = v10;
    v12 = &v7[16 * v8];
    if (v8 < v3 >> 4)
    {
      sub_29AEAE75C(v5, &v9);
    }

    return sub_29AEAE800(&v9);
  }

  return result;
}

void sub_29B066AC8(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AEAE800(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29B066AB8);
}

void *sub_29B066AF0()
{
  v1 = nullsub_1812;
  return sub_29B067554(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::~UsdImagingVolumeAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 15);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B066D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B066DAC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::UsdImagingDataSourceVolumePrim(v8, a1, &v13, a3);
  sub_29B067818(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::InvalidateImagingSubprim(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 15);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::_GatherVolumeData(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, uint64_t *a3)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v7, a2);
  v7 = &unk_2A2060BE0;
  if (v8 && (*(v8 + 57) & 8) == 0 && off_2A2060C00(&v7))
  {
    pxrInternal__aapl__pxrReserved__::UsdVolVolume::GetFieldPaths(&v7, &v6);
  }

  v4 = a3[2] != 0;
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(&v7);
  return v4;
}

void sub_29B067028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(this, a2);
}

void sub_29B0670FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetVolumeFieldDescriptors(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::_GatherVolumeData(a1, a2, &v24))
  {
    v4 = v24;
    if (v24 != v25)
    {
      v5 = off_2A2060B50[0];
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v19, a1, (v4 + 5));
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v17, &v19);
        v17 = &unk_2A2060B30;
        if (v18 && (*(v18 + 57) & 8) == 0 && v5(&v17))
        {
          v16 = 0;
          PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, &v19, 0);
          v7 = *PrimAdapter;
          v8 = PrimAdapter[1];
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v7)
          {
            if (v9)
            {
              goto LABEL_13;
            }
          }

          v14[0] = "usdImaging/volumeAdapter.cpp";
          v14[1] = "GetVolumeFieldDescriptors";
          v14[2] = 169;
          v14[3] = "virtual HdVolumeFieldDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetVolumeFieldDescriptors(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
          v15 = 0;
          if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "fieldAdapter", 0))
          {
            v9 = 0;
LABEL_13:
            (*(*v9 + 536))(v14);
            if ((v16 & 7) != 0)
            {
              atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v16 = v14[0];
            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
          }

          if (v8)
          {
            sub_29A014BEC(v8);
          }

          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdVolFieldBase::~UsdVolFieldBase(&v17);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
        sub_29A1DE3A4(&v21);
        if (v20)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v10);
        }

        v11 = v4[1];
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
            v12 = v4[2];
            v13 = *v12 == v4;
            v4 = v12;
          }

          while (!v13);
        }

        v4 = v12;
      }

      while (v12 != v25);
    }
  }

  sub_29A349AC0(&v24, v25[0]);
}

void sub_29B067454(_Unwind_Exception *a1, void **a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdVolFieldBase::~UsdVolFieldBase(va1);
  sub_29A57F434(va2);
  sub_29A349AC0(v8 - 112, *(v8 - 104));
  v10 = a5;
  sub_29ABF537C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B067514(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29B06798C(a1, a2);
  }

  else
  {
    sub_29B067924(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_29B067554(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B2F98;
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

void sub_29B0675E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B067604(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B06762C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B067668(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B067668(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B2FD8;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B2D38;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B067714(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B2FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B067780(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v6 = *a2;
  *a1 = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a1 + 16), a4);
  sub_29A1E2240((a1 + 20), a4 + 1);
  return a1;
}

void *sub_29B067818(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B3028;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B067870(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B06788C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0678B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B0678E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B3078))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_29B067924(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *a2 = 0;
  *(v4 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84((v4 + 16), (a2 + 16));
  result = sub_29A1DDDC0((v4 + 20), (a2 + 20));
  *(a1 + 8) = v4 + 24;
  return result;
}

uint64_t sub_29B06798C(uint64_t *a1, uint64_t a2)
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
  *(v8 + 1) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84(v8 + 4, (a2 + 16));
  sub_29A1DDDC0(v8 + 5, (a2 + 20));
  *&v17 = v8 + 24;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29ACCC558(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACCC6CC(&v15);
  return v14;
}

void sub_29B067AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCC6CC(va);
  _Unwind_Resume(a1);
}

void sub_29B067ADC(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGINGGL_ENGINE_DEBUG_SCENE_DELEGATE_ID))
  {
    sub_29B2CFD5C();
  }
}

void sub_29B067B0C(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGINGGL_ENGINE_ENABLE_SCENE_INDEX))
  {
    sub_29B2CFD90();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, a2, a2 + 8, a2 + 32, (a2 + 56), (a2 + 64), (a2 + 88), *(a2 + 96), *(a2 + 97), HIBYTE(*(a2 + 97)));
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, a2, a2 + 8, a2 + 32, (a2 + 56), (a2 + 64), (a2 + 88), *(a2 + 96), *(a2 + 97), HIBYTE(*(a2 + 97)));
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6, char **a7, char a8, char a9, char a10)
{
  *a1 = 0;
  v14 = *a6;
  *(a1 + 8) = *a6;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4((a1 + 16), a6 + 1);
  *(a1 + 40) = 0;
  *(a1 + 48) = a9;
  *(a1 + 49) = a8;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  sub_29A1E21F4((a1 + 80), a5);
  sub_29A1E2240((a1 + 84), a5 + 1);
  *(a1 + 88) = 0;
  sub_29B06E490((a1 + 96));
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 112));
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 216));
  *(a1 + 320) = 0;
  *(a1 + 328) = xmmword_29B712FC0;
  *(a1 + 344) = 1;
  sub_29A1E21F4((a1 + 348), a2);
  sub_29A1E2240((a1 + 352), a2 + 1);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_29B067E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  v3 = v2[62];
  v2[62] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = v2[61];
  v2[61] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  sub_29ABD4DDC(v2 + 60);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2, char **a3, char a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_29B068134();
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, v8, v10, v9, dword_2A17589D0, a2, a3, a4, 0, 0);
}

{
  v8 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_29B068134();
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, v8, v10, v9, dword_2A17589D0, a2, a3, a4, 0, 0);
}

void sub_29B068108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void ***a16)
{
  a16 = &a10;
  sub_29A1E234C(&a16);
  a10 = &a13;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

void sub_29B068134()
{
  if ((atomic_load_explicit(&qword_2A17589D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17589D8))
  {
    v0 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGINGGL_ENGINE_DEBUG_SCENE_DELEGATE_ID);
    if (!v0)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(dword_2A17589D0, v0);
    __cxa_atexit(sub_29A1DCEA8, dword_2A17589D0, &dword_299FE7000);

    __cxa_guard_release(&qword_2A17589D8);
  }
}

void sub_29B0682BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void ***a16)
{
  a16 = &a10;
  sub_29A1E234C(&a16);
  a10 = &a13;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetRendererPlugin(pxrInternal__aapl__pxrReserved__::HdRendererPlugin **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_InitializeHgiIfNecessary(this);
  Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(v4);
  v6 = Instance;
  v17 = 0;
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetDefaultPluginId(Instance, *(this + 49), &v14);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v17 = v14;
    goto LABEL_11;
  }

  pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetOrCreateRendererPlugin(Instance, a2, &v12);
  if (v12 && (*(*v12 + 40))(v12, *(this + 49)))
  {
    sub_29A166F2C(&v17, a2);
    pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(&v12);
    if (!this[8])
    {
      goto LABEL_16;
    }

LABEL_11:
    pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::GetPluginId(this + 7, &v14);
    v9 = v17 ^ v14;
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 < 8)
    {
      v10 = 1;
    }

    else
    {
LABEL_16:
      v14 = 0u;
      v15 = 0u;
      v16 = 1065353216;
      pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::CreateRenderDelegate(v6, &v17, &v14, &v12);
      sub_29AC1E22C(&v14);
      v10 = v13 != 0;
      if (v13)
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_SetRenderDelegateAndRestoreState(this, &v12);
      }

      pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::~HdPluginRenderDelegateUniqueHandle(&v12);
    }

    goto LABEL_21;
  }

  *&v14 = "usdImagingGL/engine.cpp";
  *(&v14 + 1) = "SetRendererPlugin";
  *&v15 = 1018;
  *(&v15 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetRendererPlugin(const TfToken &)";
  LOBYTE(v16) = 0;
  v7 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v7)
  {
    v8 = (v7 + 16);
    if (*(v7 + 39) < 0)
    {
      v8 = *v8;
    }
  }

  else
  {
    v8 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 1, "Invalid plugin id or plugin is unsupported: %s", v8);
  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(&v12);
  v10 = 0;
LABEL_21:
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v10;
}

void sub_29B0684E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::~HdPluginRenderDelegateUniqueHandle(va);
  v7 = *(v5 - 40);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetDefaultRendererPluginId(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>)
{
  if ((atomic_load_explicit(&qword_2A17589C8, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_2A17589C8);
    if (this)
    {
      sub_29A008E78(v16, "HD_DEFAULT_RENDERER");
      sub_29A008E78(&__p, "");
      pxrInternal__aapl__pxrReserved__::TfGetenv(v16, &__p, &qword_2A17589B0);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A17589B0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17589C8);
    }
  }

  v3 = qword_2A17589B8;
  if (byte_2A17589C7 >= 0)
  {
    v3 = byte_2A17589C7;
  }

  if (v3)
  {
    __p = 0;
    v21 = 0;
    v22 = 0;
    Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(this);
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDescs(Instance, &__p);
    if (v21 == __p)
    {
LABEL_24:
      v16[0] = "usdImagingGL/engine.cpp";
      v16[1] = "_GetDefaultRendererPluginId";
      v17 = 1933;
      v18 = "static TfToken pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetDefaultRendererPluginId()";
      v19 = 0;
      if (byte_2A17589C7 >= 0)
      {
        v13 = &qword_2A17589B0;
      }

      else
      {
        v13 = qword_2A17589B0;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v16, "Failed to find default renderer with display name '%s'.", v5, v13);
      v14 = 0;
    }

    else
    {
      if (byte_2A17589C7 >= 0)
      {
        v6 = byte_2A17589C7;
      }

      else
      {
        v6 = qword_2A17589B8;
      }

      if (byte_2A17589C7 >= 0)
      {
        v7 = &qword_2A17589B0;
      }

      else
      {
        v7 = qword_2A17589B0;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v21 - __p) >> 3) <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - __p) >> 3);
      }

      v9 = __p + 16;
      while (1)
      {
        v10 = v9[15];
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *v9;
        }

        if (v10 == v6)
        {
          v12 = v11 >= 0 ? v9 - 8 : *(v9 - 1);
          if (!memcmp(v12, v7, v6))
          {
            break;
          }
        }

        v9 += 40;
        if (!--v8)
        {
          goto LABEL_24;
        }
      }

      v15 = *(v9 - 2);
      *a1 = v15;
      if ((v15 & 7) == 0)
      {
        goto LABEL_29;
      }

      v14 = (v15 & 0xFFFFFFFFFFFFFFF8);
      if (atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed))
      {
        goto LABEL_29;
      }
    }

    *a1 = v14;
LABEL_29:
    v16[0] = &__p;
    sub_29AC877F8(v16);
    return;
  }

  *a1 = 0;
}

void sub_29B06877C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  __cxa_guard_abort(&qword_2A17589C8);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_DestroyHydraObjects(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this)
{
  v2 = *(this + 62);
  *(this + 62) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29B06E5C4(this + 11, 0);
  if (sub_29B068A1C())
  {
    v5 = *(this + 9);
    if (v5 && *(this + 60))
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSceneIndex(v5, this + 60);
      v6 = *(this + 54);
      *(this + 54) = 0;
      __p[0] = 0;
      sub_29B290B2C(this + 432, v6);
      sub_29B063720(__p);
      *(this + 56) = 0;
      __p[0] = 0;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex>::_RemoveRef();
    }
  }

  else
  {
    v7 = *(this + 61);
    *(this + 61) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v8 = *(this + 53);
  *(this + 52) = 0;
  *(this + 53) = 0;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (*(this + 9))
  {
    v9 = atomic_load(qword_2A1758920);
    if (!v9)
    {
      v9 = sub_29B06E690(qword_2A1758920);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstanceName(*(this + 9), v3, v4, __p);
    sub_29B06E7A8(v9, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29AE0AA60(this + 9, 0);
  __p[0] = 0;
  return pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::operator=((this + 56));
}

uint64_t sub_29B068A1C()
{
  if ((atomic_load_explicit(&qword_2A17589E8, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_2A17589E8);
    if (v1)
    {
      if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSceneIndexEmulationEnabled(v1))
      {
        v2 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGINGGL_ENGINE_ENABLE_SCENE_INDEX);
        if (!v2)
        {
          pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
        }

        v3 = *v2;
      }

      else
      {
        v3 = 0;
      }

      byte_2A17589E0 = v3 & 1;
      __cxa_guard_release(&qword_2A17589E8);
    }
  }

  return byte_2A17589E0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::~UsdImagingGLEngine(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_DestroyHydraObjects(this);
  v2 = *(this + 62);
  *(this + 62) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 61);
  *(this + 61) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_29ABD4DDC(this + 60);
}

pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::PrepareBatch(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *result, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, uint64_t a3)
{
  if (*(result + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_CanPrepare(result, a2);
  }

  return result;
}

void sub_29B068EB4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 48);
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_29B069090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_SetActiveRenderSettingsPrimFromStageMetadata(pxrInternal__aapl__pxrReserved__::HdRenderIndex **a1, void *a2)
{
  if (a1[9] || (sub_29B2CFEDC(v8) & 1) != 0)
  {
    v4 = sub_29B2ACEC8(a2);
    if (v5 & 1 | v4 || (sub_29B2CFF24(v7) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTerminalSceneIndex(a1[9], &__p);
    }
  }
}

void sub_29B069254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_29A1DCEA8(&a12);
  sub_29A1DCEA8(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_PreSetTime(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8) + 0.01;
  if (v3 > 2.0)
  {
    v3 = 2.0;
  }

  if (v3 >= 1.0 && v3 < 1.1)
  {
    goto LABEL_5;
  }

  if (v3 < 1.1 || v3 >= 1.2)
  {
    if (v3 < 1.2 || v3 >= 1.3)
    {
      if (v3 < 1.3 || v3 >= 1.4)
      {
        if (v3 >= 1.4 && v3 < 1.5)
        {
          v4 = 4;
        }

        else if (v3 < 1.5 || v3 >= 1.6)
        {
          if (v3 < 1.6 || v3 >= 1.7)
          {
            if (v3 < 1.7 || v3 >= 1.8)
            {
              if (v3 < 1.8 || v3 > 2.0)
              {
                v9[0] = "usdImagingGL/engine.cpp";
                v9[1] = "_GetRefineLevel";
                v9[2] = 1725;
                v9[3] = "int pxrInternal__aapl__pxrReserved__::_GetRefineLevel(float)";
                v10 = 0;
                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Invalid complexity %f, expected range is [1.0,2.0]\n", v3);
LABEL_5:
                v4 = 0;
                goto LABEL_23;
              }

              v4 = 8;
            }

            else
            {
              v4 = 7;
            }
          }

          else
          {
            v4 = 6;
          }
        }

        else
        {
          v4 = 5;
        }
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

LABEL_23:
  if (sub_29B068A1C())
  {
    v6 = sub_29B06E0CC((a1 + 456));
    LOBYTE(v9[0]) = 1;
    HIDWORD(v9[0]) = v4;
    pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::SetRefineLevel(v6, v9);
    v7 = sub_29B0635E8((a1 + 432));
    pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::ApplyPendingUpdates(v7);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevelFallback(*(a1 + 488), v4);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(*(a1 + 488));
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_PrepareRender(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  if (!v4)
  {
    v8[0] = "usdImagingGL/engine.cpp";
    v8[1] = "_PrepareRender";
    v8[2] = 295;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_PrepareRender(const UsdImagingGLRenderParams &)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "_taskController", 0);
    v4 = *(a1 + 88);
  }

  pxrInternal__aapl__pxrReserved__::HdxTaskController::SetFreeCameraClipPlanes(v4, (a2 + 72));
  memset(v14, 0, sizeof(v14));
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_ComputeRenderTags(a2, v14);
  pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderTags(*(a1 + 88), v14);
  v5 = *(a1 + 88);
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_MakeHydraUsdImagingGLRenderParams(a2, v8);
  pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderParams(v5, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v13);
  sub_29A1DE3A4(&v12);
  v15 = &v11;
  sub_29AC943DC(&v15);
  v15 = &v10;
  sub_29AC943DC(&v15);
  if (sub_29B068A1C())
  {
    if (*(a1 + 464))
    {
      v6 = sub_29B069840((a1 + 464));
      pxrInternal__aapl__pxrReserved__::HdsiPrimTypePruningSceneIndex::SetEnabled(v6);
    }

    if (*(a1 + 472))
    {
      v7 = sub_29B069840((a1 + 472));
      pxrInternal__aapl__pxrReserved__::HdsiPrimTypePruningSceneIndex::SetEnabled(v7);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneMaterialsEnabled(*(a1 + 488), *(a2 + 96));
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneLightsEnabled(*(a1 + 488), *(a2 + 97));
  }

  v8[0] = v14;
  sub_29A124AB0(v8);
}

void sub_29B069624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_29AEBC5BC(&a9);
  a9 = (v9 - 80);
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_ComputeRenderTags(_BYTE *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      v7 = *(v5 - 8);
      v5 -= 8;
      v6 = v7;
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    while (v5 != v4);
  }

  a2[1] = v4;
  sub_29A1D7F98(a2, 4uLL);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
  if (!v8)
  {
    v8 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
  }

  result = sub_29A1D8028(a2, v8);
  if (a1[16] == 1)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v10)
    {
      v10 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    result = sub_29A1D8028(a2, v10 + 1);
  }

  if (a1[17] == 1)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v11)
    {
      v11 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    result = sub_29A1D8028(a2, v11 + 3);
  }

  if (a1[18] == 1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v12)
    {
      v12 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    return sub_29A1D8028(a2, v12 + 4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_MakeHydraUsdImagingGLRenderParams@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AEC0310(a2);
  v4 = *(a1 + 52);
  *result = *(a1 + 36);
  *(result + 16) = v4;
  v5 = *(a1 + 12);
  if (v5 == 5 || v5 == 0)
  {
    *(result + 52) = 0;
    v7 = *(a1 + 28);
  }

  else
  {
    v7 = *(a1 + 28);
    *(result + 52) = *(a1 + 29) & (v7 ^ 1);
  }

  *(result + 53) = v7;
  *(result + 152) = 1;
  *(result + 164) = 1;
  *(result + 320) = dword_29B740830[*(a1 + 24)];
  v8 = *(a1 + 68);
  if (v8 < 0.0)
  {
    v8 = 0.1;
  }

  *(result + 56) = v8;
  *(result + 60) = *(a1 + 96);
  return result;
}

uint64_t sub_29B069840(uint64_t *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_UpdateDomeLightCameraVisibility(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this)
{
  v2 = *(this + 9);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v2, v3 + 30))
  {
    v4 = *(this + 8);
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens);
    if (!v5)
    {
      v5 = sub_29AEF9C94(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens);
    }

    LOBYTE(v8.__vftable) = 1;
    v6 = sub_29AE84234(v4, v5 + 24, &v8);
    if (*(this + 344) != v6)
    {
      *(this + 344) = v6;
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
      {
        v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6);
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprimSubtree(&v8);
    }
  }
}

void sub_29B0699E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_SetBBoxParams(uint64_t result, char **a2, __int128 *a3, float a4)
{
  if (*(result + 64))
  {
    memset(v12, 0, sizeof(v12));
    __asm { FMOV            V0.4S, #1.0 }

    v13 = _Q0;
    v14 = 3.0;
    if ((v12 + 8) != a2)
    {
      sub_29AEC81B4(v12 + 1, *a2, a2[1], 0x6F96F96F96F96F97 * ((a2[1] - *a2) >> 3));
    }

    v13 = *a3;
    v14 = a4;
    pxrInternal__aapl__pxrReserved__::HdxTaskController::SetBBoxParams(*(result + 88), v12);
    sub_29B2CFF6C(v12 + 1, v12);
  }
}

void sub_29B069AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::RenderBatch(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v20[5] = *MEMORY[0x29EDCA608];
  if (*(result + 64))
  {
    v4 = result;
    pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_UpdateHydraCollection((result + 112), a2, a3);
    pxrInternal__aapl__pxrReserved__::HdxTaskController::SetCollection(*(v4 + 88), (v4 + 112));
    pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_PrepareRender(v4, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetColorCorrectionSettings(v4, (a3 + 120), (a3 + 136), (a3 + 144), (a3 + 152), (a3 + 160));
    pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_SetBBoxParams(v4, (a3 + 168), (a3 + 192), *(a3 + 208));
    v5 = *(v4 + 88);
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v6)
    {
      v6 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdxTaskController::GetRenderOutputSettings(v5, v6, &v18);
    if (v18 != -1)
    {
      v17 = (&off_2A2042A68 + 2);
      v7 = operator new(0x14uLL);
      *v7 = *(a3 + 100);
      atomic_store(0, v7 + 4);
      v16 = v7;
      atomic_fetch_add_explicit(v7 + 4, 1u, memory_order_relaxed);
      sub_29A18606C(v19, &v16);
      sub_29A186B14(&v16);
      v8 = *(v4 + 88);
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v9)
      {
        v9 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderOutputSettings(v8, v9, &v18);
    }

    pxrInternal__aapl__pxrReserved__::HdxTaskController::SetEnableSelection(*(v4 + 88), *(a3 + 33));
    v17 = &off_2A20B3138;
    v10 = operator new(0x18uLL);
    v11 = *(v4 + 104);
    *v10 = *(v4 + 96);
    *(v10 + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v10 + 4);
    v16 = v10;
    atomic_fetch_add_explicit(v10 + 4, 1u, memory_order_relaxed);
    v12 = *(v4 + 496);
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v13)
    {
      v13 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdEngine::SetTaskContextData(v12, (v13 + 208), &v16);
    pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_UpdateDomeLightCameraVisibility(v4);
    pxrInternal__aapl__pxrReserved__::HdxTaskController::GetRenderingTasks(*(v4 + 88), v14);
    pxrInternal__aapl__pxrReserved__::HdEngine::Execute(*(v4 + 496), *(v4 + 72), v14);
    v15 = v14;
    sub_29A0176E4(&v15);
    sub_29A186B14(&v16);
    sub_29AC1E22C(v20);
    return sub_29A186B14(v19);
  }

  return result;
}

void sub_29B069D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_29AC1E22C(va1);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_UpdateHydraCollection(char **this, uint64_t *a2, uint64_t a3)
{
  if (!this)
  {
    v27 = "usdImagingGL/engine.cpp";
    v28 = "_UpdateHydraCollection";
    v29 = 1768;
    v30 = "static BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_UpdateHydraCollection(HdRprimCollection *, const SdfPathVector &, const UsdImagingGLRenderParams &)";
    LOBYTE(v31) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 1, "Null passed to _UpdateHydraCollection");
    return 0;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v6)
  {
    v6 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v7 = *(v6 + 3);
  v39 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = 0;
  v41 = 0;
  v8 = *(a3 + 8);
  v9 = *(a3 + 12);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
      if (v8 <= 1.0)
      {
        if (!v15)
        {
          v15 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
        }

        v14 = (v15 + 64);
      }

      else
      {
        if (!v15)
        {
          v15 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
        }

        v14 = (v15 + 48);
      }

      goto LABEL_41;
    }

    if (v9 == 3 || v9 == 6)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
      if (!v10)
      {
        v10 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
      }

      v11 = *(v10 + 1);
      goto LABEL_42;
    }

LABEL_28:
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
    if (v8 <= 1.0)
    {
      if (!v17)
      {
        v17 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
      }

      v14 = (v17 + 24);
    }

    else
    {
      if (!v17)
      {
        v17 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
      }

      v14 = (v17 + 32);
    }

LABEL_41:
    v11 = *v14;
    goto LABEL_42;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
      if (v8 <= 1.0)
      {
        if (!v13)
        {
          v13 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
        }

        v14 = (v13 + 56);
      }

      else
      {
        if (!v13)
        {
          v13 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
        }

        v14 = (v13 + 40);
      }

      goto LABEL_41;
    }

    goto LABEL_28;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v16)
  {
    v16 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v11 = *(v16 + 2);
LABEL_42:
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v11 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = v11;
  v40 = 0;
  v41 = 0;
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v19 = *(v18 + 36);
  v38 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  RootPaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetRootPaths(this);
  if ((v38 ^ this[1]) > 7 || (v21 = RootPaths, RootPaths[1] - *RootPaths != a2[1] - *a2) || !pxrInternal__aapl__pxrReserved__::HdReprSelector::operator==(this + 2, &v39))
  {
LABEL_62:
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(&v27, &v38, &v39, 0, &v26);
    sub_29A166F2C(this + 1, &v28);
    sub_29A166F2C(this + 2, &v29);
    sub_29A166F2C(this + 3, &v30);
    sub_29A166F2C(this + 4, &v31);
    *(this + 40) = v32;
    sub_29A166F2C(this + 6, &v33);
    if (&v27 != this)
    {
      sub_29A324D54((this + 7), v34, v35, (v35 - v34) >> 3);
      sub_29A324D54((this + 10), v36, v37, (v37 - v36) >> 3);
    }

    pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(&v27);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetRootPaths(this, a2, v25);
    result = 1;
    goto LABEL_67;
  }

  v23 = *a2;
  v22 = a2[1];
  if (v22 != *a2)
  {
    v24 = 0;
    while (*(*v21 + 8 * v24) == *(v23 + 8 * v24))
    {
      if (++v24 >= ((v22 - v23) >> 3))
      {
        goto LABEL_61;
      }
    }

    if (v21[1] != *v21)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    goto LABEL_62;
  }

LABEL_61:
  result = 0;
LABEL_67:
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B06A284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = *(v24 - 96);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(v24 - 104);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(v24 - 112);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetColorCorrectionSettings(pxrInternal__aapl__pxrReserved__::HdxTaskController **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, const pxrInternal__aapl__pxrReserved__::TfToken *a6)
{
  if (this[8])
  {
    pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTaskParams::HdxColorCorrectionTaskParams(&v20);
    v12 = sub_29A166F2C(&v20, a2);
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    v14 = std::string::operator=(&v21, EmptyString);
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v15 = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
    }

    v16 = std::string::operator=(&v22, v15);
    if ((*a5 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v17 = ((*a5 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v17 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
    }

    v18 = std::string::operator=(&v23, v17);
    if ((*a6 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v19 = ((*a6 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v19 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
    }

    std::string::operator=(&__p, v19);
    pxrInternal__aapl__pxrReserved__::HdxTaskController::SetColorCorrectionParams(this[11], &v20);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29B06A4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AECB604(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::Render(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, uint64_t a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::PrepareBatch(a1, a2, a3);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }
}

void sub_29B06A5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B06A644(uint64_t *a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetLightingState(uint64_t result, __int128 **a2, __n128 *a3, __n128 *a4)
{
  if (*(result + 64))
  {
    v7 = result;
    if (!*(result + 320))
    {
      pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::New(v14);
      v8 = *(v7 + 320);
      *(v7 + 320) = v14[0];
      v14[0] = 0;
      sub_29B290B2C(v7 + 320, v8);
      sub_29AE9C770(v14);
    }

    v9 = sub_29AE99CDC((v7 + 320));
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetLights(v9, a2);
    v10 = sub_29AE99CDC((v7 + 320));
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetMaterial(v10, a3);
    v11 = sub_29AE99CDC((v7 + 320));
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetSceneAmbient(v11, a4);
    v12 = sub_29AE99CDC((v7 + 320));
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetUseLighting(v12, a2[1] != *a2);
    v13 = *(v7 + 88);
    sub_29B06EA98(v14, (v7 + 320));
    pxrInternal__aapl__pxrReserved__::HdxTaskController::SetLightingState(v13, v14);
    return sub_29B28F9E0(v14);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetSelected(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  if (*(a1 + 64))
  {
    if (sub_29B068A1C())
    {
      sub_29B2CFFFC(a1, a2);
    }

    else
    {
      if (!*(a1 + 488))
      {
        sub_29B2CFFB4(&v7);
      }

      v4 = operator new(0x88uLL);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = &unk_2A2085290;
      *(v4 + 4) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = &unk_2A2085260;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 16) = 1065353216;
      *(v4 + 72) = 0u;
      *(v4 + 88) = 0u;
      *(v4 + 26) = 1065353216;
      *(v4 + 15) = 0;
      *(v4 + 16) = 0;
      *(v4 + 14) = 0;
      v7 = v4 + 24;
      v8 = v4;
      v5 = *a2;
      v6 = a2[1];
      if (*a2 != v6)
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::PopulateSelection(*(a1 + 488), &unk_29B740828, v5, 0xFFFFFFFFLL, &v7);
          v5 = (v5 + 8);
        }

        while (v5 != v6);
      }

      pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::SetSelection(*(a1 + 96), &v7);
      if (v8)
      {
        sub_29A014BEC(v8);
      }
    }
  }
}

void sub_29B06A900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B06A91C(uint64_t *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::ClearSelected(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this)
{
  if (*(this + 8))
  {
    if (sub_29B068A1C())
    {
      v2 = sub_29B06A91C(this + 55);

      pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::ClearSelection(v2);
    }

    else
    {
      v3 = *(this + 12);
      if (!v3)
      {
        v5 = "usdImagingGL/engine.cpp";
        v6 = "ClearSelected";
        v7 = 685;
        v8 = "void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::ClearSelected()";
        v9 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v5, "_selTracker", 0);
        v3 = *(this + 12);
      }

      v4 = operator new(0x88uLL);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = &unk_2A2085290;
      *(v4 + 4) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = &unk_2A2085260;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 16) = 1065353216;
      *(v4 + 72) = 0u;
      *(v4 + 88) = 0u;
      *(v4 + 26) = 1065353216;
      *(v4 + 15) = 0;
      *(v4 + 16) = 0;
      *(v4 + 14) = 0;
      v5 = v4 + 24;
      v6 = v4;
      pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::SetSelection(v3, &v5);
      if (v6)
      {
        sub_29A014BEC(v6);
      }
    }
  }
}

void sub_29B06AAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetSelection@<D0>(pxrInternal__aapl__pxrReserved__::HdxSelectionTracker **this@<X0>, void *a2@<X8>)
{
  SelectionMap = pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::GetSelectionMap(this[12]);
  v6 = *SelectionMap;
  v5 = SelectionMap[1];
  *a2 = v6;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v6)
    {
      return result;
    }

    sub_29A014BEC(v5);
  }

  else if (v6)
  {
    return result;
  }

  return sub_29AEEC064(a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::AddSelected(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  if (*(this + 8))
  {
    if (sub_29B068A1C())
    {
      v6 = sub_29B06A91C(this + 55);

      pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::AddSelection(v6, a2);
    }

    else
    {
      if (!*(this + 61))
      {
        sub_29B2D0058(&v7);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetSelection(this, &v7);
      pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::PopulateSelection(*(this + 61), &unk_29B74082C, a2, a3, &v7);
      pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::SetSelection(*(this + 12), &v7);
      if (v8)
      {
        sub_29A014BEC(v8);
      }
    }
  }
}

void sub_29B06AC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::TestIntersection(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *a1, __int128 *a2, __int128 *a3, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, int *a9, _DWORD *a10, void **a11)
{
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v19)
  {
    v19 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  v20 = *(v19 + 7);
  v30 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v21;
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::TestIntersection(a1, &v30, a2, a3, a4, a5, &v27) && (v22 = v27, v28 - v27 == 96))
  {
    if (a6)
    {
      v23 = *v27;
      *(a6 + 16) = *(v27 + 2);
      *a6 = v23;
    }

    if (a7)
    {
      v24 = *(v22 + 24);
      *(a7 + 16) = *(v22 + 5);
      *a7 = v24;
    }

    if (a8)
    {
      sub_29A2258F0(a8, v22 + 12);
      sub_29A225948(a8 + 1, v22 + 13);
    }

    if (a9)
    {
      sub_29A2258F0(a9, v22 + 14);
      sub_29A225948(a9 + 1, v22 + 15);
    }

    if (a10)
    {
      *a10 = *(v22 + 16);
    }

    if (a11 && (v22 + 72) != a11)
    {
      sub_29B06EBF8(a11, *(v22 + 9), *(v22 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(v22 + 10) - *(v22 + 9)) >> 2));
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v31 = &v27;
  sub_29B06EB10(&v31);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v25;
}

void sub_29B06AE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  a14 = &a10;
  sub_29B06EB10(&a14);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::TestIntersection(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *a1, void *a2, __int128 *a3, __int128 *a4, const pxrInternal__aapl__pxrReserved__::UsdPrim *a5, uint64_t a6, uint64_t a7)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::PrepareBatch(a1, a5, a6);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  return 0;
}

void sub_29B06B450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  sub_29A0176E4(&a19);
  sub_29A186B14(&a41);
  sub_29AEDDAE0(&a43);
  a43 = &a34;
  sub_29B06EE78(&a43);
  a43 = &a37;
  sub_29A1E234C(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_29B06B55C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29B06F378(a1, a2);
  }

  else
  {
    sub_29B06F4AC(a1, *(a1 + 8), a2);
    result = v3 + 96;
    *(a1 + 8) = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B06B5BC(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_29AEE6928(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 60));
  sub_29A1DE3A4((a1 + 56));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::DecodeIntersection(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7)
{
  if (!*(a1 + 64))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprimPathFromPrimId(*(a1 + 72), a2, &v21);
  v9 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSceneDelegateAndInstancerIds(*(a1 + 72), &v21, &v19, &v17);
    v10 = *(a1 + 488);
    if (v10)
    {
      (*(*v10 + 280))(&v12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v16);
    sub_29A2258F0(&v12, &v19);
    sub_29A225948(&v12 + 1, &v20);
    sub_29A2258F0(&v13, &v21);
    sub_29A225948(&v14, &v22);
    sub_29A2258F0(&v15, &v17);
    sub_29A225948(v16, &v18);
    v16[1] = a3;
    pxrInternal__aapl__pxrReserved__::HdxPrimOriginInfo::FromPickHit(*(a1 + 72));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  return v9;
}

void sub_29B06BA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_29AEE38EC(va);
  sub_29AEE2740(va1);
  sub_29A1DCEA8((v9 - 120));
  sub_29A1DCEA8((v9 - 112));
  sub_29A1DCEA8((v9 - 104));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetRendererPlugins(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(this);
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDescs(Instance, &v7);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = v7;
  if (v8 != v7)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      sub_29A1D8028(a2, (v4 + v5));
      ++v6;
      v4 = v7;
      v5 += 40;
    }

    while (v6 < 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3));
  }

  v10 = &v7;
  sub_29AC877F8(&v10);
}

void sub_29B06BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29AC877F8(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetRendererDisplayName(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>, uint64_t a2@<X8>)
{
  memset(__p, 0, 32);
  Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(this);
  if (pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDesc(Instance, this, __p))
  {
    if ((atomic_load_explicit(&qword_2A17589F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17589F8))
    {
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17589F0, "HdStormRendererPlugin");
      __cxa_atexit(sub_29A424A8C, &qword_2A17589F0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17589F8);
    }

    if ((qword_2A17589F0 ^ __p[0]) > 7)
    {
      if (SHIBYTE(__p[3]) < 0)
      {
        sub_29A008D14(a2, __p[1], __p[2]);
      }

      else
      {
        *a2 = *&__p[1];
        *(a2 + 16) = __p[3];
      }
    }

    else
    {
      sub_29A008E78(a2, "Metal");
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29B06BD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2A17589F8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdRendererPlugin *pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetCurrentRendererId@<X0>(pxrInternal__aapl__pxrReserved__::HdRendererPlugin *this@<X0>, void *a2@<X8>)
{
  if (*(this + 8))
  {
    return pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::GetPluginId(this + 7, a2);
  }

  *a2 = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_InitializeHgiIfNecessary(uint64_t this)
{
  v6[2] = *MEMORY[0x29EDCA608];
  if (*(this + 49) == 1)
  {
    v1 = this;
    if (!*(this + 24))
    {
      pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi(v6);
      v2 = v6[0];
      v6[0] = 0;
      v3 = *v1;
      *v1 = v2;
      if (v3)
      {
        (*(*v3 + 8))(v3);
        v4 = v6[0];
        v6[0] = 0;
        if (v4)
        {
          (*(*v4 + 8))(v4);
        }
      }

      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
      if (!v5)
      {
        v5 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
      }

      sub_29A166F2C(v1 + 1, v5 + 1);
      v6[0] = *v1;
      v6[1] = &off_2A2094FD8 + 3;
      sub_29A18606C(v1 + 2, v6);
      return sub_29A186B14(v6);
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_SetRenderDelegateAndRestoreState(uint64_t a1, uint64_t a2)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v23, 1.0);
  if (sub_29B068A1C())
  {
    if (*(a1 + 448))
    {
      v4 = sub_29B06A644((a1 + 448));
      RootTransform = pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::GetRootTransform(v4);
      v6 = RootTransform[3];
      v8 = *RootTransform;
      v7 = RootTransform[1];
      v25 = RootTransform[2];
      v26 = v6;
      v23 = v8;
      v24 = v7;
      v9 = RootTransform[7];
      v11 = RootTransform[4];
      v10 = RootTransform[5];
      v29 = RootTransform[6];
      v30 = v9;
      v27 = v11;
      v28 = v10;
      v12 = sub_29B06A644((a1 + 448));
      RootVisibility = pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::GetRootVisibility(v12);
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *(a1 + 488);
    if (v14)
    {
      v15 = *(v14 + 1056);
      v27 = *(v14 + 1040);
      v28 = v15;
      v16 = *(v14 + 1088);
      v29 = *(v14 + 1072);
      v30 = v16;
      v17 = *(v14 + 992);
      v23 = *(v14 + 976);
      v24 = v17;
      v18 = *(v14 + 1024);
      v25 = *(v14 + 1008);
      v26 = v18;
      RootVisibility = *(v14 + 1104);
      goto LABEL_7;
    }
  }

  RootVisibility = 1;
LABEL_7:
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetSelection(a1, &v21);
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_SetRenderDelegate(a1, a2);
  if (sub_29B068A1C())
  {
    v19 = sub_29B06A644((a1 + 448));
    pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::SetRootTransform(v19, &v23);
    v20 = sub_29B06A644((a1 + 448));
    pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::SetRootVisibility(v20, RootVisibility & 1);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootTransform(*(a1 + 488), &v23);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootVisibility(*(a1 + 488), RootVisibility & 1);
  }

  pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::SetSelection(*(a1 + 96), &v21);
  pxrInternal__aapl__pxrReserved__::HdxTaskController::SetSelectionColor(*(a1 + 88), a1 + 328);
  if (v22)
  {
    sub_29A014BEC(v22);
  }
}

void sub_29B06C018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_SetRenderDelegate(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_DestroyHydraObjects(a1);
  *(a1 + 408) = 0;
  pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::GetPluginId(a2, &v26);
  v6 = v26 & 0xFFFFFFFFFFFFFFF8;
  if ((v26 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = (v6 + 16);
    if (*(v6 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  else
  {
    v7 = "";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("UsdImagingGLEngine_%s_%p", v4, v5, v7, *(a2 + 8));
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (atomic_load_explicit(&qword_2A1758968, memory_order_acquire) != -1)
  {
    v26 = pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_RegisterApplicationSceneIndices;
    __p = &v26;
    std::__call_once(&qword_2A1758968, &__p, sub_29AC90A34);
  }

  v8 = operator new(0x20uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_2A20B3368;
  v8[3] = 0;
  v9 = *(a1 + 424);
  *(a1 + 416) = v8 + 3;
  *(a1 + 424) = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = atomic_load(qword_2A1758920);
  if (!v10)
  {
    v10 = sub_29B06E690(qword_2A1758920);
  }

  sub_29B06D09C(v10, &v24, (a1 + 416));
  pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::operator=((a1 + 56), a2);
  v11 = *(a1 + 64);
  v32 = a1 + 8;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  sub_29AE0A9EC(&v26, &v32, &v33, 1uLL);
  __p = 0;
  v22 = 0;
  v23 = 0;
  v12 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::New(v11, &v26, &v24, &__p);
  sub_29AE0AA60((a1 + 72), v12);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (sub_29B068A1C())
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v31[3] = 0;
    v30 = *(a1 + 48);
    __p = pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_AppendOverridesSceneIndices;
    v22 = 0;
    v23 = a1;
    sub_29B06D1E8(v31, &__p);
    pxrInternal__aapl__pxrReserved__::UsdImagingCreateSceneIndices(&v26, &__p);
  }

  v13 = *(a1 + 72);
  v14 = operator new(0x2328uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::UsdImagingDelegate(v14, v13, (a1 + 80));
  v15 = *(a1 + 488);
  *(a1 + 488) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    v14 = *(a1 + 488);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayUnloadedPrimsWithBounds(v14, *(a1 + 48));
  if (*(a1 + 504) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTerminalSceneIndex(*(a1 + 72), &__p);
  }

  v16 = *(a1 + 72);
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_ComputeControllerPath(&v26, a1, (a1 + 56));
  v17 = operator new(0x188uLL);
  pxrInternal__aapl__pxrReserved__::HdxTaskController::HdxTaskController(v17, v16, &v26, *(a1 + 49));
  sub_29B06E5C4((a1 + 88), v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 1);
  sub_29A1DE3A4(&v26);
  v18 = operator new(0x30uLL);
  v19 = pxrInternal__aapl__pxrReserved__::HdEngine::HdEngine(v18);
  v20 = *(a1 + 496);
  *(a1 + 496) = v18;
  if (v20)
  {
    (*(*v20 + 8))(v20, v19);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }
}

void sub_29B06C508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_29A014BEC(a24);
  }

  sub_29ABD4DDC(&a11);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_ComputeControllerPath(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>, pxrInternal__aapl__pxrReserved__::HdRendererPlugin **a3@<X1>)
{
  pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::GetPluginId(a3, &v10);
  v5 = v10 & 0xFFFFFFFFFFFFFFF8;
  if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v6 = *v6;
    }
  }

  else
  {
    v6 = "";
  }

  sub_29A008E78(__p, v6);
  pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier(__p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = &v13;
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v13.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("_UsdImaging_%s_%p", v7, v8, v9, this);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v10, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, (this + 80), &v10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_29B06C740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_RegisterApplicationSceneIndices(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this)
{
  v6[4] = *MEMORY[0x29EDCA608];
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(this);
  __p = 0uLL;
  v5 = 0;
  v6[0] = &unk_2A20B32B8;
  v6[1] = pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_AppendSceneGlobalsSceneIndexCallback;
  v6[3] = v6;
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, &__p, v6, &v2, 0, 0);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ACD1A4C(v6);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }
}

void sub_29B06C898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29ACD1A4C(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_AppendSceneGlobalsSceneIndexCallback(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = atomic_load(qword_2A1758920);
  if (!v6)
  {
    v6 = sub_29B06E690(qword_2A1758920);
  }

  sub_29B06CA68(v6, a1, &v10);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::HdsiSceneGlobalsSceneIndex::New(a2);
  }

  __p[0] = "usdImagingGL/engine.cpp";
  __p[1] = "_AppendSceneGlobalsSceneIndexCallback";
  __p[2] = 1134;
  __p[3] = "static HdSceneIndexBaseRefPtr pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_AppendSceneGlobalsSceneIndexCallback(const std::string &, const HdSceneIndexBaseRefPtr &, const HdContainerDataSourceHandle &)";
  v9 = 0;
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Did not find appSceneIndices instance for %s,", v7);
  *a3 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29B06CA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B06CA68(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A5DAB7C(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = v4[6];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      a3[1] = v7;
      if (v7)
      {
        v8 = v5[5];
        *a3 = v8;
        if (v8)
        {
          return;
        }

        sub_29A014BEC(v7);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
}

uint64_t sub_29B06CABC(uint64_t *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_AppendOverridesSceneIndices(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  *a3 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29B06CF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  v22 = *(v21 - 56);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  __cxa_guard_abort(&qword_2A1758960);
  sub_29ABD4DDC(v20);
}

void sub_29B06D09C(uint64_t a1, __int128 *a2, const void **a3)
{
  if (!*a3)
  {
    return;
  }

  sub_29B06FCC8(&__p, a2, a3);
  v6 = sub_29B06F9A8(a1, &__p, &__p);
  v8 = v7;
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
    if (v8)
    {
      return;
    }
  }

  else if (v8)
  {
    return;
  }

  v9 = v6[6];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v12 = v10;
      if (v6[5])
      {
        *&__p = "hd/utils.h";
        *(&__p + 1) = "RegisterInstance";
        v18 = 84;
        v19 = "void pxrInternal__aapl__pxrReserved__::HdUtils::RenderInstanceTracker<pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine_Impl::_AppSceneIndices>::RegisterInstance(const std::string &, const TSharedPtr &) [T = pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine_Impl::_AppSceneIndices]";
        LOBYTE(v20) = 0;
        if (*(a2 + 23) >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "An instance with renderInstanceId %s was already registered previously.", v11, v13);
        sub_29A014BEC(v12);
        return;
      }

      sub_29A014BEC(v10);
    }
  }

  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v16 = v6[6];
  v6[5] = v15;
  v6[6] = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

void *sub_29B06D1E8(void *a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B33B8;
  *(v4 + 8) = *a2;
  *(v4 + 3) = *(a2 + 16);
  v6[3] = v4;
  sub_29B063968(v6, a1);
  sub_29B02C88C(v6);
  return a1;
}

void sub_29B06D290(void *a1)
{
  sub_29B02C88C((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A5AD4D8(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetRendererAovs@<X0>(uint64_t this@<X0>, uint64_t *a2@<X8>)
{
  v22[5] = *MEMORY[0x29EDCA608];
  if (!*(this + 64))
  {
    goto LABEL_18;
  }

  v3 = this;
  v4 = *(this + 72);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  this = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(v4, v5 + 39);
  if (this)
  {
    if ((atomic_load_explicit(&qword_2A1758998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758998))
    {
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v12)
      {
        v12 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      v13 = *(v12 + 4);
      qword_2A1758970[0] = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1758970[0] &= 0xFFFFFFFFFFFFFFF8;
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v14)
      {
        v14 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      v15 = *(v14 + 1);
      qword_2A1758978 = v15;
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1758978 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v16)
      {
        v16 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      v17 = *(v16 + 13);
      qword_2A1758980 = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1758980 &= 0xFFFFFFFFFFFFFFF8;
      }

      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v18)
      {
        v18 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      v19 = *(v18 + 10);
      qword_2A1758988 = v19;
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1758988 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v20, "st");
      pxrInternal__aapl__pxrReserved__::HdAovTokensMakePrimvar(&v20, &qword_2A1758990);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      __cxa_atexit(sub_29B07031C, 0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758998);
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v6)
    {
      v6 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    v7 = *v6;
    v20 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 = v8;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_29A12EF7C(a2, &v20, v21, 1uLL);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v9 = qword_2A1758970;
    v10 = 40;
    do
    {
      (*(**(v3 + 64) + 328))(&v20);
      v11 = v20;
      sub_29AC1E22C(v22);
      this = sub_29A186B14(v21);
      if (v11 != -1)
      {
        this = sub_29A1D8028(a2, v9);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  else
  {
LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void sub_29B06D640(_Unwind_Exception *a1)
{
  while (1)
  {
    v4 = *--v1;
    v3 = v4;
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v1 == qword_2A1758970)
    {
      __cxa_guard_abort(&qword_2A1758998);
      _Unwind_Resume(a1);
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetRendererAov(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this, atomic_uint **a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!*(this + 8))
  {
    return 0;
  }

  v4 = *(this + 9);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(v4, v5 + 39);
  if (result)
  {
    v7 = *(this + 11);
    v8 = *a2;
    v12 = v8;
    if ((v8 & 7) != 0)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v9;
      }
    }

    memset(v10, 0, sizeof(v10));
    sub_29A12EF7C(v10, &v12, &v13, 1uLL);
    pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderOutputs(v7, v10);
    v11 = v10;
    sub_29A124AB0(&v11);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    return 1;
  }

  return result;
}

void sub_29B06D81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13)
{
  sub_29A124AB0(&a12);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetAovTexture(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (!*(this + 8))
  {
    return 0;
  }

  v5 = 0;
  if (pxrInternal__aapl__pxrReserved__::HdEngine::GetTaskContextData(*(this + 62), a2, v4) && sub_29AE8A2C8(v4))
  {
    v2 = *sub_29AEE5F0C(v4);
  }

  else
  {
    v2 = 0;
  }

  sub_29A186B14(v4);
  return v2;
}

void sub_29B06D900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetRendererSettingsList(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>, void *a2@<X8>)
{
  v24[3] = *MEMORY[0x29EDCA608];
  v3 = *(this + 8);
  if (v3)
  {
    (*(*v3 + 80))(&v20);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v4 = v20;
    v5 = v21;
    if (v20 != v21)
    {
      v6 = "usdImagingGL/engine.cpp";
      v7 = "GetRendererSettingsList";
      do
      {
        v24[1] = 0;
        memset(v22, 0, sizeof(v22));
        sub_29A166F2C(&v22[24], v4[1].__r_.__value_.__r.__words);
        std::string::operator=(v22, v4);
        sub_29A1854E8(v24, &v4[1].__r_.__value_.__l.__size_);
        if (sub_29A1EFCDC(v24))
        {
          v8 = 0;
        }

        else if (sub_29A293A9C(v24) & 1) != 0 || (sub_29A3F94B8(v24))
        {
          v8 = 1;
        }

        else if (sub_29A3F9DF4(v24))
        {
          v8 = 2;
        }

        else
        {
          if ((sub_29A1EFC10(v24) & 1) == 0)
          {
            v9 = v6;
            v18[0] = v6;
            v18[1] = v7;
            v10 = v7;
            v18[2] = 1388;
            v18[3] = "UsdImagingGLRendererSettingsList pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetRendererSettingsList() const";
            v19 = 0;
            v11 = v22[23];
            v12 = *v22;
            pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(v24, &__p);
            if (v11 >= 0)
            {
              v14 = v22;
            }

            else
            {
              v14 = v12;
            }

            p_p = &__p;
            if (v17 < 0)
            {
              p_p = __p.__vftable;
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Setting '%s' with type '%s' doesn't have a UI implementation...", v13, v14, p_p);
            v6 = v9;
            v7 = v10;
            if (v17 < 0)
            {
              operator delete(__p.__vftable);
            }

            goto LABEL_10;
          }

          v8 = 3;
        }

        v23 = v8;
        sub_29B06DBB0(a2, v22);
LABEL_10:
        sub_29A186B14(v24);
        if ((v22[24] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&v22[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v22[23] & 0x80000000) != 0)
        {
          operator delete(*v22);
        }

        v4 += 2;
      }

      while (v4 != v5);
    }

    *v22 = &v20;
    sub_29AE81EA0(v22);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_29B06DB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char *a26)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_29B06DC10(&a26);
  sub_29B06FE3C(&a26);
  a26 = &a23;
  sub_29AE81EA0(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_29B06DBB0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29B06FF2C(a1, a2);
  }

  else
  {
    sub_29B070078(a1, *(a1 + 8), a2);
    result = v3 + 56;
    *(a1 + 8) = v3 + 56;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B06DC10(uint64_t a1)
{
  sub_29A186B14(a1 + 40);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetRendererSetting@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 64);
  if (result)
  {
    return (*(*result + 72))();
  }

  *(a2 + 8) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetAvailableRenderSettingsPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, void *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17589A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17589A8))
  {
    sub_29A008E78(&__p, "/Render");
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&unk_2A17589A0, &__p);
    if (SBYTE7(v6) < 0)
    {
      operator delete(__p);
    }

    __cxa_atexit(sub_29A1DCEA8, &unk_2A17589A0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17589A8);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v7, this, a2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
}

void sub_29B06DF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17589A8);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetRendererCommandDescriptors@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>, void *a2@<X8>)
{
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 336))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetRenderStats@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>, void *a2@<X8>)
{
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 96))();
  }

  *a2 = 0;
  return result;
}

uint64_t sub_29B06E0CC(uint64_t *a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetSceneDelegate(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this)
{
  if (!sub_29B068A1C())
  {
    return *(this + 61);
  }

  v3[0] = "usdImagingGL/engine.cpp";
  v3[1] = "_GetSceneDelegate";
  v3[2] = 1944;
  v3[3] = "UsdImagingDelegate *pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetSceneDelegate() const";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "_GetSceneDelegate API is unsupported");
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::PollForAsynchronousUpdates(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this)
{
  if (*(this + 504) == 1)
  {
    v1 = *(this + 9);
    if (v1)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTerminalSceneIndex(v1, &v3);
    }
  }

  return 0;
}

void sub_29B06E344(_Unwind_Exception *a1, const void *a2, uint64_t a3, atomic_uint *a4, uint64_t a5, atomic_uint *a6, ...)
{
  va_start(va, a6);
  if (a6)
  {
    if (atomic_fetch_add_explicit(a6 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a6 + 8))(a6, a2, a3, a4);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(va, a2);
  sub_29ABD4DDC((v6 - 24));
}

void *sub_29B06E3C8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  v3 = a1 + 1;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    sub_29B2D0108(v3, &v5);
  }

  return a1;
}

void sub_29B06E41C(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    sub_29B28D068(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B06E438(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void *sub_29B06E490@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = sub_29B06E4DC(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B06E4DC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B30F8;
  pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::HdxSelectionTracker((a1 + 3));
  return a1;
}

void sub_29B06E558(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B30F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B06E5C4(pxrInternal__aapl__pxrReserved__::HdxTaskController **a1, pxrInternal__aapl__pxrReserved__::HdxTaskController *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HdxTaskController::~HdxTaskController(v3);

    operator delete(v4);
  }
}

_OWORD *sub_29B06E690(atomic_ullong *a1)
{
  result = operator new(0x28uLL);
  v3 = 0;
  *result = 0u;
  result[1] = 0u;
  *(result + 8) = 1065353216;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    v4 = sub_29B06E6E8(result);
    operator delete(v4);
    return atomic_load(a1);
  }

  return result;
}

uint64_t sub_29B06E6E8(uint64_t a1)
{
  sub_29B06E724(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B06E724(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A01E644((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29B06E768(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_29B06E7A8(void *a1, uint64_t *a2)
{
  result = sub_29A5DAB7C(a1, a2);
  if (result)
  {
    sub_29B06E7E0(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B06E7E0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A01E644(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29B06E83C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A01E644(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29B06E898(void *a1, void *a2)
{
  a1[1] = &off_2A20B3138;
  result = operator new(0x18uLL);
  v5 = a2[1];
  *result = *a2;
  *(result + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  atomic_store(0, result + 4);
  *a1 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29B06E8FC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29B06E91C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29B06EA88@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29B06E898(a2, v2);
}

uint64_t *sub_29B06EA98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29B06EAF8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B06EB10(void ***a1)
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
        sub_29B06EB98(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29B06EB98(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 72);
  sub_29AEE6928(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 60));
  sub_29A1DE3A4((a2 + 56));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 52));
  return sub_29A1DE3A4((a2 + 48));
}

_DWORD *sub_29B06EBF8(void **a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) < a4)
  {
    sub_29B06ED68(a1);
    if (a4 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v9;
    }

    sub_29A379A04(a1, v10);
    result = sub_29B06EDD4(a1, a2, a3, a1[1]);
    goto LABEL_11;
  }

  v12 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 2) < a4)
  {
    sub_29A55B158(&v16, a2, (a2 + v12), v8);
    result = sub_29B06EDD4(a1, (a2 + v12), a3, a1[1]);
LABEL_11:
    a1[1] = result;
    return result;
  }

  result = sub_29A55B158(&v17, a2, a3, v8);
  v14 = v13;
  v15 = a1[1];
  if (v15 != v13)
  {
    do
    {
      v15 -= 3;
      result = sub_29AEE69B0(a1, v15);
    }

    while (v15 != v14);
  }

  a1[1] = v14;
  return result;
}

void sub_29B06ED68(void **a1)
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
        v3 -= 3;
        sub_29AEE69B0(a1, v3);
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

_DWORD *sub_29B06EDD4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A1E21F4(v4, v6);
      sub_29A1E2240(v4 + 1, v6 + 1);
      v4[2] = v6[2];
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29AEE6C04(v8);
  return v4;
}

void sub_29B06EE78(void ***a1)
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
        v4 -= 20;
        sub_29AEE62F0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_29B06EF00(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 472), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29B06EF20(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29B06F04C(a1);
}

void sub_29B06F034(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A20B31F0;
  sub_29B06F310(a2, v2);
}

void sub_29B06F04C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 472), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((v1 + 352));
    sub_29A0FC854(v1 + 320);
    v2 = *(v1 + 296);
    if (v2)
    {
      *(v1 + 304) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 24);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 = *(v1 + 16);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v1);
  }
}

uint64_t sub_29B06F0F8(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 472));
  if (v1 != 1)
  {
    sub_29B06F160(*a1);
  }

  return *a1;
}

void sub_29B06F1C8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  v4 = a2[2];
  *(a1 + 16) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a2[3];
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  memcpy((a1 + 32), a2 + 4, 0x108uLL);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>();
}

void sub_29B06F2AC(_Unwind_Exception *a1)
{
  sub_29A0FC854((v1 + 40));
  v3 = v1[37];
  if (v3)
  {
    v1[38] = v3;
    operator delete(v3);
  }

  v4 = v1[3];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = v1[2];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B06F378(char **a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A0CFEE8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[6 * v2];
  *(&v16 + 1) = &v7[6 * v6];
  sub_29B06F4AC(a1, v15, a2);
  *&v16 = v15 + 6;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_29B06F5E4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29B06F7B0(&v14);
  return v13;
}

void sub_29B06F498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B06F7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B06F4AC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v6;
  *a2 = v5;
  sub_29A1E21F4((a2 + 48), a3 + 12);
  sub_29A1E2240((a2 + 52), a3 + 13);
  sub_29A1E21F4((a2 + 56), a3 + 14);
  sub_29A1E2240((a2 + 60), a3 + 15);
  v7 = *(a3 + 16);
  *(a2 + 72) = 0;
  *(a2 + 64) = v7;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return sub_29B06F55C((a2 + 72), *(a3 + 9), *(a3 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 10) - *(a3 + 9)) >> 2));
}

void sub_29B06F540(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 56));
  sub_29A1DCEA8((v1 + 48));
  _Unwind_Resume(a1);
}

uint64_t *sub_29B06F55C(uint64_t *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A379A04(result, a4);
    result = sub_29B06EDD4(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29B06F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AEE6928(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29B06F5E4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      sub_29B06F698(a1, a4, v7);
      v7 += 6;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29B06EB98(a1, v5);
      v5 += 96;
    }
  }

  return sub_29B06F724(v9);
}

__n128 sub_29B06F698(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v6;
  *a2 = v5;
  sub_29A1DDD84((a2 + 48), a3 + 12);
  sub_29A1DDDC0((a2 + 52), a3 + 13);
  sub_29A1DDD84((a2 + 56), a3 + 14);
  sub_29A1DDDC0((a2 + 60), a3 + 15);
  *(a2 + 64) = *(a3 + 16);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  result = *(a3 + 72);
  *(a2 + 72) = result;
  *(a2 + 88) = *(a3 + 11);
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  return result;
}

uint64_t sub_29B06F724(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B06F75C(a1);
  }

  return a1;
}

uint64_t *sub_29B06F75C(uint64_t *result)
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
      v3 -= 96;
      result = sub_29B06EB98(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29B06F7B0(void **a1)
{
  sub_29B06F7E4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29B06F7E4(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 96;
      result = sub_29B06EB98(v4, v1 - 96);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void *sub_29B06F834(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20B32B8;
  result[1] = v3;
  return result;
}

uint64_t sub_29B06F87C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20B32B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_29B06F8BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B3338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29B06F958(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B3368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

const void **sub_29B06F9A8(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B06FBFC(a1, v8, v26, a3);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B06FBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B06E83C(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29B06FBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, __int128 *a4@<X2>)
{
  v8 = operator new(0x38uLL);
  *a3 = v8;
  a3[1] = a1;
  a3[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  result = sub_29B06FC6C(v8 + 16, a4);
  *(a3 + 16) = 1;
  return result;
}

char *sub_29B06FC6C(char *__dst, __int128 *a2)
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

  *(__dst + 24) = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  return __dst;
}

void *sub_29B06FCC8(void *__dst, __int128 *a2, void *a3)
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

  v6 = a3[1];
  __dst[3] = *a3;
  __dst[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

__n128 sub_29B06FD3C(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A20B33B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29B06FD90(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20B33B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29B06FDC8(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_29B06FDF0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B3440))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29B06FE3C(void ***a1)
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
        v4 -= 56;
        sub_29B06FEC4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29B06FEC4(uint64_t a1, uint64_t a2)
{
  sub_29A186B14(a2 + 40);
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t sub_29B06FF2C(char **a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[56 * v2];
  *(&v16 + 1) = &v7[56 * v6];
  sub_29B070078(a1, v15, a2);
  *&v16 = v15 + 56;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29B070130(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29B0702A0(&v14);
  return v13;
}

void sub_29B070064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B0702A0(va);
  _Unwind_Resume(a1);
}

void *sub_29B070078(int a1, void *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v5;
  }

  v6 = *(a3 + 3);
  __dst[3] = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    __dst[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(__dst + 8) = *(a3 + 8);
  return sub_29A186EF4(__dst + 5, a3 + 5);
}

void sub_29B070104(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2948E4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B070130(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2 + 5;
    do
    {
      v8 = *(v7 - 5);
      *(a4 + 16) = *(v7 - 3);
      *a4 = v8;
      *(v7 - 4) = 0;
      *(v7 - 3) = 0;
      *(v7 - 5) = 0;
      *(a4 + 24) = *(v7 - 2);
      *(v7 - 2) = 0;
      *(a4 + 32) = *(v7 - 2);
      sub_29A186A3C((a4 + 40), v7);
      a4 = v14 + 56;
      v14 += 56;
      v9 = v7 + 2;
      v7 += 7;
    }

    while (v9 != a3);
    v12 = 1;
    while (v5 != a3)
    {
      sub_29B06FEC4(a1, v5);
      v5 += 7;
    }
  }

  return sub_29B070214(v11);
}

uint64_t sub_29B070214(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B07024C(a1);
  }

  return a1;
}

void sub_29B07024C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_29B06FEC4(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29B0702A0(void **a1)
{
  sub_29B0702D4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29B0702D4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29B06FEC4(v4, i - 56);
  }
}

void sub_29B07031C()
{
  for (i = 4u; i != -1; --i)
  {
    v1 = qword_2A1758970[i];
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void *sub_29B070350()
{
  v1 = nullsub_1817;
  return sub_29B071A60(&var8);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  if (!*a3)
  {
    pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::_GetHydraPrimType(a2, a4);
  }

  *a4 = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::_GetHydraPrimType(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, void *a2@<X8>)
{
  v3[5] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v3, a1);
  v3[0] = &unk_2A2061F80;
  v3[4] = 0;
  pxrInternal__aapl__pxrReserved__::UsdProcGenerativeProcedural::GetProceduralSystemAttr(v3, &v2);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v2);
}

void sub_29B0705C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B0706B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X3>, int a3@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  v12[7] = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    *(a4 + 56) = 0x800000000;
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    if (*a2 == v9)
    {
LABEL_8:

      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a1, a2, a3, a4);
    }

    else
    {
      while (1)
      {
        v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdProcTokens);
        if (!v10)
        {
          v10 = sub_29A814F7C(&pxrInternal__aapl__pxrReserved__::UsdProcTokens);
        }

        if ((*v10 ^ *v8) <= 7)
        {
          break;
        }

        v8 = (v8 + 8);
        if (v8 == v9)
        {
          goto LABEL_8;
        }
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
      if (!v11)
      {
        v11 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v12, (v11 + 216));
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(a4, v12);
      sub_29ABC3488(v12);
    }
  }
}

void sub_29B070A54(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  sub_29A1DCEA8(va);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(va1);
  sub_29A1DCEA8(v5);
  _Unwind_Resume(a1);
}

void sub_29B070AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A1DCEA8(va);
  JUMPOUT(0x29B070AB4);
}

void pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, _DWORD *a3, char a4, double a5)
{
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  sub_29AFB9C00(PrimvarDescCache, a3);
  if ((a4 & 0x40) != 0)
  {
    memset(&v10[6], 0, 24);
    sub_29A5B9D18(a2, v10);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetInheritedPrimvars(a1, v10);
  }
}

void sub_29B070E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v28 - 136);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  a28 = v28 - 128;
  sub_29A7A3864(&a28);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, void x2_0, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  __p[8] = *MEMORY[0x29EDCA608];
  __p[7] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a2);
  v8[3] = 0;
  v8[0] = &unk_2A2060598;
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v8, a3, __p);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(__p, v7);
}

void sub_29B0713C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdProcTokens);
  if (!v5)
  {
    v5 = sub_29A814F7C(&pxrInternal__aapl__pxrReserved__::UsdProcTokens);
  }

  if ((*v5 ^ *a4) < 8)
  {
    return 4294967293;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(a4, a2))
  {
    return 64;
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::TrackVariability(uint64_t a1, atomic_ullong **a2, uint64_t a3, _DWORD *a4)
{
  if ((*a4 & 0x40) == 0)
  {
    v7 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v17, a2);
    v17[3] = 0;
    v17[0] = &unk_2A2060598;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvarsWithValues(v7);
  }

  v12 = *a2;
  v8 = a2[1];
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a2 + 4);
  sub_29A1E2240(&v15, a2 + 5);
  v9 = a2[3];
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v11)
  {
    v11 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(a1, &v12, (v10 + 296), 8, (v11 + 80), a4, 0, 0);
}

void sub_29B071900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v21 - 72) = &a21;
  sub_29A7A3864((v21 - 72));
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI((v21 - 104));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdProcImagingGenerativeProceduralAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  v6 = a4;
  result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a5, a3, a4);
  if ((v6 & 0x40) != 0)
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a5, a3);
  }

  return result;
}

uint64_t sub_29B0719F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B071A20(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void *sub_29B071A60(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B36A8;
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

void sub_29B071AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B071B10(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B071B38@<D0>(_OWORD *a1@<X8>)
{
  sub_29B071B74(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B071B74(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B36E8;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B3468;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B071C20(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B36E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B071C8C()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "inertGenerativeProcedural");
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
  atomic_compare_exchange_strong(&qword_2A1758A00, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A1758A00);
  }

  return v0;
}

void sub_29B071DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

void sub_29B071DF8(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDSKELIMAGING_FORCE_CPU_COMPUTE))
  {
    sub_29B2D01A4();
  }
}

void *sub_29B071E28()
{
  v1 = nullsub_1818;
  return sub_29B07C604(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::~UsdSkelImagingSkeletonAdapter(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this)
{
  *this = &unk_2A20B3738;
  sub_29B07CFF0(this + 128);
  sub_29B07CEEC(this + 88);
  sub_29B07CE20(this + 48);
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::~UsdSkelImagingSkeletonAdapter(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v8);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) != 0 || (result = sub_29B2D01D8(v12, a5), (result))
  {
    if (!a4)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    *a5 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a5);
    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5 + 1);
  }

  return result;
}

void sub_29B07262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29A57F434(va);
  pxrInternal__aapl__pxrReserved__::UsdSkelRoot::~UsdSkelRoot((v16 - 184));
  sub_29A1DCEA8((v16 - 160));
  sub_29A1DCEA8((v16 - 144));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkelData(uint64_t a1, unsigned int *a2)
{
  result = sub_29A328A44((a1 + 48), a2);
  if (result)
  {
    return result[3];
  }

  return result;
}

void sub_29B0727B8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 436));
  sub_29A1DE3A4((a1 + 432));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 428));
  sub_29A1DE3A4((a1 + 424));
  sub_29A829BD0((a1 + 416));
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinningComputationPath@<X0>(uint64_t *__return_ptr a1@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>)
{
  v4 = atomic_load(&qword_2A1758A08);
  if (!v4)
  {
    v4 = sub_29B07D9A0();
  }

  return pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, a2, (v4 + 16));
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinningInputAggregatorComputationPath@<X0>(uint64_t *__return_ptr a1@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>)
{
  v4 = atomic_load(&qword_2A1758A08);
  if (!v4)
  {
    v4 = sub_29B07D9A0();
  }

  return pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, a2, (v4 + 17));
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, _DWORD *a4, uint64_t a5)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v11);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {

    pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_TrackBoneMeshVariability(a1, a2, a3, a4);
  }

  else if (sub_29A328A44(a1 + 11, a3))
  {

    pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_TrackSkinnedPrimVariability(a1, a2, a3, a4, a5);
  }

  else
  {
    IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(0, a3);
    if (IsSkinningComputationPath)
    {

      pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_TrackSkinningComputationVariability(a1, a2, v14, a4, a5);
    }

    if (!pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a3))
    {
      v16[0] = "usdSkelImaging/skeletonAdapter.cpp";
      v16[1] = "TrackVariability";
      v16[2] = 276;
      v16[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const";
      v17 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "UsdSkelImagingSkeletonAdapter::TrackVariability : Received unknown prim %s ", Text);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsCallbackForSkeleton(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v4);

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_TrackBoneMeshVariability(uint64_t a1, int *a2, unsigned int *a3, _DWORD *a4)
{
  v7 = sub_29A328A44((a1 + 48), a3);
  if (v7 && v7[3] || (result = sub_29B2D0248(v18), (result & 1) != 0))
  {
    v13 = *a2;
    v8 = *(a2 + 1);
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v15, a2 + 4);
    sub_29A1E2240(&v16, a2 + 5);
    v9 = *(a2 + 3);
    v17 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v10)
    {
      v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v11)
    {
      v11 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(a1, &v13, (v10 + 848), 64, (v11 + 88), a4, 0, 0);
  }

  return result;
}

void sub_29B073028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_TrackSkinnedPrimVariability(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, _DWORD *a4, uint64_t a5)
{
  PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, a2, 0);
  v11 = *PrimAdapter;
  v12 = PrimAdapter[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 104))(v11, a2, a3, a4, a5);
  if (pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsAffectedByTimeVaryingSkelAnim(a1, a3))
  {
    *a4 |= 0x20u;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v14)
    {
      v14 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v13, (v14 + 88));
  }

  if (v12)
  {

    sub_29A014BEC(v12);
  }
}

void sub_29B0731CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  v3 = atomic_load(&qword_2A1758A08);
  if (!v3)
  {
    v3 = sub_29B07D9A0();
  }

  v4 = (v3 + 16);

  return pxrInternal__aapl__pxrReserved__::TfToken::operator==(v4, Name);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  v3 = atomic_load(&qword_2A1758A08);
  if (!v3)
  {
    v3 = sub_29B07D9A0();
  }

  v4 = (v3 + 17);

  return pxrInternal__aapl__pxrReserved__::TfToken::operator==(v4, Name);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = a4;
  IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(a1, a3);
  if (!IsSkinningComputationPath)
  {
    IsSkinningInputAggregatorComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a3);
    if (!IsSkinningInputAggregatorComputationPath)
    {
      StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(IsSkinningInputAggregatorComputationPath);
      SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v15);
      if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
      {

        pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_UpdateBoneMeshForTime(a1, a2, a3, v7);
      }

      else if (sub_29A328A44(a1 + 11, a3))
      {

        pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_UpdateSkinnedPrimForTime(a1, a2, a3, v7, a5, a6);
      }

      else
      {
        v18[0] = "usdSkelImaging/skeletonAdapter.cpp";
        v18[1] = "UpdateForTime";
        v18[2] = 325;
        v18[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::UpdateForTime(const UsdPrim &, const SdfPath &, UsdTimeCode, HdDirtyBits, const UsdImagingInstancerContext *) const";
        v19 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "UsdSkelImagingSkeletonAdapter::UpdateForTime : Received unknown prim %s ", Text);
      }
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_UpdateBoneMeshForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, unsigned int *a3, char a4)
{
  v7 = sub_29A328A44(a1 + 6, a3);
  if (v7 && v7[3] || (sub_29B2D0290(v21) & 1) != 0)
  {
    if (sub_29AF49C14(2))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    if (sub_29AF49C14(2))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[UpdateForTime] Cache path: <%s>\n", v9, v10, Text);
    }

    if ((a4 & 0x40) != 0)
    {
      PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
      v12 = sub_29AFB9C00(PrimvarDescCache, a3);
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v13)
      {
        v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      if (!v14)
      {
        v14 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v12, v13 + 59, 3, v14 + 4, 0);
      v15 = sub_29AFB9C00(PrimvarDescCache, a3);
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      if (!v17)
      {
        v17 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v15, v16 + 19, 0, v17 + 1, 0);
      v18 = sub_29AFB9C00(PrimvarDescCache, a3);
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v19)
      {
        v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v20 = 0;
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v18, v19 + 20, 0, &v20, 0);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }
}

void sub_29B073748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_UpdateSkinnedPrimForTime(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, pxrInternal__aapl__pxrReserved__ **a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4, uint64_t a5, double a6)
{
  if (sub_29AF49C14(2))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  if (sub_29AF49C14(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[UpdateForTime] Cache path: <%s>\n", v13, v14, Text);
  }

  PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, a2, 0);
  v16 = *PrimAdapter;
  v17 = PrimAdapter[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v16 + 112))(v16, a2, a3, a4 & 0xFFFFF7DF, a5, a6);
  if ((a4 & 0x40) != 0)
  {
    PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
    v19 = sub_29AFB9C00(PrimvarDescCache, a3);
    v20 = *v19;
    while (v20 != *(v19 + 8))
    {
      v21 = atomic_load(&qword_2A1758A08);
      if (!v21)
      {
        v21 = sub_29B07D9A0();
      }

      if ((v21[21] ^ *v20) < 8)
      {
        goto LABEL_21;
      }

      v22 = atomic_load(&qword_2A1758A08);
      if (!v22)
      {
        v22 = sub_29B07D9A0();
      }

      if ((v22[22] ^ *v20) < 8)
      {
        goto LABEL_21;
      }

      v23 = atomic_load(&qword_2A1758A08);
      if (!v23)
      {
        v23 = sub_29B07D9A0();
      }

      if ((v23[23] ^ *v20) < 8)
      {
        goto LABEL_21;
      }

      v24 = atomic_load(&qword_2A1758A08);
      if (!v24)
      {
        v24 = sub_29B07D9A0();
      }

      if ((v24[24] ^ *v20) > 7)
      {
        v20 += 4;
      }

      else
      {
LABEL_21:
        sub_29AE75CE8(&v26, (v20 + 4), *(v19 + 8), v20);
        sub_29ABEEA50(v19, v25);
      }
    }
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }
}

void sub_29B0739A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v12)
    {
      v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v12 + 158) ^ *a4) >= 8)
    {
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v24)
      {
        v24 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v24 + 114) ^ *a4) >= 8)
      {
        v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v30)
        {
          v30 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v30 + 37) ^ *a4) >= 8)
        {
          if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, v11))
          {
            return 512;
          }

          else
          {
            return 4294967293;
          }
        }

        else
        {
          return 8;
        }
      }

      else
      {
        return 0x80000;
      }
    }

    else
    {
      return 1024;
    }
  }

  else if (sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v15 = *PrimAdapter;
    v16 = PrimAdapter[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = (*(*v15 + 128))(v15, a2, a3, a4);
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v17)
    {
      v17 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    if ((*(v17 + 11) ^ *a4) < 8)
    {
      goto LABEL_30;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v18)
    {
      v18 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    if ((*(v18 + 12) ^ *a4) < 8)
    {
      goto LABEL_30;
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v19)
    {
      v19 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    if ((*(v19 + 13) ^ *a4) < 8)
    {
      goto LABEL_30;
    }

    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v20)
    {
      v20 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    if ((*(v20 + 10) ^ *a4) < 8)
    {
      goto LABEL_30;
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v21)
    {
      v21 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    if ((*(v21 + 20) ^ *a4) < 8)
    {
      goto LABEL_30;
    }

    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v22)
    {
      v22 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    if ((*(v22 + 18) ^ *a4) < 8)
    {
      goto LABEL_30;
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v23)
    {
      v23 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    if ((*(v23 + 19) ^ *a4) <= 7)
    {
LABEL_30:
      if (v13 == -3)
      {
        v13 = 64;
      }

      else
      {
        v32 = "usdSkelImaging/skeletonAdapter.cpp";
        v33 = "ProcessPropertyChange";
        v34 = 390;
        v35 = "virtual HdDirtyBits pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::ProcessPropertyChange(const UsdPrim &, const SdfPath &, const TfToken &)";
        v36 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v32, "Skinned prim %s needs to be resync'd because of aproperty change. Hijacking doesn't work in this scenario.\n", v29, Text);
      }
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  else
  {
    IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(0, a3);
    if (!IsSkinningComputationPath && !pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a3))
    {
      v32 = "usdSkelImaging/skeletonAdapter.cpp";
      v33 = "ProcessPropertyChange";
      v34 = 406;
      v35 = "virtual HdDirtyBits pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::ProcessPropertyChange(const UsdPrim &, const SdfPath &, const TfToken &)";
      v36 = 0;
      v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v32, "Unhandled ProcessPropertyChange callback for cachePath <%s> in UsdSkelImagingSkelAdapter.", v27, v26);
    }

    return 0;
  }

  return v13;
}

void sub_29B073D70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  if (sub_29AF49C14(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[SkeletonAdapter] ProcessPrimResync called for %s\n", v7, v8, Text);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (sub_29A328A44(this + 11, a2))
  {
    if (sub_29A328A44(this + 11, a2))
    {
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }
  }

  else
  {
    v9 = sub_29A328A44(this + 6, a2);
    if (v9)
    {
      v10 = v9[3];
      if (v10)
      {
        sub_29A88F6CC(&v13, v14, *(v10 + 80), (v10 + 88));
      }
    }
  }

  (*(*this + 528))(this, a2, a3);
  v11 = v13;
  v12 = v14;
  while (v11 != v12)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::Repopulate(a3, v11);
    v11 = (v11 + 8);
  }

  v16 = &v13;
  sub_29A1E234C(&v16);
}

void sub_29B073EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_29A1E234C(&a14);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinnedPrimData(uint64_t a1, unsigned int *a2)
{
  v2 = sub_29A328A44((a1 + 88), a2);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v11);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a5, a3, a4);
    if ((a4 & 0x40) != 0)
    {

      pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a5, a3);
    }

    return;
  }

  if (sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v14 = *PrimAdapter;
    v15 = PrimAdapter[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v14 + 152))(v14, a2, a3, a4, a5);
    if ((a4 & 0x40) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a5, a3);
    }

    else if ((a4 & 0x200) == 0)
    {
LABEL_22:
      if (v15)
      {
        sub_29A014BEC(v15);
      }

      return;
    }

    if (sub_29AF49C14(3))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[SkeletonAdapter::MarkDirty] Propagating dirtyness from skinned prim %s to its computations\n", v18, v19, Text);
    }

    pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinningComputationPath(v22, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkSprimDirty(a5, v22, 8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v22 + 1);
    sub_29A1DE3A4(v22);
    if ((a4 & 0x40) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinningInputAggregatorComputationPath(v22, a3);
      pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkSprimDirty(a5, v22, 8);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v22 + 1);
      sub_29A1DE3A4(v22);
    }

    goto LABEL_22;
  }

  IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(0, a3);
  if (IsSkinningComputationPath || pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a3))
  {
    if (sub_29AF49C14(3))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkSprimDirty(a5, a3, a4);
  }

  else
  {
    v22[0] = "usdSkelImaging/skeletonAdapter.cpp";
    v22[1] = "MarkDirty";
    v22[2] = 528;
    v22[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkDirty(const UsdPrim &, const SdfPath &, HdDirtyBits, UsdImagingIndexProxy *)";
    v23 = 0;
    v20 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v22, "Unhandled MarkDirty callback for cachePath <%s> in UsdSkelImagingSkelAdapter.", v21, v20);
  }
}

void sub_29B074200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A1DCEA8(va);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkRefineLevelDirty(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) == 0 && sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v12 = *PrimAdapter;
    v13 = PrimAdapter[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 160))(v12, a2, a3, a4);
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void sub_29B07432C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkReprDirty(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) == 0 && sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v12 = *PrimAdapter;
    v13 = PrimAdapter[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 168))(v12, a2, a3, a4);
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void sub_29B074424(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkCullStyleDirty(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) == 0 && sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v12 = *PrimAdapter;
    v13 = PrimAdapter[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 176))(v12, a2, a3, a4);
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void sub_29B07451C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkRenderTagDirty(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) == 0 && sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v12 = *PrimAdapter;
    v13 = PrimAdapter[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 184))(v12, a2, a3, a4);
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void sub_29B074614(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkTransformDirty(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a4, a3, 512);
  }

  else if (sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v12 = *PrimAdapter;
    v13 = PrimAdapter[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 192))(v12, a2, a3, a4);
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }

  else
  {
    IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(0, a3);
    if (!IsSkinningComputationPath && !pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a3))
    {
      v17[0] = "usdSkelImaging/skeletonAdapter.cpp";
      v17[1] = "MarkTransformDirty";
      v17[2] = 622;
      v17[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkTransformDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)";
      v18 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v17, "Unhandled MarkDirty callback for cachePath <%s> in UsdSkelImagingSkelAdapter.", v16, Text);
    }
  }
}

void sub_29B0747A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkVisibilityDirty(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a4, a3, 1024);
  }

  else if (sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v12 = *PrimAdapter;
    v13 = PrimAdapter[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 200))(v12, a2, a3, a4);
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }

  else
  {
    IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(0, a3);
    if (!IsSkinningComputationPath && !pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a3))
    {
      v17[0] = "usdSkelImaging/skeletonAdapter.cpp";
      v17[1] = "MarkVisibilityDirty";
      v17[2] = 657;
      v17[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkVisibilityDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)";
      v18 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v17, "Unhandled MarkDirty callback for cachePath <%s> in UsdSkelImagingSkelAdapter.", v16, Text);
    }
  }
}

void sub_29B074934(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::MarkMaterialDirty(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, pxrInternal__aapl__pxrReserved__ **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) == 0 && sub_29A328A44(this + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(this, a2, 0);
    v12 = *PrimAdapter;
    v13 = PrimAdapter[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 208))(v12, a2, a3, a4);
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void sub_29B074A2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetSubdivTags(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (sub_29A328A44((a1 + 88), a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, a2, 0);
    v11 = *PrimAdapter;
    v12 = PrimAdapter[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 296))(v11, a2, a3, a5);
    if (v12)
    {

      sub_29A014BEC(v12);
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetSubdivTags(a4);
  }
}

void sub_29B074B60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetTopology(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_29A0ECEEC(&v21, "usdSkelImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(v10);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v12);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {
    v14 = sub_29A328A44((a1 + 48), a3);
    if (v14)
    {
      v15 = v14[3];
      if (v15)
      {
LABEL_6:
        pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkelData::ComputeTopologyAndRestState(v15, v19);
      }
    }

    v19[0] = "usdSkelImaging/skeletonAdapter.cpp";
    v19[1] = "GetTopology";
    v19[2] = 703;
    v19[3] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
    v20 = 0;
    if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v19, "skelData", 0))
    {
      v15 = 0;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!sub_29A328A44((a1 + 88), a3))
  {
LABEL_12:
    *(a4 + 8) = 0;
    goto LABEL_13;
  }

  PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, a2, 0);
  v17 = *PrimAdapter;
  v18 = PrimAdapter[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v17 + 408))(v17, a2, a3, a5);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

LABEL_13:
  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkelData::ComputeTopologyAndRestState(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkelData *this@<X0>, pxrInternal__aapl__pxrReserved__::HdMeshTopology *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a2);
  v8 = 0;
  Topology = pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetTopology(this);
  pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneTopology(Topology, a2, &v8);
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetJointWorldBindTransforms<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtent(void x0_0, const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  sub_29A0ECEEC(&v9, "usdSkelImaging", "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtent(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a1);
  v7 = 0;
  v8[0] = &unk_2A205FB38;
  v5 = 0u;
  v6 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::GetExtentAttr(&v4, v8);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::Get(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X1>, unsigned int *a3@<X2>, pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, uint64_t a5@<X4>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a6@<X8>, double a7@<D0>)
{
  v14 = sub_29A0ECEEC(&v29, "usdSkelImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(v14);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v16);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {
    v18 = sub_29A328A44((a1 + 48), a3);
    if (!v18 || (v19 = v18[3]) == 0)
    {
      v27[0] = "usdSkelImaging/skeletonAdapter.cpp";
      v27[1] = "Get";
      v27[2] = 752;
      v27[3] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const";
      v28 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v27, "skelData", 0) & 1) == 0)
      {
        *(a6 + 1) = 0;
        goto LABEL_25;
      }

      v19 = 0;
    }

    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v20)
    {
      v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v20 + 19) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkeletonDisplayColor(a7, v20, a2);
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v21)
    {
      v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v21 + 20) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkeletonDisplayOpacity(a7, v21, a2);
    }

    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v22)
    {
      v22 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v22 + 59) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkelData::ComputeTopologyAndRestState(v19, v26);
    }
  }

  if (!sub_29A328A44((a1 + 88), a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::Get(a2, a4, a6);
  }

  PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, a2, 0);
  v24 = *PrimAdapter;
  v25 = PrimAdapter[1];
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v24 + 392))(v24, a2, a3, a4, a5, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

LABEL_25:
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v30, v29);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkeletonDisplayColor(double a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3)
{
  sub_29A0ECEEC(&v8, "usdSkelImaging", "GfVec3f pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkeletonDisplayColor(const UsdPrim &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, a3);
  v7[3] = 0;
  v7[0] = &unk_2A2060598;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v7, (v4 + 848), v6);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v6, v5);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkeletonDisplayOpacity(double a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3)
{
  sub_29A0ECEEC(&v8, "usdSkelImaging", "float pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkeletonDisplayOpacity(const UsdPrim &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, a3);
  v7[3] = 0;
  v7[0] = &unk_2A2060598;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v7, (v4 + 856), v6);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v6, v5);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkelData::ComputePoints()
{
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::ComputeJointSkelTransforms<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetDoubleSided(pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a1, pxrInternal__aapl__pxrReserved__ **a2, unsigned int *a3, double a4)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v10);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {
    v4 = 1;
    return v4 & 1;
  }

  if (sub_29A328A44(a1 + 11, a3))
  {
    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, a2, 0);
    v14 = *PrimAdapter;
    v13 = PrimAdapter[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v14)
    {
      v4 = (*(*v14 + 424))(v14, a2, a3, a4);
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    else if (!v13)
    {
LABEL_9:
      if (v14)
      {
        return v4 & 1;
      }

      goto LABEL_11;
    }

    sub_29A014BEC(v13);
    goto LABEL_9;
  }

LABEL_11:

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetDoubleSided();
}

void sub_29B075C4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetMaterialId(pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a1@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X1>, unsigned int *a3@<X2>, _DWORD *a4@<X8>, double a5@<D0>)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v11);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {
    *a4 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
  }

  else
  {
    if (!sub_29A328A44(a1 + 11, a3))
    {
      goto LABEL_13;
    }

    PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, a2, 0);
    v15 = *PrimAdapter;
    v14 = PrimAdapter[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v15)
    {
      (*(*v15 + 432))(v15, a2, a3, a5);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if (!v15)
    {
LABEL_13:

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialId(a4);
    }
  }
}

void sub_29B075DCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::InvokeComputation(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdExtComputationContext *a3)
{
  v120 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&qword_2A1758A08);
  if (!v6)
  {
    v6 = sub_29B07D9A0();
  }

  v7 = (*(*a3 + 16))(a3, v6 + 10);
  sub_29A186EF4(&v118, v7);
  v8 = atomic_load(&qword_2A1758A08);
  if (!v8)
  {
    v8 = sub_29B07D9A0();
  }

  v9 = (*(*a3 + 16))(a3, v8 + 5);
  sub_29A186EF4(&v116, v9);
  v10 = atomic_load(&qword_2A1758A08);
  if (!v10)
  {
    v10 = sub_29B07D9A0();
  }

  v11 = (*(*a3 + 16))(a3, v10 + 7);
  sub_29A186EF4(&v114, v11);
  v12 = atomic_load(&qword_2A1758A08);
  if (!v12)
  {
    v12 = sub_29B07D9A0();
  }

  v13 = (*(*a3 + 16))(a3, v12 + 8);
  sub_29A186EF4(&v112, v13);
  v14 = atomic_load(&qword_2A1758A08);
  if (!v14)
  {
    v14 = sub_29B07D9A0();
  }

  v15 = (*(*a3 + 16))(a3, v14 + 6);
  sub_29A186EF4(&v110, v15);
  v16 = atomic_load(&qword_2A1758A08);
  if (!v16)
  {
    v16 = sub_29B07D9A0();
  }

  v17 = (*(*a3 + 16))(a3, v16 + 9);
  sub_29A186EF4(&v108, v17);
  if (!atomic_load(&qword_2A1758A08))
  {
    sub_29B07D9A0();
  }

  v19 = (*(*a3 + 16))(a3);
  sub_29A186EF4(&v106, v19);
  v20 = atomic_load(&qword_2A1758A08);
  if (!v20)
  {
    v20 = sub_29B07D9A0();
  }

  v21 = (*(*a3 + 16))(a3, v20 + 1);
  sub_29A186EF4(&v104, v21);
  v22 = atomic_load(&qword_2A1758A08);
  if (!v22)
  {
    v22 = sub_29B07D9A0();
  }

  v23 = (*(*a3 + 16))(a3, v22 + 3);
  sub_29A186EF4(&v102, v23);
  v24 = atomic_load(&qword_2A1758A08);
  if (!v24)
  {
    v24 = sub_29B07D9A0();
  }

  v25 = (*(*a3 + 16))(a3, v24 + 12);
  sub_29A186EF4(&v100, v25);
  v26 = atomic_load(&qword_2A1758A08);
  if (!v26)
  {
    v26 = sub_29B07D9A0();
  }

  v27 = (*(*a3 + 16))(a3, v26 + 11);
  sub_29A186EF4(&v98, v27);
  if (sub_29A1936C8(&v118) && sub_29A76D024(&v116) && sub_29A19104C(&v114) && sub_29A293A9C(&v112) && sub_29A1EFCDC(&v110) && sub_29A3FC38C(&v108) && sub_29A195CC0(&v106) && sub_29A3FCEC4(&v104) && sub_29A18E720(&v102) && sub_29A197E30(&v100) && (sub_29A3FC38C(&v98) & 1) != 0)
  {
    if ((v119 & 4) != 0)
    {
      v28 = (*((v119 & 0xFFFFFFFFFFFFFFF8) + 168))(&v118);
    }

    else
    {
      v28 = v118;
    }

    v29 = *(v28 + 16);
    v87 = *v28;
    v88 = v29;
    v30 = *(v28 + 32);
    v89 = v30;
    if (v30)
    {
      v31 = (v30 - 16);
      if (*(&v88 + 1))
      {
        v31 = *(&v88 + 1);
      }

      atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
    }

    if ((v107 & 4) != 0)
    {
      v32 = (*((v107 & 0xFFFFFFFFFFFFFFF8) + 168))(&v106);
    }

    else
    {
      v32 = v106;
    }

    v90.f64[0] = v32[4];
    v90.f64[1] = *v32;
    if ((v105 & 4) != 0)
    {
      v33 = (*((v105 & 0xFFFFFFFFFFFFFFF8) + 168))(&v104);
    }

    else
    {
      v33 = v104;
    }

    v77.f64[0] = v33[4];
    v77.f64[1] = *v33;
    if ((v103 & 4) != 0)
    {
      v34 = (*((v103 & 0xFFFFFFFFFFFFFFF8) + 168))(&v102);
    }

    else
    {
      v34 = v102;
    }

    v76[0].f64[0] = v34[4];
    v76[0].f64[1] = *v34;
    sub_29A1935CC(&v87);
    sub_29B07698C(&v90, &v77, v76, v89, v87);
    if ((v113 & 4) != 0)
    {
      v35 = (*((v113 & 0xFFFFFFFFFFFFFFF8) + 168))(&v112);
    }

    else
    {
      v35 = &v112;
    }

    if (*v35 >= 1)
    {
      v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
      if (!v36)
      {
        v36 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
      }

      v37 = *(v36 + 3);
      v86 = v37;
      if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v86 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v90, a2);
      v38 = sub_29A328A44(this + 11, &v90);
      sub_29A1DCEA8(&v90);
      if (v38)
      {
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::GetSkinningMethod(&v90, (v38 + 5));
      }

      if (sub_29AF49C14(3))
      {
        v41 = v86 & 0xFFFFFFFFFFFFFFF8;
        if ((v86 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v42 = (v41 + 16);
          if (*(v41 + 39) < 0)
          {
            v42 = *v42;
          }
        }

        else
        {
          v42 = "";
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Skinning Method: %s\n", v39, v40, v42);
      }

      if ((v111 & 4) != 0)
      {
        v47 = (*((v111 & 0xFFFFFFFFFFFFFFF8) + 168))(&v110);
      }

      else
      {
        v47 = &v110;
      }

      if (*v47)
      {
        if ((v117 & 4) != 0)
        {
          v48 = (*((v117 & 0xFFFFFFFFFFFFFFF8) + 168))(&v116);
        }

        else
        {
          v48 = v116;
        }

        if ((v101 & 4) != 0)
        {
          v49 = (*((v101 & 0xFFFFFFFFFFFFFFF8) + 168))(&v100);
        }

        else
        {
          v49 = v100;
        }

        v50 = v49[4];
        v51 = *v49;
        if ((v115 & 4) != 0)
        {
          v52 = (*((v115 & 0xFFFFFFFFFFFFFFF8) + 168))(&v114);
        }

        else
        {
          v52 = v114;
        }

        if (pxrInternal__aapl__pxrReserved__::UsdSkelSkinTransform(&v86, v48, v50, v51, *(v52 + 32), *v52, v85))
        {
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v53 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(v76, v85);
          if ((v99 & 4) != 0)
          {
            v54 = (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(&v98, v53);
          }

          else
          {
            v54 = v98;
          }

          v81 = v76[4];
          v82 = v76[5];
          v83 = v76[6];
          v84 = v76[7];
          v77 = v76[0];
          v78 = v76[1];
          v79 = v76[2];
          v80 = v76[3];
          v55 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v77.f64, v54);
          if ((v109 & 4) != 0)
          {
            v56 = (*((v109 & 0xFFFFFFFFFFFFFFF8) + 168))(&v108, v55);
          }

          else
          {
            v56 = v108;
          }

          v94 = v81;
          v95 = v82;
          v96 = v83;
          v97 = v84;
          v90 = v77;
          v91 = v78;
          v92 = v79;
          v93 = v80;
          pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v56);
          sub_29A1935CC(&v87);
          sub_29B076A20(v89, v87, &v90);
        }
      }

      else
      {
        if ((v117 & 4) != 0)
        {
          v57 = (*((v117 & 0xFFFFFFFFFFFFFFF8) + 168))(&v116);
        }

        else
        {
          v57 = v116;
        }

        if ((v101 & 4) != 0)
        {
          v58 = (*((v101 & 0xFFFFFFFFFFFFFFF8) + 168))(&v100);
        }

        else
        {
          v58 = v100;
        }

        v59 = *(v58 + 32);
        v60 = *v58;
        if ((v115 & 4) != 0)
        {
          v61 = (*((v115 & 0xFFFFFFFFFFFFFFF8) + 168))(&v114);
        }

        else
        {
          v61 = v114;
        }

        v62 = v61[4];
        v63 = *v61;
        if ((v113 & 4) != 0)
        {
          v64 = (*((v113 & 0xFFFFFFFFFFFFFFF8) + 168))(&v112);
        }

        else
        {
          v64 = &v112;
        }

        v65 = *v64;
        sub_29A1935CC(&v87);
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinPoints(&v86, v57, v59, v60, v62, v63, v65, v66, v89, v87, 0);
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        if ((v99 & 4) != 0)
        {
          v67 = (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(&v98);
        }

        else
        {
          v67 = v98;
        }

        if ((v109 & 4) != 0)
        {
          v68 = (*((v109 & 0xFFFFFFFFFFFFFFF8) + 168))(&v108);
        }

        else
        {
          v68 = v108;
        }

        v69 = *v67;
        v70 = v67[1];
        v71 = v67[3];
        v92 = v67[2];
        v93 = v71;
        v90 = v69;
        v91 = v70;
        v72 = v67[4];
        v73 = v67[5];
        v74 = v67[7];
        v96 = v67[6];
        v97 = v74;
        v94 = v72;
        v95 = v73;
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v68);
        sub_29A1935CC(&v87);
        sub_29B076A20(v89, v87, &v90);
      }

      if ((v86 & 7) != 0)
      {
        atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v75 = atomic_load(&qword_2A1758A08);
    if (!v75)
    {
      v75 = sub_29B07D9A0();
    }

    *&v90.f64[1] = &off_2A20433C0;
    sub_29A18ECC8(&v90, &v87);
    (*(*a3 + 32))(a3, v75 + 15, &v90);
    sub_29A186B14(&v90);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (sub_29AF49C14(3))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[SkeletonAdapter::InvokeComputation] Error invoking CPU computation %s\n", v44, v45, Text);
  }

  (*(*a3 + 40))(a3);
  sub_29A186B14(&v98);
  sub_29A186B14(&v100);
  sub_29A186B14(&v102);
  sub_29A186B14(&v104);
  sub_29A186B14(&v106);
  sub_29A186B14(&v108);
  sub_29A186B14(&v110);
  sub_29A186B14(&v112);
  sub_29A186B14(&v114);
  sub_29A186B14(&v116);
  return sub_29A186B14(&v118);
}

void *sub_29B07698C(void *result, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v5 = a2[1];
  if (a5 < v5)
  {
    v5 = a5;
  }

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = *(*a2 + 8 * i);
      v8 = (a4 + 12 * i);
      v9 = *v8;
      v10 = v8[1].f32[0];
      if (v7 < SHIDWORD(v7))
      {
        v11 = (*result + 16 * v7 + 12);
        v12 = (v7 >> 32) - v7;
        do
        {
          v13 = *(*a3 + 4 * *v11);
          v9 = vadd_f32(v9, vmul_n_f32(*(v11 - 3), v13));
          v10 = v10 + (*(v11 - 1) * v13);
          v11 += 4;
          --v12;
        }

        while (v12);
      }

      *v8 = v9;
      v8[1].f32[0] = v10;
    }
  }

  return result;
}

void sub_29B076A20(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, float64x2_t *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v17[0] = a1;
  v17[1] = a2;
  v16[0] = v17;
  v16[1] = a3;
  if (a2)
  {
    v4 = a2;
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v19[0] = 0;
      v20 = 65539;
      v21 = 55;
      tbb::task_group_context::init(v19, v5, v6, v7);
      v18 = v19;
      v8 = tbb::internal::allocate_root_with_context_proxy::allocate(&v18, 0x38uLL);
      *(v8 - 11) = 1;
      *v8 = &unk_2A20B3A08;
      *(v8 + 8) = v4;
      *(v8 + 16) = xmmword_29B4BFD40;
      *(v8 + 32) = v16;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v8);
      *(v8 + 48) = 0;
      *(v8 + 52) = 5;
      *(v8 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v8 - 40) + 16))(*(v8 - 40), v8, v8 - 8);
      tbb::task_group_context::~task_group_context(v19, v10);
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = sub_29A7925DC(a3, (v17[0] + v11)).u32[0];
        v13 = (v17[0] + v11);
        *v13 = v12;
        v13[1] = v14;
        v13[2] = v15;
        v11 += 12;
        --v4;
      }

      while (v4);
    }
  }
}

void sub_29B076B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, __int16 a15, char a16, char a17)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a13, v17);
  tbb::task_group_context::~task_group_context(&a15, v19);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::RegisterSkelBinding(uint64_t a1, uint64_t a2)
{
  sub_29A735768(a2, &v10);
  v12 = &v10;
  v4 = sub_29B07E6A4(a1 + 128, &v10, &unk_29B4D6118, &v12);
  v6 = v4;
  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 48), 1uLL, memory_order_relaxed);
  }

  v8 = v4[4];
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v5);
  }

  v6[4] = v7;
  sub_29A2258F0(v6 + 10, (a2 + 16));
  sub_29A225948(v6 + 11, (a2 + 20));
  sub_29A84C528(v6 + 3, (a2 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

tbb::queuing_rw_mutex::scoped_lock *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = sub_29A328A44(this + 6, a2);
  if (v6 && v6[3])
  {
    if (sub_29AF49C14(2))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[SkeletonAdapter::_RemovePrim] Remove skeleton%s\n", v8, v9, Text);
    }

    sub_29AFB4044(a3, a2);
    v11 = a2;
    if (sub_29B07EA24(this + 128, a2, &unk_29B4D6118, &v11)[6])
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    sub_29B07ED48(this + 16, a2);
    sub_29B07EDDC(this + 6, a2);
    return pxrInternal__aapl__pxrReserved__::UsdSkelCache::Clear((this + 32));
  }

  else
  {
    result = sub_29A328A44(this + 11, a2);
    if (result)
    {

      return pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_RemoveSkinnedPrimAndComputations(this, a2, a3);
    }
  }

  return result;
}

void sub_29B076E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_RemoveSkinnedPrimAndComputations(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  if (sub_29AF49C14(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[SkeletonAdapter::_RemovePrim] Remove skinned prim %s and its computations.\n", v7, v8, Text);
  }

  sub_29AFB4044(a3, a2);
  pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinningComputationPath(&v13, a2);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v9)
  {
    v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  sub_29AFB3F6C(a3, v9 + 38, &v13);
  pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinningInputAggregatorComputationPath(&v12, a2);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v10)
  {
    v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  sub_29AFB3F6C(a3, v10 + 38, &v12);
  sub_29B07F4D4(this + 11, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
  sub_29A1DE3A4(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13 + 1);
  return sub_29A1DE3A4(&v13);
}

void sub_29B076F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetPurpose(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v11);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
  {
    v13 = sub_29A328A44(this + 6, a3);
    if (!v13 || (v14 = v13[3]) == 0)
    {
      v18[0] = "usdSkelImaging/skeletonAdapter.cpp";
      v18[1] = "GetPurpose";
      v18[2] = 1177;
      v18[3] = "virtual TfToken pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetPurpose(const UsdPrim &, const SdfPath &, const TfToken &) const";
      v19 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "skelData", 0) & 1) == 0)
      {
LABEL_18:
        if (!*a5)
        {
          if (*a4)
          {
            v15 = a5;
            v16 = a4;
          }

          else
          {
            v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v17)
            {
              v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            v16 = (v17 + 392);
            v15 = a5;
          }

          sub_29A166F2C(v15, v16);
        }

        return;
      }

      v14 = 0;
    }

    pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkelData::ComputePurpose(v18, v14);
    if (v18 == a5)
    {
      if ((v18[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v18[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*a5 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a5 = v18[0];
    }

    goto LABEL_18;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPurpose(a2, a4, v18);
  if (v18 == a5)
  {
    if ((v18[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v18[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*a5 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a5 = v18[0];
  }
}