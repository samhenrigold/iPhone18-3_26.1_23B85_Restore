void sub_29AA00B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA00B9C(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase::~Sdf_FileFormatFactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType *sub_29AA00C50(atomic_ullong *a1)
{
  result = sub_29AA00C98();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType::~UsdStlFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType *sub_29AA00C98()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType::UsdStlFileFormatTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AA00CDC()
{
  if ((atomic_load_explicit(&qword_2A14F8DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8DE0))
  {
    v1 = operator new(8uLL);
    *v1 = 0;
    qword_2A14F8DD8 = v1;
    __cxa_guard_release(&qword_2A14F8DE0);
  }

  return qword_2A14F8DD8;
}

__n128 usdStl::StlModel::GetFacet@<Q0>(usdStl::StlModel *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *this + 48 * a2;
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

BOOL usdStl::isAsciiStl(uint64_t *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  std::istream::seekg();
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = sub_29A728B94(a1, &__p);
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    goto LABEL_2;
  }

  if (SHIBYTE(v11) < 0)
  {
    if (v10 != 5)
    {
      v3 = 0;
LABEL_17:
      operator delete(__p);
      return v3;
    }

    p_p = __p;
  }

  else
  {
    if (SHIBYTE(v11) != 5)
    {
      return 0;
    }

    p_p = &__p;
  }

  v5 = *p_p;
  v6 = p_p[4];
  if (v5 == 1768714099 && v6 == 100)
  {
LABEL_2:
    std::istream::seekg();
    std::istream::read();
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    v3 = v12 != 84;
    if (v11 < 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if (v11 < 0)
    {
      goto LABEL_17;
    }
  }

  return v3;
}

void sub_29AA00F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t usdStl::StlModel::Read(void *a1, uint64_t *a2)
{
  v46[19] = *MEMORY[0x29EDCA608];
  sub_29A8CC8D8(v44, a2, 12);
  if (usdStl::isAsciiStl(v44))
  {
    std::istream::seekg();
    v32 = 0;
    do
    {
      v3 = std::istream::read();
    }

    while ((*(v3 + *(*v3 - 24) + 32) & 5) == 0 && v32 != 10);
    __p = 0;
    v34 = 0;
    v35 = 0;
    while (1)
    {
      v5 = sub_29A728B94(v44, &__p);
      if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if (SHIBYTE(v35) < 0)
      {
        if (v34 != 5)
        {
          goto LABEL_25;
        }

        p_p = __p;
      }

      else
      {
        if (SHIBYTE(v35) != 5)
        {
          goto LABEL_26;
        }

        p_p = &__p;
      }

      v7 = *p_p;
      v8 = p_p[4];
      if (v7 != 1701011814 || v8 != 116)
      {
        break;
      }

      v24 = 0;
      v25 = 0;
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      v26 = 0;
      v27 = 0;
      sub_29A728B94(v44, &__p);
      v10 = MEMORY[0x29C2C1DB0](v44, &v24);
      v11 = MEMORY[0x29C2C1DB0](v10, &v24 + 4);
      MEMORY[0x29C2C1DB0](v11, &v25);
      v12 = sub_29A728B94(v44, &__p);
      sub_29A728B94(v12, &__p);
      v13 = sub_29A728B94(v44, &__p);
      v14 = MEMORY[0x29C2C1DB0](v13, &v30);
      v15 = MEMORY[0x29C2C1DB0](v14, &v30 + 4);
      MEMORY[0x29C2C1DB0](v15, &v31);
      v16 = sub_29A728B94(v44, &__p);
      v17 = MEMORY[0x29C2C1DB0](v16, &v28);
      v18 = MEMORY[0x29C2C1DB0](v17, &v28 + 4);
      MEMORY[0x29C2C1DB0](v18, &v29);
      v19 = sub_29A728B94(v44, &__p);
      v20 = MEMORY[0x29C2C1DB0](v19, &v26);
      v21 = MEMORY[0x29C2C1DB0](v20, &v26 + 4);
      MEMORY[0x29C2C1DB0](v21, &v27);
      v22 = sub_29A728B94(v44, &__p);
      sub_29A728B94(v22, &__p);
      v36 = v24;
      v37 = v25;
      v38 = v30;
      v39 = v31;
      v40 = v28;
      v41 = v29;
      v43 = v27;
      v42 = v26;
      usdStl::StlModel::AddFacet(a1, &v36);
    }

    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    operator delete(__p);
  }

  else
  {
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    std::istream::read();
    if (!*&v45[*(v44[0] - 24) + 16] && v44[1] == 80)
    {
      LODWORD(v30) = 0;
      std::istream::read();
    }
  }

LABEL_26:
  v44[0] = *MEMORY[0x29EDC9518];
  *(v44 + *(v44[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C2C1D20](v45);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](v46);
}

uint64_t usdStl::importStl(usdStl *this, adobe::usd::UsdData *a2, const usdStl::StlModel *a3)
{
  adobe::usd::UsdData::addNode(this, 0xFFFFFFFF, a3);
  v6 = v5;
  v8 = adobe::usd::UsdData::addMesh(this, v5, v7);
  v10 = v9;
  v64[0] = v8;
  v64[1] = v9;
  sub_29A00D250((v6 + 432), v64);
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(&__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v13 = *EmptyString;
    v63 = EmptyString[2];
    __dst = v13;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v61, 1.0);
  if (SHIBYTE(v63) < 0)
  {
    if (!*(&__dst + 1))
    {
      goto LABEL_14;
    }

    p_dst = __dst;
  }

  else
  {
    if (!HIBYTE(v63))
    {
      goto LABEL_14;
    }

    p_dst = &__dst;
  }

  if (__toupper(*p_dst) == 89)
  {
    v51 = 0x3FF0000000000000uLL;
    v52 = 0;
    v53 = 0xC056800000000000;
    memset(v50, 0, sizeof(v50));
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(v54, &v51, v50);
    v61[4] = v57;
    v61[5] = v58;
    v61[6] = v59;
    v61[7] = v60;
    v61[0] = *v54;
    v61[1] = *&v54[16];
    v61[2] = v55;
    v61[3] = v56;
  }

LABEL_14:
  v15 = *(v6 + 248);
  v16 = *(v6 + 200);
  *v54 = *(v6 + 184);
  *&v54[16] = v16;
  v17 = *(v6 + 232);
  v55 = *(v6 + 216);
  v56 = v17;
  v57 = v15;
  v18 = *(v6 + 280);
  v58 = *(v6 + 264);
  v59 = v18;
  v60 = *(v6 + 296);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v54, v61);
  v19 = v58;
  v20 = v59;
  *(v6 + 248) = v57;
  *(v6 + 264) = v19;
  v21 = v60;
  *(v6 + 280) = v20;
  *(v6 + 296) = v21;
  v22 = *&v54[16];
  *(v6 + 184) = *v54;
  *(v6 + 200) = v22;
  v23 = v56;
  *(v6 + 216) = v55;
  *(v6 + 232) = v23;
  v24 = usdStl::StlModel::FacetCount(a2);
  v25 = v24;
  LODWORD(v51.f64[0]) = 0;
  *v54 = &v51;
  sub_29A19D7EC(v10 + 7, v24, v54);
  LODWORD(v51.f64[0]) = 0;
  *v54 = &v51;
  sub_29A19D7EC(v10 + 12, 3 * v24, v54);
  *&v54[8] = 0;
  *v54 = 0;
  *&v51.f64[0] = v54;
  sub_29A193304(v10 + 17, 3 * v24, &v51);
  *&v54[8] = 0;
  *v54 = 0;
  *&v51.f64[0] = v54;
  sub_29A193304(v10 + 28, v24, &v51);
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v26)
  {
    v26 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29A166F2C(v10 + 27, v26 + 146);
  if (v24)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    do
    {
      usdStl::StlModel::GetFacet(a2, v30, v54);
      v31 = *&v54[12];
      v32 = *&v54[20];
      v33 = *&v54[24];
      v34 = v55;
      v35 = *(&v55 + 4);
      v36 = HIDWORD(v55);
      sub_29A19DBEC((v10 + 7));
      *(v10[11] + 4 * v30) = 3;
      sub_29A19DBEC((v10 + 12));
      *(v10[16] + 4 * v28) = v28;
      sub_29A19DBEC((v10 + 12));
      *(v10[16] + 4 * v28 + 4) = v28 + 1;
      sub_29A19DBEC((v10 + 12));
      *(v10[16] + 4 * v28 + 8) = v28 + 2;
      sub_29A1935CC((v10 + 17));
      v37 = v10[21] + v29;
      *v37 = v31;
      *(v37 + 8) = v32;
      sub_29A1935CC((v10 + 17));
      v38 = v10[21] + v29;
      *(v38 + 12) = v33;
      *(v38 + 20) = v34;
      sub_29A1935CC((v10 + 17));
      v39 = v10[21] + v29;
      *(v39 + 24) = v35;
      *(v39 + 32) = v36;
      v40 = *v54;
      v41 = *&v54[8];
      sub_29A1935CC((v10 + 28));
      v42 = 1.0 / fmaxf(sqrtf(vaddv_f32(vmul_f32(v40, v40)) + (v41 * v41)), 1.0e-10);
      v43 = v42 * v41;
      v44 = v10[32];
      v45 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v40), v42));
      v46 = ((v43 * v43) + vaddv_f32(vmul_f32(v45, v45))) < 0.001;
      *(v44 + v27) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v46), 0x1FuLL)), 0x3F80000000000000, v45);
      v47 = v44 + 4 * v28;
      ++v30;
      v48 = 0.0;
      if (!v46)
      {
        v48 = v43;
      }

      *(v47 + 8) = v48;
      v29 += 36;
      v28 += 3;
      v27 += 12;
    }

    while (v25 != v30);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(__dst);
  }

  return 1;
}

void sub_29AA0191C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsToken(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467A0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A1746798, "plyPoints");
    __cxa_guard_release(&qword_2A17467A0);
  }

  return &qword_2A1746798;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getWithUpAxisCorrectionToken(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467B0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467A8, "plyWithUpAxisCorrection");
    __cxa_guard_release(&qword_2A17467B0);
  }

  return &qword_2A17467A8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsGsplatClippingBoxToken(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467C0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467B8, "plyGsplatsClippingBox");
    __cxa_guard_release(&qword_2A17467C0);
  }

  return &qword_2A17467B8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointWidthToken(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467D0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467C8, "plyPointWidth");
    __cxa_guard_release(&qword_2A17467D0);
  }

  return &qword_2A17467C8;
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType::~UsdPlyFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType *this)
{
  v8 = (this + 56);
  sub_29A124AB0(&v8);
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType::UsdPlyFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "ply");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "1.0.8");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "usd");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "plyPoints");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "plyPointWidth");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "plyWithUpAxisCorrection");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "plyGsplatsClippingBox");
  v3 = (this + 56);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v5;
    }
  }

  v6 = *(this + 1);
  v22 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v7;
    }
  }

  v8 = *(this + 2);
  v23 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v9;
    }
  }

  v10 = *(this + 3);
  v24 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v11;
    }
  }

  v12 = *(this + 4);
  v25 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v13;
    }
  }

  v14 = *(this + 5);
  v26 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v15;
    }
  }

  v16 = *(this + 6);
  v27 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v17;
    }
  }

  *v3 = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_29A12EF7C(v3, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA01E78(_Unwind_Exception *a1)
{
  v3 = 48;
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
      v5 = v1[6];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[5];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[4];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[3];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[2];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::UsdPlyFileFormat(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  if (!v2)
  {
    v2 = sub_29AA12230(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  if (!v3)
  {
    v3 = sub_29AA12230(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29AA12230(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  if (!v5)
  {
    v5 = sub_29AA12230(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(this, v2, v3 + 1, v4 + 2, EmptyString);
}

void sub_29AA020AC(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(v2);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29AA020CC(int a1)
{
  v2 = sub_29AA122BC();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AA122BC();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F295CA8[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::~UsdPlyFileFormat(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);

  operator delete(v2);
}

void non-virtual thunk topxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::~UsdPlyFileFormat(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  v1 = (this - 112);
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(this);

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);
}

{
  v1 = (this - 112);
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(this);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);

  operator delete(v2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::InitData@<X0>(__int128 ***a1@<X1>, void *a2@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = operator new(0x90uLL);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(v4);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 20) = 1065353216;
  v4[88] = 0;
  *v4 = &unk_2A206E3F0;
  *(v4 + 89) = 256;
  *__dst = xmmword_29B4DB174;
  v38 = 0x4000000040000000;
  sub_29AA039F4((v4 + 96), __dst, 6);
  *(v4 + 34) = 1008981770;
  v36 = v4;
  sub_29B293C98(&v36);
  v5 = *a1;
  if (*a1 != (a1 + 1))
  {
    do
    {
      sub_29A0196C4(__dst, v5 + 2);
      if (sub_29AA020CC(0))
      {
        if (v38 >= 0)
        {
          v8 = __dst;
        }

        else
        {
          v8 = __dst[0];
        }

        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("FileFormatArg: %s = %s\n", v6, v7, v8, p_p);
      }

      if (v40 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(__dst[0]);
      }

      v10 = v5[1];
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
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 1));
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v13)
  {
    v13 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v14 = *(v13 + 99) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = (v14 + 16);
    if (*(v14 + 39) < 0)
    {
      v15 = *v15;
    }
  }

  else
  {
    v15 = "";
  }

  sub_29A008E78(__dst, v15);
  v16 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v16 + 88), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsToken(v17);
  v18 = qword_2A1746798 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A1746798 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v19 = (v18 + 16);
    if (*(v18 + 39) < 0)
    {
      v19 = *v19;
    }
  }

  else
  {
    v19 = "";
  }

  sub_29A008E78(__dst, v19);
  v20 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v20 + 89), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointWidthToken(v21);
  v22 = qword_2A17467C8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467C8 & 0xFFFFFFFFFFFFFFF8) != 0)
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

  sub_29A008E78(__dst, v23);
  v24 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadFloat(a1, __dst, (v24 + 136), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getWithUpAxisCorrectionToken(v25);
  v26 = qword_2A17467A8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467A8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v27 = (v26 + 16);
    if (*(v26 + 39) < 0)
    {
      v27 = *v27;
    }
  }

  else
  {
    v27 = "";
  }

  sub_29A008E78(__dst, v27);
  v28 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v28 + 90), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsGsplatClippingBoxToken(v29);
  v30 = qword_2A17467B8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467B8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v31 = (v30 + 16);
    if (*(v30 + 39) < 0)
    {
      v31 = *v31;
    }
  }

  else
  {
    v31 = "";
  }

  sub_29A008E78(__dst, v31);
  v32 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadFloatArray(a1, __dst, (v32 + 96), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  *a2 = v36;
  v36 = 0;
  return sub_29AA12338(&v36);
}

void sub_29AA026F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_29AA12338(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA027BC(uint64_t *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::ComposeFieldsForFileFormatArguments(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext *a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsToken(a1);
  sub_29A008E78(__p, usdPly::DEBUG_TAG);
  adobe::usd::argComposeBool(a3, a4, &qword_2A1746798, __p);
}

void sub_29AA02958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::Read(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3)
{
  v44 = *MEMORY[0x29EDCA608];
  mach_absolute_time();
  if (sub_29AA020CC(0))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read: %s\n", v6, v7, v8);
  }

  sub_29A008E78(&__p, usdPly::DEBUG_TAG);
  adobe::usd::getFileExtension(a3, &__p, &v41);
  if (SBYTE7(v13) < 0)
  {
    operator delete(__p);
  }

  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
  (*(*a1 + 40))(&v40, a1, FileFormatArguments);
  v10 = v40;
  if (v40)
  {
  }

  *&__p = v10;
  sub_29B293C98(&__p);
  sub_29AA12398(v39, &__p);
  sub_29AA12368(&__p);
  v16 = 0;
  v17 = 0;
  __p = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v18 = 0;
  v19 = 0x4038000000000000;
  v20 = v21;
  v21[0] = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21[1] = 0;
  v38 = 0;
  v42 = xmmword_29B4DB174;
  v43 = 0x4000000040000000;
  sub_29AA039F4(v11, &v42, 6);
  v11[10] = 1008981770;
  sub_29AA02FCC(v39);
}

{
  v44 = *MEMORY[0x29EDCA608];
  mach_absolute_time();
  if (sub_29AA020CC(0))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read: %s\n", v6, v7, v8);
  }

  sub_29A008E78(&__p, usdPly::DEBUG_TAG);
  adobe::usd::getFileExtension(a3, &__p, &v41);
  if (SBYTE7(v13) < 0)
  {
    operator delete(__p);
  }

  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
  (*(*a1 + 40))(&v40, a1, FileFormatArguments);
  v10 = v40;
  if (v40)
  {
  }

  *&__p = v10;
  sub_29B293C98(&__p);
  sub_29AA12398(v39, &__p);
  sub_29AA12368(&__p);
  v16 = 0;
  v17 = 0;
  __p = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v18 = 0;
  v19 = 0x4038000000000000;
  v20 = v21;
  v21[0] = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21[1] = 0;
  v38 = 0;
  v42 = xmmword_29B4DB174;
  v43 = 0x4000000040000000;
  sub_29AA039F4(v11, &v42, 6);
  v11[10] = 1008981770;
  sub_29AA02FCC(v39);
}

void sub_29AA02E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_29AA0301C((v40 - 160));
  if (a26 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AA02FCC(uint64_t *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2BBE94(v1);
}

void **sub_29AA0301C(void **a1)
{
  v3 = a1 + 6;
  sub_29AA121A8(&v3);
  v3 = a1 + 3;
  sub_29A012C90(&v3);
  v3 = a1;
  sub_29A012C90(&v3);
  return a1;
}

void sub_29AA034E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_29AA0301C((v40 - 160));
  if (a26 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::WriteToString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v4, v5);
  sub_29A1DA734(v5);
}

void sub_29AA0375C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::WriteToStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v4, v5);
  sub_29A1DA734(v5);
}

void sub_29AA0381C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA03834()
{
  v2 = nullsub_1467;
  return sub_29AA03890(v0);
}

void *sub_29AA03890(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A206E3B0;
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

void sub_29AA0391C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA03940(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase::~Sdf_FileFormatFactoryBase(a1);

  operator delete(v1);
}

uint64_t sub_29AA039F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AA03AF8(a1, a2, a2 + 4 * a3);
  return a1;
}

unint64_t *sub_29AA03AF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v9 = a2;
  sub_29A18E1D4(a1);
  v7[0] = &v9;
  v7[1] = &v8;
  return sub_29AA03B58(a1, (a3 - a2) >> 2, v7);
}

unint64_t *sub_29AA03B58(unint64_t *result, unint64_t a2, int ***a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A18E590(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v11 = **a3;
            v12 = *a3[1];
            if (v11 != v12)
            {
              v13 = 4 * v3;
              do
              {
                v14 = *v11++;
                *(v7 + v13) = v14;
                v13 += 4;
              }

              while (v11 != v12);
            }
          }

          v15 = v7;
LABEL_34:
          if (v15 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v20 = a2;
      }

      else
      {
        v20 = *result;
      }

      result = sub_29A18E590(result, a2);
      v15 = result;
      if (v3)
      {
        v21 = 4 * v20;
        v22 = result;
        do
        {
          v23 = *v7;
          v7 = (v7 + 4);
          *v22 = v23;
          v22 = (v22 + 4);
          v21 -= 4;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = **a3;
        v25 = *a3[1];
        if (v24 != v25)
        {
          v26 = 4 * v3;
          do
          {
            v27 = *v24++;
            *(result + v26) = v27;
            v26 += 4;
          }

          while (v24 != v25);
        }
      }

      goto LABEL_34;
    }

    if (4 * a2 / a2 == 4)
    {
      result = sub_29A18E590(result, a2);
      v15 = result;
      v16 = **a3;
      v17 = *a3[1];
      if (v16 != v17)
      {
        v18 = result;
        do
        {
          v19 = *v16++;
          *v18 = v19;
          v18 = (v18 + 4);
        }

        while (v16 != v17);
      }

      goto LABEL_34;
    }
  }

  return sub_29A18E1D4(result);
}

uint64_t sub_29AA03D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[19] = *MEMORY[0x29EDCA608];
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = xmmword_29B4DB070;
  if (a3)
  {
    v6 = sub_29A00911C(MEMORY[0x29EDC93C8], "PLY parser: Reading ply file: ", 30);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    v10 = sub_29A00911C(v6, v8, v9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v17, MEMORY[0x29EDC93D0]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_29A8CC8D8(&v17, a2, 4);
  if ((v18[*(v17.__locale_ - 3) + 16] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x29C2C1830](exception, &v16);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  sub_29AA0410C(a1, &v17, a3);
  if (a3)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C8], "  - Finished parsing file.", 26);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v16, MEMORY[0x29EDC93D0]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v16);
    std::ostream::put();
    std::ostream::flush();
  }

  v17.__locale_ = *MEMORY[0x29EDC9518];
  *(&v17 + *(v17.__locale_ - 3)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C2C1D20](v18);
  std::istream::~istream();
  MEMORY[0x29C2C4390](v19);
  return a1;
}

void sub_29AA0406C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::locale a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_29A0DDFB0(&a17);
      a16 = v17 + 48;
      sub_29AA121A8(&a16);
      a16 = v17 + 24;
      sub_29A012C90(&a16);
      a16 = v17;
      sub_29A012C90(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_29AA0410C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  sub_29AA041DC(a1, a2, a3);
  v6 = *(a1 + 80);
  if (v6)
  {
    if (v6 == 2)
    {

      sub_29AA05DB4(a1, a2, v3);
    }

    else if (v6 == 1)
    {

      sub_29AA05BBC(a1, a2, v3);
    }
  }

  else
  {

    sub_29AA05FAC(a1, a2, v3);
  }
}

void sub_29AA041DC(uint64_t a1, uint64_t *a2, int a3)
{
  v172 = a3;
  memset(&__str, 0, sizeof(__str));
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v5 = std::locale::use_facet(&v183, MEMORY[0x29EDC93D0]);
  v6 = (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v183);
  sub_29A0DE07C(a2, &__str, v6);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v8 = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    while (p_str->__r_.__value_.__s.__data_[v8] == 32)
    {
      if (size == ++v8)
      {
        v8 = size;
        goto LABEL_17;
      }
    }

    if (size > v8)
    {
      v10 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
      while (1)
      {
        v11 = v10[size];
        v12 = v11 > 0x20;
        v13 = (1 << v11) & 0x100002400;
        if (v12 || v13 == 0)
        {
          break;
        }

        if (--size <= v8)
        {
          size = v8;
          break;
        }
      }
    }
  }

LABEL_17:
  std::string::basic_string(&v183, &__str, v8, size - v8, __dst);
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v183.__r_.__value_.__l.__size_ != 3)
    {
      operator delete(v183.__r_.__value_.__l.__data_);
      goto LABEL_431;
    }

    v17 = *v183.__r_.__value_.__l.__data_ != 27760 || *(v183.__r_.__value_.__r.__words[0] + 2) != 121;
    operator delete(v183.__r_.__value_.__l.__data_);
    if (v17)
    {
LABEL_431:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "PLY parser: File does not appear to be ply file. First line should be 'ply'");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  else
  {
    if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) != 3)
    {
      goto LABEL_431;
    }

    if (LOWORD(v183.__r_.__value_.__l.__data_) != 27760 || v183.__r_.__value_.__s.__data_[2] != 121)
    {
      goto LABEL_431;
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  memset(&__str, 0, sizeof(__str));
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v18 = std::locale::use_facet(&v183, MEMORY[0x29EDC93D0]);
  v19 = (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v183);
  sub_29A0DE07C(a2, &__str, v19);
  sub_29AA06330(&__str, &v183);
  v20 = v183.__r_.__value_.__r.__words[0];
  if (v183.__r_.__value_.__l.__size_ - v183.__r_.__value_.__r.__words[0] != 72)
  {
    v165 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v165, "PLY parser: bad format line");
    __cxa_throw(v165, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (*(v183.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    sub_29A008D14(__dst, *v183.__r_.__value_.__l.__data_, *(v183.__r_.__value_.__r.__words[0] + 8));
    v20 = v183.__r_.__value_.__r.__words[0];
  }

  else
  {
    v21 = *v183.__r_.__value_.__l.__data_;
    v182 = *(v183.__r_.__value_.__r.__words[0] + 16);
    *&__dst[0].__locale_ = v21;
  }

  if (*(v20 + 47) < 0)
  {
    sub_29A008D14(&v179, *(v20 + 24), *(v20 + 32));
    v20 = v183.__r_.__value_.__r.__words[0];
  }

  else
  {
    v179 = *(v20 + 24);
    v180 = *(v20 + 40);
  }

  if (*(v20 + 71) < 0)
  {
    sub_29A008D14(v177, *(v20 + 48), *(v20 + 56));
  }

  else
  {
    *&v177[0].__locale_ = *(v20 + 48);
    v178 = *(v20 + 64);
  }

  if ((SHIBYTE(v182) & 0x80000000) == 0)
  {
    if (SHIBYTE(v182) == 6)
    {
      locale = __dst;
      goto LABEL_49;
    }

LABEL_418:
    v163 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v163, "PLY parser: bad format line");
LABEL_419:
    __cxa_throw(v163, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (__dst[1].__locale_ != 6)
  {
    goto LABEL_418;
  }

  locale = __dst[0].__locale_;
LABEL_49:
  v23 = *locale;
  v24 = locale[2];
  if (v23 != 1836216166 || v24 != 29793)
  {
    goto LABEL_418;
  }

  if ((SHIBYTE(v180) & 0x80000000) == 0)
  {
    if (HIBYTE(v180) != 5)
    {
      if (HIBYTE(v180) != 17)
      {
        if (HIBYTE(v180) != 20)
        {
          goto LABEL_418;
        }

        v26 = v179 == 0x6C5F7972616E6962 && *(&v179 + 1) == 0x6E655F656C747469;
        if (!v26 || v180 != 1851877732)
        {
          goto LABEL_418;
        }

        goto LABEL_77;
      }

      v32 = &v179;
      goto LABEL_86;
    }

    if (v179 != 1768125281 || BYTE4(v179) != 105)
    {
      goto LABEL_418;
    }

LABEL_101:
    *(a1 + 80) = 0;
    if ((v172 & 1) == 0)
    {
      goto LABEL_104;
    }

    v30 = "  - Type: ascii";
    v31 = 15;
    goto LABEL_103;
  }

  if (*(&v179 + 1) == 5)
  {
    if (*v179 != 1768125281 || *(v179 + 4) != 105)
    {
      goto LABEL_418;
    }

    goto LABEL_101;
  }

  if (*(&v179 + 1) != 17)
  {
    if (*(&v179 + 1) != 20)
    {
      goto LABEL_418;
    }

    v28 = *v179 == 0x6C5F7972616E6962 && *(v179 + 8) == 0x6E655F656C747469;
    if (!v28 || *(v179 + 16) != 1851877732)
    {
      goto LABEL_418;
    }

LABEL_77:
    *(a1 + 80) = 1;
    if ((v172 & 1) == 0)
    {
      goto LABEL_104;
    }

    v30 = "  - Type: binary";
    v31 = 16;
    goto LABEL_103;
  }

  v32 = v179;
LABEL_86:
  v34 = *v32;
  v35 = *(v32 + 1);
  v36 = *(v32 + 16);
  if (v34 != 0x625F7972616E6962 || v35 != 0x6169646E655F6769 || v36 != 110)
  {
    goto LABEL_418;
  }

  *(a1 + 80) = 2;
  if (v172)
  {
    v30 = "  - Type: binary big endian";
    v31 = 27;
LABEL_103:
    v40 = sub_29A00911C(MEMORY[0x29EDC93C8], v30, v31);
    std::ios_base::getloc((v40 + *(*v40 - 24)));
    v41 = std::locale::use_facet(&v184, MEMORY[0x29EDC93D0]);
    (v41->__vftable[2].~facet_0)(v41, 10);
    std::locale::~locale(&v184);
    std::ostream::put();
    std::ostream::flush();
  }

LABEL_104:
  v42 = HIBYTE(v178);
  if (SHIBYTE(v178) < 0)
  {
    if (v177[1].__locale_ == 3)
    {
      v43 = v177[0].__locale_;
      goto LABEL_109;
    }

LABEL_415:
    v163 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v163, "PLY parser: encountered file with version != 1.0. Don't know how to parse that");
    goto LABEL_419;
  }

  if (SHIBYTE(v178) != 3)
  {
    goto LABEL_415;
  }

  v43 = v177;
LABEL_109:
  v44 = *v43;
  v45 = *(v43 + 2);
  if (v44 != 11825 || v45 != 48)
  {
    goto LABEL_415;
  }

  if (v172)
  {
    v47 = sub_29A00911C(MEMORY[0x29EDC93C8], "  - Version: ", 13);
    if (v178 >= 0)
    {
      v48 = v177;
    }

    else
    {
      v48 = v177[0].__locale_;
    }

    if (v178 >= 0)
    {
      v49 = HIBYTE(v178);
    }

    else
    {
      v49 = v177[1].__locale_;
    }

    v50 = sub_29A00911C(v47, v48, v49);
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v51 = std::locale::use_facet(&v184, MEMORY[0x29EDC93D0]);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(&v184);
    std::ostream::put();
    std::ostream::flush();
    v42 = HIBYTE(v178);
  }

  if (v42 < 0)
  {
    operator delete(v177[0].__locale_);
  }

  if (SHIBYTE(v180) < 0)
  {
    operator delete(v179);
  }

  if (SHIBYTE(v182) < 0)
  {
    operator delete(__dst[0].__locale_);
  }

  __dst[0].__locale_ = &v183;
  sub_29A012C90(__dst);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v170 = *(MEMORY[0x29EDC9530] + 24);
  v171 = *MEMORY[0x29EDC9530];
  while (1)
  {
    v52 = *a2;
    if (*(a2 + *(*a2 - 24) + 32))
    {
      break;
    }

    memset(&v183, 0, sizeof(v183));
    std::ios_base::getloc((a2 + *(v52 - 24)));
    v53 = std::locale::use_facet(&__str, MEMORY[0x29EDC93D0]);
    v54 = (v53->__vftable[2].~facet_0)(v53, 10);
    std::locale::~locale(&__str);
    sub_29A0DE07C(a2, &v183, v54);
    v55 = HIBYTE(v183.__r_.__value_.__r.__words[2]);
    v56 = 0;
    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v55 = v183.__r_.__value_.__l.__size_;
    }

    if (v55)
    {
      v57 = &v183;
      if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v57 = v183.__r_.__value_.__r.__words[0];
      }

      while (v57->__r_.__value_.__s.__data_[v56] == 32)
      {
        if (v55 == ++v56)
        {
          v56 = v55;
          goto LABEL_148;
        }
      }

      if (v55 > v56)
      {
        v58 = &v57[-1].__r_.__value_.__r.__words[2] + 7;
        while (1)
        {
          v59 = v58[v55];
          v12 = v59 > 0x20;
          v60 = (1 << v59) & 0x100002400;
          if (v12 || v60 == 0)
          {
            break;
          }

          if (--v55 <= v56)
          {
            v55 = v56;
            break;
          }
        }
      }
    }

LABEL_148:
    std::string::basic_string(&__str, &v183, v56, v55 - v56, __dst);
    if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v183.__r_.__value_.__l.__data_);
    }

    v183 = __str;
    sub_29A008E78(&__str, "comment");
    v62 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    v63 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = __str.__r_.__value_.__l.__size_;
    }

    if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v64 == -1)
      {
LABEL_411:
        sub_29A0F26CC();
      }

      v66 = v183.__r_.__value_.__r.__words[0];
      if (v183.__r_.__value_.__l.__size_ >= v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = v183.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (v64 == -1)
      {
        goto LABEL_411;
      }

      if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) >= v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
      }

      v66 = &v183;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &__str;
    }

    else
    {
      v67 = __str.__r_.__value_.__r.__words[0];
    }

    v69 = !memcmp(v66, v67, v65) && v65 == v64;
    if (v62 < 0)
    {
      operator delete(v63);
      if (v69)
      {
LABEL_174:
        std::string::basic_string(&__str, &v183, 8uLL, 0xFFFFFFFFFFFFFFFFLL, __dst);
        if (v172)
        {
          v70 = sub_29A00911C(MEMORY[0x29EDC93C8], "  - Comment: ", 13);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = &__str;
          }

          else
          {
            v71 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v72 = __str.__r_.__value_.__l.__size_;
          }

          v73 = sub_29A00911C(v70, v71, v72);
          std::ios_base::getloc((v73 + *(*v73 - 24)));
          v74 = std::locale::use_facet(__dst, MEMORY[0x29EDC93D0]);
          (v74->__vftable[2].~facet_0)(v74, 10);
          std::locale::~locale(__dst);
          std::ostream::put();
          std::ostream::flush();
        }

        sub_29A070BA0(a1);
      }
    }

    else if (v69)
    {
      goto LABEL_174;
    }

    sub_29A008E78(&__str, "obj_info");
    v75 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    v76 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = __str.__r_.__value_.__l.__size_;
    }

    if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v77 == -1)
      {
LABEL_412:
        sub_29A0F26CC();
      }

      v79 = v183.__r_.__value_.__r.__words[0];
      if (v183.__r_.__value_.__l.__size_ >= v77)
      {
        v78 = v77;
      }

      else
      {
        v78 = v183.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (v77 == -1)
      {
        goto LABEL_412;
      }

      if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) >= v77)
      {
        v78 = v77;
      }

      else
      {
        v78 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
      }

      v79 = &v183;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = &__str;
    }

    else
    {
      v80 = __str.__r_.__value_.__r.__words[0];
    }

    v82 = !memcmp(v79, v80, v78) && v78 == v77;
    if (v75 < 0)
    {
      operator delete(v76);
      if (v82)
      {
LABEL_208:
        std::string::basic_string(&__str, &v183, 9uLL, 0xFFFFFFFFFFFFFFFFLL, __dst);
        if (v172)
        {
          v83 = sub_29A00911C(MEMORY[0x29EDC93C8], "  - obj_info: ", 14);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = &__str;
          }

          else
          {
            v84 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v85 = __str.__r_.__value_.__l.__size_;
          }

          v86 = sub_29A00911C(v83, v84, v85);
          std::ios_base::getloc((v86 + *(*v86 - 24)));
          v87 = std::locale::use_facet(__dst, MEMORY[0x29EDC93D0]);
          (v87->__vftable[2].~facet_0)(v87, 10);
          std::locale::~locale(__dst);
          std::ostream::put();
          std::ostream::flush();
        }

        sub_29A070BA0(a1 + 24);
      }
    }

    else if (v82)
    {
      goto LABEL_208;
    }

    sub_29A008E78(&__str, "element");
    v88 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    v89 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v90 = __str.__r_.__value_.__l.__size_;
    }

    if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v90 == -1)
      {
LABEL_413:
        sub_29A0F26CC();
      }

      v92 = v183.__r_.__value_.__r.__words[0];
      if (v183.__r_.__value_.__l.__size_ >= v90)
      {
        v91 = v90;
      }

      else
      {
        v91 = v183.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (v90 == -1)
      {
        goto LABEL_413;
      }

      if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) >= v90)
      {
        v91 = v90;
      }

      else
      {
        v91 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
      }

      v92 = &v183;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &__str;
    }

    else
    {
      v93 = __str.__r_.__value_.__r.__words[0];
    }

    v95 = !memcmp(v92, v93, v91) && v91 == v90;
    if (v88 < 0)
    {
      operator delete(v89);
      if (!v95)
      {
LABEL_246:
        sub_29A008E78(&__str, "property list");
        v97 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        v98 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v99 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v99 = __str.__r_.__value_.__l.__size_;
        }

        if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v99 == -1)
          {
LABEL_416:
            sub_29A0F26CC();
          }

          v101 = v183.__r_.__value_.__r.__words[0];
          if (v183.__r_.__value_.__l.__size_ >= v99)
          {
            v100 = v99;
          }

          else
          {
            v100 = v183.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          if (v99 == -1)
          {
            goto LABEL_416;
          }

          if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) >= v99)
          {
            v100 = v99;
          }

          else
          {
            v100 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
          }

          v101 = &v183;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = &__str;
        }

        else
        {
          v102 = __str.__r_.__value_.__r.__words[0];
        }

        v104 = !memcmp(v101, v102, v100) && v100 == v99;
        if (v97 < 0)
        {
          operator delete(v98);
          if (!v104)
          {
            goto LABEL_292;
          }

LABEL_270:
          sub_29AA06330(&v183, &__str);
          v105 = __str.__r_.__value_.__r.__words[0];
          if (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] != 120)
          {
            v166 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v166, "PLY parser: Invalid property list line");
            goto LABEL_424;
          }

          if (*(a1 + 56) == *(a1 + 48))
          {
            v166 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v166, "PLY parser: Found property list without previous element");
LABEL_424:
            __cxa_throw(v166, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          if (*(__str.__r_.__value_.__r.__words[0] + 71) < 0)
          {
            sub_29A008D14(__dst, *(__str.__r_.__value_.__r.__words[0] + 48), *(__str.__r_.__value_.__r.__words[0] + 56));
            v105 = __str.__r_.__value_.__r.__words[0];
          }

          else
          {
            *&__dst[0].__locale_ = *(__str.__r_.__value_.__r.__words[0] + 48);
            v182 = *(__str.__r_.__value_.__r.__words[0] + 64);
          }

          if (*(v105 + 95) < 0)
          {
            sub_29A008D14(&v179, *(v105 + 72), *(v105 + 80));
            v105 = __str.__r_.__value_.__r.__words[0];
          }

          else
          {
            v179 = *(v105 + 72);
            v180 = *(v105 + 88);
          }

          if (*(v105 + 119) < 0)
          {
            sub_29A008D14(v177, *(v105 + 96), *(v105 + 104));
          }

          else
          {
            *&v177[0].__locale_ = *(v105 + 96);
            v178 = *(v105 + 112);
          }

          v131 = *(a1 + 56);
          sub_29AA06718(&v184, v177, &v179, 1, __dst);
          sub_29AA06618((v131 - 24), &v184);
          v132 = v184.__locale_;
          v184.__locale_ = 0;
          if (v132)
          {
            (*(*v132 + 8))(v132);
          }

          if (v172)
          {
            v133 = sub_29A00911C(MEMORY[0x29EDC93C8], "    - Found list property: ", 27);
            if (v178 >= 0)
            {
              v134 = v177;
            }

            else
            {
              v134 = v177[0].__locale_;
            }

            if (v178 >= 0)
            {
              v135 = HIBYTE(v178);
            }

            else
            {
              v135 = v177[1].__locale_;
            }

            v136 = sub_29A00911C(v133, v134, v135);
            v137 = sub_29A00911C(v136, " (count type = ", 15);
            if (v182 >= 0)
            {
              v138 = __dst;
            }

            else
            {
              v138 = __dst[0].__locale_;
            }

            if (v182 >= 0)
            {
              v139 = HIBYTE(v182);
            }

            else
            {
              v139 = __dst[1].__locale_;
            }

            v140 = sub_29A00911C(v137, v138, v139);
            v141 = sub_29A00911C(v140, ", data type = ", 14);
            if (v180 >= 0)
            {
              v142 = &v179;
            }

            else
            {
              v142 = v179;
            }

            if (v180 >= 0)
            {
              v143 = HIBYTE(v180);
            }

            else
            {
              v143 = *(&v179 + 1);
            }

            v144 = sub_29A00911C(v141, v142, v143);
            v145 = sub_29A00911C(v144, ")", 1);
            std::ios_base::getloc((v145 + *(*v145 - 24)));
            v146 = std::locale::use_facet(&v184, MEMORY[0x29EDC93D0]);
            (v146->__vftable[2].~facet_0)(v146, 10);
            std::locale::~locale(&v184);
            std::ostream::put();
            std::ostream::flush();
          }

          if (SHIBYTE(v178) < 0)
          {
            operator delete(v177[0].__locale_);
          }
        }

        else
        {
          if (v104)
          {
            goto LABEL_270;
          }

LABEL_292:
          sub_29A008E78(&__str, "property");
          v117 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          v118 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v119 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v119 = __str.__r_.__value_.__l.__size_;
          }

          if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (v119 == -1)
            {
LABEL_421:
              sub_29A0F26CC();
            }

            v121 = v183.__r_.__value_.__r.__words[0];
            if (v183.__r_.__value_.__l.__size_ >= v119)
            {
              v120 = v119;
            }

            else
            {
              v120 = v183.__r_.__value_.__l.__size_;
            }
          }

          else
          {
            if (v119 == -1)
            {
              goto LABEL_421;
            }

            if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) >= v119)
            {
              v120 = v119;
            }

            else
            {
              v120 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
            }

            v121 = &v183;
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = &__str;
          }

          else
          {
            v122 = __str.__r_.__value_.__r.__words[0];
          }

          v124 = !memcmp(v121, v122, v120) && v120 == v119;
          if (v117 < 0)
          {
            operator delete(v118);
            if (!v124)
            {
LABEL_321:
              sub_29A008E78(&__str, "end_header");
              v126 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
              v127 = __str.__r_.__value_.__r.__words[0];
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v128 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v128 = __str.__r_.__value_.__l.__size_;
              }

              if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                if (v128 == -1)
                {
LABEL_426:
                  sub_29A0F26CC();
                }

                v130 = v183.__r_.__value_.__r.__words[0];
                if (v183.__r_.__value_.__l.__size_ >= v128)
                {
                  v129 = v128;
                }

                else
                {
                  v129 = v183.__r_.__value_.__l.__size_;
                }
              }

              else
              {
                if (v128 == -1)
                {
                  goto LABEL_426;
                }

                if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) >= v128)
                {
                  v129 = v128;
                }

                else
                {
                  v129 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
                }

                v130 = &v183;
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v147 = &__str;
              }

              else
              {
                v147 = __str.__r_.__value_.__r.__words[0];
              }

              v149 = !memcmp(v130, v147, v129) && v129 == v128;
              if (v126 < 0)
              {
                operator delete(v127);
              }

              if (!v149)
              {
                v167 = __cxa_allocate_exception(0x10uLL);
                std::operator+<char>();
                MEMORY[0x29C2C1830](v167, &__str);
                __cxa_throw(v167, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
              }

              v150 = 0;
              goto LABEL_406;
            }
          }

          else if (!v124)
          {
            goto LABEL_321;
          }

          sub_29AA06330(&v183, &__str);
          v125 = __str.__r_.__value_.__r.__words[0];
          if (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] != 72)
          {
            v168 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v168, "PLY parser: Invalid property line");
            goto LABEL_429;
          }

          if (*(a1 + 56) == *(a1 + 48))
          {
            v168 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v168, "PLY parser: Found property without previous element");
LABEL_429:
            __cxa_throw(v168, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          if (*(__str.__r_.__value_.__r.__words[0] + 47) < 0)
          {
            sub_29A008D14(__dst, *(__str.__r_.__value_.__r.__words[0] + 24), *(__str.__r_.__value_.__r.__words[0] + 32));
            v125 = __str.__r_.__value_.__r.__words[0];
          }

          else
          {
            *&__dst[0].__locale_ = *(__str.__r_.__value_.__r.__words[0] + 24);
            v182 = *(__str.__r_.__value_.__r.__words[0] + 40);
          }

          if (*(v125 + 71) < 0)
          {
            sub_29A008D14(&v179, *(v125 + 48), *(v125 + 56));
          }

          else
          {
            v179 = *(v125 + 48);
            v180 = *(v125 + 64);
          }

          v151 = *(a1 + 56);
          sub_29A008E78(v177, "");
          sub_29AA06718(&v184, &v179, __dst, 0, v177);
          sub_29AA06618((v151 - 24), &v184);
          v152 = v184.__locale_;
          v184.__locale_ = 0;
          if (v152)
          {
            (*(*v152 + 8))(v152);
          }

          if (SHIBYTE(v178) < 0)
          {
            operator delete(v177[0].__locale_);
          }

          if (v172)
          {
            v153 = sub_29A00911C(MEMORY[0x29EDC93C8], "    - Found property: ", 22);
            if (v180 >= 0)
            {
              v154 = &v179;
            }

            else
            {
              v154 = v179;
            }

            if (v180 >= 0)
            {
              v155 = HIBYTE(v180);
            }

            else
            {
              v155 = *(&v179 + 1);
            }

            v156 = sub_29A00911C(v153, v154, v155);
            v157 = sub_29A00911C(v156, " (type = ", 9);
            if (v182 >= 0)
            {
              v158 = __dst;
            }

            else
            {
              v158 = __dst[0].__locale_;
            }

            if (v182 >= 0)
            {
              v159 = HIBYTE(v182);
            }

            else
            {
              v159 = __dst[1].__locale_;
            }

            v160 = sub_29A00911C(v157, v158, v159);
            v161 = sub_29A00911C(v160, ")", 1);
            std::ios_base::getloc((v161 + *(*v161 - 24)));
            v162 = std::locale::use_facet(v177, MEMORY[0x29EDC93D0]);
            (v162->__vftable[2].~facet_0)(v162, 10);
            std::locale::~locale(v177);
            std::ostream::put();
            std::ostream::flush();
          }
        }

        if (SHIBYTE(v180) < 0)
        {
          operator delete(v179);
        }

        if (SHIBYTE(v182) < 0)
        {
          operator delete(__dst[0].__locale_);
        }

        __dst[0].__locale_ = &__str;
        v116 = __dst;
        goto LABEL_405;
      }
    }

    else if (!v95)
    {
      goto LABEL_246;
    }

    sub_29AA06330(&v183, __dst);
    v96 = __dst[0].__locale_;
    if ((__dst[1].__locale_ - __dst[0].__locale_) != 72)
    {
      v164 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v164, "PLY parser: Invalid element line");
      __cxa_throw(v164, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (*(__dst[0].__locale_ + 47) < 0)
    {
      sub_29A008D14(&v179, *(__dst[0].__locale_ + 3), *(__dst[0].__locale_ + 4));
      v96 = __dst[0].__locale_;
    }

    else
    {
      v179 = *(__dst[0].__locale_ + 24);
      v180 = *(__dst[0].__locale_ + 5);
    }

    v184.__locale_ = 0;
    sub_29A5DB8D8(&__str, v96 + 2, 8);
    MEMORY[0x29C2C1DF0](&__str, &v184);
    v106 = *(a1 + 56);
    if (v106 >= *(a1 + 64))
    {
      v107 = sub_29AA06FF4((a1 + 48), &v179, &v184);
    }

    else
    {
      sub_29AA06F80((a1 + 48), &v179, &v184);
      v107 = v106 + 56;
    }

    *(a1 + 56) = v107;
    if (v172)
    {
      v108 = sub_29A00911C(MEMORY[0x29EDC93C8], "  - Found element: ", 19);
      if (v180 >= 0)
      {
        v109 = &v179;
      }

      else
      {
        v109 = v179;
      }

      if (v180 >= 0)
      {
        v110 = HIBYTE(v180);
      }

      else
      {
        v110 = *(&v179 + 1);
      }

      v111 = sub_29A00911C(v108, v109, v110);
      v112 = sub_29A00911C(v111, " (count = ", 10);
      v113 = MEMORY[0x29C2C1F00](v112, v184.__locale_);
      v114 = sub_29A00911C(v113, ")", 1);
      std::ios_base::getloc((v114 + *(*v114 - 24)));
      v115 = std::locale::use_facet(v177, MEMORY[0x29EDC93D0]);
      (v115->__vftable[2].~facet_0)(v115, 10);
      std::locale::~locale(v177);
      std::ostream::put();
      std::ostream::flush();
    }

    __str.__r_.__value_.__r.__words[0] = v171;
    *(__str.__r_.__value_.__r.__words + *(v171 - 24)) = v170;
    __str.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9570] + 16;
    if (v175 < 0)
    {
      operator delete(v174[7].__locale_);
    }

    __str.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v174);
    std::istream::~istream();
    MEMORY[0x29C2C4390](&v176);
    if (SHIBYTE(v180) < 0)
    {
      operator delete(v179);
    }

    __str.__r_.__value_.__r.__words[0] = __dst;
    v116 = &__str;
LABEL_405:
    sub_29A012C90(v116);
    v150 = 1;
LABEL_406:
    if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v183.__r_.__value_.__l.__data_);
      if ((v150 & 1) == 0)
      {
        return;
      }
    }

    else if ((v150 & 1) == 0)
    {
      return;
    }
  }
}

void sub_29AA058B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 137) < 0)
  {
    operator delete(*(v18 - 160));
  }

  *(v18 - 160) = &__p;
  sub_29A012C90((v18 - 160));
  if (*(v18 - 105) < 0)
  {
    operator delete(*(v18 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA05BBC(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 48);
  v4 = *(result + 56);
  if (v3 != v4)
  {
    v7 = MEMORY[0x29EDC93C8];
    v8 = MEMORY[0x29EDC93D0];
    do
    {
      if (a3)
      {
        v9 = sub_29A00911C(v7, "  - Processing element: ", 24);
        v10 = *(v3 + 23);
        if (v10 >= 0)
        {
          v11 = v3;
        }

        else
        {
          v11 = *v3;
        }

        if (v10 >= 0)
        {
          v12 = *(v3 + 23);
        }

        else
        {
          v12 = *(v3 + 8);
        }

        v13 = sub_29A00911C(v9, v11, v12);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v21, v8);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v21);
        std::ostream::put();
        result = std::ostream::flush();
      }

      v15 = *(v3 + 32);
      v16 = *(v3 + 40);
      if (v16 != v15)
      {
        v17 = 0;
        do
        {
          result = (*(**(v15 + 8 * v17) + 16))(*(v15 + 8 * v17), *(v3 + 24));
          ++v17;
          v15 = *(v3 + 32);
          v16 = *(v3 + 40);
        }

        while (v17 < (v16 - v15) >> 3);
      }

      v18 = *(v3 + 24);
      if (v18)
      {
        for (i = 0; i < v18; ++i)
        {
          if (v16 == v15)
          {
            v16 = v15;
          }

          else
          {
            v20 = 0;
            do
            {
              result = (*(**(v15 + 8 * v20) + 32))(*(v15 + 8 * v20), a2);
              ++v20;
              v15 = *(v3 + 32);
              v16 = *(v3 + 40);
            }

            while (v20 < (v16 - v15) >> 3);
            v18 = *(v3 + 24);
          }
        }
      }

      v3 += 56;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_29AA05DB4(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 48);
  v4 = *(result + 56);
  if (v3 != v4)
  {
    v7 = MEMORY[0x29EDC93C8];
    v8 = MEMORY[0x29EDC93D0];
    do
    {
      if (a3)
      {
        v9 = sub_29A00911C(v7, "  - Processing element: ", 24);
        v10 = *(v3 + 23);
        if (v10 >= 0)
        {
          v11 = v3;
        }

        else
        {
          v11 = *v3;
        }

        if (v10 >= 0)
        {
          v12 = *(v3 + 23);
        }

        else
        {
          v12 = *(v3 + 8);
        }

        v13 = sub_29A00911C(v9, v11, v12);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v21, v8);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v21);
        std::ostream::put();
        result = std::ostream::flush();
      }

      v15 = *(v3 + 32);
      v16 = *(v3 + 40);
      if (v16 != v15)
      {
        v17 = 0;
        do
        {
          result = (*(**(v15 + 8 * v17) + 16))(*(v15 + 8 * v17), *(v3 + 24));
          ++v17;
          v15 = *(v3 + 32);
          v16 = *(v3 + 40);
        }

        while (v17 < (v16 - v15) >> 3);
      }

      v18 = *(v3 + 24);
      if (v18)
      {
        for (i = 0; i < v18; ++i)
        {
          if (v16 == v15)
          {
            v16 = v15;
          }

          else
          {
            v20 = 0;
            do
            {
              result = (*(**(v15 + 8 * v20) + 40))(*(v15 + 8 * v20), a2);
              ++v20;
              v15 = *(v3 + 32);
              v16 = *(v3 + 40);
            }

            while (v20 < (v16 - v15) >> 3);
            v18 = *(v3 + 24);
          }
        }
      }

      v3 += 56;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AA05FAC(uint64_t a1, void *a2, int a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3 != v4)
  {
    v7 = MEMORY[0x29EDC93C8];
    v8 = MEMORY[0x29EDC93D0];
    do
    {
      if (a3)
      {
        v9 = sub_29A00911C(v7, "  - Processing element: ", 24);
        v10 = *(v3 + 23);
        if (v10 >= 0)
        {
          v11 = v3;
        }

        else
        {
          v11 = *v3;
        }

        if (v10 >= 0)
        {
          v12 = *(v3 + 23);
        }

        else
        {
          v12 = *(v3 + 8);
        }

        v13 = sub_29A00911C(v9, v11, v12);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v26, v8);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v26);
        std::ostream::put();
        std::ostream::flush();
      }

      v15 = *(v3 + 32);
      if (*(v3 + 40) != v15)
      {
        v16 = 0;
        do
        {
          (*(**(v15 + 8 * v16) + 16))(*(v15 + 8 * v16), *(v3 + 24));
          ++v16;
          v15 = *(v3 + 32);
        }

        while (v16 < (*(v3 + 40) - v15) >> 3);
      }

      if (*(v3 + 24))
      {
        v17 = 0;
        do
        {
          memset(&v26, 0, sizeof(v26));
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v18 = std::locale::use_facet(&v25, v8);
          v19 = (v18->__vftable[2].~facet_0)(v18, 10);
          std::locale::~locale(&v25);
          sub_29A0DE07C(a2, &v26, v19);
          if (*(v3 + 32) != *(v3 + 40))
          {
            while (1)
            {
              size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
              if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v26.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                break;
              }

              std::ios_base::getloc((a2 + *(*a2 - 24)));
              v21 = std::locale::use_facet(&v25, v8);
              v22 = (v21->__vftable[2].~facet_0)(v21, 10);
              std::locale::~locale(&v25);
              sub_29A0DE07C(a2, &v26, v22);
            }
          }

          sub_29AA06330(&v26, &v25);
          v27 = 0;
          v23 = *(v3 + 32);
          if (*(v3 + 40) != v23)
          {
            v24 = 0;
            do
            {
              (*(**(v23 + 8 * v24) + 24))(*(v23 + 8 * v24), &v25, &v27);
              ++v24;
              v23 = *(v3 + 32);
            }

            while (v24 < (*(v3 + 40) - v23) >> 3);
          }

          v27 = &v25;
          sub_29A012C90(&v27);
          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          ++v17;
        }

        while (v17 < *(v3 + 24));
      }

      v3 += 56;
    }

    while (v3 != v4);
  }
}

void sub_29AA06330(const std::string *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = std::string::find(a1, 32, 0);
  if (v4 == -1)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    do
    {
      std::string::basic_string(&__str, a1, v6, v5 - v6, &v24);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v8 = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        while (p_str->__r_.__value_.__s.__data_[v8] == 32)
        {
          if (size == ++v8)
          {
            v8 = size;
            goto LABEL_20;
          }
        }

        if (size > v8)
        {
          v10 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
          while (1)
          {
            v11 = v10[size];
            v12 = v11 > 0x20;
            v13 = (1 << v11) & 0x100002400;
            if (v12 || v13 == 0)
            {
              break;
            }

            if (--size <= v8)
            {
              size = v8;
              break;
            }
          }
        }
      }

LABEL_20:
      std::string::basic_string(&v24, &__str, v8, size - v8, &v26);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v24;
      v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v24.__r_.__value_.__l.__size_;
      }

      if (v15)
      {
        sub_29A070BA0(a2);
      }

      if ((*(&v24.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v6 = v5 + 1;
      v5 = std::string::find(a1, 32, v5 + 1);
    }

    while (v5 != -1);
  }

  std::string::basic_string(&__str, a1, v6, 0xFFFFFFFFFFFFFFFFLL, &v24);
  v16 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v17 = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = __str.__r_.__value_.__l.__size_;
  }

  if (v16)
  {
    v18 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = __str.__r_.__value_.__r.__words[0];
    }

    while (v18->__r_.__value_.__s.__data_[v17] == 32)
    {
      if (v16 == ++v17)
      {
        v17 = v16;
        goto LABEL_47;
      }
    }

    if (v16 > v17)
    {
      v19 = &v18[-1].__r_.__value_.__r.__words[2] + 7;
      while (1)
      {
        v20 = v19[v16];
        v12 = v20 > 0x20;
        v21 = (1 << v20) & 0x100002400;
        if (v12 || v21 == 0)
        {
          break;
        }

        if (--v16 <= v17)
        {
          v16 = v17;
          break;
        }
      }
    }
  }

LABEL_47:
  std::string::basic_string(&v24, &__str, v17, v16 - v17, &v26);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v24;
  v23 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v24.__r_.__value_.__l.__size_;
  }

  if (v23)
  {
    sub_29A070BA0(a2);
  }

  if ((*(&v24.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29AA065D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

const void **sub_29AA06618(const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v23[4] = result;
    if (v14)
    {
      v15 = sub_29A00C9BC(result, v14);
      v14 = v16;
      v8 = *v3;
      v9 = v3[1] - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = &v15[8 * v10];
    v18 = &v15[8 * v14];
    v19 = *a2;
    *a2 = 0;
    v20 = &v17[-8 * (v9 >> 3)];
    *v17 = v19;
    v7 = v17 + 8;
    memcpy(v20, v8, v9);
    v21 = *v3;
    *v3 = v20;
    v3[1] = v7;
    v22 = v3[2];
    v3[2] = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = sub_29AA0745C(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[1] = v7;
  return result;
}

uint64_t *sub_29AA06718@<X0>(uint64_t *__return_ptr a1@<X8>, __int128 *a2@<X0>, int **a3@<X1>, int a4@<W2>, int ***a5@<X3>)
{
  if (!a4)
  {
    v12 = -1;
    goto LABEL_48;
  }

  if (*(a5 + 23) < 0)
  {
    if (a5[1] != 5 || (**a5 == 1634231157 ? (v13 = *(*a5 + 4) == 114) : (v13 = 0), !v13))
    {
      if (a5[1] != 5 || (**a5 == 1953393013 ? (v14 = *(*a5 + 4) == 56) : (v14 = 0), !v14))
      {
        if ((a5[1] != 4 || **a5 != 1918986339) && (a5[1] != 4 || **a5 != 947154537))
        {
          if (a5[1] != 6)
          {
            goto LABEL_44;
          }

          v11 = *a5;
          goto LABEL_40;
        }
      }
    }

LABEL_37:
    v12 = 1;
    goto LABEL_48;
  }

  v10 = *(a5 + 23);
  if (v10 == 4)
  {
    if (*a5 != 947154537 && *a5 != 1918986339)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  if (v10 == 5)
  {
    if (*a5 == 1634231157 && *(a5 + 4) == 114)
    {
      goto LABEL_37;
    }

    if (*a5 == 1953393013 && *(a5 + 4) == 56)
    {
      goto LABEL_37;
    }
  }

  v11 = a5;
  if (v10 != 6)
  {
    goto LABEL_44;
  }

LABEL_40:
  v18 = *v11;
  v19 = *(v11 + 2);
  if (v18 == 1869116277 && v19 == 29810)
  {
    goto LABEL_47;
  }

LABEL_44:
  if (sub_29A0F2648(a5, "uint16") || sub_29A0F2648(a5, "short") || sub_29A0F2648(a5, "int16"))
  {
LABEL_47:
    v12 = 2;
    goto LABEL_48;
  }

  if (!sub_29A0F2648(a5, "uint") && !sub_29A0F2648(a5, "uint32") && !sub_29A0F2648(a5, "int") && !sub_29A0F2648(a5, "int32"))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x29C2C1830](exception, &v43);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v12 = 4;
LABEL_48:
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v21 = *(a3 + 23);
    if (v21 != 4)
    {
      if (v21 != 5)
      {
        if (v21 != 6)
        {
          goto LABEL_99;
        }

        if ((*a3 != 1869116277 || *(a3 + 2) != 29810) && (*a3 != 1953393013 || *(a3 + 2) != 13873))
        {
          goto LABEL_94;
        }

LABEL_84:
        if (a4)
        {
          v30 = operator new(0x58uLL);
          result = sub_29AA08A9C(v30, a2, v12);
        }

        else
        {
          v30 = operator new(0x38uLL);
          result = sub_29AA0989C(v30, a2);
        }

        goto LABEL_119;
      }

      if ((*a3 != 1634231157 || *(a3 + 4) != 114) && (*a3 != 1953393013 || *(a3 + 4) != 56))
      {
LABEL_94:
        v29 = a3;
        if (v21 != 6)
        {
          goto LABEL_99;
        }

        goto LABEL_95;
      }

LABEL_103:
      if (a4)
      {
        v30 = operator new(0x58uLL);
        result = sub_29AA07508(v30, a2, v12);
      }

      else
      {
        v30 = operator new(0x38uLL);
        result = sub_29AA082CC(v30, a2);
      }

      goto LABEL_119;
    }

    v37 = *a3;
LABEL_114:
    if (v37 != 1953393013)
    {
      goto LABEL_99;
    }

LABEL_115:
    if (a4)
    {
      v30 = operator new(0x58uLL);
      result = sub_29AA0A0A4(v30, a2, v12);
    }

    else
    {
      v30 = operator new(0x38uLL);
      result = sub_29AA0AE00(v30, a2);
    }

    goto LABEL_119;
  }

  if (a3[1] == 5 && **a3 == 1634231157 && *(*a3 + 4) == 114)
  {
    goto LABEL_103;
  }

  if (a3[1] == 5 && **a3 == 1953393013 && *(*a3 + 4) == 56)
  {
    goto LABEL_103;
  }

  if (a3[1] == 6 && **a3 == 1869116277 && *(*a3 + 2) == 29810)
  {
    goto LABEL_84;
  }

  if (a3[1] == 6 && **a3 == 1953393013 && *(*a3 + 2) == 13873)
  {
    goto LABEL_84;
  }

  v28 = a3[1];
  if (v28 == 4)
  {
    v37 = **a3;
    goto LABEL_114;
  }

  if (v28 != 6)
  {
    goto LABEL_99;
  }

  v29 = *a3;
LABEL_95:
  v34 = *v29;
  v35 = *(v29 + 2);
  if (v34 == 1953393013 && v35 == 12851)
  {
    goto LABEL_115;
  }

LABEL_99:
  if (sub_29A0F2648(a3, "char") || sub_29A0F2648(a3, "int8"))
  {
    if (a4)
    {
      v30 = operator new(0x58uLL);
      result = sub_29AA0B60C(v30, a2, v12);
    }

    else
    {
      v30 = operator new(0x38uLL);
      result = sub_29AA0C368(v30, a2);
    }
  }

  else if (sub_29A0F2648(a3, "short") || sub_29A0F2648(a3, "int16"))
  {
    if (a4)
    {
      v30 = operator new(0x58uLL);
      result = sub_29AA0CB38(v30, a2, v12);
    }

    else
    {
      v30 = operator new(0x38uLL);
      result = sub_29AA0D89C(v30, a2);
    }
  }

  else if (sub_29A0F2648(a3, "int") || sub_29A0F2648(a3, "int32"))
  {
    if (a4)
    {
      v30 = operator new(0x58uLL);
      result = sub_29AA0E0A4(v30, a2, v12);
    }

    else
    {
      v30 = operator new(0x38uLL);
      result = sub_29AA0EE00(v30, a2);
    }
  }

  else if (sub_29A0F2648(a3, "float") || sub_29A0F2648(a3, "float32"))
  {
    if (a4)
    {
      v30 = operator new(0x58uLL);
      result = sub_29AA0F60C(v30, a2, v12);
    }

    else
    {
      v30 = operator new(0x38uLL);
      result = sub_29AA1036C(v30, a2);
    }
  }

  else
  {
    if (!sub_29A0F2648(a3, "double") && !sub_29A0F2648(a3, "float64"))
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v40 = std::string::append(&v42, " cannot be mapped to .ply format");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v44 = v40->__r_.__value_.__r.__words[2];
      v43 = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C2C1830](v39, &v43);
      __cxa_throw(v39, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (a4)
    {
      v30 = operator new(0x58uLL);
      result = sub_29AA10B78(v30, a2, v12);
    }

    else
    {
      v30 = operator new(0x38uLL);
      result = sub_29AA11934(v30, a2);
    }
  }

LABEL_119:
  *a1 = v30;
  return result;
}

void sub_29AA06EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void *sub_29AA06F80(void *result, __int128 *a2, uint64_t *a3)
{
  v3 = result;
  v4 = result[1];
  v5 = *a3;
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
  }

  *(v4 + 24) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  v3[1] = v4 + 56;
  return result;
}

uint64_t sub_29AA06FF4(char **a1, __int128 *a2, uint64_t *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v4;
  }

  v24 = a1;
  if (v8)
  {
    v9 = sub_29A040BCC(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = (v9 + 56 * v3);
  v21 = v9;
  v22 = v10;
  *&v23 = v10;
  *(&v23 + 1) = v9 + 56 * v8;
  v11 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v10, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
  }

  else
  {
    v12 = *a2;
    *(v10 + 2) = *(a2 + 2);
    *v10 = v12;
    v13 = v10;
    v14 = v10;
  }

  *(v10 + 3) = v11;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *&v23 = v14 + 56;
  v15 = a1[1];
  v16 = v13 + *a1 - v15;
  sub_29AA07170(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_29AA073E0(&v21);
  return v20;
}

void sub_29AA0715C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AA073E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA07170(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 3);
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = v7[2];
      *(a4 + 48) = *(v7 + 6);
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      v7 = (v7 + 56);
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29AA0724C(a1, v5);
      v5 = (v5 + 56);
    }
  }

  return sub_29AA07354(v10);
}

void sub_29AA0724C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  sub_29AA07294(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_29AA07294(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AA072E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29AA072E8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_29AA07354(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AA0738C(a1);
  }

  return a1;
}

void sub_29AA0738C(uint64_t *a1)
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
      sub_29AA0724C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29AA073E0(void **a1)
{
  sub_29AA07414(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AA07414(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29AA0724C(v4, i - 56);
  }
}

uint64_t sub_29AA0745C(uint64_t a1)
{
  sub_29AA07494(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AA07494(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29AA07508(uint64_t a1, __int128 *a2, int a3)
{
  v5 = sub_29AA076B4(a1, a2);
  *v5 = &unk_2A206E558;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 20) = a3;
  sub_29A008E78(v11, "uchar");
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 7)
    {
      goto LABEL_19;
    }

    if (LODWORD(v11[0]) != 1852534389 || *(v11 + 3) != 1853321070)
    {
      goto LABEL_19;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v11[1] != 7)
  {
    operator delete(v11[0]);
    goto LABEL_19;
  }

  v8 = *v11[0] != 1852534389 || *(v11[0] + 3) != 1853321070;
  operator delete(v11[0]);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11[0] = 0;
  sub_29A018094((a1 + 56), v11);
  return a1;
}

void sub_29AA07644(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA076B4(void *a1, __int128 *a2)
{
  *a1 = &unk_2A206E5F0;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_29AA07720(uint64_t a1)
{
  v1 = sub_29AA08240(a1);

  operator delete(v1);
}

void sub_29AA07748(uint64_t a1, uint64_t a2)
{
  sub_29A1B1D0C(a1 + 32, 3 * a2);

  sub_29A08AF9C(a1 + 56, a2 + 1);
}

uint64_t sub_29AA07790(void *a1, void *a2, void *a3)
{
  sub_29A5DB8D8(v42, (*a2 + 24 * *a3), 8);
  v41 = 0;
  MEMORY[0x29C2C1DF0](v42, &v41);
  ++*a3;
  v5 = a1[4];
  v6 = a1 + 4;
  v7 = a1[5] - v5;
  v8 = v41;
  v9 = MEMORY[0x29EDC9530];
  v32 = v7 + v41;
  v33 = a1;
  if (v7 >= v7 + v41)
  {
    v11 = MEMORY[0x29EDC9530];
    if (v7 > v7 + v41)
    {
      v33[5] = v5 + v32;
    }
  }

  else
  {
    sub_29A1B2C78((a1 + 4), v41);
    v10 = *v9;
    v11 = v9;
    v12 = v9[3];
    do
    {
      sub_29A5DB8D8(v36, (*a2 + 24 * *a3), 8);
      v35 = 0;
      MEMORY[0x29C2C1DC0](v36, &v35);
      *(*v6 + v7) = v35;
      ++*a3;
      v36[0] = v10;
      *(v36 + *(v10 - 24)) = v12;
      v37 = MEMORY[0x29EDC9570] + 16;
      if (v39 < 0)
      {
        operator delete(v38[7].__locale_);
      }

      v37 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v38);
      std::istream::~istream();
      MEMORY[0x29C2C4390](&v40);
      ++v7;
      --v8;
    }

    while (v8);
  }

  v14 = v33[8];
  v13 = v33[9];
  if (v14 >= v13)
  {
    v17 = v33[7];
    v18 = v14 - v17;
    v19 = (v14 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v16 = v11;
    v21 = v13 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
    v23 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v20;
    }

    if (v23)
    {
      v24 = sub_29A00C9BC((v33 + 7), v23);
      v23 = v25;
      v17 = v33[7];
      v18 = v33[8] - v17;
      v26 = v18 >> 3;
    }

    else
    {
      v24 = 0;
      v26 = v19;
    }

    v27 = &v24[8 * v19];
    v28 = &v24[8 * v23];
    v29 = &v27[-8 * v26];
    *v27 = v32;
    v15 = v27 + 8;
    memcpy(v29, v17, v18);
    v30 = v33[7];
    v33[7] = v29;
    v33[8] = v15;
    v33[9] = v28;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v14 = v32;
    v15 = v14 + 8;
    v16 = v11;
  }

  v33[8] = v15;
  v42[0] = *v16;
  *(v42 + *(v42[0] - 24)) = v16[3];
  v43 = MEMORY[0x29EDC9570] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v44);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v46);
}

void sub_29AA07B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

void sub_29AA07BA0(void *a1, uint64_t a2)
{
  std::istream::read();
  v3 = a1[5] - a1[4];
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v7 = a1[7];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00C9BC((a1 + 7), v13);
      v13 = v15;
      v7 = a1[7];
      v8 = a1[8] - v7;
      v16 = v8 >> 3;
    }

    else
    {
      v14 = 0;
      v16 = (v5 - v7) >> 3;
    }

    v17 = &v14[8 * v9];
    v18 = &v14[8 * v13];
    v19 = &v17[-8 * v16];
    *v17 = v3;
    v6 = v17 + 8;
    memcpy(v19, v7, v8);
    v20 = a1[7];
    a1[7] = v19;
    a1[8] = v6;
    a1[9] = v18;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 8;
  }

  a1[8] = v6;
}

void sub_29AA07CEC(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v5 = 0;
      v29 = 0;
      v6 = 7;
      do
      {
        v7 = *(&v29 + v6);
        *(&v29 + v6) = *(&v29 + v5);
        *(&v29 + v5++) = v7;
        --v6;
      }

      while (v5 != 4);
      v4 = v29;
      break;
    default:
      goto LABEL_10;
  }

  v28 = v4;
LABEL_10:
  v8 = *(a1 + 32);
  v9 = *(a1 + 40) - v8;
  v10 = v9 + v4;
  if (v9 >= v9 + v4)
  {
    if (v9 > v9 + v4)
    {
      *(a1 + 40) = v8 + v10;
    }
  }

  else
  {
    sub_29A1B2C78(a1 + 32, v4);
    v4 = v28;
  }

  if (v4)
  {
    std::istream::read();
  }

  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  if (v12 >= v11)
  {
    v14 = *(a1 + 56);
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 3;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v18 = v11 - v14;
    if (v18 >> 2 > v17)
    {
      v17 = v18 >> 2;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
    v20 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      v21 = sub_29A00C9BC(a1 + 56, v20);
      v20 = v22;
      v14 = *(a1 + 56);
      v15 = *(a1 + 64) - v14;
      v23 = v15 >> 3;
    }

    else
    {
      v21 = 0;
      v23 = (v12 - v14) >> 3;
    }

    v24 = &v21[8 * v16];
    v25 = &v21[8 * v20];
    v26 = &v24[-8 * v23];
    *v24 = v10;
    v13 = v24 + 8;
    memcpy(v26, v14, v15);
    v27 = *(a1 + 56);
    *(a1 + 56) = v26;
    *(a1 + 64) = v13;
    *(a1 + 72) = v25;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v12 = v10;
    v13 = v12 + 8;
  }

  *(a1 + 64) = v13;
}

void sub_29AA07EA0(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property list uchar ", 20);
  sub_29A008E78(__p, "uchar");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA07F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA07F8C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = MEMORY[0x29C2C1F00](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = sub_29A00911C(a2, " ", 1);
      result = MEMORY[0x29C2C1ED0](v9, *(*(a1 + 32) + v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_29AA08080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 56) + 8 * a3 + 8) - *(*(a1 + 56) + 8 * a3) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::ostream::write();
  return std::ostream::write();
}

uint64_t sub_29AA08140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_29AA08240(uint64_t a1)
{
  *a1 = &unk_2A206E558;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_29AA082CC(void *a1, __int128 *a2)
{
  v3 = sub_29AA076B4(a1, a2);
  *v3 = &unk_2A206E660;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  sub_29A008E78(v9, "uchar");
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 != 7)
    {
      return a1;
    }

    if (LODWORD(v9[0]) != 1852534389 || *(v9 + 3) != 1853321070)
    {
      return a1;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9[1] != 7)
  {
    operator delete(v9[0]);
    return a1;
  }

  v6 = *v9[0] != 1852534389 || *(v9[0] + 3) != 1853321070;
  operator delete(v9[0]);
  if (!v6)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_29AA083F0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA08454(uint64_t a1)
{
  v1 = sub_29AA08A20(a1);

  operator delete(v1);
}

uint64_t sub_29AA08484(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = v7 - v9 + 1;
    if (v11 < 0)
    {
      sub_29A00C9A4();
    }

    v12 = v6 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = operator new(v13);
    }

    else
    {
      v14 = 0;
    }

    v14[v10] = 0;
    v8 = &v14[v10 + 1];
    memcpy(v14, v9, v10);
    a1[4] = v14;
    a1[5] = v8;
    a1[6] = &v14[v13];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = (v7 + 1);
  }

  a1[5] = v8;
  sub_29A5DB8D8(v17, (*a2 + 24 * *a3), 8);
  v16 = 0;
  MEMORY[0x29C2C1DC0](v17, &v16);
  *(a1[5] - 1) = v16;
  ++*a3;
  v17[0] = *MEMORY[0x29EDC9530];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v18 = MEMORY[0x29EDC9570] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v19);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v21);
}

void sub_29AA086A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA086BC(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = v4 - v6 + 1;
    if (v8 < 0)
    {
      sub_29A00C9A4();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = operator new(v10);
    }

    else
    {
      v11 = 0;
    }

    v11[v7] = 0;
    v5 = &v11[v7 + 1];
    memcpy(v11, v6, v7);
    a1[4] = v11;
    a1[5] = v5;
    a1[6] = &v11[v10];
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = 0;
    v5 = (v4 + 1);
  }

  a1[5] = v5;

  return std::istream::read();
}

uint64_t sub_29AA087A8(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = v4 - v6 + 1;
    if (v8 < 0)
    {
      sub_29A00C9A4();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = operator new(v10);
    }

    else
    {
      v11 = 0;
    }

    v11[v7] = 0;
    v5 = &v11[v7 + 1];
    memcpy(v11, v6, v7);
    a1[4] = v11;
    a1[5] = v5;
    a1[6] = &v11[v10];
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = 0;
    v5 = (v4 + 1);
  }

  a1[5] = v5;

  return std::istream::read();
}

void sub_29AA08894(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property ", 9);
  sub_29A008E78(__p, "uchar");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA08964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA08A20(uint64_t a1)
{
  *a1 = &unk_2A206E660;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29AA08A9C(uint64_t a1, __int128 *a2, int a3)
{
  v5 = sub_29AA076B4(a1, a2);
  *v5 = &unk_2A206E6E8;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 20) = a3;
  sub_29A008E78(v11, "ushort");
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 7)
    {
      goto LABEL_19;
    }

    if (LODWORD(v11[0]) != 1852534389 || *(v11 + 3) != 1853321070)
    {
      goto LABEL_19;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v11[1] != 7)
  {
    operator delete(v11[0]);
    goto LABEL_19;
  }

  v8 = *v11[0] != 1852534389 || *(v11[0] + 3) != 1853321070;
  operator delete(v11[0]);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11[0] = 0;
  sub_29A018094((a1 + 56), v11);
  return a1;
}

void sub_29AA08BD8(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA08C4C(uint64_t a1)
{
  v1 = sub_29AA09774(a1);

  operator delete(v1);
}

void sub_29AA08C74(uint64_t a1, uint64_t a2)
{
  sub_29AA09800(a1 + 32, 3 * a2);

  sub_29A08AF9C(a1 + 56, a2 + 1);
}

uint64_t sub_29AA08CBC(void *a1, void *a2, void *a3)
{
  sub_29A5DB8D8(v41, (*a2 + 24 * *a3), 8);
  v40 = 0;
  MEMORY[0x29C2C1DF0](v41, &v40);
  ++*a3;
  v6 = a1 + 4;
  v7 = a1[5] - a1[4];
  v8 = v40;
  v9 = v40 + (v7 >> 1);
  sub_29A0A174C(a1 + 4, v9);
  v32 = v9;
  v33 = a1;
  if (v7 >> 1 < v9)
  {
    v10 = *MEMORY[0x29EDC9530];
    v11 = *(MEMORY[0x29EDC9530] + 24);
    v12 = 2 * (v7 >> 1);
    do
    {
      sub_29A5DB8D8(v35, (*a2 + 24 * *a3), 8);
      v34 = 0;
      MEMORY[0x29C2C1E10](v35, &v34);
      *(*v6 + v12) = v34;
      ++*a3;
      v35[0] = v10;
      *(v35 + *(v10 - 24)) = v11;
      v36 = MEMORY[0x29EDC9570] + 16;
      if (v38 < 0)
      {
        operator delete(v37[7].__locale_);
      }

      v36 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v37);
      std::istream::~istream();
      MEMORY[0x29C2C4390](&v39);
      v12 += 2;
      --v8;
    }

    while (v8);
  }

  v14 = v33[8];
  v13 = v33[9];
  if (v14 >= v13)
  {
    v16 = v33[7];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
    v22 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      v23 = sub_29A00C9BC((v33 + 7), v22);
      v22 = v24;
      v16 = v33[7];
      v17 = v33[8] - v16;
      v25 = v17 >> 3;
    }

    else
    {
      v23 = 0;
      v25 = v18;
    }

    v26 = &v23[8 * v18];
    v27 = &v23[8 * v22];
    v28 = &v26[-v25];
    *v26 = v32;
    v15 = v26 + 1;
    memcpy(v28, v16, v17);
    v29 = v33[7];
    v33[7] = v28;
    v33[8] = v15;
    v33[9] = v27;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v14 = v9;
    v15 = v14 + 1;
  }

  v30 = MEMORY[0x29EDC9530];
  v33[8] = v15;
  v41[0] = *v30;
  *(v41 + *(v41[0] - 24)) = v30[3];
  v42 = MEMORY[0x29EDC9570] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v43);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v45);
}

void sub_29AA09090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

void sub_29AA090BC(void *a1, uint64_t a2)
{
  std::istream::read();
  v3 = (a1[5] - a1[4]) >> 1;
  sub_29A0A174C(a1 + 4, v3);
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v7 = a1[7];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00C9BC((a1 + 7), v13);
      v13 = v15;
      v7 = a1[7];
      v8 = a1[8] - v7;
      v16 = v8 >> 3;
    }

    else
    {
      v14 = 0;
      v16 = (v5 - v7) >> 3;
    }

    v17 = &v14[8 * v9];
    v18 = &v14[8 * v13];
    v19 = &v17[-v16];
    *v17 = v3;
    v6 = v17 + 1;
    memcpy(v19, v7, v8);
    v20 = a1[7];
    a1[7] = v19;
    a1[8] = v6;
    a1[9] = v18;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  a1[8] = v6;
}

void sub_29AA091F4(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v5 = 0;
      v29 = 0;
      v6 = 7;
      do
      {
        v7 = *(&v29 + v6);
        *(&v29 + v6) = *(&v29 + v5);
        *(&v29 + v5++) = v7;
        --v6;
      }

      while (v5 != 4);
      v4 = v29;
      break;
    default:
      goto LABEL_10;
  }

  v28 = v4;
LABEL_10:
  v8 = *(a1 + 40) - *(a1 + 32);
  v9 = v4 + (v8 >> 1);
  sub_29A0A174C((a1 + 32), v9);
  if (v28)
  {
    std::istream::read();
  }

  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v11 >= v10)
  {
    v13 = *(a1 + 56);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      v20 = sub_29A00C9BC(a1 + 56, v19);
      v19 = v21;
      v13 = *(a1 + 56);
      v14 = *(a1 + 64) - v13;
      v22 = v14 >> 3;
    }

    else
    {
      v20 = 0;
      v22 = (v11 - v13) >> 3;
    }

    v23 = &v20[8 * v15];
    v24 = &v20[8 * v19];
    v25 = &v23[-v22];
    *v23 = v9;
    v12 = v23 + 1;
    memcpy(v25, v13, v14);
    v26 = *(a1 + 56);
    *(a1 + 56) = v25;
    *(a1 + 64) = v12;
    *(a1 + 72) = v24;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 1;
  }

  *(a1 + 64) = v12;
  if (v8 >> 1 < v9)
  {
    v27 = (*(a1 + 32) + 2 * (v8 >> 1));
    do
    {
      *v27 = bswap32(*v27) >> 16;
      ++v27;
      --v4;
    }

    while (v4);
  }
}

void sub_29AA093C8(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property list uchar ", 20);
  sub_29A008E78(__p, "ushort");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA09498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA094B4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = MEMORY[0x29C2C1F00](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = sub_29A00911C(a2, " ", 1);
      result = MEMORY[0x29C2C1F20](v9, *(*(a1 + 32) + 2 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_29AA095A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 56) + 8 * a3 + 8) - *(*(a1 + 56) + 8 * a3) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::ostream::write();
  return std::ostream::write();
}

uint64_t sub_29AA0966C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_29AA09774(uint64_t a1)
{
  *a1 = &unk_2A206E6E8;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29AA09800(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A010BBC(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[2 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void *sub_29AA0989C(void *a1, __int128 *a2)
{
  v3 = sub_29AA076B4(a1, a2);
  *v3 = &unk_2A206E770;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  sub_29A008E78(v9, "ushort");
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 != 7)
    {
      return a1;
    }

    if (LODWORD(v9[0]) != 1852534389 || *(v9 + 3) != 1853321070)
    {
      return a1;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9[1] != 7)
  {
    operator delete(v9[0]);
    return a1;
  }

  v6 = *v9[0] != 1852534389 || *(v9[0] + 3) != 1853321070;
  operator delete(v9[0]);
  if (!v6)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_29AA099C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA09A24(uint64_t a1)
{
  v1 = sub_29AA0A028(a1);

  operator delete(v1);
}

uint64_t sub_29AA09A54(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 1;
    if (v11 <= -2)
    {
      sub_29A00C9A4();
    }

    v12 = v6 - v9;
    if (v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = v12 >= 0x7FFFFFFFFFFFFFFELL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = sub_29A010BBC((a1 + 4), v15);
      v15 = v17;
      v9 = a1[4];
      v10 = a1[5] - v9;
      v18 = v10 >> 1;
    }

    else
    {
      v16 = 0;
      v18 = (v7 - v9) >> 1;
    }

    v19 = &v16[2 * v11];
    v20 = &v16[2 * v15];
    v21 = &v19[-2 * v18];
    *v19 = 0;
    v8 = v19 + 2;
    memcpy(v21, v9, v10);
    v22 = a1[4];
    a1[4] = v21;
    a1[5] = v8;
    a1[6] = v20;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 2;
  }

  a1[5] = v8;
  sub_29A5DB8D8(v25, (*a2 + 24 * *a3), 8);
  v24 = 0;
  MEMORY[0x29C2C1E10](v25, &v24);
  *(a1[5] - 2) = v24;
  ++*a3;
  v25[0] = *MEMORY[0x29EDC9530];
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v26 = MEMORY[0x29EDC9570] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v27);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v29);
}

void sub_29AA09C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA09C98(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 1;
    if (v8 <= -2)
    {
      sub_29A00C9A4();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = v9 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = sub_29A010BBC((a1 + 4), v12);
      v12 = v14;
      v6 = a1[4];
      v7 = a1[5] - v6;
      v15 = v7 >> 1;
    }

    else
    {
      v13 = 0;
      v15 = (v4 - v6) >> 1;
    }

    v16 = &v13[2 * v8];
    v17 = &v13[2 * v12];
    v18 = &v16[-2 * v15];
    *v16 = 0;
    v5 = v16 + 2;
    memcpy(v18, v6, v7);
    v19 = a1[4];
    a1[4] = v18;
    a1[5] = v5;
    a1[6] = v17;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = 0;
    v5 = v4 + 2;
  }

  a1[5] = v5;

  return std::istream::read();
}

uint64_t sub_29AA09D90(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 1;
    if (v8 <= -2)
    {
      sub_29A00C9A4();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = v9 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = sub_29A010BBC((a1 + 4), v12);
      v12 = v14;
      v6 = a1[4];
      v7 = a1[5] - v6;
      v15 = v7 >> 1;
    }

    else
    {
      v13 = 0;
      v15 = (v4 - v6) >> 1;
    }

    v16 = &v13[2 * v8];
    v17 = &v13[2 * v12];
    v18 = &v16[-2 * v15];
    *v16 = 0;
    v5 = v16 + 2;
    memcpy(v18, v6, v7);
    v19 = a1[4];
    a1[4] = v18;
    a1[5] = v5;
    a1[6] = v17;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = 0;
    v5 = v4 + 2;
  }

  a1[5] = v5;
  result = std::istream::read();
  *(a1[5] - 2) = bswap32(*(a1[5] - 2)) >> 16;
  return result;
}

void sub_29AA09E90(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property ", 9);
  sub_29A008E78(__p, "ushort");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA09F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA0A028(uint64_t a1)
{
  *a1 = &unk_2A206E770;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29AA0A0A4(uint64_t a1, __int128 *a2, int a3)
{
  v5 = sub_29AA076B4(a1, a2);
  *v5 = &unk_2A206E7F8;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 20) = a3;
  sub_29A008E78(v11, "uint");
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 7)
    {
      goto LABEL_19;
    }

    if (LODWORD(v11[0]) != 1852534389 || *(v11 + 3) != 1853321070)
    {
      goto LABEL_19;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v11[1] != 7)
  {
    operator delete(v11[0]);
    goto LABEL_19;
  }

  v8 = *v11[0] != 1852534389 || *(v11[0] + 3) != 1853321070;
  operator delete(v11[0]);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11[0] = 0;
  sub_29A018094((a1 + 56), v11);
  return a1;
}

void sub_29AA0A1E0(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA0A254(uint64_t a1)
{
  v1 = sub_29AA0AD74(a1);

  operator delete(v1);
}

void sub_29AA0A27C(uint64_t a1, uint64_t a2)
{
  sub_29A0A6994(a1 + 32, 3 * a2);

  sub_29A08AF9C(a1 + 56, a2 + 1);
}

uint64_t sub_29AA0A2C4(void *a1, void *a2, void *a3)
{
  sub_29A5DB8D8(v41, (*a2 + 24 * *a3), 8);
  v40 = 0;
  MEMORY[0x29C2C1DF0](v41, &v40);
  ++*a3;
  v6 = a1 + 4;
  v7 = a1[5] - a1[4];
  v8 = v40;
  v9 = v40 + (v7 >> 2);
  sub_29A0A171C(a1 + 4, v9);
  v32 = v9;
  v33 = a1;
  if (v7 >> 2 < v9)
  {
    v10 = *MEMORY[0x29EDC9530];
    v11 = *(MEMORY[0x29EDC9530] + 24);
    v12 = 4 * (v7 >> 2);
    do
    {
      sub_29A5DB8D8(v35, (*a2 + 24 * *a3), 8);
      v34 = 0;
      MEMORY[0x29C2C1DD0](v35, &v34);
      *(*v6 + v12) = v34;
      ++*a3;
      v35[0] = v10;
      *(v35 + *(v10 - 24)) = v11;
      v36 = MEMORY[0x29EDC9570] + 16;
      if (v38 < 0)
      {
        operator delete(v37[7].__locale_);
      }

      v36 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v37);
      std::istream::~istream();
      MEMORY[0x29C2C4390](&v39);
      v12 += 4;
      --v8;
    }

    while (v8);
  }

  v14 = v33[8];
  v13 = v33[9];
  if (v14 >= v13)
  {
    v16 = v33[7];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
    v22 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      v23 = sub_29A00C9BC((v33 + 7), v22);
      v22 = v24;
      v16 = v33[7];
      v17 = v33[8] - v16;
      v25 = v17 >> 3;
    }

    else
    {
      v23 = 0;
      v25 = v18;
    }

    v26 = &v23[8 * v18];
    v27 = &v23[8 * v22];
    v28 = &v26[-v25];
    *v26 = v32;
    v15 = v26 + 1;
    memcpy(v28, v16, v17);
    v29 = v33[7];
    v33[7] = v28;
    v33[8] = v15;
    v33[9] = v27;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v14 = v9;
    v15 = v14 + 1;
  }

  v30 = MEMORY[0x29EDC9530];
  v33[8] = v15;
  v41[0] = *v30;
  *(v41 + *(v41[0] - 24)) = v30[3];
  v42 = MEMORY[0x29EDC9570] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v43);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v45);
}

void sub_29AA0A698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

void sub_29AA0A6C4(void *a1, uint64_t a2)
{
  std::istream::read();
  v3 = (a1[5] - a1[4]) >> 2;
  sub_29A0A171C(a1 + 4, v3);
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v7 = a1[7];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00C9BC((a1 + 7), v13);
      v13 = v15;
      v7 = a1[7];
      v8 = a1[8] - v7;
      v16 = v8 >> 3;
    }

    else
    {
      v14 = 0;
      v16 = (v5 - v7) >> 3;
    }

    v17 = &v14[8 * v9];
    v18 = &v14[8 * v13];
    v19 = &v17[-v16];
    *v17 = v3;
    v6 = v17 + 1;
    memcpy(v19, v7, v8);
    v20 = a1[7];
    a1[7] = v19;
    a1[8] = v6;
    a1[9] = v18;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  a1[8] = v6;
}

void sub_29AA0A7FC(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v5 = 0;
      v29 = 0;
      v6 = 7;
      do
      {
        v7 = *(&v29 + v6);
        *(&v29 + v6) = *(&v29 + v5);
        *(&v29 + v5++) = v7;
        --v6;
      }

      while (v5 != 4);
      v4 = v29;
      break;
    default:
      goto LABEL_10;
  }

  v28 = v4;
LABEL_10:
  v8 = *(a1 + 40) - *(a1 + 32);
  v9 = v4 + (v8 >> 2);
  sub_29A0A171C((a1 + 32), v9);
  if (v28)
  {
    std::istream::read();
  }

  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v11 >= v10)
  {
    v13 = *(a1 + 56);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      v20 = sub_29A00C9BC(a1 + 56, v19);
      v19 = v21;
      v13 = *(a1 + 56);
      v14 = *(a1 + 64) - v13;
      v22 = v14 >> 3;
    }

    else
    {
      v20 = 0;
      v22 = (v11 - v13) >> 3;
    }

    v23 = &v20[8 * v15];
    v24 = &v20[8 * v19];
    v25 = &v23[-v22];
    *v23 = v9;
    v12 = v23 + 1;
    memcpy(v25, v13, v14);
    v26 = *(a1 + 56);
    *(a1 + 56) = v25;
    *(a1 + 64) = v12;
    *(a1 + 72) = v24;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 1;
  }

  *(a1 + 64) = v12;
  if (v8 >> 2 < v9)
  {
    v27 = (*(a1 + 32) + 4 * (v8 >> 2));
    do
    {
      *v27 = bswap32(*v27);
      ++v27;
      --v4;
    }

    while (v4);
  }
}

void sub_29AA0A9CC(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property list uchar ", 20);
  sub_29A008E78(__p, "uint");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA0AA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA0AAB8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = MEMORY[0x29C2C1F00](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = sub_29A00911C(a2, " ", 1);
      result = MEMORY[0x29C2C1EE0](v9, *(*(a1 + 32) + 4 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_29AA0ABAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 56) + 8 * a3 + 8) - *(*(a1 + 56) + 8 * a3) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::ostream::write();
  return std::ostream::write();
}

uint64_t sub_29AA0AC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_29AA0AD74(uint64_t a1)
{
  *a1 = &unk_2A206E7F8;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_29AA0AE00(void *a1, __int128 *a2)
{
  v3 = sub_29AA076B4(a1, a2);
  *v3 = &unk_2A206E880;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  sub_29A008E78(v9, "uint");
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 != 7)
    {
      return a1;
    }

    if (LODWORD(v9[0]) != 1852534389 || *(v9 + 3) != 1853321070)
    {
      return a1;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9[1] != 7)
  {
    operator delete(v9[0]);
    return a1;
  }

  v6 = *v9[0] != 1852534389 || *(v9[0] + 3) != 1853321070;
  operator delete(v9[0]);
  if (!v6)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_29AA0AF24(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA0AF88(uint64_t a1)
{
  v1 = sub_29AA0B590(a1);

  operator delete(v1);
}

uint64_t sub_29AA0AFB8(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      sub_29A00C9A4();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = sub_29A00E7A8((a1 + 4), v15);
      v15 = v17;
      v9 = a1[4];
      v10 = a1[5] - v9;
      v18 = v10 >> 2;
    }

    else
    {
      v16 = 0;
      v18 = (v7 - v9) >> 2;
    }

    v19 = &v16[4 * v11];
    v20 = &v16[4 * v15];
    v21 = &v19[-4 * v18];
    *v19 = 0;
    v8 = v19 + 4;
    memcpy(v21, v9, v10);
    v22 = a1[4];
    a1[4] = v21;
    a1[5] = v8;
    a1[6] = v20;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 4;
  }

  a1[5] = v8;
  sub_29A5DB8D8(v25, (*a2 + 24 * *a3), 8);
  v24 = 0;
  MEMORY[0x29C2C1DD0](v25, &v24);
  *(a1[5] - 4) = v24;
  ++*a3;
  v25[0] = *MEMORY[0x29EDC9530];
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v26 = MEMORY[0x29EDC9570] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v27);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v29);
}

void sub_29AA0B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA0B200(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 2;
    v9 = v8 + 1;
    if ((v8 + 1) >> 62)
    {
      sub_29A00C9A4();
    }

    v10 = v3 - v6;
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
      v13 = sub_29A00E7A8((a1 + 4), v12);
      v12 = v14;
      v6 = a1[4];
      v7 = a1[5] - v6;
      v15 = v7 >> 2;
    }

    else
    {
      v13 = 0;
      v15 = (v4 - v6) >> 2;
    }

    v16 = &v13[4 * v8];
    v17 = &v13[4 * v12];
    v18 = &v16[-4 * v15];
    *v16 = 0;
    v5 = v16 + 4;
    memcpy(v18, v6, v7);
    v19 = a1[4];
    a1[4] = v18;
    a1[5] = v5;
    a1[6] = v17;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = 0;
    v5 = v4 + 4;
  }

  a1[5] = v5;

  return std::istream::read();
}

uint64_t sub_29AA0B2FC(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 2;
    v9 = v8 + 1;
    if ((v8 + 1) >> 62)
    {
      sub_29A00C9A4();
    }

    v10 = v3 - v6;
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
      v13 = sub_29A00E7A8((a1 + 4), v12);
      v12 = v14;
      v6 = a1[4];
      v7 = a1[5] - v6;
      v15 = v7 >> 2;
    }

    else
    {
      v13 = 0;
      v15 = (v4 - v6) >> 2;
    }

    v16 = &v13[4 * v8];
    v17 = &v13[4 * v12];
    v18 = &v16[-4 * v15];
    *v16 = 0;
    v5 = v16 + 4;
    memcpy(v18, v6, v7);
    v19 = a1[4];
    a1[4] = v18;
    a1[5] = v5;
    a1[6] = v17;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = 0;
    v5 = v4 + 4;
  }

  a1[5] = v5;
  result = std::istream::read();
  *(a1[5] - 4) = bswap32(*(a1[5] - 4));
  return result;
}

void sub_29AA0B3FC(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property ", 9);
  sub_29A008E78(__p, "uint");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA0B4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA0B590(uint64_t a1)
{
  *a1 = &unk_2A206E880;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29AA0B60C(uint64_t a1, __int128 *a2, int a3)
{
  v5 = sub_29AA076B4(a1, a2);
  *v5 = &unk_2A206E908;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 20) = a3;
  sub_29A008E78(v11, "char");
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 7)
    {
      goto LABEL_19;
    }

    if (LODWORD(v11[0]) != 1852534389 || *(v11 + 3) != 1853321070)
    {
      goto LABEL_19;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v11[1] != 7)
  {
    operator delete(v11[0]);
    goto LABEL_19;
  }

  v8 = *v11[0] != 1852534389 || *(v11[0] + 3) != 1853321070;
  operator delete(v11[0]);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11[0] = 0;
  sub_29A018094((a1 + 56), v11);
  return a1;
}

void sub_29AA0B748(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA0B7BC(uint64_t a1)
{
  v1 = sub_29AA0C2DC(a1);

  operator delete(v1);
}

void sub_29AA0B7E4(uint64_t a1, uint64_t a2)
{
  sub_29A1B1D0C(a1 + 32, 3 * a2);

  sub_29A08AF9C(a1 + 56, a2 + 1);
}

uint64_t sub_29AA0B82C(void *a1, void *a2, void *a3)
{
  sub_29A5DB8D8(v42, (*a2 + 24 * *a3), 8);
  v41 = 0;
  MEMORY[0x29C2C1DF0](v42, &v41);
  ++*a3;
  v5 = a1[4];
  v6 = a1 + 4;
  v7 = a1[5] - v5;
  v8 = v41;
  v9 = MEMORY[0x29EDC9530];
  v32 = v7 + v41;
  v33 = a1;
  if (v7 >= v7 + v41)
  {
    v11 = MEMORY[0x29EDC9530];
    if (v7 > v7 + v41)
    {
      v33[5] = v5 + v32;
    }
  }

  else
  {
    sub_29A1B2C78((a1 + 4), v41);
    v10 = *v9;
    v11 = v9;
    v12 = v9[3];
    do
    {
      sub_29A5DB8D8(v36, (*a2 + 24 * *a3), 8);
      v35 = 0;
      MEMORY[0x29C2C1DC0](v36, &v35);
      *(*v6 + v7) = v35;
      ++*a3;
      v36[0] = v10;
      *(v36 + *(v10 - 24)) = v12;
      v37 = MEMORY[0x29EDC9570] + 16;
      if (v39 < 0)
      {
        operator delete(v38[7].__locale_);
      }

      v37 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v38);
      std::istream::~istream();
      MEMORY[0x29C2C4390](&v40);
      ++v7;
      --v8;
    }

    while (v8);
  }

  v14 = v33[8];
  v13 = v33[9];
  if (v14 >= v13)
  {
    v17 = v33[7];
    v18 = v14 - v17;
    v19 = (v14 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v16 = v11;
    v21 = v13 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
    v23 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v20;
    }

    if (v23)
    {
      v24 = sub_29A00C9BC((v33 + 7), v23);
      v23 = v25;
      v17 = v33[7];
      v18 = v33[8] - v17;
      v26 = v18 >> 3;
    }

    else
    {
      v24 = 0;
      v26 = v19;
    }

    v27 = &v24[8 * v19];
    v28 = &v24[8 * v23];
    v29 = &v27[-8 * v26];
    *v27 = v32;
    v15 = v27 + 8;
    memcpy(v29, v17, v18);
    v30 = v33[7];
    v33[7] = v29;
    v33[8] = v15;
    v33[9] = v28;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v14 = v32;
    v15 = v14 + 8;
    v16 = v11;
  }

  v33[8] = v15;
  v42[0] = *v16;
  *(v42 + *(v42[0] - 24)) = v16[3];
  v43 = MEMORY[0x29EDC9570] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v44);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v46);
}

void sub_29AA0BC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

void sub_29AA0BC3C(void *a1, uint64_t a2)
{
  std::istream::read();
  v3 = a1[5] - a1[4];
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v7 = a1[7];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00C9BC((a1 + 7), v13);
      v13 = v15;
      v7 = a1[7];
      v8 = a1[8] - v7;
      v16 = v8 >> 3;
    }

    else
    {
      v14 = 0;
      v16 = (v5 - v7) >> 3;
    }

    v17 = &v14[8 * v9];
    v18 = &v14[8 * v13];
    v19 = &v17[-8 * v16];
    *v17 = v3;
    v6 = v17 + 8;
    memcpy(v19, v7, v8);
    v20 = a1[7];
    a1[7] = v19;
    a1[8] = v6;
    a1[9] = v18;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 8;
  }

  a1[8] = v6;
}

void sub_29AA0BD88(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v5 = 0;
      v29 = 0;
      v6 = 7;
      do
      {
        v7 = *(&v29 + v6);
        *(&v29 + v6) = *(&v29 + v5);
        *(&v29 + v5++) = v7;
        --v6;
      }

      while (v5 != 4);
      v4 = v29;
      break;
    default:
      goto LABEL_10;
  }

  v28 = v4;
LABEL_10:
  v8 = *(a1 + 32);
  v9 = *(a1 + 40) - v8;
  v10 = v9 + v4;
  if (v9 >= v9 + v4)
  {
    if (v9 > v9 + v4)
    {
      *(a1 + 40) = v8 + v10;
    }
  }

  else
  {
    sub_29A1B2C78(a1 + 32, v4);
    v4 = v28;
  }

  if (v4)
  {
    std::istream::read();
  }

  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  if (v12 >= v11)
  {
    v14 = *(a1 + 56);
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 3;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v18 = v11 - v14;
    if (v18 >> 2 > v17)
    {
      v17 = v18 >> 2;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
    v20 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      v21 = sub_29A00C9BC(a1 + 56, v20);
      v20 = v22;
      v14 = *(a1 + 56);
      v15 = *(a1 + 64) - v14;
      v23 = v15 >> 3;
    }

    else
    {
      v21 = 0;
      v23 = (v12 - v14) >> 3;
    }

    v24 = &v21[8 * v16];
    v25 = &v21[8 * v20];
    v26 = &v24[-8 * v23];
    *v24 = v10;
    v13 = v24 + 8;
    memcpy(v26, v14, v15);
    v27 = *(a1 + 56);
    *(a1 + 56) = v26;
    *(a1 + 64) = v13;
    *(a1 + 72) = v25;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v12 = v10;
    v13 = v12 + 8;
  }

  *(a1 + 64) = v13;
}

void sub_29AA0BF3C(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property list uchar ", 20);
  sub_29A008E78(__p, "char");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA0C00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA0C028(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = MEMORY[0x29C2C1F00](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = sub_29A00911C(a2, " ", 1);
      result = MEMORY[0x29C2C1ED0](v9, *(*(a1 + 32) + v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_29AA0C11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 56) + 8 * a3 + 8) - *(*(a1 + 56) + 8 * a3) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::ostream::write();
  return std::ostream::write();
}

uint64_t sub_29AA0C1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_29AA0C2DC(uint64_t a1)
{
  *a1 = &unk_2A206E908;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_29AA0C368(void *a1, __int128 *a2)
{
  v3 = sub_29AA076B4(a1, a2);
  *v3 = &unk_2A206E990;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  sub_29A008E78(v9, "char");
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 != 7)
    {
      return a1;
    }

    if (LODWORD(v9[0]) != 1852534389 || *(v9 + 3) != 1853321070)
    {
      return a1;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9[1] != 7)
  {
    operator delete(v9[0]);
    return a1;
  }

  v6 = *v9[0] != 1852534389 || *(v9[0] + 3) != 1853321070;
  operator delete(v9[0]);
  if (!v6)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_29AA0C48C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA0C4F0(uint64_t a1)
{
  v1 = sub_29AA0CABC(a1);

  operator delete(v1);
}

uint64_t sub_29AA0C520(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = v7 - v9 + 1;
    if (v11 < 0)
    {
      sub_29A00C9A4();
    }

    v12 = v6 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = operator new(v13);
    }

    else
    {
      v14 = 0;
    }

    v14[v10] = 0;
    v8 = &v14[v10 + 1];
    memcpy(v14, v9, v10);
    a1[4] = v14;
    a1[5] = v8;
    a1[6] = &v14[v13];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = (v7 + 1);
  }

  a1[5] = v8;
  sub_29A5DB8D8(v17, (*a2 + 24 * *a3), 8);
  v16 = 0;
  MEMORY[0x29C2C1DC0](v17, &v16);
  *(a1[5] - 1) = v16;
  ++*a3;
  v17[0] = *MEMORY[0x29EDC9530];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v18 = MEMORY[0x29EDC9570] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v19);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v21);
}

void sub_29AA0C744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA0C758(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = v4 - v6 + 1;
    if (v8 < 0)
    {
      sub_29A00C9A4();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = operator new(v10);
    }

    else
    {
      v11 = 0;
    }

    v11[v7] = 0;
    v5 = &v11[v7 + 1];
    memcpy(v11, v6, v7);
    a1[4] = v11;
    a1[5] = v5;
    a1[6] = &v11[v10];
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = 0;
    v5 = (v4 + 1);
  }

  a1[5] = v5;

  return std::istream::read();
}

uint64_t sub_29AA0C844(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = v4 - v6 + 1;
    if (v8 < 0)
    {
      sub_29A00C9A4();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = operator new(v10);
    }

    else
    {
      v11 = 0;
    }

    v11[v7] = 0;
    v5 = &v11[v7 + 1];
    memcpy(v11, v6, v7);
    a1[4] = v11;
    a1[5] = v5;
    a1[6] = &v11[v10];
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = 0;
    v5 = (v4 + 1);
  }

  a1[5] = v5;

  return std::istream::read();
}

void sub_29AA0C930(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property ", 9);
  sub_29A008E78(__p, "char");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA0CA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA0CABC(uint64_t a1)
{
  *a1 = &unk_2A206E990;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29AA0CB38(uint64_t a1, __int128 *a2, int a3)
{
  v5 = sub_29AA076B4(a1, a2);
  *v5 = &unk_2A206EA18;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 20) = a3;
  sub_29A008E78(v11, "short");
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 7)
    {
      goto LABEL_19;
    }

    if (LODWORD(v11[0]) != 1852534389 || *(v11 + 3) != 1853321070)
    {
      goto LABEL_19;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v11[1] != 7)
  {
    operator delete(v11[0]);
    goto LABEL_19;
  }

  v8 = *v11[0] != 1852534389 || *(v11[0] + 3) != 1853321070;
  operator delete(v11[0]);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11[0] = 0;
  sub_29A018094((a1 + 56), v11);
  return a1;
}

void sub_29AA0CC74(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA0CCE8(uint64_t a1)
{
  v1 = sub_29AA0D810(a1);

  operator delete(v1);
}

void sub_29AA0CD10(uint64_t a1, uint64_t a2)
{
  sub_29AA09800(a1 + 32, 3 * a2);

  sub_29A08AF9C(a1 + 56, a2 + 1);
}

uint64_t sub_29AA0CD58(void *a1, void *a2, void *a3)
{
  sub_29A5DB8D8(v41, (*a2 + 24 * *a3), 8);
  v40 = 0;
  MEMORY[0x29C2C1DF0](v41, &v40);
  ++*a3;
  v6 = a1 + 4;
  v7 = a1[5] - a1[4];
  v8 = v40;
  v9 = v40 + (v7 >> 1);
  sub_29A0A174C(a1 + 4, v9);
  v32 = v9;
  v33 = a1;
  if (v7 >> 1 < v9)
  {
    v10 = *MEMORY[0x29EDC9530];
    v11 = *(MEMORY[0x29EDC9530] + 24);
    v12 = 2 * (v7 >> 1);
    do
    {
      sub_29A5DB8D8(v35, (*a2 + 24 * *a3), 8);
      v34 = 0;
      MEMORY[0x29C2C1E00](v35, &v34);
      *(*v6 + v12) = v34;
      ++*a3;
      v35[0] = v10;
      *(v35 + *(v10 - 24)) = v11;
      v36 = MEMORY[0x29EDC9570] + 16;
      if (v38 < 0)
      {
        operator delete(v37[7].__locale_);
      }

      v36 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v37);
      std::istream::~istream();
      MEMORY[0x29C2C4390](&v39);
      v12 += 2;
      --v8;
    }

    while (v8);
  }

  v14 = v33[8];
  v13 = v33[9];
  if (v14 >= v13)
  {
    v16 = v33[7];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
    v22 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      v23 = sub_29A00C9BC((v33 + 7), v22);
      v22 = v24;
      v16 = v33[7];
      v17 = v33[8] - v16;
      v25 = v17 >> 3;
    }

    else
    {
      v23 = 0;
      v25 = v18;
    }

    v26 = &v23[8 * v18];
    v27 = &v23[8 * v22];
    v28 = &v26[-v25];
    *v26 = v32;
    v15 = v26 + 1;
    memcpy(v28, v16, v17);
    v29 = v33[7];
    v33[7] = v28;
    v33[8] = v15;
    v33[9] = v27;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v14 = v9;
    v15 = v14 + 1;
  }

  v30 = MEMORY[0x29EDC9530];
  v33[8] = v15;
  v41[0] = *v30;
  *(v41 + *(v41[0] - 24)) = v30[3];
  v42 = MEMORY[0x29EDC9570] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v43);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v45);
}

void sub_29AA0D12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

void sub_29AA0D158(void *a1, uint64_t a2)
{
  std::istream::read();
  v3 = (a1[5] - a1[4]) >> 1;
  sub_29A0A174C(a1 + 4, v3);
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v7 = a1[7];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00C9BC((a1 + 7), v13);
      v13 = v15;
      v7 = a1[7];
      v8 = a1[8] - v7;
      v16 = v8 >> 3;
    }

    else
    {
      v14 = 0;
      v16 = (v5 - v7) >> 3;
    }

    v17 = &v14[8 * v9];
    v18 = &v14[8 * v13];
    v19 = &v17[-v16];
    *v17 = v3;
    v6 = v17 + 1;
    memcpy(v19, v7, v8);
    v20 = a1[7];
    a1[7] = v19;
    a1[8] = v6;
    a1[9] = v18;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  a1[8] = v6;
}

void sub_29AA0D290(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v5 = 0;
      v29 = 0;
      v6 = 7;
      do
      {
        v7 = *(&v29 + v6);
        *(&v29 + v6) = *(&v29 + v5);
        *(&v29 + v5++) = v7;
        --v6;
      }

      while (v5 != 4);
      v4 = v29;
      break;
    default:
      goto LABEL_10;
  }

  v28 = v4;
LABEL_10:
  v8 = *(a1 + 40) - *(a1 + 32);
  v9 = v4 + (v8 >> 1);
  sub_29A0A174C((a1 + 32), v9);
  if (v28)
  {
    std::istream::read();
  }

  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v11 >= v10)
  {
    v13 = *(a1 + 56);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      v20 = sub_29A00C9BC(a1 + 56, v19);
      v19 = v21;
      v13 = *(a1 + 56);
      v14 = *(a1 + 64) - v13;
      v22 = v14 >> 3;
    }

    else
    {
      v20 = 0;
      v22 = (v11 - v13) >> 3;
    }

    v23 = &v20[8 * v15];
    v24 = &v20[8 * v19];
    v25 = &v23[-v22];
    *v23 = v9;
    v12 = v23 + 1;
    memcpy(v25, v13, v14);
    v26 = *(a1 + 56);
    *(a1 + 56) = v25;
    *(a1 + 64) = v12;
    *(a1 + 72) = v24;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 1;
  }

  *(a1 + 64) = v12;
  if (v8 >> 1 < v9)
  {
    v27 = (*(a1 + 32) + 2 * (v8 >> 1));
    do
    {
      *v27 = bswap32(*v27) >> 16;
      ++v27;
      --v4;
    }

    while (v4);
  }
}

void sub_29AA0D464(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property list uchar ", 20);
  sub_29A008E78(__p, "short");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA0D534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA0D550(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = MEMORY[0x29C2C1F00](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = sub_29A00911C(a2, " ", 1);
      result = MEMORY[0x29C2C1F10](v9, *(*(a1 + 32) + 2 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_29AA0D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 56) + 8 * a3 + 8) - *(*(a1 + 56) + 8 * a3) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::ostream::write();
  return std::ostream::write();
}

uint64_t sub_29AA0D708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_29AA0D810(uint64_t a1)
{
  *a1 = &unk_2A206EA18;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_29AA0D89C(void *a1, __int128 *a2)
{
  v3 = sub_29AA076B4(a1, a2);
  *v3 = &unk_2A206EAA0;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  sub_29A008E78(v9, "short");
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 != 7)
    {
      return a1;
    }

    if (LODWORD(v9[0]) != 1852534389 || *(v9 + 3) != 1853321070)
    {
      return a1;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9[1] != 7)
  {
    operator delete(v9[0]);
    return a1;
  }

  v6 = *v9[0] != 1852534389 || *(v9[0] + 3) != 1853321070;
  operator delete(v9[0]);
  if (!v6)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_29AA0D9C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA0DA24(uint64_t a1)
{
  v1 = sub_29AA0E028(a1);

  operator delete(v1);
}

uint64_t sub_29AA0DA54(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 1;
    if (v11 <= -2)
    {
      sub_29A00C9A4();
    }

    v12 = v6 - v9;
    if (v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = v12 >= 0x7FFFFFFFFFFFFFFELL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = sub_29A010BBC((a1 + 4), v15);
      v15 = v17;
      v9 = a1[4];
      v10 = a1[5] - v9;
      v18 = v10 >> 1;
    }

    else
    {
      v16 = 0;
      v18 = (v7 - v9) >> 1;
    }

    v19 = &v16[2 * v11];
    v20 = &v16[2 * v15];
    v21 = &v19[-2 * v18];
    *v19 = 0;
    v8 = v19 + 2;
    memcpy(v21, v9, v10);
    v22 = a1[4];
    a1[4] = v21;
    a1[5] = v8;
    a1[6] = v20;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 2;
  }

  a1[5] = v8;
  sub_29A5DB8D8(v25, (*a2 + 24 * *a3), 8);
  v24 = 0;
  MEMORY[0x29C2C1E00](v25, &v24);
  *(a1[5] - 2) = v24;
  ++*a3;
  v25[0] = *MEMORY[0x29EDC9530];
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v26 = MEMORY[0x29EDC9570] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v27);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v29);
}

void sub_29AA0DC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA0DC98(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 1;
    if (v8 <= -2)
    {
      sub_29A00C9A4();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = v9 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = sub_29A010BBC((a1 + 4), v12);
      v12 = v14;
      v6 = a1[4];
      v7 = a1[5] - v6;
      v15 = v7 >> 1;
    }

    else
    {
      v13 = 0;
      v15 = (v4 - v6) >> 1;
    }

    v16 = &v13[2 * v8];
    v17 = &v13[2 * v12];
    v18 = &v16[-2 * v15];
    *v16 = 0;
    v5 = v16 + 2;
    memcpy(v18, v6, v7);
    v19 = a1[4];
    a1[4] = v18;
    a1[5] = v5;
    a1[6] = v17;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = 0;
    v5 = v4 + 2;
  }

  a1[5] = v5;

  return std::istream::read();
}

uint64_t sub_29AA0DD90(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 1;
    if (v8 <= -2)
    {
      sub_29A00C9A4();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = v9 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = sub_29A010BBC((a1 + 4), v12);
      v12 = v14;
      v6 = a1[4];
      v7 = a1[5] - v6;
      v15 = v7 >> 1;
    }

    else
    {
      v13 = 0;
      v15 = (v4 - v6) >> 1;
    }

    v16 = &v13[2 * v8];
    v17 = &v13[2 * v12];
    v18 = &v16[-2 * v15];
    *v16 = 0;
    v5 = v16 + 2;
    memcpy(v18, v6, v7);
    v19 = a1[4];
    a1[4] = v18;
    a1[5] = v5;
    a1[6] = v17;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = 0;
    v5 = v4 + 2;
  }

  a1[5] = v5;
  result = std::istream::read();
  *(a1[5] - 2) = bswap32(*(a1[5] - 2)) >> 16;
  return result;
}

void sub_29AA0DE90(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property ", 9);
  sub_29A008E78(__p, "short");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA0DF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA0E028(uint64_t a1)
{
  *a1 = &unk_2A206EAA0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29AA0E0A4(uint64_t a1, __int128 *a2, int a3)
{
  v5 = sub_29AA076B4(a1, a2);
  *v5 = &unk_2A206EB28;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 20) = a3;
  sub_29A008E78(v11, "int");
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 7)
    {
      goto LABEL_19;
    }

    if (LODWORD(v11[0]) != 1852534389 || *(v11 + 3) != 1853321070)
    {
      goto LABEL_19;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v11[1] != 7)
  {
    operator delete(v11[0]);
    goto LABEL_19;
  }

  v8 = *v11[0] != 1852534389 || *(v11[0] + 3) != 1853321070;
  operator delete(v11[0]);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11[0] = 0;
  sub_29A018094((a1 + 56), v11);
  return a1;
}

void sub_29AA0E1E0(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA0E254(uint64_t a1)
{
  v1 = sub_29AA0ED74(a1);

  operator delete(v1);
}

void sub_29AA0E27C(uint64_t a1, uint64_t a2)
{
  sub_29A0A6994(a1 + 32, 3 * a2);

  sub_29A08AF9C(a1 + 56, a2 + 1);
}

uint64_t sub_29AA0E2C4(void *a1, void *a2, void *a3)
{
  sub_29A5DB8D8(v41, (*a2 + 24 * *a3), 8);
  v40 = 0;
  MEMORY[0x29C2C1DF0](v41, &v40);
  ++*a3;
  v6 = a1 + 4;
  v7 = a1[5] - a1[4];
  v8 = v40;
  v9 = v40 + (v7 >> 2);
  sub_29A0A171C(a1 + 4, v9);
  v32 = v9;
  v33 = a1;
  if (v7 >> 2 < v9)
  {
    v10 = *MEMORY[0x29EDC9530];
    v11 = *(MEMORY[0x29EDC9530] + 24);
    v12 = 4 * (v7 >> 2);
    do
    {
      sub_29A5DB8D8(v35, (*a2 + 24 * *a3), 8);
      v34 = 0;
      MEMORY[0x29C2C1DC0](v35, &v34);
      *(*v6 + v12) = v34;
      ++*a3;
      v35[0] = v10;
      *(v35 + *(v10 - 24)) = v11;
      v36 = MEMORY[0x29EDC9570] + 16;
      if (v38 < 0)
      {
        operator delete(v37[7].__locale_);
      }

      v36 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v37);
      std::istream::~istream();
      MEMORY[0x29C2C4390](&v39);
      v12 += 4;
      --v8;
    }

    while (v8);
  }

  v14 = v33[8];
  v13 = v33[9];
  if (v14 >= v13)
  {
    v16 = v33[7];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
    v22 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      v23 = sub_29A00C9BC((v33 + 7), v22);
      v22 = v24;
      v16 = v33[7];
      v17 = v33[8] - v16;
      v25 = v17 >> 3;
    }

    else
    {
      v23 = 0;
      v25 = v18;
    }

    v26 = &v23[8 * v18];
    v27 = &v23[8 * v22];
    v28 = &v26[-v25];
    *v26 = v32;
    v15 = v26 + 1;
    memcpy(v28, v16, v17);
    v29 = v33[7];
    v33[7] = v28;
    v33[8] = v15;
    v33[9] = v27;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v14 = v9;
    v15 = v14 + 1;
  }

  v30 = MEMORY[0x29EDC9530];
  v33[8] = v15;
  v41[0] = *v30;
  *(v41 + *(v41[0] - 24)) = v30[3];
  v42 = MEMORY[0x29EDC9570] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v43);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v45);
}

void sub_29AA0E698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

void sub_29AA0E6C4(void *a1, uint64_t a2)
{
  std::istream::read();
  v3 = (a1[5] - a1[4]) >> 2;
  sub_29A0A171C(a1 + 4, v3);
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v7 = a1[7];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00C9BC((a1 + 7), v13);
      v13 = v15;
      v7 = a1[7];
      v8 = a1[8] - v7;
      v16 = v8 >> 3;
    }

    else
    {
      v14 = 0;
      v16 = (v5 - v7) >> 3;
    }

    v17 = &v14[8 * v9];
    v18 = &v14[8 * v13];
    v19 = &v17[-v16];
    *v17 = v3;
    v6 = v17 + 1;
    memcpy(v19, v7, v8);
    v20 = a1[7];
    a1[7] = v19;
    a1[8] = v6;
    a1[9] = v18;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  a1[8] = v6;
}

void sub_29AA0E7FC(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v5 = 0;
      v29 = 0;
      v6 = 7;
      do
      {
        v7 = *(&v29 + v6);
        *(&v29 + v6) = *(&v29 + v5);
        *(&v29 + v5++) = v7;
        --v6;
      }

      while (v5 != 4);
      v4 = v29;
      break;
    default:
      goto LABEL_10;
  }

  v28 = v4;
LABEL_10:
  v8 = *(a1 + 40) - *(a1 + 32);
  v9 = v4 + (v8 >> 2);
  sub_29A0A171C((a1 + 32), v9);
  if (v28)
  {
    std::istream::read();
  }

  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v11 >= v10)
  {
    v13 = *(a1 + 56);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      v20 = sub_29A00C9BC(a1 + 56, v19);
      v19 = v21;
      v13 = *(a1 + 56);
      v14 = *(a1 + 64) - v13;
      v22 = v14 >> 3;
    }

    else
    {
      v20 = 0;
      v22 = (v11 - v13) >> 3;
    }

    v23 = &v20[8 * v15];
    v24 = &v20[8 * v19];
    v25 = &v23[-v22];
    *v23 = v9;
    v12 = v23 + 1;
    memcpy(v25, v13, v14);
    v26 = *(a1 + 56);
    *(a1 + 56) = v25;
    *(a1 + 64) = v12;
    *(a1 + 72) = v24;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 1;
  }

  *(a1 + 64) = v12;
  if (v8 >> 2 < v9)
  {
    v27 = (*(a1 + 32) + 4 * (v8 >> 2));
    do
    {
      *v27 = bswap32(*v27);
      ++v27;
      --v4;
    }

    while (v4);
  }
}

void sub_29AA0E9CC(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property list uchar ", 20);
  sub_29A008E78(__p, "int");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA0EA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA0EAB8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = MEMORY[0x29C2C1F00](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = sub_29A00911C(a2, " ", 1);
      result = MEMORY[0x29C2C1ED0](v9, *(*(a1 + 32) + 4 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_29AA0EBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 56) + 8 * a3 + 8) - *(*(a1 + 56) + 8 * a3) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::ostream::write();
  return std::ostream::write();
}

uint64_t sub_29AA0EC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_29AA0ED74(uint64_t a1)
{
  *a1 = &unk_2A206EB28;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_29AA0EE00(void *a1, __int128 *a2)
{
  v3 = sub_29AA076B4(a1, a2);
  *v3 = &unk_2A206EBB0;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  sub_29A008E78(v9, "int");
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 != 7)
    {
      return a1;
    }

    if (LODWORD(v9[0]) != 1852534389 || *(v9 + 3) != 1853321070)
    {
      return a1;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9[1] != 7)
  {
    operator delete(v9[0]);
    return a1;
  }

  v6 = *v9[0] != 1852534389 || *(v9[0] + 3) != 1853321070;
  operator delete(v9[0]);
  if (!v6)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_29AA0EF24(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA0EF88(uint64_t a1)
{
  v1 = sub_29AA0F590(a1);

  operator delete(v1);
}

uint64_t sub_29AA0EFB8(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      sub_29A00C9A4();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = sub_29A00E7A8((a1 + 4), v15);
      v15 = v17;
      v9 = a1[4];
      v10 = a1[5] - v9;
      v18 = v10 >> 2;
    }

    else
    {
      v16 = 0;
      v18 = (v7 - v9) >> 2;
    }

    v19 = &v16[4 * v11];
    v20 = &v16[4 * v15];
    v21 = &v19[-4 * v18];
    *v19 = 0;
    v8 = v19 + 4;
    memcpy(v21, v9, v10);
    v22 = a1[4];
    a1[4] = v21;
    a1[5] = v8;
    a1[6] = v20;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 4;
  }

  a1[5] = v8;
  sub_29A5DB8D8(v25, (*a2 + 24 * *a3), 8);
  v24 = 0;
  MEMORY[0x29C2C1DC0](v25, &v24);
  *(a1[5] - 4) = v24;
  ++*a3;
  v25[0] = *MEMORY[0x29EDC9530];
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v26 = MEMORY[0x29EDC9570] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v27);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v29);
}

void sub_29AA0F1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA0F200(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 2;
    v9 = v8 + 1;
    if ((v8 + 1) >> 62)
    {
      sub_29A00C9A4();
    }

    v10 = v3 - v6;
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
      v13 = sub_29A00E7A8((a1 + 4), v12);
      v12 = v14;
      v6 = a1[4];
      v7 = a1[5] - v6;
      v15 = v7 >> 2;
    }

    else
    {
      v13 = 0;
      v15 = (v4 - v6) >> 2;
    }

    v16 = &v13[4 * v8];
    v17 = &v13[4 * v12];
    v18 = &v16[-4 * v15];
    *v16 = 0;
    v5 = v16 + 4;
    memcpy(v18, v6, v7);
    v19 = a1[4];
    a1[4] = v18;
    a1[5] = v5;
    a1[6] = v17;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = 0;
    v5 = v4 + 4;
  }

  a1[5] = v5;

  return std::istream::read();
}