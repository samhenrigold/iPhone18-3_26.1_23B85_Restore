void sub_29AE513DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37, char a38)
{
  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (a33)
  {
    sub_29A014BEC(a33);
  }

  if (a35)
  {
    sub_29A014BEC(a35);
  }

  if (a37)
  {
    sub_29A014BEC(a37);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29A0E9CEC(&a38);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationGPU::GetBufferSpecs(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 68);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 56), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 56);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = v3 + 3;
  }

  a2[1] = result;
  return result;
}

void sub_29AE51638(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A2097890;
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *this = &unk_2A2075F38;
  v4 = *(this + 3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE516D4(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A2097890;
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *this = &unk_2A2075F38;
  v4 = *(this + 3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);

  operator delete(v5);
}

void sub_29AE51774(pxrInternal__aapl__pxrReserved__::HdStComputation *this)
{
  *this = &unk_2A2097910;
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);
}

void sub_29AE5180C(pxrInternal__aapl__pxrReserved__::HdStComputation *this)
{
  *this = &unk_2A2097910;
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);

  operator delete(v6);
}

uint64_t *sub_29AE518A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AE518C8(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AE51A3C(a1);
}

void *sub_29AE51928(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AE51BAC);
  return a2;
}

void *sub_29AE51A24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2097968;
  return sub_29A18ECC8(a2, v2);
}

void sub_29AE51A3C(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 10, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A213190(v1);

    operator delete(v1);
  }
}

BOOL sub_29AE51AA4(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 4 * *a1 - 4;
  do
  {
    v9 = *v6++;
    v8 = v9;
    v10 = *v5++;
    result = v8 == v10;
    v11 = v8 != v10 || v7 == 0;
    v7 -= 4;
  }

  while (!v11);
  return result;
}

uint64_t sub_29AE51B44(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AE51A3C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AE51A3C(&v4);
  }

  return *a1;
}

void *sub_29AE51BAC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 += 4;
  return pxrInternal__aapl__pxrReserved__::Vt_StreamOutGeneric(&unk_2A2097A38, v3, a2);
}

__n128 sub_29AE51BD0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2097A58;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29AE51C1C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2097A58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29AE51C4C(uint64_t a1, std::string *this)
{
  v3 = *(a1 + 16);
  if ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  std::string::operator=(this, EmptyString);
  LODWORD(this[1].__r_.__value_.__l.__data_) = 4;
  this[10].__r_.__value_.__l.__size_ = 0x100000040;
  LODWORD(this[10].__r_.__value_.__r.__words[2]) = 1;
  v30 = 0;
  v29 = 0;
  v5 = *(v3 + 64);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (v5 == 15)
  {
    if (!v6)
    {
      v6 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v7 = (v6 + 96);
  }

  else
  {
    if (!v6)
    {
      v6 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v7 = (v6 + 88);
  }

  sub_29A166F2C(&v30, v7);
  v8 = *(v3 + 68);
  switch(v8)
  {
    case 29:
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v12)
      {
        v12 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v12 + 104);
      break;
    case 21:
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v11)
      {
        v11 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v11 + 88);
      break;
    case 15:
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v9)
      {
        v9 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v9 + 96);
      break;
    default:
      goto LABEL_24;
  }

  sub_29A166F2C(&v29, v10);
LABEL_24:
  v13 = sub_29A008E78(&__p, "points");
  if ((v30 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v14 = ((v30 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v14, 1, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = sub_29A008E78(&__p, "normals");
  if ((v29 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v16 = ((v29 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableBuffer(this, &__p, v16, 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "indices");
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v17)
  {
    v17 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v17 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v18 = ((*(v17 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v18, 3, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "primitiveParam");
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v19)
  {
    v19 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v19 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v20 = ((*(v19 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v20, 4, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((atomic_load_explicit(&qword_2A174F1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F1F0))
  {
    sub_29A008E78(qword_2A174F0D0, "vertexOffset");
    sub_29A008E78(qword_2A174F0E8, "elementOffset");
    sub_29A008E78(qword_2A174F100, "topologyOffset");
    sub_29A008E78(qword_2A174F118, "pointsOffset");
    sub_29A008E78(qword_2A174F130, "pointsStride");
    sub_29A008E78(qword_2A174F148, "normalsOffset");
    sub_29A008E78(qword_2A174F160, "normalsStride");
    sub_29A008E78(qword_2A174F178, "indexOffset");
    sub_29A008E78(qword_2A174F190, "indexStride");
    sub_29A008E78(qword_2A174F1A8, "pParamOffset");
    sub_29A008E78(qword_2A174F1C0, "pParamStride");
    sub_29A008E78(qword_2A174F1D8, "primIndexEnd");
    __cxa_atexit(sub_29AE522B8, 0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F1F0);
  }

  v21 = qword_2A174F0D0;
  v22 = 288;
  do
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v23)
    {
      v23 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v23 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v24 = ((*(v23 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
    }

    memset(&__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(this, v21, v24, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v21;
    v22 -= 24;
  }

  while (v22);
  sub_29A008E78(&__p, "hd_GlobalInvocationID");
  sub_29A008E78(&v27, "uvec3");
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v25)
  {
    v25 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v25 + 17) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = ((*(v25 + 17) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v25);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(this, &__p, &v27, v26);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AE521B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  __cxa_guard_abort(&qword_2A174F1F0);
  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(v21 - 40);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AE5226C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2097AB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29AE522B8()
{
  v0 = &byte_2A174F1EF;
  v1 = -288;
  v2 = &byte_2A174F1EF;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

pxrInternal__aapl__pxrReserved__::HdStShaderCode *pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::HdSt_GeometricShader(pxrInternal__aapl__pxrReserved__::HdStShaderCode *a1, const std::string *a2, int a3, int a4, char a5, char a6, char a7, char a8, float a9, int a10, char a11, int a12, pxrInternal__aapl__pxrReserved__::SdfPath *a13)
{
  v21 = a12;
  v46 = a4;
  v47 = a3;
  v45 = a8;
  v44 = a11;
  v22 = pxrInternal__aapl__pxrReserved__::HdStShaderCode::HdStShaderCode(a1);
  *v22 = &unk_2A2097AD8;
  *(v22 + 6) = a3;
  *(v22 + 7) = a4;
  *(v22 + 32) = a5;
  *(v22 + 33) = a6;
  *(v22 + 34) = a7;
  *(v22 + 35) = a8;
  *(v22 + 9) = a10;
  v22[6] = 0;
  v23 = v22 + 6;
  *(v22 + 10) = a9;
  *(v22 + 56) = a11;
  *(v22 + 15) = v21;
  v22[8] = 0;
  v24 = v22 + 8;
  sub_29A0ECEEC(&v42, "hdSt", "pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::HdSt_GeometricShader(const std::string &, PrimitiveType, HdCullStyle, BOOL, BOOL, BOOL, BOOL, HdPolygonMode, BOOL, FvarPatchType, const SdfPath &, float)");
  if (sub_29ADC9798(7))
  {
    v25 = pxrInternal__aapl__pxrReserved__::operator<<(MEMORY[0x29EDC93C8], a13);
    v26 = sub_29A00911C(v25, "\n", 1);
    v27 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v27 >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = a2->__r_.__value_.__r.__words[0];
    }

    if (v27 >= 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v30 = sub_29A00911C(v26, v28, size);
    sub_29A00911C(v30, "\n", 1);
  }

  sub_29A9EE25C(v37, a2, 24);
  v31 = operator new(0x138uLL);
  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v32)
  {
    v32 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v31, v37, v32 + 14);
  sub_29AE064D0(v23, v31);
  v36 = *(*v23 + 304);
  v48 = 0;
  v49 = 0;
  sub_29AE52DEC(&v48, v24, &v36, &v44, &v47, &v46, &v45, &a12);
  *v24 = bswap64(0x9E3779B97F4A7C55 * v48);
  v37[0] = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v37[2] = v33;
  v38 = MEMORY[0x29EDC9570] + 16;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  v38 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v41);
  if (v42)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v43, v42);
  }

  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::HdSt_GeometricShader(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_29AE52644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A008B0C(va);
  sub_29A0E9CEC(v7 - 152);
  sub_29AE064D0(v6, 0);
  pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(v5);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::~HdSt_GeometricShader(pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader *this)
{
  *this = &unk_2A2097AD8;
  sub_29AE064D0(this + 6, 0);

  pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(this);
}

{
  *this = &unk_2A2097AD8;
  sub_29AE064D0(this + 6, 0);

  pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(this);
}

{
  *this = &unk_2A2097AD8;
  sub_29AE064D0(this + 6, 0);
  pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(this);

  operator delete(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::ResolveCullMode(uint64_t a1, int a2)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 28);
  if (!v4)
  {
    v4 = a2;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v4 != 5)
      {
        return result;
      }

      if ((*(a1 + 34) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      return result;
    }

LABEL_11:
    if (*(a1 + 33))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

LABEL_16:
  if (*(a1 + 33))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetPrimitiveIndexSize(pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader *this)
{
  v1 = *(this + 6) - 1;
  if (v1 > 0xC)
  {
    return 1;
  }

  else
  {
    return dword_29B70FA98[v1];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetNumPatchEvalVerts(pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader *this)
{
  v1 = *(this + 6) - 2;
  if (v1 > 9)
  {
    return 0;
  }

  else
  {
    return dword_29B70FACC[v1];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetNumPrimitiveVertsForGeometryShader(pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader *this)
{
  v1 = *(this + 6) - 1;
  if (v1 > 0xC)
  {
    return 1;
  }

  else
  {
    return dword_29B70FAF4[v1];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetHgiPrimitiveType(pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader *this)
{
  v1 = *(this + 6);
  if (v1 <= 5)
  {
    if ((v1 - 2) < 2)
    {
      return 4;
    }

    if ((v1 - 4) < 2)
    {
LABEL_8:
      if (*(this + 35))
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    v3 = v1 == 1;
    v4 = 1;
LABEL_18:
    if (v3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  if (v1 > 9)
  {
    if ((v1 - 10) < 2)
    {
      return 4;
    }

    v3 = v1 == 12;
    v4 = 3;
    goto LABEL_18;
  }

  if ((v1 - 6) >= 2)
  {
    if ((v1 - 8) >= 2)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (*(this + 35))
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::Create(pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey *a1@<X0>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::ComputeHash(a1);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGeometricShader(v22, v5, v6);
  if (v26 == 1)
  {
    (*(*a1 + 24))(&__p, a1);
    v18 = (*(*a1 + 104))(a1);
    v17 = (*(*a1 + 112))(a1);
    v16 = (*(*a1 + 120))(a1);
    v15 = (*(*a1 + 128))(a1);
    v14 = (*(*a1 + 136))(a1);
    v13 = (*(*a1 + 144))(a1);
    v12 = (*(*a1 + 152))(a1);
    v11 = (*(*a1 + 96))(a1);
    v10 = (*(*a1 + 168))(a1);
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v9 + 1);
    v8 = (*(*a1 + 160))(a1);
    sub_29AE53014(&__p, &v18, &v17, &v16, &v15, &v14, &v13, &v20, &v12, &v11, &v10, &v9, &v8);
    sub_29AE52D1C(v22, &v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
    sub_29A1DE3A4(&v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = v23;
  *a3 = v22[1];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v25 == 1)
  {
    std::mutex::unlock(v24);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }
}

void sub_29AE52CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_29A014BEC(a27);
  }

  sub_29A1DCEA8(&a16);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_29ADCA62C(v27 - 96);
  _Unwind_Resume(a1);
}

void sub_29AE52D1C(uint64_t *a1, uint64_t *a2)
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

    v7 = sub_29AE52F6C(v4, a1);
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

void sub_29AE52DD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE52DEC(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int8 *a4, int *a5, unsigned int *a6, unsigned __int8 *a7, int *a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29AE52E34(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29AE52E34(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, int *a4, unsigned int *a5, unsigned __int8 *a6, int *a7)
{
  v7 = *a2;
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29AE52E78(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29AE52E78(uint64_t a1, unsigned __int8 *a2, int *a3, unsigned int *a4, unsigned __int8 *a5, int *a6)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_29AE52EB8(a1, a3, a4, a5, a6);
}

uint64_t sub_29AE52EB8(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, int *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29AE52EF4(a1, a3, a4, a5);
}

uint64_t sub_29AE52EF4(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, int *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AE52F2C(a1, a3, a4);
}

uint64_t sub_29AE52F2C(uint64_t result, unsigned __int8 *a2, int *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

uint64_t sub_29AE52F6C(uint64_t a1, uint64_t *a2)
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

void sub_29AE52FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE53014(const std::string *a1@<X1>, int *a2@<X2>, int *a3@<X3>, char *a4@<X4>, char *a5@<X5>, char *a6@<X6>, char *a7@<X7>, void *a8@<X8>, int *a9, char *a10, int *a11, pxrInternal__aapl__pxrReserved__::SdfPath *a12, float *a13)
{
  v21 = operator new(0x60uLL);
  sub_29AE530F8(v21, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13);
  *a8 = v21 + 3;
  a8[1] = v21;

  sub_29A017894(a8, v21 + 4, (v21 + 3));
}

void *sub_29AE530F8(void *a1, const std::string *a2, int *a3, int *a4, char *a5, char *a6, char *a7, char *a8, int *a9, char *a10, int *a11, pxrInternal__aapl__pxrReserved__::SdfPath *a12, float *a13)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2097B80;
  pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::HdSt_GeometricShader((a1 + 3), a2, *a3, *a4, *a5, *a6, *a7, *a8, *a13, *a9, *a10, *a11, a12);
  return a1;
}

void sub_29AE531C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2097B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLAttribType(int a1)
{
  if ((a1 - 5) > 0x18)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_29B70FBC8[a1 - 5];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetPrimitiveMode(pxrInternal__aapl__pxrReserved__::HdStGLConversions *this, const pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader *a2)
{
  v2 = *(this + 6) - 1;
  if (v2 > 0xB)
  {
    return 0;
  }

  else
  {
    return dword_29B70FC2C[v2];
  }
}

atomic_uint **pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLSLTypename@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v3 = 0;
  switch(result)
  {
    case 0:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = *result;
      goto LABEL_74;
    case 5:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[13];
      goto LABEL_74;
    case 6:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[14];
      goto LABEL_74;
    case 7:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[15];
      goto LABEL_74;
    case 8:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[16];
      goto LABEL_74;
    case 9:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[17];
      goto LABEL_74;
    case 10:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[18];
      goto LABEL_74;
    case 11:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[19];
      goto LABEL_74;
    case 12:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[20];
      goto LABEL_74;
    case 13:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[1];
      goto LABEL_74;
    case 14:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[2];
      goto LABEL_74;
    case 15:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[3];
      goto LABEL_74;
    case 16:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[4];
      goto LABEL_74;
    case 17:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[5];
      goto LABEL_74;
    case 18:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[6];
      goto LABEL_74;
    case 19:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[7];
      goto LABEL_74;
    case 20:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[8];
      goto LABEL_74;
    case 21:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[9];
      goto LABEL_74;
    case 22:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[10];
      goto LABEL_74;
    case 23:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[11];
      goto LABEL_74;
    case 24:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[12];
      goto LABEL_74;
    case 26:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[22];
      goto LABEL_74;
    case 28:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[23];
      goto LABEL_74;
    case 29:
      result = atomic_load(&qword_2A174F1F8);
      if (!result)
      {
        result = sub_29AE539AC();
      }

      v4 = result[21];
LABEL_74:
      *a2 = v4;
      if ((v4 & 7) != 0)
      {
        v3 = (v4 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      return result;
    default:
LABEL_76:
      *a2 = v3;
      return result;
  }
}

void pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLSLIdentifier(atomic_uint **__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::HdStGLConversions *this@<X0>)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  if (*(EmptyString + 23) >= 0)
  {
    v5 = EmptyString;
  }

  else
  {
    v5 = *EmptyString;
  }

  v6 = *v5;
  if (!*v5)
  {
    goto LABEL_20;
  }

  v7 = MEMORY[0x29EDCA600];
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x100uLL))
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v5;
    if (*v5)
    {
      do
      {
        if (v8 < 0)
        {
          if (__maskrune(v8, 0x500uLL))
          {
            goto LABEL_19;
          }
        }

        else if ((*(v7 + 4 * v8 + 60) & 0x500) != 0)
        {
          goto LABEL_19;
        }

        if (*v5 != 95 || *(v5 - 1) == 95)
        {
          goto LABEL_23;
        }

LABEL_19:
        v9 = *++v5;
        v8 = v9;
      }

      while (v9);
    }

LABEL_20:
    v10 = *this;
    *a1 = *this;
    if ((v10 & 7) != 0)
    {
      v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a1 = v11;
      }
    }

    return;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v6 + 60) & 0x100) != 0)
  {
    goto LABEL_12;
  }

LABEL_23:
  memset(&v31, 0, sizeof(v31));
  v12 = *(EmptyString + 23);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v12 = EmptyString[1];
  }

  std::string::reserve(&v31, v12);
  if (*(EmptyString + 23) < 0)
  {
    EmptyString = *EmptyString;
  }

  v13 = *EmptyString;
  if (*EmptyString)
  {
    v14 = EmptyString + 1;
    while (!(v13 < 0 ? __maskrune(v13, 0x100uLL) : *(v7 + 4 * v13 + 60) & 0x100))
    {
      v16 = *v14++;
      v13 = v16;
      if (!v16)
      {
        goto LABEL_50;
      }
    }

    v17 = *(v14 - 1);
    if (v17)
    {
      do
      {
        if (v17 < 0)
        {
          v18 = __maskrune(v17, 0x500uLL);
        }

        else
        {
          v18 = *(v7 + 4 * v17 + 60) & 0x500;
        }

        v19 = *(v14 - 1);
        if (v18)
        {
          if (v19 != 95)
          {
            goto LABEL_48;
          }

          v20 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
          size = v31.__r_.__value_.__l.__size_;
          v21 = v31.__r_.__value_.__r.__words[0];
        }

        else
        {
          v20 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
          size = v31.__r_.__value_.__l.__size_;
          v21 = v31.__r_.__value_.__r.__words[0];
        }

        if ((v20 & 0x80u) != 0)
        {
          v20 = size;
        }

        else
        {
          v21 = &v31;
        }

        if (v21->__r_.__value_.__s.__data_[v20 - 1] == 95)
        {
          goto LABEL_49;
        }

        LOBYTE(v19) = 95;
LABEL_48:
        std::string::push_back(&v31, v19);
LABEL_49:
        v23 = *v14++;
        v17 = v23;
      }

      while (v23);
    }
  }

LABEL_50:
  v24 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = v31.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a1, &v31);
  }

  else
  {
    v29[0] = "hdSt/glConversions.cpp";
    v29[1] = "GetGLSLIdentifier";
    v29[2] = 384;
    v29[3] = "static TfToken pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLSLIdentifier(const TfToken &)";
    v30 = 0;
    v25 = *this & 0xFFFFFFFFFFFFFFF8;
    if (v25)
    {
      v26 = (v25 + 16);
      if (*(v25 + 39) < 0)
      {
        v26 = *v26;
      }
    }

    else
    {
      v26 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v29, 1, "Invalid identifier '%s' could not be name-mangled", v26);
    v27 = *this;
    *a1 = *this;
    if ((v27 & 7) != 0)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a1 = v28;
      }
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_29AE53980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AE539AC()
{
  v55 = *MEMORY[0x29EDCA608];
  v0 = operator new(0xD8uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "BOOL");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "float");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "vec2");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "vec3");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "vec4");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "mat3");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "mat4");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "double");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "dvec2");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "dvec3");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "dvec4");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "dmat3");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "dmat4");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "int");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "ivec2");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "ivec3");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "ivec4");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "uint");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "uvec2");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "uvec3");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 20, "uvec4");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 21, "packed_2_10_10_10");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 22, "packed_half2");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 23, "packed_half4");
  v1 = v0 + 24;
  v2 = *v0;
  v31 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v32 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v33 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v34 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v35 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v36 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v37 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v38 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v39 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v40 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v41 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v42 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v43 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v44 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v45 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[15];
  v46 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[16];
  v47 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[17];
  v48 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[18];
  v49 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[19];
  v50 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = v0[20];
  v51 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = v0[21];
  v52 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = v0[22];
  v53 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = v0[23];
  v54 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[25] = 0;
  v0[26] = 0;
  sub_29A12EF7C(v1, &v31, &v55, 0x18uLL);
  for (i = 184; i != -8; i -= 8)
  {
    v27 = *(&v31 + i);
    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v28 = 0;
  atomic_compare_exchange_strong(&qword_2A174F1F8, &v28, v0);
  if (v28)
  {
    v29 = sub_29AE543BC(v0);
    operator delete(v29);
    return atomic_load(&qword_2A174F1F8);
  }

  return v0;
}

void sub_29AE54080(_Unwind_Exception *a1)
{
  v4 = 184;
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
      v6 = v1[23];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[22];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[21];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[20];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[19];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[18];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[17];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[16];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[15];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[14];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[13];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[12];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[11];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[10];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[9];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[8];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[7];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[6];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[5];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[4];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[3];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[2];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[1];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t sub_29AE543BC(uint64_t a1)
{
  v26 = (a1 + 192);
  sub_29A124AB0(&v26);
  v2 = *(a1 + 184);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 176);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 168);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 160);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 152);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 144);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 136);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 128);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 120);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 112);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 104);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 96);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 88);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 80);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 72);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 64);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 56);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 48);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 40);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 32);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 24);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 16);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 8);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29AE54748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 + 30);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::~HdSt_MaterialNetworkShader(v15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader::~HdStGLSLFXShader(pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::~HdSt_MaterialNetworkShader(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader::~HdStGLSLFXShader(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader::Reload(uint64_t **this)
{
  sub_29AE54950(this[29], v8);
  if (pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(*v8, 0))
  {
    v3 = *v8;
    v2 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = this[30];
    this[29] = v3;
    this[30] = v2;
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v5)
    {
      v5 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSurfaceSource(this[29], &__p);
    pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::_SetSource(this, v5 + 8, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v6)
    {
      v6 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetDisplacementSource(this[29], &__p);
    pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::_SetSource(this, v6 + 7, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29AE54914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE54950@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x150uLL);
  result = sub_29AE549AC(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29AE549AC(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2092E40;
  sub_29AE54A1C(&v4, (a1 + 3), a2);
  return a1;
}

uint64_t sub_29AE54A1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v5)
  {
    v5 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  return pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(a2, a3, v5 + 14);
}

void *pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::HdStGLSLProgram(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a3;
  v4 = *a2;
  a1[1] = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc::HgiShaderProgramDesc((a1 + 2));
  a1[8] = 0;
  a1[9] = 0;
  v5 = qword_2A174F200++;
  a1[10] = v5;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::~HdStGLSLProgram(pxrInternal__aapl__pxrReserved__::HdStGLSLProgram *this)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*this);
  v3 = *(this + 5);
  v4 = *(this + 6);
  while (v3 != v4)
  {
    v7 = *v3;
    (*(*Hgi + 120))(Hgi, &v7);
    ++v3;
  }

  if (*(this + 8))
  {
    (*(*Hgi + 136))(Hgi, this + 64);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a1, uint64_t a2, uint64_t **a3)
{
  v4 = a2;
  sub_29A0ECEEC(&v29, "hdSt", "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(HgiShaderStage, const std::string &)");
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a3[1];
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = sub_29AE54EE8(v4);
  if (!v7)
  {
    *&v20 = "hdSt/glslProgram.cpp";
    *(&v20 + 1) = "CompileShader";
    v21 = 289;
    v22 = "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(HgiShaderStage, const std::string &)";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 1, "Invalid shader type %d\n", v4);
LABEL_17:
    v16 = 0;
    goto LABEL_22;
  }

  v10 = v7;
  sub_29AE54FA8(a1 + 2, v8, v9, &v26);
  v11 = std::string::insert(&v26, 0, "Compiling GLSL shader");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  *&v20 = "hdSt/glslProgram.cpp";
  *(&v20 + 1) = "CompileShader";
  v21 = 294;
  v22 = "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(HgiShaderStage, const std::string &)";
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v28, &v27, &v20);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (sub_29ADC9798(10))
  {
    sub_29AE54FFC(v10, a3);
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a1);
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v20);
  if (*(a3 + 23) >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  LODWORD(v22) = v4;
  memset(&v27, 0, sizeof(v27));
  v24 = v14;
  v25 = &v27;
  v26.__r_.__value_.__r.__words[0] = (*(*Hgi + 112))(Hgi, &v20);
  v26.__r_.__value_.__l.__size_ = v15;
  v16 = sub_29AE550A8(v26.__r_.__value_.__l.__data_, v15, v10, &v27, a1[10]);
  if (v16)
  {
    sub_29A03A998((a1 + 5), &v26);
  }

  else
  {
    (*(*Hgi + 120))(Hgi, &v26);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  sub_29AB89F90(&v20);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v28, v17, v18);
LABEL_22:
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v30, v29);
  }

  return v16;
}

const char *sub_29AE54EE8(int a1)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        return "POST_TESS_CONTROL_SHADER";
      }

      if (a1 == 128)
      {
        return "POST_TESS_VERTEX_SHADER";
      }
    }

    else
    {
      if (a1 == 16)
      {
        return "TESS_EVALUATION_SHADER";
      }

      if (a1 == 32)
      {
        return "GEOMETRY_SHADER";
      }
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      return "COMPUTE_SHADER";
    }

    if (a1 == 8)
    {
      return "TESS_CONTROL_SHADER";
    }
  }

  else
  {
    if (a1 == 1)
    {
      return "VERTEX_SHADER";
    }

    if (a1 == 2)
    {
      return "FRAGMENT_SHADER";
    }
  }

  return 0;
}

void sub_29AE54FA8(uint64_t *a1@<X0>, const char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    pxrInternal__aapl__pxrReserved__::TfStringPrintf(" (%s)", a2, a3, a1);
    return;
  }

  if (a1[1])
  {
    a1 = *a1;
    goto LABEL_6;
  }

LABEL_7:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

uint64_t sub_29AE54FFC(const char *a1, uint64_t **a2)
{
  v4 = sub_29A00911C(MEMORY[0x29EDC93C8], "--------- ", 10);
  v5 = strlen(a1);
  v6 = sub_29A00911C(v4, a1, v5);
  v7 = sub_29A00911C(v6, " ----------\n", 12);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = sub_29A00911C(v7, v9, v10);
  sub_29A00911C(v11, "---------------------------\n", 28);

  return std::ostream::flush();
}

uint64_t sub_29AE550A8(uint64_t a1, uint64_t a2, std::string *a3, std::string *a4, uint64_t a5)
{
  v75[19] = *MEMORY[0x29EDCA608];
  memset(&__p, 0, sizeof(__p));
  if (sub_29ADC9798(11) || sub_29ADC9798(9) && ((*(*a1 + 16))(a1) & 1) == 0)
  {
    sub_29A008864(&v66);
    v9 = sub_29A00911C(&v66.__r_.__value_.__r.__words[2], "program", 7);
    v10 = MEMORY[0x29C2C1F00](v9, a5);
    v11 = sub_29A00911C(v10, "_shader", 7);
    ++qword_2A174F208;
    v12 = MEMORY[0x29C2C1F00](v11);
    v13 = sub_29A00911C(v12, "_", 1);
    v14 = strlen(a3);
    v15 = sub_29A00911C(v13, a3, v14);
    sub_29A00911C(v15, ".glsl", 5);
    std::stringbuf::str();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v72;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    sub_29AE5704C(&v72, p_p, 16);
    v17 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if (v17 >= 0)
    {
      v18 = a4;
    }

    else
    {
      v18 = a4->__r_.__value_.__r.__words[0];
    }

    if (v17 >= 0)
    {
      size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    sub_29A00911C(&v72.__r_.__value_.__r.__words[2], v18, size);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v72 + *(v72.__r_.__value_.__r.__words[0] - 24)), *&v74[*(v72.__r_.__value_.__r.__words[0] - 24)] | 4);
    }

    v20 = sub_29A00911C(MEMORY[0x29EDC93C8], "Write ", 6);
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

    v23 = sub_29A00911C(v20, v21, v22);
    v24 = sub_29A00911C(v23, " (size=", 7);
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = a4->__r_.__value_.__l.__size_;
    }

    v26 = MEMORY[0x29C2C1F00](v24, v25);
    sub_29A00911C(v26, ")\n", 2);
    v72.__r_.__value_.__r.__words[0] = &unk_2A206F178;
    v75[0] = &unk_2A206F1C8;
    v72.__r_.__value_.__r.__words[2] = &unk_2A206F1A0;
    MEMORY[0x29C2C1D20](&v73);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](v75);
    v66.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9528];
    v27 = *(MEMORY[0x29EDC9528] + 72);
    *(v66.__r_.__value_.__r.__words + *(v66.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
    v66.__r_.__value_.__r.__words[2] = v27;
    v67 = MEMORY[0x29EDC9570] + 16;
    if (v69 < 0)
    {
      operator delete(v68[7].__locale_);
    }

    v67 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v68);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v70);
  }

  v28 = (*(*a1 + 16))(a1);
  if ((v28 & 1) == 0)
  {
    v29 = (*(*a1 + 24))(a1);
    if (*(v29 + 23) < 0)
    {
      sub_29A008D14(&__str, *v29, *(v29 + 8));
    }

    else
    {
      v30 = *v29;
      __str.__r_.__value_.__r.__words[2] = *(v29 + 16);
      *&__str.__r_.__value_.__l.__data_ = v30;
    }

    v31 = std::string::find(&__str, 40, 0);
    v32 = std::string::find(&__str, 41, 0);
    if (v31 == -1 || v32 == -1)
    {
      goto LABEL_91;
    }

    std::string::basic_string(&v72, &__str, v31 + 1, v32 - 1, &v66);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v72;
    }

    else
    {
      v34 = v72.__r_.__value_.__r.__words[0];
    }

    v35 = strtoul(v34, 0, 10);
    v36 = v35;
    v37 = v35 - 1;
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (v37 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_91;
    }

    v38 = v36 - 4;
    if (v36 == 4)
    {
      v39 = 0;
    }

    else
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = std::string::find(a4, 10, v39 + 1);
        v39 = v41;
        if (v40 >= v38)
        {
          break;
        }

        ++v40;
      }

      while (v41 != -1);
      if (v41 == -1)
      {
        memset(&v64, 0, sizeof(v64));
LABEL_89:
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

LABEL_91:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_)
          {
            v61 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            v61 = a3;
          }
        }

        else
        {
          v61 = &__p;
          if (!*(&__p.__r_.__value_.__s + 23))
          {
            v61 = a3;
          }
        }

        v72.__r_.__value_.__r.__words[0] = "hdSt/glslProgram.cpp";
        v72.__r_.__value_.__l.__size_ = "_ValidateCompilation";
        v72.__r_.__value_.__r.__words[2] = 212;
        v73 = "BOOL pxrInternal__aapl__pxrReserved__::_ValidateCompilation(HgiShaderFunctionHandle, const char *, const std::string &, size_t)";
        v74[0] = 0;
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v72, "Failed to compile shader (%s): %s", v33, v61, p_str);
        if (sub_29ADC9798(8))
        {
          sub_29AE54FFC(a3, a4);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_104;
      }
    }

    v42 = 0;
    v43 = v39;
    do
    {
      v44 = std::string::find(a4, 10, v43 + 1);
      v43 = v44;
      if (v42 > 1)
      {
        break;
      }

      ++v42;
    }

    while (v44 != -1);
    sub_29AE571C4(&v64, a4, v39, v44);
    v45 = std::string::find(a4, 10, v43 + 1);
    sub_29AE571C4(&v66, a4, v43 + 1, v45 - 1);
    v46 = std::string::append(&v66, " <<< ERROR!\n");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v72.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v72.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v72;
    }

    else
    {
      v48 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v64, v48, v49);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    v50 = v45 + 1;
    if (v45 == -1)
    {
      v45 = -1;
    }

    else
    {
      v51 = 0;
      do
      {
        v52 = std::string::find(a4, 10, v45 + 1);
        v45 = v52;
        if (v51 > 1)
        {
          break;
        }

        ++v51;
      }

      while (v52 != -1);
    }

    sub_29AE571C4(&v72, a4, v50, v45);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v72;
    }

    else
    {
      v53 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v64, v53, v54);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    v55 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v55 = v64.__r_.__value_.__l.__size_;
    }

    if (v55)
    {
      v56 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v56 = __str.__r_.__value_.__l.__size_;
        v57 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        v57 = &__str;
      }

      v58 = v57 + v56;
      if (!*(v58 - 1))
      {
        std::string::erase(&__str, ~v57 + v58, 1uLL);
      }

      std::string::append(&__str, "\nError Context:\n");
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v64;
      }

      else
      {
        v59 = v64.__r_.__value_.__r.__words[0];
      }

      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v64.__r_.__value_.__l.__size_;
      }

      std::string::append(&__str, v59, v60);
    }

    goto LABEL_89;
  }

LABEL_104:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v28;
}

void sub_29AE558CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(pxrInternal__aapl__pxrReserved__::HdStGLSLProgram *this, const pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a2)
{
  sub_29A0ECEEC(&v32, "hdSt", "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(const HgiShaderFunctionDesc &)");
  if (*(a2 + 5))
  {
    v4 = *(a2 + 6);
    v5 = sub_29AE54EE8(v4);
    if (v5)
    {
      v8 = v5;
      sub_29AE54FA8(this + 2, v6, v7, &v27);
      v9 = std::string::insert(&v27, 0, "Compiling GLSL shader");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v29 = v9->__r_.__value_.__r.__words[2];
      *__p = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      *&v34 = "hdSt/glslProgram.cpp";
      *(&v34 + 1) = "CompileShader";
      v35 = 344;
      v36 = "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(const HgiShaderFunctionDesc &)";
      v37 = 0;
      pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v30, __p, &v34);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (!sub_29ADC9798(10))
      {
        goto LABEL_16;
      }

      v11 = *(a2 + 6);
      v12 = sub_29A00911C(MEMORY[0x29EDC93C8], "--------- ", 10);
      v13 = sub_29AE54EE8(v11);
      v14 = strlen(v13);
      v15 = sub_29A00911C(v12, v13, v14);
      sub_29A00911C(v15, " ----------\n", 12);
      v16 = *(a2 + 4);
      if (v16)
      {
        v17 = strlen(*(a2 + 4));
      }

      else
      {
        v16 = "(shaderCodeDeclarations empty)\n";
        v17 = 31;
      }

      sub_29A00911C(MEMORY[0x29EDC93C8], v16, v17);
      v19 = *(a2 + 5);
      if (!v19)
      {
        *&v34 = "hdSt/glslProgram.cpp";
        *(&v34 + 1) = "_DumpShaderSource";
        v35 = 159;
        v36 = "void pxrInternal__aapl__pxrReserved__::_DumpShaderSource(const HgiShaderFunctionDesc &)";
        v37 = 0;
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v34, "desc.shaderCode", 0))
        {
          sub_29A00911C(MEMORY[0x29EDC93C8], "(shaderCode empty)\n", 19);
          goto LABEL_15;
        }

        v19 = *(a2 + 5);
      }

      v20 = strlen(v19);
      sub_29A00911C(MEMORY[0x29EDC93C8], v19, v20);
LABEL_15:
      sub_29A00911C(MEMORY[0x29EDC93C8], "---------------------------\n", 28);
      std::ostream::flush();
LABEL_16:
      Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*this);
      v22 = *(a2 + 6);
      *&v34 = (*(*Hgi + 112))(Hgi, a2);
      *(&v34 + 1) = v23;
      v18 = sub_29AE550A8(v34, v23, v8, v22, *(this + 10));
      if (v18)
      {
        sub_29A03A998(this + 40, &v34);
      }

      else
      {
        (*(*Hgi + 120))(Hgi, &v34);
      }

      pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v30, v24, v25);
      goto LABEL_20;
    }

    v30[0] = "hdSt/glslProgram.cpp";
    v30[1] = "CompileShader";
    v30[2] = 339;
    v30[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(const HgiShaderFunctionDesc &)";
    v31 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v30, 1, "Invalid shader type %d\n", v4);
  }

  v18 = 0;
LABEL_20:
  if (v32)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v33, v32);
  }

  return v18;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link(pxrInternal__aapl__pxrReserved__::HdStGLSLProgram *this)
{
  sub_29A0ECEEC(&v31, "hdSt", "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link()");
  if (*(this + 5) == *(this + 6))
  {
    v29[0] = "hdSt/glslProgram.cpp";
    v29[1] = "Link";
    v29[2] = 403;
    v29[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link()";
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v29, 1, "At least one shader has to be compiled before linking.");
    v13 = 0;
  }

  else
  {
    sub_29AE54FA8(this + 2, v2, v3, &v27);
    v4 = std::string::insert(&v27, 0, "Linking GLSL shader");
    v5 = *&v4->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v33.__r_.__value_.__r.__words[0] = "hdSt/glslProgram.cpp";
    v33.__r_.__value_.__l.__size_ = "Link";
    v33.__r_.__value_.__r.__words[2] = 408;
    v34 = "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link()";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v29, &__p, &v33);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*this);
    v7 = Hgi;
    v8 = (this + 64);
    if (*(this + 8))
    {
      (*(*Hgi + 136))(Hgi, this + 64);
    }

    v9 = (*(*v7 + 128))(v7, this + 16);
    *(this + 8) = v9;
    *(this + 9) = v10;
    v13 = (*(*v9 + 16))(v9);
    if ((v13 & 1) == 0)
    {
      v14 = (*(**v8 + 24))();
      v33.__r_.__value_.__r.__words[0] = "hdSt/glslProgram.cpp";
      v33.__r_.__value_.__l.__size_ = "Link";
      v33.__r_.__value_.__r.__words[2] = 421;
      v34 = "BOOL pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link()";
      v35 = 0;
      v16 = *(v14 + 23) >= 0 ? v14 : *v14;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v33, "Failed to link shader: %s", v15, v16);
      if (sub_29ADC9798(8))
      {
        memset(&__p, 0, sizeof(__p));
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("==== Source Program ID=%p\nBEGIN_DUMP\n", v11, v12, *v8);
        v17 = *v8;
        __p = v33;
        v18 = (*(*v17 + 32))(v17);
        v19 = *v18;
        v20 = *(v18 + 8);
        if (*v18 != v20)
        {
          do
          {
            Descriptor = pxrInternal__aapl__pxrReserved__::HgiShaderFunction::GetDescriptor(*v19);
            std::string::append(&__p, "--------");
            v22 = sub_29AE54EE8(*(Descriptor + 24));
            std::string::append(&__p, v22);
            std::string::append(&__p, "--------\n");
            v23 = *(Descriptor + 40);
            if (!v23)
            {
              v33.__r_.__value_.__r.__words[0] = "hdSt/glslProgram.cpp";
              v33.__r_.__value_.__l.__size_ = "_DebugLinkSource";
              v33.__r_.__value_.__r.__words[2] = 384;
              v34 = "std::string pxrInternal__aapl__pxrReserved__::_DebugLinkSource(const HgiShaderProgramHandle &)";
              v35 = 0;
              if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v33, "desc.shaderCode", 0))
              {
                std::string::append(&__p, "(shaderCode empty)\n");
                goto LABEL_16;
              }

              v23 = *(Descriptor + 40);
            }

            std::string::append(&__p, v23);
LABEL_16:
            v19 += 2;
          }

          while (v19 != v20);
        }

        std::string::append(&__p, "END DUMP\n");
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
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        sub_29A00911C(MEMORY[0x29EDC93C8], p_p, size);
        std::ostream::flush();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v29, v11, v12);
  }

  if (v31)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v32, v31);
  }

  return v13;
}

void sub_29AE560F0(_Unwind_Exception *a1, uint64_t a2, char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a23, a2, a3);
  sub_29A0E9CEC(v23 - 144);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Validate(pxrInternal__aapl__pxrReserved__::HdStGLSLProgram *this)
{
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(pxrInternal__aapl__pxrReserved__::HdStGLSLProgram *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *x8_0@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdStPackageComputeShader(&v7);
  pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(&v7, this, a2, x8_0);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(pxrInternal__aapl__pxrReserved__::HdStGLSLProgram *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v49 = a3;
  __p[0] = 0;
  __p[1] = 0;
  v41 = 0;
  v8 = sub_29AE567A0(a2, __p);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
    v4 = v49;
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGLSLProgram(v44, v4, v8);
  if (v48 != 1)
  {
    if (sub_29ADC9798(12))
    {
      v15 = *this & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(HIT) Found compute program instance for %s (hash = %zu)\n", v13, v14, v16, v8);
    }

    goto LABEL_33;
  }

  if (sub_29ADC9798(13))
  {
    v11 = *this & 0xFFFFFFFFFFFFFFF8;
    if (v11)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(MISS) First compute program instance for %s (hash = %zu)\n", v9, v10, v12, v8);
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v18 = sub_29AE57218(v17 + 13, &v49, &v42);
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v20)
  {
    v20 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(__p, EmptyString, v20 + 14);
  memset(&v39, 0, sizeof(v39));
  IsValid = pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(__p, &v39);
  if ((IsValid & 1) == 0)
  {
    v36.__r_.__value_.__r.__words[0] = "hdSt/glslProgram.cpp";
    v36.__r_.__value_.__l.__size_ = "GetComputeProgram";
    v36.__r_.__value_.__r.__words[2] = 477;
    v37 = "static HdStGLSLProgramSharedPtr pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(const TfToken &, const TfToken &, HdStResourceRegistry *)";
    v38 = 0;
    if ((*this & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsValid);
    }

    std::operator+<char>();
    v26 = std::string::append(&v33, ": ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v39;
    }

    else
    {
      v28 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v34, v28, size);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v36, 1, &v35);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    v32 = v33.__r_.__value_.__r.__words[0];
    goto LABEL_55;
  }

  v22 = v42;
  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(__p, a2, &v36);
  v23 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v22, 4, &v36);
  v24 = v23;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if (v24)
    {
LABEL_24:
      v23 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link(v42);
      if (v23)
      {
        sub_29ADCA55C(v44, &v42);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        sub_29ADC1D14(__p);
        if (v43)
        {
          sub_29A014BEC(v43);
        }

LABEL_33:
        v25 = v45;
        *a4 = v44[1];
        a4[1] = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_60;
      }

      v36.__r_.__value_.__r.__words[0] = "hdSt/glslProgram.cpp";
      v36.__r_.__value_.__l.__size_ = "GetComputeProgram";
      v36.__r_.__value_.__r.__words[2] = 486;
      v37 = "static HdStGLSLProgramSharedPtr pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(const TfToken &, const TfToken &, HdStResourceRegistry *)";
      v38 = 0;
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }
  }

  else if (v23)
  {
    goto LABEL_24;
  }

  v36.__r_.__value_.__r.__words[0] = "hdSt/glslProgram.cpp";
  v36.__r_.__value_.__l.__size_ = "GetComputeProgram";
  v36.__r_.__value_.__r.__words[2] = 482;
  v37 = "static HdStGLSLProgramSharedPtr pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(const TfToken &, const TfToken &, HdStResourceRegistry *)";
  v38 = 0;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
LABEL_52:
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
  }

LABEL_53:
  std::operator+<char>();
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v36, 1, &v35);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v32 = v35.__r_.__value_.__r.__words[0];
LABEL_55:
    operator delete(v32);
  }

LABEL_56:
  *a4 = 0;
  a4[1] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  sub_29ADC1D14(__p);
  if (v43)
  {
    sub_29A014BEC(v43);
  }

LABEL_60:
  if (v47 == 1)
  {
    std::mutex::unlock(v46);
  }

  if (v45)
  {
    sub_29A014BEC(v45);
  }
}

void sub_29AE566B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_29ADC1D14(&a45);
  v47 = *(v45 - 120);
  if (v47)
  {
    sub_29A014BEC(v47);
  }

  sub_29ADCA62C(v45 - 112);
  _Unwind_Resume(a1);
}

void sub_29AE56788(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29AE56780);
}

uint64_t sub_29AE567A0(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v4 = EmptyString[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = EmptyString;
    EmptyString = *EmptyString;
    v4 = *(v5 + 1);
  }

  v6 = pxrInternal__aapl__pxrReserved__::ArchHash(EmptyString, v4, 0);
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

  return pxrInternal__aapl__pxrReserved__::ArchHash(v8, v9, v6);
}

void pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(pxrInternal__aapl__pxrReserved__ *a1@<X0>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  sub_29AE572DC(v9, a3);
  pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(a1, __p, a2, v9, a4);
  sub_29ADEC314(v9);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AE568B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_29ADEC314(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram@<X0>(pxrInternal__aapl__pxrReserved__ *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdStPackageComputeShader(&v11);
  sub_29AE572DC(v12, a4);
  pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(&v11, a1, a2, a3, v12, a5);
  result = sub_29ADEC314(v12);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AE569A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ADEC314(va);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X2>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v64 = a4;
  v12 = sub_29AE567A0(a2, a3);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGLSLProgram(v59, a4, v12);
  if (v63 != 1)
  {
    if (sub_29ADC9798(12))
    {
      v20 = *a1 & 0xFFFFFFFFFFFFFFF8;
      if (v20)
      {
        v21 = (v20 + 16);
        if (*(v20 + 39) < 0)
        {
          v21 = *v21;
        }
      }

      else
      {
        v21 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(HIT) Found compute program instance for %s (hash = %zu)\n", v18, v19, v21, v12);
    }

    goto LABEL_69;
  }

  v13 = sub_29ADC9798(13);
  if (v13)
  {
    v16 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v16)
    {
      v17 = (v16 + 16);
      if (*(v16 + 39) < 0)
      {
        v17 = *v17;
      }
    }

    else
    {
      v17 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(MISS) First compute program instance for %s (hash = %zu)\n", v14, v15, v17, v12);
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v23)
  {
    v23 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v58, EmptyString, v23 + 14);
  memset(&__p, 0, sizeof(__p));
  IsValid = pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(v58, &__p);
  if (IsValid)
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v64);
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v51);
    v26 = *(a5 + 24);
    if (!v26)
    {
      sub_29A0DDCB0();
    }

    (*(*v26 + 48))(v26, v51);
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(v58, a2, &v45);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = std::string::insert(&v45, 0, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    v32 = &v56;
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = v56.__r_.__value_.__r.__words[0];
    }

    memset(&v55, 0, sizeof(v55));
    v53 = v32;
    v54 = &v55;
    *&v50 = (*(*Hgi + 112))(Hgi, v51);
    *(&v50 + 1) = v33;
    if (sub_29AE550A8(v50, v33, "GL_COMPUTE_SHADER", &v55, 0))
    {
      v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v34)
      {
        v34 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AE57218(v34 + 13, &v64, &v48);
      sub_29A03A998(v48 + 40, &v50);
      v35 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link(v48);
      v36 = v35;
      if (v35)
      {
        sub_29ADCA55C(v59, &v48);
      }

      else
      {
        v45.__r_.__value_.__r.__words[0] = "hdSt/glslProgram.cpp";
        v45.__r_.__value_.__l.__size_ = "GetComputeProgram";
        v45.__r_.__value_.__r.__words[2] = 581;
        v46 = "static HdStGLSLProgramSharedPtr pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(const TfToken &, const TfToken &, const std::string &, HdStResourceRegistry *, PopulateDescriptorCallback)";
        v47 = 0;
        if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
        }

        std::operator+<char>();
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v45, 1, &v44);
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        *a6 = 0;
        a6[1] = 0;
      }

      if (v49)
      {
        sub_29A014BEC(v49);
      }
    }

    else
    {
      (*(*Hgi + 120))(Hgi, &v50);
      v36 = 0;
      *a6 = 0;
      a6[1] = 0;
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    sub_29AB89F90(v51);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29ADC1D14(v58);
    if (v36)
    {
LABEL_69:
      v43 = v60;
      *a6 = v59[1];
      a6[1] = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }
  }

  else
  {
    v51[0] = "hdSt/glslProgram.cpp";
    v51[1] = "GetComputeProgram";
    v51[2] = 549;
    v51[3] = "static HdStGLSLProgramSharedPtr pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(const TfToken &, const TfToken &, const std::string &, HdStResourceRegistry *, PopulateDescriptorCallback)";
    v52 = 0;
    if ((*a1 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsValid);
    }

    std::operator+<char>();
    v37 = std::string::append(&v55, ": ");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v41 = std::string::append(&v56, p_p, size);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v51, 1, &v45);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    *a6 = 0;
    a6[1] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29ADC1D14(v58);
  }

  if (v62 == 1)
  {
    std::mutex::unlock(v61);
  }

  if (v60)
  {
    sub_29A014BEC(v60);
  }
}

void sub_29AE56F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_29A014BEC(a24);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_29AB89F90(&a27);
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  sub_29ADC1D14(&STACK[0x238]);
  sub_29ADCA62C(v66 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE5704C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 480) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_2A206F1A0;
  *a1 = &unk_2A206F2B8;
  *(a1 + 432) = &unk_2A206F2E0;
  std::ios_base::init((a1 + 432), (a1 + 24));
  *(a1 + 568) = 0;
  *(a1 + 576) = -1;
  *a1 = &unk_2A206F178;
  *(a1 + 432) = &unk_2A206F1C8;
  *(a1 + 16) = &unk_2A206F1A0;
  MEMORY[0x29C2C1D10](a1 + 24);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_29AE57184(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v1);
  _Unwind_Resume(a1);
}

std::string *sub_29AE571C4@<X0>(std::string *__return_ptr a1@<X8>, std::string *__str@<X0>, std::string::size_type __pos@<X1>, uint64_t a4@<X2>)
{
  if (a4 == -1)
  {
    v5 = &v8;
    v6 = __pos;
    v4 = -1;
  }

  else
  {
    v4 = a4 - __pos + 1;
    v5 = &v9;
    v6 = __pos;
  }

  return std::string::basic_string(a1, __str, v6, v4, v5);
}

void *sub_29AE57218@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x70uLL);
  result = sub_29AE5727C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AE5727C(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2092BA8;
  pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::HdStGLSLProgram(a1 + 3, a2, *a3);
  return a1;
}

uint64_t sub_29AE572DC(uint64_t a1, uint64_t a2)
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

void pxrInternal__aapl__pxrReserved__::_CreateVtValue(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char **a6@<X5>, void *a7@<X8>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  switch(a1)
  {
    case 2:

      sub_29AE57B84(a2, a3, a4, a5, a6, a7);
    case 3:

      sub_29AE57858(a2, a3, a4, a5, a6, a7);
    case 4:

      sub_29AE579F0(a2, a3, a4, a5, a6, a7);
    case 5:

      sub_29AE57EAC(a2, a3, a4, a5, a6, a7);
    case 6:

      sub_29AE58040(a2, a3, a4, a5, a6, a7);
    case 7:

      sub_29AE581D4(a2, a3, a4, a5, a6, a7);
    case 8:

      sub_29AE58374(a2, a3, a4, a5, a6, a7);
    case 9:

      sub_29AE57D18(a2, a3, a4, a5, a6, a7);
    case 13:

      sub_29AE58508(a2, a3, a4, a5, a6, a7);
    case 14:

      sub_29AE5869C(a2, a3, a4, a5, a6, a7);
    case 15:

      sub_29AE58830(a2, a3, a4, a5, a6, a7);
    case 16:

      sub_29AE589D0(a2, a3, a4, a5, a6, a7);
    case 18:

      sub_29AE58B64(a2, a3, a4, a5, a6, a6, a8, a9, a7);
    case 19:

      sub_29AE58CF8(a2, a3, a4, a5, a6, a7);
    case 20:

      sub_29AE58E8C(a2, a3, a4, a5, a6, a7);
    case 21:

      sub_29AE59020(a2, a3, a4, a5, a6, a7);
    case 22:

      sub_29AE591C0(a2, a3, a4, a5, a6, a7);
    case 24:

      sub_29AE59354(a2, a3, a4, a5, a6, a6, a8, a9, a7);
    default:
      v10[0] = "hdSt/bufferUtils.cpp";
      v10[1] = "_CreateVtValue";
      v10[2] = 122;
      v10[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtValue(HdType, int, int, int, int, const std::vector<unsigned char> &)";
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Unhandled data type %i", a1);
      a7[1] = 0;
      return;
  }
}

void sub_29AE57858(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29AC82B6C(v19, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29AC830F0(v19);
    v14 = __dst;
    if (a5[1] - *a5 != (v10 - 1) * a3 + a2)
    {
      v17[0] = "hdSt/bufferUtils.cpp";
      v17[1] = "_CreateVtArray";
      v17[2] = 47;
      v17[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = char]";
      v18 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v17, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (a3 == a2)
    {
      memcpy(v14, v13, v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v15 = a4;
      }

      else
      {
        v15 = a3;
      }

      v16 = v15;
      do
      {
        memcpy(v14, v13, a2);
        v14 += a2;
        v13 += v16;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A207D888;
    sub_29A18ECC8(a6, v19);
  }

  else
  {
    a6[1] = &off_2A207D888;
    sub_29A18ECC8(a6, v19);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
}

void sub_29AE579F0(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29AC83134(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29AC83A44(v20);
    v14 = __dst;
    v15 = 2 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = short]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 2 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A207D940;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A207D940;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
}

void sub_29AE57B84(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A19BBD0(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A19C344(v20);
    v14 = __dst;
    v15 = 2 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = unsigned short]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 2 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2043BA8;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2043BA8;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

void sub_29AE57D18(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A19C954(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A19CEF8(v20);
    v14 = __dst;
    v15 = 4 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = unsigned int]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 4 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2043C60;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2043C60;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29AE57EAC(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A19D6E4(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A19DBEC(v20);
    v14 = __dst;
    v15 = 4 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = int]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 4 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2043D18;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2043D18;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AE58040(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A219F48(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A21A6E8(v20);
    v14 = __dst;
    v15 = 8 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 8 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2047FA0;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2047FA0;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29AE581D4(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A21BE0C(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A21C6E0(v20);
    v14 = __dst;
    if (a5[1] - *a5 != (v10 - 1) * a3 + 12 * a2)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    v15 = 12 * a2;
    if (v15 == a3)
    {
      memcpy(v14, v13, 12 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2048110;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2048110;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29AE58374(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A21DF14(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A21E784(v20);
    v14 = __dst;
    v15 = 16 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 16 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2048280;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2048280;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29AE58508(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A18E048(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A18E624(v20);
    v14 = __dst;
    v15 = 4 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = float]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 4 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2042F70;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2042F70;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AE5869C(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A190B18(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A190F50(v20);
    v14 = __dst;
    v15 = 8 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 8 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2043198;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2043198;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29AE58830(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A193124(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A1935CC(v20);
    v14 = __dst;
    if (a5[1] - *a5 != (v10 - 1) * a3 + 12 * a2)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    v15 = 12 * a2;
    if (v15 == a3)
    {
      memcpy(v14, v13, 12 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A20433C0;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A20433C0;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AE589D0(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A195790(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A195BC4(v20);
    v14 = __dst;
    v15 = 16 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 16 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A20435E8;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A20435E8;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29AE58B64(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v10 = a4;
  v11 = a3;
  v13 = a1;
  v15 = a2 * a1;
  sub_29A198988(v23, v15, a3, a4, a5, a6, a7, a8);
  if (v13)
  {
    v16 = *a5;
    sub_29A198DC8(v23);
    v17 = __dst;
    v18 = a2 << 6;
    if (a5[1] - *a5 != v18 + (v13 - 1) * v11)
    {
      v21[0] = "hdSt/bufferUtils.cpp";
      v21[1] = "_CreateVtArray";
      v21[2] = 47;
      v21[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4f]";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v21, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v18 == v11)
    {
      memcpy(v17, v16, v15 << 6);
    }

    else if (v13 >= 1)
    {
      if (v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = v11;
      }

      v20 = v19;
      do
      {
        memcpy(v17, v16, v18);
        v17 += v18;
        v16 += v20;
        --v13;
      }

      while (v13);
    }

    a9[1] = &off_2A20438C8;
    sub_29A18ECC8(a9, v23);
  }

  else
  {
    a9[1] = &off_2A20438C8;
    sub_29A18ECC8(a9, v23);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

void sub_29AE58CF8(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A18FC40(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A190088(v20);
    v14 = __dst;
    v15 = 8 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = double]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 8 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A20430E0;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A20430E0;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AE58E8C(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v10 = a1;
  v12 = a2 * a1;
  sub_29A1921FC(v20, v12);
  if (v10)
  {
    v13 = *a5;
    sub_29A19255C(v20);
    v14 = __dst;
    v15 = 16 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * a3)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == a3)
    {
      memcpy(v14, v13, 16 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = a3;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2043308;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2043308;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29AE59020(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, char **a5@<X4>, void *a6@<X8>)
{
  v8 = a3;
  v10 = a1;
  v12 = a2 * a1;
  sub_29A1948F8(v20, v12, a3);
  if (v10)
  {
    v13 = *a5;
    sub_29A194CC8(v20);
    v14 = __dst;
    if (a5[1] - *a5 != (v10 - 1) * v8 + 24 * a2)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    v15 = 24 * a2;
    if (v15 == v8)
    {
      memcpy(v14, v13, 24 * v12);
    }

    else if (v10 >= 1)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2043530;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2043530;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29AE591C0(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, void *a6@<X8>)
{
  v7 = a4;
  v8 = a3;
  v10 = a1;
  v12 = a2 * a1;
  sub_29A196EB8(v20, v12, a3, a4);
  if (v10)
  {
    v13 = *a5;
    sub_29A19722C(v20);
    v14 = __dst;
    v15 = 32 * a2;
    if (a5[1] - *a5 != v15 + (v10 - 1) * v8)
    {
      v18[0] = "hdSt/bufferUtils.cpp";
      v18[1] = "_CreateVtArray";
      v18[2] = 47;
      v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v15 == v8)
    {
      memcpy(v14, v13, 32 * v12);
    }

    else if (v10 >= 1)
    {
      if (v7)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16;
      do
      {
        memcpy(v14, v13, v15);
        v14 += v15;
        v13 += v17;
        --v10;
      }

      while (v10);
    }

    a6[1] = &off_2A2043758;
    sub_29A18ECC8(a6, v20);
  }

  else
  {
    a6[1] = &off_2A2043758;
    sub_29A18ECC8(a6, v20);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29AE59354(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v10 = a4;
  v11 = a3;
  v13 = a1;
  v15 = a2 * a1;
  sub_29A197D6C(v23, v15, a3, a4, a5, a6, a7, a8);
  if (v13)
  {
    v16 = *a5;
    sub_29A198240(v23);
    v17 = __dst;
    v18 = a2 << 7;
    if (a5[1] - *a5 != v18 + (v13 - 1) * v11)
    {
      v21[0] = "hdSt/bufferUtils.cpp";
      v21[1] = "_CreateVtArray";
      v21[2] = 47;
      v21[3] = "VtValue pxrInternal__aapl__pxrReserved__::_CreateVtArray(int, int, int, int, const std::vector<unsigned char> &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v21, "data.size() == stride*(numElements-1) + arraySize*sizeof(T)", 0);
    }

    if (v18 == v11)
    {
      memcpy(v17, v16, v15 << 7);
    }

    else if (v13 >= 1)
    {
      if (v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = v11;
      }

      v20 = v19;
      do
      {
        memcpy(v17, v16, v18);
        v17 += v18;
        v16 += v20;
        --v13;
      }

      while (v13);
    }

    a9[1] = &off_2A2043810;
    sub_29A18ECC8(a9, v23);
  }

  else
  {
    a9[1] = &off_2A2043810;
    sub_29A18ECC8(a9, v23);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdStReadBuffer(__int128 *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a8@<X7>, void *a9@<X8>)
{
  LODWORD(v12) = a5;
  v18 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(a2, a3);
  v19 = v18;
  if (v12)
  {
    v12 = v12;
  }

  else
  {
    v12 = v18;
  }

  if (v12 < v18)
  {
    sub_29B2CA1F4(&v25);
  }

  v20 = v19 + v12 * (a6 - 1);
  sub_29A0104F4(__p, v20);
  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(a8, 1);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitComputeWork(a8, 1);
    v28 = __p[0];
    v29 = 0;
    v25 = *a1;
    v26 = a4;
    v27 = v20;
    GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(a8);
    (*(*GlobalBlitCmds + 72))(GlobalBlitCmds, &v25);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(a8, 1);
  }

  else
  {
    *&v25 = "hdSt/bufferUtils.cpp";
    *(&v25 + 1) = "HdStReadBuffer";
    v26 = 162;
    v27 = "VtValue pxrInternal__aapl__pxrReserved__::HdStReadBuffer(const HgiBufferHandle &, HdTupleType, int, int, int, int, HdStResourceRegistry *)";
    LOBYTE(v28) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v25, "Cannot read from invalid buffer handle", v21);
  }

  pxrInternal__aapl__pxrReserved__::_CreateVtValue(a2, a6, a3, v12, a7, __p, a9, v23, v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_29AE59694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStBufferRelocator::AddRange(pxrInternal__aapl__pxrReserved__::HdStBufferRelocator *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v6 = a2;
  *(&v6 + 1) = a3;
  v7 = a4;
  v4 = *(this + 1);
  if (*this != v4 && (v5 = *(v4 - 8), v5 + *(v4 - 24) == a2) && *(v4 - 16) + v5 == a3)
  {
    *(v4 - 8) = v5 + a4;
  }

  else
  {
    sub_29A132438(this, &v6);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStBufferRelocator::Commit(pxrInternal__aapl__pxrReserved__::HdStBufferRelocator *this, pxrInternal__aapl__pxrReserved__::HgiBlitCmds *a2, char *a3)
{
  v17 = 0;
  v14 = *(this + 24);
  v15 = 0u;
  v16 = *(this + 40);
  v4 = *(this + 1);
  v12 = *this;
  v13 = v4;
  while (v12 != v13)
  {
    *&v15 = **sub_29AE59860(&v12, a2, a3);
    *(&v15 + 1) = *(*sub_29AE59860(&v12, v6, v7) + 16);
    v17 = *(*sub_29AE59860(&v12, v8, v9) + 8);
    (*(*a2 + 56))(a2, &v14);
    sub_29AE59898(&v12);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
  if (!v11)
  {
    v11 = sub_29ADCD5DC(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(v10, v11, (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3)));
  *(this + 1) = *this;
}

void *sub_29AE59860(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B2CA240(result, a2, a3);
  }

  return result;
}

void *sub_29AE59898(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::HdStBufferRelocator::_CopyUnit>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::HdStBufferRelocator::_CopyUnit>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiFormat(unsigned int a1)
{
  if (a1 < 0x1D)
  {
    v1 = dword_29B70FC94[2 * a1 + 1];
    if ((a1 & 0x1B) == 2)
    {
      sub_29B2CA29C();
    }
  }

  else
  {
    v3[0] = "hdSt/hgiConversions.cpp";
    v3[1] = "GetHgiFormat";
    v3[2] = 291;
    v3[3] = "static HgiFormat pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiFormat(const HdFormat)";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Unexpected HdFormat %d", a1);
    return 0xFFFFFFFFLL;
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiVertexFormat(unsigned int a1)
{
  if (a1 < 0x1E)
  {
    v1 = dword_29B70FD7C[2 * a1 + 1];
    if ((0x1FE1E0BuLL >> a1))
    {
      sub_29B2CA2F4();
    }
  }

  else
  {
    v3[0] = "hdSt/hgiConversions.cpp";
    v3[1] = "GetHgiVertexFormat";
    v3[2] = 308;
    v3[3] = "static HgiFormat pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiVertexFormat(const HdType)";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Unexpected HdType %d", a1);
    return 0xFFFFFFFFLL;
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiSamplerAddressMode(unsigned int a1)
{
  if (a1 < 6)
  {
    return dword_29B70FE6C[2 * a1 + 1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "hdSt/hgiConversions.cpp";
  v4[1] = "GetHgiSamplerAddressMode";
  v4[2] = 325;
  v4[3] = "static HgiSamplerAddressMode pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiSamplerAddressMode(const HdWrap)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unexpected HdWrap %d", a1);
  return 4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiMagFilter(unsigned int a1)
{
  if (a1 < 2)
  {
    return dword_29B70FE9C[2 * a1 + 1];
  }

  v3[0] = "hdSt/hgiConversions.cpp";
  v3[1] = "GetHgiMagFilter";
  v3[2] = 336;
  v3[3] = "static HgiSamplerFilter pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiMagFilter(const HdMagFilter)";
  v4 = 0;
  v1 = 1;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Unexpected HdMagFilter %d", a1);
  return v1;
}

void pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiMinAndMipFilter(unsigned int a1, _DWORD *a2, _DWORD *a3)
{
  if (a1 >= 6)
  {
    v8[0] = "hdSt/hgiConversions.cpp";
    v8[1] = "GetHgiMinAndMipFilter";
    v8[2] = 349;
    v8[3] = "static void pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiMinAndMipFilter(const HdMinFilter, HgiSamplerFilter *const, HgiMipFilter *const)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Unexpected HdMinFilter %d", a1);
  }

  v6 = &unk_29B70FEAC + 12 * a1;
  v7 = *(v6 + 1);
  LODWORD(v6) = *(v6 + 2);
  *a2 = v7;
  *a3 = v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiBorderColor(unsigned int a1)
{
  if (a1 < 3)
  {
    return dword_29B70FEF4[2 * a1 + 1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "hdSt/hgiConversions.cpp";
  v4[1] = "GetHgiBorderColor";
  v4[2] = 361;
  v4[3] = "static HgiBorderColor pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiBorderColor(HdBorderColor)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unexpected HdBorderColor %d", a1);
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiCompareFunction(unsigned int a1)
{
  if (a1 < 8)
  {
    return dword_29B70FF0C[2 * a1 + 1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "hdSt/hgiConversions.cpp";
  v4[1] = "GetHgiCompareFunction";
  v4[2] = 373;
  v4[3] = "static HgiCompareFunction pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiCompareFunction(HdCompareFunction)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unexpected HdCompareFunction %d", a1);
  return 7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiStencilOp(unsigned int a1)
{
  if (a1 < 8)
  {
    return dword_29B70FF4C[2 * a1 + 1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "hdSt/hgiConversions.cpp";
  v4[1] = "GetHgiStencilOp";
  v4[2] = 384;
  v4[3] = "static HgiStencilOp pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiStencilOp(HdStencilOp)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unexpected HdStencilOp %d", a1);
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHioConversions::GetHioFormat(unsigned int a1)
{
  if (a1 < 0x1D)
  {
    return *(&unk_29B70FF8C + 2 * a1 + 1);
  }

  v7 = v1;
  v8 = v2;
  v4[0] = "hdSt/hioConversions.cpp";
  v4[1] = "GetHioFormat";
  v4[2] = 64;
  v4[3] = "static HioFormat pxrInternal__aapl__pxrReserved__::HdStHioConversions::GetHioFormat(HdFormat)";
  v5 = 0;
  v6 = 1;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v4, "Unexpected HdFormat %d", a1);
  return 0xFFFFFFFFLL;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStHioConversions::GetHdFormat(unsigned int a1)
{
  if (a1 <= 0x2D)
  {
    v1 = &dword_29B70FF90;
    v2 = 29;
    while (*v1 != a1)
    {
      v1 += 2;
      if (!--v2)
      {
        v4 = "hdSt/hioConversions.cpp";
        v5 = "GetHdFormat";
        v6 = 84;
        v7 = "static HdFormat pxrInternal__aapl__pxrReserved__::HdStHioConversions::GetHdFormat(HioFormat)";
        v8 = 0;
        v9 = 1;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(&v4, "Unmapped HioFormat %d");
        return 0xFFFFFFFFLL;
      }
    }

    return *(v1 - 1);
  }

  else
  {
    v4 = "hdSt/hioConversions.cpp";
    v5 = "GetHdFormat";
    v6 = 74;
    v7 = "static HdFormat pxrInternal__aapl__pxrReserved__::HdStHioConversions::GetHdFormat(HioFormat)";
    v8 = 0;
    v9 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(&v4, "Unexpected HioFormat %d");
    return 0xFFFFFFFFLL;
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::HdSt_ImageShaderRenderPass(pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdRenderPass::HdRenderPass(this, a2, a3);
  *v4 = &unk_2A2097C80;
  v5 = v4 + 120;
  sub_29AE5AB10(v4 + 120, 1);
  pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(this + 496, v5);
  pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::HdStDrawItemInstance(this + 576, (this + 496));
  *(this + 114) = 0;
  *(this + 76) = 0;
  *(this + 78) = 0;
  *(this + 77) = 0;
  sub_29A008E78(__p, "/imageShaderRenderPass");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v7, __p);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AE5A078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  v21 = v16[77];
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::~HdStDrawItemInstance(v18);
  pxrInternal__aapl__pxrReserved__::HdStDrawItem::~HdStDrawItem((v16 + 62));
  sub_29AE5A108(v17);
  pxrInternal__aapl__pxrReserved__::HdRenderPass::~HdRenderPass(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE5A108(uint64_t a1)
{
  v3 = (a1 + 352);
  sub_29ACB596C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 348));
  sub_29A1DE3A4((a1 + 344));
  v3 = a1;
  sub_29A0176E4(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::~HdSt_ImageShaderRenderPass(pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass *this)
{
  v2 = *(this + 77);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::~HdStDrawItemInstance((this + 576));
  pxrInternal__aapl__pxrReserved__::HdStDrawItem::~HdStDrawItem((this + 496));
  v3 = (this + 472);
  sub_29ACB596C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 117);
  sub_29A1DE3A4(this + 116);
  v3 = (this + 120);
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::HdRenderPass::~HdRenderPass(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::~HdSt_ImageShaderRenderPass(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::_SetupVertexPrimvarBAR(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v2)
  {
    v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29A193124(v7, 3uLL);
  v11[1] = &off_2A20433C0;
  v3 = operator new(0x30uLL);
  v4 = v7[1];
  *v3 = v7[0];
  *(v3 + 1) = v4;
  v5 = v8;
  *(v3 + 4) = v8;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(v3 + 3))
    {
      v6 = *(v3 + 3);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v3 + 10);
  v11[0] = v3;
  atomic_fetch_add_explicit(v3 + 10, 1u, memory_order_relaxed);
  sub_29AD9CD3C((v2 + 472), v11, &v9);
  v12 = v9;
  v9 = 0uLL;
  memset(v10, 0, sizeof(v10));
  sub_29AD9CF88(v10, &v12, v13, 1uLL);
  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }

  sub_29A186B14(v11);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::SetupFullscreenTriangleDrawItem(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this)
{
  sub_29A0ECEEC(&v12, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::SetupFullscreenTriangleDrawItem()");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&lpsrc, this[1]);
  {
    v3 = v6;
    v10 = v2;
    v11 = v6;
    v4 = 0;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
    v10 = 0;
    v11 = 0;
    v4 = 1;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v4)
  {
    lpsrc = "hdSt/imageShaderRenderPass.cpp";
    v6 = "SetupFullscreenTriangleDrawItem";
    v7 = 111;
    v8 = "void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::SetupFullscreenTriangleDrawItem()";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&lpsrc, "resourceRegistry", 0);
  }

  if (!*pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get((this + 15), *(this + 509)))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::_SetupVertexPrimvarBAR(this, &v10);
  }

  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }
}

void sub_29AE5A650(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29A0E9CEC(v2 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::_Execute(uint64_t a1, uint64_t a2)
{
  sub_29A0ECEEC(&v29, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::_Execute(const HdRenderPassStateSharedPtr &, const TfTokenVector &)");
  {
    v5 = *(a2 + 8);
    v27 = v4;
    v28 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
    lpsrc = "hdSt/imageShaderRenderPass.cpp";
    v17 = "_Execute";
    v18 = 140;
    v19 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::_Execute(const HdRenderPassStateSharedPtr &, const TfTokenVector &)";
    v20 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&lpsrc, "stRenderPassState", 0) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&lpsrc, *(a1 + 8));
  {
    v25 = v6;
    v26 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v25 = 0;
    v26 = 0;
  }

  if (v17)
  {
    sub_29A014BEC(v17);
    v6 = v25;
  }

  if (!v6)
  {
    lpsrc = "hdSt/imageShaderRenderPass.cpp";
    v17 = "_Execute";
    v18 = 145;
    v19 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::_Execute(const HdRenderPassStateSharedPtr &, const TfTokenVector &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&lpsrc, "resourceRegistry", 0);
  }

  (*(**(a1 + 608) + 24))(*(a1 + 608), 0, &v27, &v25);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::MakeGraphicsCmdsDesc(&lpsrc, v27, *(a1 + 8));
  (*(**(a1 + 624) + 24))(&v15);
  v7 = v15;
  if (!v15)
  {
    v10 = "hdSt/imageShaderRenderPass.cpp";
    v11 = "_Execute";
    v12 = 153;
    v13 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::_Execute(const HdRenderPassStateSharedPtr &, const TfTokenVector &)";
    v14 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "gfxCmds", 0))
    {
      goto LABEL_17;
    }

    v7 = v15;
  }

  (*(*v7 + 24))(v7, "virtual void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::_Execute(const HdRenderPassStateSharedPtr &, const TfTokenVector &)");
  v10 = 0;
  v11 = 0;
  v10 = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ComputeViewport(v27);
  v11 = v8;
  (*(*v15 + 40))(v15, &v10);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ApplyStateFromCamera(v27);
  (*(**(a1 + 608) + 40))(*(a1 + 608), v15, &v27, &v25, 1);
  (*(*v15 + 32))(v15);
  pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(*(a1 + 624), v15, 0);
LABEL_17:
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (lpsrc)
  {
    v17 = lpsrc;
    operator delete(lpsrc);
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

LABEL_27:
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v30, v29);
  }
}

void sub_29AE5AA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_29AB905FC(va);
  v17 = *(v15 - 72);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = *(v15 - 56);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  sub_29A0E9CEC(v15 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE5AB10(uint64_t a1, int a2)
{
  v3 = sub_29ACB58EC(a1, a2);
  sub_29A12D048((v3 + 3));
  *(a1 + 336) = 0;
  *(a1 + 340) = 1;
  *(a1 + 344) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 344));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 348));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  return a1;
}

void sub_29AE5AB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void *sub_29AE5AB94@<X0>(pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance **a1@<X1>, char *a2@<X2>, char *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x210uLL);
  result = sub_29AE5AC08(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE5AC08(void *a1, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance **a2, char *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096958;
  pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::HdSt_PipelineDrawBatch((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void *sub_29AE5AC70@<X0>(pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance **a1@<X1>, char *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x1D8uLL);
  result = sub_29AE5ACD4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AE5ACD4(void *a1, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance **a2, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20969A8;
  pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::HdSt_IndirectDrawBatch((a1 + 3), *a2, *a3, 0);
  return a1;
}

void sub_29AE5AD40()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
  if (!v0)
  {
    v0 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
  }

  sub_29ABCCFA4(v0, __p);
  v14 = *__p;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v1)
  {
    v1 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v2)
  {
    v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v1 + 14, &v14, v2 + 3, &v14, v3 + 2, &v14, v4 + 4, &v14, __p, v5, &v14, v6 + 12, &v14);
  v12 = __p[0];
  v13 = __p[1];
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(v7);
  sub_29A008E78(__p, "GL");
  v9 = atomic_load(&qword_2A174F210);
  if (!v9)
  {
    v9 = sub_29AE5B198();
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, __p, v9, &v12, 0, 0);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }
}

void sub_29AE5AF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  v23 = *(v21 - 56);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ImplicitSurfaceSceneIndexPlugin::HdSt_ImplicitSurfaceSceneIndexPlugin(void *this)
{
  *this = &unk_2A2097CD8;
  return this;
}

{
  *this = &unk_2A2097CD8;
  return this;
}

void sub_29AE5AFE4(pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin *a1)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(a1);

  operator delete(v1);
}

uint64_t sub_29AE5B00C()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1704;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_ImplicitSurfaceSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29AE5B0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_ImplicitSurfaceSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_ImplicitSurfaceSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A2097CD8;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

void *sub_29AE5B198()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "HdSt_ImplicitSurfaceSceneIndexPlugin");
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
  atomic_compare_exchange_strong(&qword_2A174F210, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174F210);
  }

  return v0;
}

void sub_29AE5B2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

void sub_29AE5B338(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(a1);
  sub_29A008E78(__p, "GL");
  v2 = atomic_load(&qword_2A174F218);
  if (!v2)
  {
    v2 = sub_29AE5B63C();
  }

  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, __p, v2, &v3, 0, 0);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AE5B3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_NurbsApproximatingSceneIndexPlugin::HdSt_NurbsApproximatingSceneIndexPlugin(void *this)
{
  *this = &unk_2A2097D20;
  return this;
}

{
  *this = &unk_2A2097D20;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_NurbsApproximatingSceneIndexPlugin::~HdSt_NurbsApproximatingSceneIndexPlugin(pxrInternal__aapl__pxrReserved__::HdSt_NurbsApproximatingSceneIndexPlugin *this)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(this);

  operator delete(v1);
}

uint64_t sub_29AE5B4B0()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1705;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_NurbsApproximatingSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29AE5B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_NurbsApproximatingSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_NurbsApproximatingSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A2097D20;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

void *sub_29AE5B63C()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "HdSt_NurbsApproximatingSceneIndexPlugin");
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
  atomic_compare_exchange_strong(&qword_2A174F218, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174F218);
  }

  return v0;
}

void sub_29AE5B75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

pxrInternal__aapl__pxrReserved__::HdInstancer *pxrInternal__aapl__pxrReserved__::HdStInstancer::HdStInstancer(pxrInternal__aapl__pxrReserved__::HdStInstancer *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdInstancer::HdInstancer(this, a2, a3);
  *result = &unk_2A2097D68;
  *(result + 13) = 0;
  *(result + 14) = 0;
  *(result + 12) = 0;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HdInstancer::HdInstancer(this, a2, a3);
  *result = &unk_2A2097D68;
  *(result + 13) = 0;
  *(result + 14) = 0;
  *(result + 12) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStInstancer::Sync(pxrInternal__aapl__pxrReserved__::HdStInstancer *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  sub_29A0ECEEC(&v8, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStInstancer::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdInstancer::_UpdateInstancer(this, a2, a4);
  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(*a4, (this + 16), v7))
  {
    pxrInternal__aapl__pxrReserved__::HdStInstancer::_SyncPrimvars(this, a2, a4);
  }

  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v9, v8);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStInstancer::_SyncPrimvars(pxrInternal__aapl__pxrReserved__::HdStInstancer *this, void (***a2)(uint64_t *__return_ptr, pxrInternal__aapl__pxrReserved__::HdRenderIndex **, char *, const pxrInternal__aapl__pxrReserved__::TfToken *), pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3)
{
  v46 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdStGetInstancerPrimvarDescriptors(this, a2);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_29A039314(&v37, (v41 - v40) >> 5);
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v33, a2[1]);
  v28 = a3;
  v6 = v33;
  if (*(&v33 + 1))
  {
    atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
    if (*(&v33 + 1))
    {
      sub_29A014BEC(*(&v33 + 1));
    }
  }

  *(this + 12) = 0;
  v7 = v40;
  v8 = v41;
  if (v40 != v41)
  {
    while (1)
    {
      (*a2)[15](&v43, a2, this + 16, v7);
      if (v44)
      {
        break;
      }

LABEL_30:
      sub_29A186B14(&v43);
      v7 = (v7 + 32);
      if (v7 == v8)
      {
        goto LABEL_33;
      }
    }

    v31 = 0uLL;
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v9)
    {
      v9 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v9 + 6) ^ *v7) > 7)
    {
      v14 = operator new(0x40uLL);
      pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v14, v7, &v43, 1, 1);
    }

    else
    {
      if (sub_29A19833C(&v43))
      {
        Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v6);
        v11 = *((*(*Hgi + 200))(Hgi) + 48);
        v12 = operator new(0x40uLL);
        if ((v44 & 4) != 0)
        {
          v13 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(&v43);
        }

        else
        {
          v13 = v43;
        }

        pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v12, v7, v13, 1, (v11 >> 8) & 1);
        sub_29AD9C9B0(&v31, v12);
LABEL_15:
        if (!(*(*v31 + 64))(v31))
        {
          goto LABEL_28;
        }

        v15 = (*(*v31 + 64))(v31);
        v16 = v15;
        v17 = *(this + 12);
        if (v17)
        {
          if (v15 == v17)
          {
LABEL_27:
            sub_29A017F80(&v37, &v31);
LABEL_28:
            if (*(&v31 + 1))
            {
              sub_29A014BEC(*(&v31 + 1));
            }

            goto LABEL_30;
          }

          *&v33 = "hdSt/instancer.cpp";
          *(&v33 + 1) = "_SyncPrimvars";
          v34 = 123;
          v35 = "void pxrInternal__aapl__pxrReserved__::HdStInstancer::_SyncPrimvars(HdSceneDelegate *, HdDirtyBits *)";
          v36 = 0;
          v18 = *v7 & 0xFFFFFFFFFFFFFFF8;
          if (v18)
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

          v20 = (*(*v31 + 64))(v31);
          v21 = *(this + 12);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 16));
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v33, "Inconsistent number of '%s' values (%zu vs %zu) for <%s>.", v23, v19, v20, v21, Text);
          if (*(this + 12) < v16)
          {
            v16 = *(this + 12);
          }
        }

        *(this + 12) = v16;
        goto LABEL_27;
      }

      if (!sub_29A197E30(&v43))
      {
        goto LABEL_15;
      }

      v14 = operator new(0x40uLL);
      pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v14, v7, &v43, 1, 0);
    }

    sub_29AD9C9B0(&v31, v14);
    goto LABEL_15;
  }

LABEL_33:
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v37, this + 13, *v28) & 1) == 0)
  {
    v24 = *v28;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    sub_29AE22748(&v37, &v43);
    v31 = 0uLL;
    v32 = 0;
    if ((v24 & 0x40) != 0)
    {
      v33 = 0uLL;
      v34 = 0;
      pxrInternal__aapl__pxrReserved__::HdStGetRemovedOrReplacedPrimvarBufferSpecs(this + 13, &v40, &v33, &v43, (this + 16), &v29);
      sub_29AC1F70C(&v31);
      v31 = v29;
      v32 = v30;
      v30 = 0;
      v29 = 0uLL;
      v42 = &v29;
      sub_29ABC6FA0(&v42);
      *&v29 = &v33;
      sub_29A124AB0(&v29);
    }

    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v25)
    {
      v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v6, v25 + 520, this + 13, &v43, &v31, 8, &v33);
    v26 = v33;
    v33 = 0uLL;
    v27 = *(this + 14);
    *(this + 104) = v26;
    if (v27)
    {
      sub_29A014BEC(v27);
      if (*(&v33 + 1))
      {
        sub_29A014BEC(*(&v33 + 1));
      }
    }

    if (((*(**(this + 13) + 16))(*(this + 13)) & 1) == 0)
    {
      *&v33 = "hdSt/instancer.cpp";
      *(&v33 + 1) = "_SyncPrimvars";
      v34 = 153;
      v35 = "void pxrInternal__aapl__pxrReserved__::HdStInstancer::_SyncPrimvars(HdSceneDelegate *, HdDirtyBits *)";
      v36 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v33, "_instancePrimvarRange->IsValid()", 0);
    }

    if (v37 != v38)
    {
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v6, this + 13, &v37);
    }

    *&v33 = &v31;
    sub_29ABC6FA0(&v33);
    *&v33 = &v43;
    sub_29ABC6FA0(&v33);
  }

  if (*(&v6 + 1))
  {
    sub_29A014BEC(*(&v6 + 1));
  }

  *&v33 = &v37;
  sub_29A0176E4(&v33);
  *&v33 = &v40;
  sub_29ABEE9FC(&v33);
}

void sub_29AE5BE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void ***a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a15 = &a19;
  sub_29ABC6FA0(&a15);
  a19 = (v29 - 120);
  sub_29ABC6FA0(&a19);
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  *(v29 - 120) = &a29;
  sub_29A0176E4((v29 - 120));
  a29 = (v29 - 152);
  sub_29ABEE9FC(&a29);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStInstancer::_GetInstanceIndices(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  (*(**(a1 + 8) + 248))(v32);
  if (v32[0])
  {
    v9 = v33;
    v10 = *(a1 + 96);
    v11 = 4 * v32[0];
    while (1)
    {
      v12 = *v9;
      if (v12 >= v10)
      {
        break;
      }

      ++v9;
      v11 -= 4;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v25 = "hdSt/instancer.cpp";
    v26 = "_GetInstanceIndices";
    v27 = 178;
    v28 = "void pxrInternal__aapl__pxrReserved__::HdStInstancer::_GetInstanceIndices(const SdfPath &, std::vector<VtIntArray> *)";
    LOBYTE(v29[0].__locale_) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v25, "Instance index exceeds the element count of instance primvars (%d >= %zu) for <%s>", v14, v12, v10, Text);
    sub_29A19D79C(v32);
    LODWORD(v25) = 0;
    sub_29A7ACA64(v32, &v25);
  }

LABEL_7:
  sub_29ACD5EB8(a3, v32, v6, v7, v8);
  if (sub_29ABCF8C0(20))
  {
    sub_29A008864(&v25);
    __p[0] = v33;
    pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v27, v32, __p, sub_29A19E054);
    if (sub_29ABCF8C0(20))
    {
      v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
      v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 24));
      std::stringbuf::str();
      v20 = v24 >= 0 ? __p : __p[0];
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetInstanceIndices for proto <%s> instancer <%s> (parent: <%s>): %s\n", v18, v19, v15, v16, v17, v20);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v25 = *MEMORY[0x29EDC9528];
    v21 = *(MEMORY[0x29EDC9528] + 72);
    *(&v25 + *(v25 - 3)) = *(MEMORY[0x29EDC9528] + 64);
    v27 = v21;
    v28 = (MEMORY[0x29EDC9570] + 16);
    if (v30 < 0)
    {
      operator delete(v29[7].__locale_);
    }

    v28 = (MEMORY[0x29EDC9568] + 16);
    std::locale::~locale(v29);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v31);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 24)))
  {
    Instancer = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(*(*(a1 + 8) + 8), (a1 + 24));
    if (Instancer || (v25 = "hdSt/instancer.cpp", v26 = "_GetInstanceIndices", v27 = 204, v28 = "void pxrInternal__aapl__pxrReserved__::HdStInstancer::_GetInstanceIndices(const SdfPath &, std::vector<VtIntArray> *)", LOBYTE(v29[0].__locale_) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v25, "parentInstancer", 0) & 1) != 0))
    {
      pxrInternal__aapl__pxrReserved__::HdStInstancer::_GetInstanceIndices(Instancer, (a1 + 16), a3);
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdStInstancer::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::HdStInstancer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v6, "hdSt", "VtIntArray pxrInternal__aapl__pxrReserved__::HdStInstancer::GetInstanceIndices(const SdfPath &)");
  memset(v5, 0, sizeof(v5));
  pxrInternal__aapl__pxrReserved__::HdStInstancer::_GetInstanceIndices(this, a2, v5);
}

void sub_29AE5C748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  a20 = v20 - 128;
  sub_29A8440C8(&a20);
  sub_29A0E9CEC(v20 - 104);
  _Unwind_Resume(a1);
}

void sub_29AE5C7E0(pxrInternal__aapl__pxrReserved__::HdInstancer *this)
{
  *this = &unk_2A2097D68;
  v2 = *(this + 14);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdInstancer::~HdInstancer(this);
}

void sub_29AE5C83C(pxrInternal__aapl__pxrReserved__::HdInstancer *this)
{
  *this = &unk_2A2097D68;
  v2 = *(this + 14);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdInstancer::~HdInstancer(this);

  operator delete(v3);
}

double pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::CreateBufferArrayRange@<D0>(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager *this@<X0>, _OWORD *a2@<X8>)
{
  sub_29AE5F330(this + 1, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::GetBufferSpecs(uint64_t a2@<X1>, void *x8_0@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetBufferSpecs(v3, x8_0);
  if (v4)
  {

    sub_29A014BEC(v4);
  }
}

void sub_29AE5C938(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetBufferSpecs@<X0>(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29AE4C758(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 30) - *(this + 29)) >> 3));
  v5 = *(this + 30);
  v14 = *(this + 29);
  v15 = v5;
  while (v14 != v15)
  {
    v6 = *sub_29ADF30C4(&v14);
    v7 = *(*sub_29ADF30C4(&v14) + 8);
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v10 = a2[1];
    if (v10 >= a2[2])
    {
      v12 = sub_29AE03FE4(a2, v6, &v13);
    }

    else
    {
      v11 = *v6;
      *v10 = *v6;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10[1] = v8;
      v10[2] = v9;
      v12 = (v10 + 3);
    }

    a2[1] = v12;
    result = sub_29ADF30FC(&v14);
  }

  return result;
}

void sub_29AE5CA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29ABC6FA0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::GetResourceAllocation(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v8 = *(v4 + 232);
  v7 = *(v4 + 240);
  v22 = v8;
  v23 = v7;
  while (v22 != v23)
  {
    v9 = sub_29ADF30C4(&v22);
    v10 = *v9;
    v11 = **(*v9 + 8);
    if (v11)
    {
      v11 = (*(*v11 + 24))(v11);
    }

    v21 = v11;
    for (i = v25[0]; i; i = *i)
    {
      v13 = i[4];
      if (v11 >= v13)
      {
        if (v13 >= v11)
        {
          goto LABEL_19;
        }

        ++i;
      }
    }

    v14 = sub_29A0F2BE4(&v24, &v21, &v21);
    v15 = *(v10 + 8);
    if ((*(v15 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v15 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      v15 = *(v10 + 8);
    }

    v17 = *(v15 + 16);
    if (pxrInternal__aapl__pxrReserved__::VtDictionary::count(a3, EmptyString))
    {
      v18 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
      v26 = &v17[*sub_29AC1F544(v18)];
      v27 = &unk_2A2044983;
      v19 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
    }

    else
    {
      v26 = v17;
      v27 = &unk_2A2044983;
      v19 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
    }

    sub_29A18606C(v19, &v26);
    sub_29A186B14(&v26);
    v6 += v17;
LABEL_19:
    sub_29ADF30FC(&v22);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A082B84(&v24, v25[0]);
  return v6;
}

void sub_29AE5CC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void *);
  v14 = va_arg(va1, void);
  sub_29A186B14(va1);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29A082B84(va, v13);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::HdStInterleavedUBOMemoryManager::CreateBufferArray@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v19 = a4;
  v9 = (a1 + 8);
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(a1 + 8));
  v18 = *((*(*Hgi + 200))(Hgi) + 24);
  v11 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*v9);
  v17 = *((*(*v11 + 200))(v11) + 8);
  v14 = 16;
  v15 = a1;
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v12)
  {
    v12 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE5F4AC(&v15, v9, a2, a3, &v19, &v18, &v14, &v16, &v17, v12 + 12);
  result = *&v16;
  *a5 = v16;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedUBOMemoryManager::ComputeAggregationId(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  if ((atomic_load_explicit(&qword_2A174F228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F228))
  {
    qword_2A174F220 = pxrInternal__aapl__pxrReserved__::ArchHash("ComputeAggregationId", 0x15);
    __cxa_guard_release(&qword_2A174F228);
  }

  v6 = 0;
  v7 = 0;
  sub_29AE5F688(&v6, &qword_2A174F220, a2, &v5);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

double pxrInternal__aapl__pxrReserved__::HdStInterleavedSSBOMemoryManager::CreateBufferArray@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v17 = a4;
  v9 = (a1 + 8);
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(a1 + 8));
  v16 = *((*(*Hgi + 200))(Hgi) + 16);
  v13 = 0;
  v14 = a1;
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v11)
  {
    v11 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE5F750(&v14, v9, a2, a3, &v17, &v13 + 1, &v13, v15, &v16, v11 + 11);
  result = v15[0];
  *a5 = *v15;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedSSBOMemoryManager::ComputeAggregationId(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  if ((atomic_load_explicit(&qword_2A174F238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F238))
  {
    qword_2A174F230 = pxrInternal__aapl__pxrReserved__::ArchHash("ComputeAggregationId", 0x15);
    __cxa_guard_release(&qword_2A174F238);
  }

  v6 = 0;
  v7 = 0;
  sub_29AE5F688(&v6, &qword_2A174F230, a2, &v5);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  v69 = *a10;
  if ((v69 & 7) != 0 && (atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdBufferArray::HdBufferArray(a1, a4, &v69, a6);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a1 = &unk_2A2097DB8;
  *(a1 + 168) = a2;
  *(a1 + 176) = a3;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a7;
  *(a1 + 208) = a9;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_29A0ECEEC(&v67, "hdSt", "pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer(HdStInterleavedMemoryManager *, HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint, int, int, size_t, const TfToken &)");
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(a1 + 176));
  v19 = *((*(*Hgi + 200))(Hgi) + 48);
  v20 = *(a5 + 8);
  v62 = *a5;
  v63 = v20;
  while (v62 != v63)
  {
    v21 = *(*sub_29AE5D60C(&v62) + 8);
    ComponentType = pxrInternal__aapl__pxrReserved__::HdGetComponentType(v21);
    ComponentCount = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(v21);
    v24 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(ComponentType);
    if (ComponentCount >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = ComponentCount;
    }

    if (ComponentCount == 3)
    {
      v25 = 4;
    }

    v26 = v24 * v25;
    v27 = v26;
    v28 = v26 - 1;
    *(a1 + 192) += (v26 - (*(a1 + 192) & v28)) & v28;
    if (v26 > a8)
    {
      a8 = v26;
    }

    v29 = sub_29AE5D60C(&v62);
    v30 = *(a1 + 192) + pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(*v29 + 8), *(*v29 + 16));
    v31 = (v27 - (v30 & v28)) & v28;
    if ((v19 & 0x400) == 0)
    {
      v31 = 0;
    }

    *(a1 + 192) = v30 + v31;
    sub_29AE5D634(&v62);
  }

  v32 = ((a8 - (*(a1 + 192) & (a8 - 1))) & (a8 - 1)) + *(a1 + 192);
  *(a1 + 192) = v32;
  *(a1 + 216) = v32;
  v33 = *(a1 + 200);
  if (v33 > 0)
  {
    v32 += (v33 - (v32 & (v33 - 1))) & (v33 - 1);
    *(a1 + 192) = v32;
  }

  v34 = *(a1 + 208);
  if (v32 > v34)
  {
    v62 = "hdSt/interleavedMemoryManager.cpp";
    v63 = "_StripedInterleavedBuffer";
    v64 = 290;
    v65 = "pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer(HdStInterleavedMemoryManager *, HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint, int, int, size_t, const TfToken &)";
    v66 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v62, "Computed stride = %zu of interleaved buffer is larger than max size %zu, cannot create buffer.", v18, v32, v34);
LABEL_54:
    *(a1 + 152) = 0;
    goto LABEL_55;
  }

  if (!v32)
  {
    v62 = "hdSt/interleavedMemoryManager.cpp";
    v63 = "_StripedInterleavedBuffer";
    v64 = 296;
    v65 = "pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer(HdStInterleavedMemoryManager *, HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint, int, int, size_t, const TfToken &)";
    v66 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v62, "Computed stride = %zu of interleaved buffer is 0, cannot  create buffer.", v18, 0);
    goto LABEL_54;
  }

  v59 = a6;
  if (sub_29ABCF8C0(2))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Create interleaved buffer array: stride = %zu\n", v35, v36, *(a1 + 192));
  }

  v37 = 0;
  v38 = *(a5 + 8);
  v62 = *a5;
  v63 = v38;
  while (v62 != v63)
  {
    v39 = *(*sub_29AE5D60C(&v62) + 8);
    v40 = pxrInternal__aapl__pxrReserved__::HdGetComponentType(v39);
    v41 = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(v39);
    v42 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(v40);
    if (v41 >= 4)
    {
      v43 = 4;
    }

    else
    {
      v43 = v41;
    }

    if (v41 == 3)
    {
      v44 = 4;
    }

    else
    {
      v44 = v43;
    }

    v45 = *sub_29AE5D60C(&v62);
    v46 = sub_29AE5D60C(&v62);
    v47 = v42 * v44;
    v48 = v47 - 1;
    pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_AddResource(a1, v45, *(*v46 + 8), *(*v46 + 16), ((v47 - (v48 & v37)) & v48) + v37, *(a1 + 192), &v60);
    if (v61)
    {
      sub_29A014BEC(v61);
    }

    if (sub_29ABCF8C0(2))
    {
      v51 = **sub_29AE5D60C(&v62) & 0xFFFFFFFFFFFFFFF8;
      if (v51)
      {
        v52 = (v51 + 16);
        if (*(v51 + 39) < 0)
        {
          v52 = *v52;
        }
      }

      else
      {
        v52 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  %s : offset = %zu, alignment = %zu\n", v49, v50, v52, ((v47 - (v48 & v37)) & v48) + v37, v47);
    }

    v53 = sub_29AE5D60C(&v62);
    v54 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(*v53 + 8), *(*v53 + 16));
    v55 = (v47 - (v54 & v48)) & v48;
    if ((v19 & 0x400) == 0)
    {
      v55 = 0;
    }

    v37 += v54 + ((v47 - (v48 & v37)) & v48) + v55;
    sub_29AE5D634(&v62);
  }

  v56 = *(a1 + 192);
  *(a1 + 152) = *(a1 + 208) / v56;
  if (!(v56 + v37))
  {
    v62 = "hdSt/interleavedMemoryManager.cpp";
    v63 = "_StripedInterleavedBuffer";
    v64 = 327;
    v65 = "pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer(HdStInterleavedMemoryManager *, HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint, int, int, size_t, const TfToken &)";
    v66 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v62, "_stride + offset", 0);
  }

  if ((v59 & 4) != 0)
  {
    *(a1 + 224) |= 1u;
  }

  if ((v59 & 8) != 0)
  {
    *(a1 + 224) |= 8u;
  }

  v57 = *(a1 + 224);
  if ((v59 & 0x10) != 0)
  {
    *(a1 + 224) = v57 | 4;
  }

  else if (!v57)
  {
    v62 = "hdSt/interleavedMemoryManager.cpp";
    v63 = "_StripedInterleavedBuffer";
    v64 = 339;
    v65 = "pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer(HdStInterleavedMemoryManager *, HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint, int, int, size_t, const TfToken &)";
    v66 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v62, 1, "Buffer usage was not specified!");
  }

LABEL_55:
  if (v67)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v68, v67);
  }

  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_29AE5D584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void **);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_29A0E9CEC(va1);
  v18 = a13;
  sub_29A3E01A4(va);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(v16);
  _Unwind_Resume(a1);
}

void *sub_29AE5D60C(void *result)
{
  if (*result == result[1])
  {
    v3[6] = v1;
    v3[7] = v2;
    sub_29B2CA354(v3);
  }

  return result;
}

void *sub_29AE5D634(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::HdBufferSpec>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::HdBufferSpec>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_AddResource@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v17[0] = a3;
  v17[1] = a4;
  v15 = a6;
  v16 = a5;
  if (sub_29ABCF8C0(27))
  {
    pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetResource(a1, a2, a7);
    if (*a7)
    {
      v13[0] = "hdSt/interleavedMemoryManager.cpp";
      v13[1] = "_AddResource";
      v13[2] = 355;
      v13[3] = "HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_AddResource(const TfToken &, HdTupleType, int, int)";
      v14 = 0;
      result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "!bufferRes", 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    v10 = a7[1];
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  sub_29AE467A0((a1 + 128), v17, &v16, &v15, a7);
  v11 = *(a1 + 240);
  if (v11 >= *(a1 + 248))
  {
    result = sub_29AE46890((a1 + 232), a2, a7);
  }

  else
  {
    result = (sub_29AE469C4(v11, a2, a7) + 3);
  }

  *(a1 + 240) = result;
  return result;
}

void sub_29AE5D7BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29AE5D7D8(void **a1)
{
  v3 = a1;
  sub_29A3E01A4(&v3);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetResource@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 232);
  v4 = *(result + 240);
  if (v3 == v4)
  {
LABEL_4:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while ((*a2 ^ *v3) > 7)
    {
      v3 += 3;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    v6 = v3[1];
    v5 = v3[2];
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::~_StripedInterleavedBuffer(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer *this)
{
  *this = &unk_2A2097DB8;
  sub_29A0ECEEC(&v6, "hdSt", "virtual pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::~_StripedInterleavedBuffer()");
  v2 = atomic_load(this + 7);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      sub_29AE5D948(this, i, &v4);
      if (v4)
      {
        *(v4 + 16) = 0;
      }

      if (v5)
      {
        sub_29A014BEC(v5);
      }
    }
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  v6 = (this + 232);
  sub_29A3E01A4(&v6);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::~_StripedInterleavedBuffer(this);

  operator delete(v1);
}

void sub_29AE5D948(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdBufferArray::GetRange(a1, a2, &v5);
  if (*(&v5 + 1) && (v4 = std::__shared_weak_count::lock(*(&v5 + 1))) != 0)
  {
    *a3 = v5;
    a3[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v4);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GarbageCollect(std::__shared_weak_count *this)
{
  sub_29A0ECEEC(&v9, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GarbageCollect()");
  if (LOBYTE(this[7].__shared_weak_owners_) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdBufferArray::RemoveUnusedRanges(this);
    memset(v8, 0, sizeof(v8));
    v2 = atomic_load(&this[2].__shared_owners_);
    sub_29A039314(v8, v2);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        pxrInternal__aapl__pxrReserved__::HdBufferArray::GetRange(this, i, &v6);
        v7 = 0uLL;
        if (*(&v6 + 1))
        {
          *(&v7 + 1) = std::__shared_weak_count::lock(*(&v6 + 1));
          if (*(&v7 + 1))
          {
            *&v7 = v6;
          }

          if (*(&v6 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v6 + 1));
          }

          if (v7)
          {
            sub_29A017F80(v8, &v7);
          }
        }

        if (*(&v7 + 1))
        {
          sub_29A014BEC(*(&v7 + 1));
        }
      }
    }

    sub_29A014C58(&v7, &this->__shared_owners_);
    (this->__get_deleter)(this, v8, &v7);
    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }

    *&v7 = v8;
    sub_29A0176E4(&v7);
  }

  v4 = atomic_load(&this[2].__shared_owners_);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_DeallocateResources(this);
  }

  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return v4 == 0;
}

void sub_29AE5DB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  a12 = &a14;
  sub_29A0176E4(&a12);
  sub_29A0E9CEC(v14 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_DeallocateResources(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this)
{
  pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetResource(&v5, this);
  v2 = v5;
  if (v5)
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(this[22]);
    (*(*Hgi + 104))(Hgi, v2);
  }

  v4 = v6;
  if (v6)
  {

    sub_29A014BEC(v4);
  }
}

void sub_29AE5DC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::Reallocate(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_29A0ECEEC(&v58, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)");
  GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*(a1 + 176));
  (*(*GlobalBlitCmds + 24))(GlobalBlitCmds, "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)");
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v8)
  {
    v8 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v7, (v8 + 304));
  v43 = GlobalBlitCmds;
  v9 = 0;
  v10 = a2[1];
  v45 = *a2;
  v46 = v10;
  while (v45 != v46)
  {
    if (!*sub_29ABC5C14(&v45))
    {
      __p = "hdSt/interleavedMemoryManager.cpp";
      v53 = "Reallocate";
      v54 = 432;
      *&v55 = "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
      BYTE8(v55) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Expired range found in the reallocation list");
    }

    v11 = sub_29ABC5C14(&v45);
    v9 += (*(**v11 + 88))(*v11);
    sub_29ABC5C44(&v45);
  }

  v12 = *(a1 + 192);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::_SetRangeList(a1, a2);
  v44 = *(*(a1 + 232) + 8);
  v13 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v41 = v14;
  v15 = *(*(v13 + 232) + 8);
  v57 = 0uLL;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(a1 + 176));
  v17 = v12 * v9;
  if (v12 * v9)
  {
    v53 = 0;
    v54 = 0;
    __p = 0;
    v56.n128_u32[0] = 0;
    v56.n128_u64[1] = 0;
    *(&v55 + 1) = v12 * v9;
    LODWORD(v55) = *(a1 + 224);
    v57.n128_u64[0] = (*(*Hgi + 96))(Hgi, &__p);
    v57.n128_u64[1] = v18;
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }
  }

  v19 = *v15;
  v20 = atomic_load((a1 + 56));
  if (v19)
  {
    v21 = v57.n128_u64[0] == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    if (v20)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        sub_29AE5D948(a1, v22, &v45);
        v24 = v45;
        if (v45)
        {
          *(v45 + 6) = v23;
          v23 += (*(*v24 + 88))(v24);
        }

        else
        {
          __p = "hdSt/interleavedMemoryManager.cpp";
          v53 = "Reallocate";
          v54 = 511;
          *&v55 = "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
          BYTE8(v55) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "_StripedInterleavedBufferRange expired unexpectedly.");
        }

        if (v46)
        {
          sub_29A014BEC(v46);
        }

        ++v22;
      }

      while (v20 != v22);
    }
  }

  else
  {
    __p = 0;
    v53 = 0;
    v54 = 0;
    v55 = *v15;
    v56 = v57;
    if (v20)
    {
      v25 = 0;
      for (i = 0; i != v20; ++i)
      {
        sub_29AE5D948(a1, i, &v50);
        if (v50)
        {
          v27 = (*(*v50 + 72))(v50);
          if ((v27 & 0x80000000) == 0)
          {
            v28 = *(a1 + 192);
            v29 = v50[10];
            v30 = (*(*v50 + 88))(v50);
            if (v29 >= v30)
            {
              v31 = v30;
            }

            else
            {
              v31 = v29;
            }

            pxrInternal__aapl__pxrReserved__::HdStBufferRelocator::AddRange(&__p, v28 * v27, v28 * v25, *(a1 + 192) * v31);
          }

          v32 = v50;
          v50[6] = v25;
          v25 += (*(*v32 + 88))(v32);
        }

        else
        {
          v45 = "hdSt/interleavedMemoryManager.cpp";
          v46 = "Reallocate";
          v47 = 479;
          v48 = "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
          v49 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v45, 1, "_StripedInterleavedBufferRange expired unexpectedly.");
        }

        if (v51)
        {
          sub_29A014BEC(v51);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::HdStBufferRelocator::Commit(&__p, v43, v16);
    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }
  }

  if (*v44)
  {
    (*(*Hgi + 104))(Hgi, v44);
  }

  v33 = *(a1 + 240);
  __p = *(a1 + 232);
  v53 = v33;
  while (__p != v53)
  {
    v34 = sub_29ADF30C4(&__p);
    pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(*(*v34 + 8), &v57, v17);
    sub_29ADF30FC(&__p);
  }

  v35 = *a2;
  if (a2[1] != *a2)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = &v35[v36];
      v40 = *v38;
      v39 = v38[1];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v40)
      {
        v40[10] = (*(*v40 + 88))(v40);
      }

      else
      {
        __p = "hdSt/interleavedMemoryManager.cpp";
        v53 = "Reallocate";
        v54 = 536;
        *&v55 = "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
        BYTE8(v55) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "_StripedInterleavedBufferRange expired unexpectedly.");
      }

      if (v39)
      {
        sub_29A014BEC(v39);
      }

      ++v37;
      v35 = *a2;
      v36 += 2;
    }

    while (v37 < (a2[1] - *a2) >> 4);
  }

  (*(*v43 + 32))(v43);
  *(a1 + 24) = 0;
  *(a1 + 184) = 0;
  pxrInternal__aapl__pxrReserved__::HdBufferArray::IncrementVersion(a1);
  if (v41)
  {
    sub_29A014BEC(v41);
  }

  if (v58)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v59, v58);
  }
}

void sub_29AE5E238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A0E9CEC(v26 - 104);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetResource@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  if (this[29] == this[30])
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v3 = this;
    this = sub_29ABCF8C0(27);
    v4 = v3[29];
    if (this)
    {
      v5 = *(v4 + 8);
      v6 = v3[30];
      v11 = v3[29];
      v12 = v6;
      if (v4 != v6)
      {
        do
        {
          if (*(*(*sub_29ADF30C4(&v11) + 8) + 8) != *(v5 + 8))
          {
            v9[0] = "hdSt/interleavedMemoryManager.cpp";
            v9[1] = "GetResource";
            v9[2] = 590;
            v9[3] = "HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetResource() const";
            v10 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "GetResource(void) called onHdBufferArray having multiple GL resources");
          }

          this = sub_29ADF30FC(&v11);
        }

        while (v11 != v12);
        v4 = v3[29];
      }
    }

    v8 = *(v4 + 8);
    v7 = *(v4 + 16);
    *a1 = v8;
    a1[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::DebugDump(uint64_t a1, void *a2)
{
  sub_29A00911C(a2, "  HdStInterleavedMemoryManager\n", 31);
  v4 = sub_29A00911C(a2, "    Range entries ", 18);
  v5 = atomic_load((a1 + 56));
  v6 = MEMORY[0x29C2C1F00](v4, v5);
  sub_29A00911C(v6, ":\n", 2);
  v7 = atomic_load((a1 + 56));
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      sub_29AE5D948(a1, i, &v11);
      if (v11)
      {
        v9 = sub_29A00911C(a2, "      ", 6);
        v10 = MEMORY[0x29C2C1F00](v9, i);
        pxrInternal__aapl__pxrReserved__::operator<<(v10, v11);
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }
    }
  }
}

void sub_29AE5E4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::~_StripedInterleavedBufferRange(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange *this)
{
  *this = &unk_2A2097DF8;
  v1 = *(this + 2);
  if (v1)
  {
    *(v1 + 184) = 1;
  }

  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::~HdStBufferArrayRange(this);
}

{
  *this = &unk_2A2097DF8;
  v1 = *(this + 2);
  if (v1)
  {
    *(v1 + 184) = 1;
  }

  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::~HdStBufferArrayRange(this);
}

{
  *this = &unk_2A2097DF8;
  v1 = *(this + 2);
  if (v1)
  {
    *(v1 + 184) = 1;
  }

  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::~HdStBufferArrayRange(this);

  operator delete(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::IsImmutable(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return *(v1 + 160) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::Resize(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange *this, unsigned int a2)
{
  sub_29A0ECEEC(&v16, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::Resize(int)");
  if (*(this + 2) || (v11 = "hdSt/interleavedMemoryManager.cpp", v12 = "Resize", v13 = 664, v14 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::Resize(int)", v15 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v11, "_stripedBuffer", 0) & 1) != 0))
  {
    if (a2 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = a2;
    }

    v5 = *(this + 10);
    v6 = v5 != v4;
    if (v5 != v4)
    {
      v7 = (*(*this + 112))(this);
      v9 = v7;
      if (v7 < v4)
      {
        v11 = "hdSt/interleavedMemoryManager.cpp";
        v12 = "Resize";
        v13 = 681;
        v14 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::Resize(int)";
        v15 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v11, "Attempting to resize the BAR with 0x%x elements when the max number of elements in the buffer array is 0x%lx. Clamping BAR size to the latter.", v8, v4, v7);
        LODWORD(v4) = v9;
      }

      *(*(this + 2) + 24) = 1;
    }

    *(this + 4) = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v17, v16);
  }

  return v6;
}

void sub_29AE5E734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::CopyData(uint64_t a1, uint64_t a2)
{
  sub_29A0ECEEC(&v51, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::CopyData(const HdBufferSourceSharedPtr &)");
  v4 = *(a1 + 16);
  if (!v4)
  {
    *&v46 = "hdSt/interleavedMemoryManager.cpp";
    *(&v46 + 1) = "CopyData";
    *&v47 = 700;
    *(&v47 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::CopyData(const HdBufferSourceSharedPtr &)";
    LOBYTE(v48) = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v46, "_stripedBuffer", 0))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 16);
  }

  v5 = (*(**a2 + 16))();
  v6 = *(v4 + 232);
  v7 = *(v4 + 240);
  if (v6 == v7)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    while ((*v6 ^ *v5) > 7)
    {
      v6 += 3;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    v11 = v6[1];
    v8 = v6[2];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11 && *v11)
    {
      if ((*(**a2 + 56))() == *(v11 + 8))
      {
        goto LABEL_21;
      }

      *&v46 = "hdSt/interleavedMemoryManager.cpp";
      *(&v46 + 1) = "CopyData";
      *&v47 = 725;
      *(&v47 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::CopyData(const HdBufferSourceSharedPtr &)";
      LOBYTE(v48) = 0;
      v29 = *(*(**a2 + 16))() & 0xFFFFFFFFFFFFFFF8;
      if (v29)
      {
        v30 = (v29 + 16);
        if (*(v29 + 39) < 0)
        {
          v30 = *v30;
        }
      }

      else
      {
        v30 = "";
      }

      v31 = (*(**a2 + 56))();
      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2076058, v31, __p);
      if (v43 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      v33 = (*(**a2 + 56))();
      (*(**a2 + 56))();
      v35 = v34;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2076058, *(v11 + 8), v49);
      if (v50 >= 0)
      {
        v38 = v49;
      }

      else
      {
        v38 = v49[0];
      }

      v39 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("'%s': (%s (%i) x %zu) != (%s (%i) x %zu)\n", v36, v37, v30, v32, v33, v35, v38, *(v11 + 4), *(v11 + 5));
      v40 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v46, "bufferSource->GetTupleType().type == VBO->GetTupleType().type", v39);
      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if (v40)
      {
LABEL_21:
        v13 = *(v11 + 12);
        v12 = *(v11 + 13);
        v14 = *(a1 + 24);
        v15 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(v11 + 4), *(v11 + 5));
        v41 = v14;
        v16 = (*(**a2 + 56))();
        v18 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v16, v17);
        v19 = *(*(a1 + 16) + 216);
        v21 = (*(**a2 + 48))();
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = *v11;
        if (v18 > v15)
        {
          __p[0] = "hdSt/interleavedMemoryManager.cpp";
          __p[1] = "CopyData";
          v43 = 747;
          v44 = "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::CopyData(const HdBufferSourceSharedPtr &)";
          v45 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Source data size (%zu bytes) is larger than buffer resource (%zu bytes). Clamping copy op to the latter.\n", v20, v18, v15);
          v18 = v15;
        }

        *(&v48 + 1) = v18;
        ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::GetResourceRegistry(a1);
        StagingBuffer = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetStagingBuffer(ResourceRegistry);
        if (*(a1 + 32))
        {
          v24 = StagingBuffer;
          v25 = 0;
          v26 = v13 + v41 * v12;
          do
          {
            *&v46 = v21;
            *&v48 = v26;
            pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::StageCopy(v24, &v46);
            v26 += v19;
            v21 += v15;
            ++v25;
          }

          while (v25 < *(a1 + 32));
        }

        v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
        if (!v27)
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
        }

        v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
        if (!v28)
        {
          v28 = sub_29ADCD5DC(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(v27, (v28 + 8), *(a1 + 32));
      }

      goto LABEL_11;
    }
  }

  *&v46 = "hdSt/interleavedMemoryManager.cpp";
  *(&v46 + 1) = "CopyData";
  *&v47 = 707;
  *(&v47 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::CopyData(const HdBufferSourceSharedPtr &)";
  LOBYTE(v48) = 0;
  v9 = *(*(**a2 + 16))() & 0xFFFFFFFFFFFFFFF8;
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

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v46, 1, "VBO doesn't exist for %s", v10);
LABEL_11:
  if (v8)
  {
    sub_29A014BEC(v8);
  }

LABEL_13:
  if (v51)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v52, v51);
  }
}

void sub_29AE5EC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  sub_29A0E9CEC(v24 - 104);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::ReadData(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v21, "hdSt", "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::ReadData(const TfToken &) const");
  a3[1] = 0;
  v6 = *(this + 2);
  if (!v6)
  {
    v23 = "hdSt/interleavedMemoryManager.cpp";
    v24 = "ReadData";
    v25 = 776;
    v26 = "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::ReadData(const TfToken &) const";
    v27 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v23, "_stripedBuffer", 0))
    {
      goto LABEL_12;
    }

    v6 = *(this + 2);
  }

  v7 = *(v6 + 232);
  v8 = *(v6 + 240);
  if (v7 == v8)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    while ((*v7 ^ *a2) > 7)
    {
      v7 += 3;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    v12 = v7[1];
    v9 = v7[2];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12 && *v12)
    {
      v13 = *(v12 + 40);
      v20 = *(v12 + 32);
      v15 = *(v12 + 48);
      v14 = *(v12 + 52);
      v16 = *(this + 6);
      v17 = *(this + 4);
      v18 = *(*(this + 2) + 216);
      ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::GetResourceRegistry(this);
      pxrInternal__aapl__pxrReserved__::HdStReadBuffer(v12, v20, v13, v15 + v16 * v14, v14, v17, v18, ResourceRegistry, &v23);
      sub_29A18606C(a3, &v23);
      sub_29A186B14(&v23);
      if (!v9)
      {
        goto LABEL_12;
      }

LABEL_11:
      sub_29A014BEC(v9);
      goto LABEL_12;
    }
  }

  v23 = "hdSt/interleavedMemoryManager.cpp";
  v24 = "ReadData";
  v25 = 781;
  v26 = "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::ReadData(const TfToken &) const";
  v27 = 0;
  v10 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "VBO doesn't exist for %s", v11);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void sub_29AE5EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A186B14(v5);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::GetUsageHint(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return *(v1 + 160);
  }

  v5[0] = "hdSt/interleavedMemoryManager.cpp";
  v5[1] = "GetUsageHint";
  v5[2] = 806;
  v5[3] = "virtual HdBufferArrayUsageHint pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::GetUsageHint() const";
  v6 = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_stripedBuffer", 0);
  result = 0;
  if (v4)
  {
    v1 = *(this + 2);
    return *(v1 + 160);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::GetResource@<X0>(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v6[0] = "hdSt/interleavedMemoryManager.cpp";
    v6[1] = "GetResource";
    v6[2] = 816;
    v6[3] = "virtual HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::GetResource() const";
    v7 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "_stripedBuffer", 0);
    if (!result)
    {
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    v4 = *(this + 2);
  }

  return pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetResource(a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::GetResource@<X0>(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 2);
  if (!v6)
  {
    v8[0] = "hdSt/interleavedMemoryManager.cpp";
    v8[1] = "GetResource";
    v8[2] = 825;
    v8[3] = "virtual HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::GetResource(const TfToken &)";
    v9 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "_stripedBuffer", 0);
    if (!result)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    v6 = *(this + 2);
  }

  return pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::GetResource(v6, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::GetResources(pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    if ((sub_29B2CA3AC(v3, this + 2, &v4, &v5) & 1) == 0)
    {
      return v5;
    }

    v1 = v4;
  }

  return v1 + 232;
}

void *pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::DebugDump(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "[StripedIBR] index = ", 21);
  v4 = MEMORY[0x29C2C1ED0](v3, *(a1 + 24));

  return sub_29A00911C(v4, "\n", 1);
}

uint64_t sub_29AE5F208(uint64_t a1)
{
  if (!*(a1 + 16) && (sub_29B2CA490(v6) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    return (v2 * *(*(a1 + 16) + 192));
  }

  v4[0] = "hdSt/interleavedMemoryManager.h";
  v4[1] = "GetByteOffset";
  v4[2] = 97;
  v4[3] = "virtual int pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBufferRange::GetByteOffset(const TfToken &) const";
  v5 = 0;
  result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "_index != NOT_ALLOCATED", 0);
  if (result)
  {
    v2 = *(a1 + 24);
    return (v2 * *(*(a1 + 16) + 192));
  }

  return result;
}

void sub_29AE5F2DC(pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy *a1)
{
  pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy::~HdStAggregationStrategy(a1);

  operator delete(v1);
}

void sub_29AE5F308(pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy *a1)
{
  pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy::~HdStAggregationStrategy(a1);

  operator delete(v1);
}

uint64_t sub_29AE5F330@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x48uLL);
  result = sub_29AE5F38C(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29AE5F38C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2098030;
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::HdStBufferArrayRange((a1 + 24), *a2);
  *(a1 + 24) = &unk_2A2097DF8;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  return a1;
}

void sub_29AE5F440(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE5F4AC(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, _DWORD *a5@<X5>, int *a6@<X6>, int *a7@<X7>, void *a8@<X8>, int *a9, uint64_t *a10)
{
  v17 = operator new(0x118uLL);
  sub_29AE5F578(v17, a1, a2, a3, a4, a5, a6, a7, a9, a10);
  *a8 = v17 + 3;
  a8[1] = v17;

  sub_29A017894(a8, v17 + 4, (v17 + 3));
}

void *sub_29AE5F578(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, _DWORD *a6, int *a7, int *a8, int *a9, uint64_t *a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098080;
  pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer((a1 + 3), *a2, *a3, a4, a5, *a6, *a7, *a8, *a9, a10);
  return a1;
}

void sub_29AE5F61C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE5F688(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AE5F6C0(a1, a3, a4);
}

uint64_t sub_29AE5F6C0(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v4 = result;
  v5 = *a2;
  v6 = *(a2 + 8) - *a2;
  if (v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    do
    {
      --v7;
      result = sub_29ABC697C(v4, v5, (v5 + 1));
      v5 += 3;
    }

    while (v7);
  }

  v8 = *a3;
  if (*(v4 + 8))
  {
    v8 += (*v4 + v8 + (*v4 + v8) * (*v4 + v8)) >> 1;
  }

  else
  {
    *(v4 + 8) = 1;
  }

  *v4 = v8;
  return result;
}

void sub_29AE5F750(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, _DWORD *a5@<X5>, int *a6@<X6>, int *a7@<X7>, void *a8@<X8>, int *a9, uint64_t *a10)
{
  v17 = operator new(0x118uLL);
  sub_29AE5F81C(v17, a1, a2, a3, a4, a5, a6, a7, a9, a10);
  *a8 = v17 + 3;
  a8[1] = v17;

  sub_29A017894(a8, v17 + 4, (v17 + 3));
}

void *sub_29AE5F81C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, _DWORD *a6, int *a7, int *a8, int *a9, uint64_t *a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098080;
  pxrInternal__aapl__pxrReserved__::HdStInterleavedMemoryManager::_StripedInterleavedBuffer::_StripedInterleavedBuffer((a1 + 3), *a2, *a3, a4, a5, *a6, *a7, *a8, *a9, a10);
  return a1;
}

double pxrInternal__aapl__pxrReserved__::HdStLight::HdStLight(pxrInternal__aapl__pxrReserved__::HdStLight *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdLight::HdLight(this, a2);
  *v4 = &unk_2A20980D0;
  v5 = *a3;
  *(v4 + 3) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v4 + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = 0.0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 16) = 1065353216;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStLight::~HdStLight(pxrInternal__aapl__pxrReserved__::HdStLight *this)
{
  sub_29AC1E22C(this + 32);
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdLight::~HdLight(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStLight::~HdStLight(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStLight::_ApproximateAreaLight@<X0>(pxrInternal__aapl__pxrReserved__::HdStLight *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3@<X2>, __n128 *a4@<X8>)
{
  v70 = *MEMORY[0x29EDCA608];
  if (((*(*a3 + 80))(a3) & 1) == 0)
  {
    v69 = xmmword_29B43C8B0;
    pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(a4, &v69);
    v69 = 0uLL;
    pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetAmbient(a4, &v69);
    v69 = 0uLL;
    pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetDiffuse(a4, &v69);
    v69 = 0uLL;
    pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpecular(a4, &v69);
    return pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetHasIntensity(a4, 0);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v8)
  {
    v8 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v69, a3, a2, v8 + 8);
  v9 = sub_29AE607D4(&v69);
  v11 = v10;
  v13 = v12;
  sub_29A186B14(&v69);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v14)
  {
    v14 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v69, a3, a2, v14 + 24);
  if (sub_29A1EFCDC(&v69))
  {
    v15 = (v69.n128_u8[8] & 4) != 0 ? (*((v69.n128_u64[1] & 0xFFFFFFFFFFFFFFF8) + 168))(&v69) : &v69;
    if (v15->n128_u8[0])
    {
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v16)
      {
        v16 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a3 + 320))(&v67, a3, a2, v16 + 16);
      if (sub_29A3F9DF4(&v67))
      {
        v17 = sub_29A8D5794(&v67);
        v9 = v9 * *sub_29AE60830(*v17).i32;
        v11 = v11 * v18;
        v13 = v13 * v19;
      }

      sub_29A186B14(&v67);
    }
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v20)
  {
    v20 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v67, a3, a2, v20 + 56);
  v21 = sub_29AE60A14(&v67);
  sub_29A186B14(&v67);
  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v22)
  {
    v22 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v67, a3, a2, v22 + 40);
  v23 = sub_29AE60A14(&v67);
  sub_29A186B14(&v67);
  v24 = 50.0;
  if (v23 <= 50.0)
  {
    v24 = v23;
  }

  if (v23 < -50.0)
  {
    v24 = -50.0;
  }

  v25 = exp2f(v24);
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v26)
  {
    v26 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v67, a3, a2, v26 + 128);
  v27 = v21 * v25;
  if (!sub_29A1EFCDC(&v67) || ((v68 & 4) != 0 ? (v28 = (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(&v67)) : (v28 = &v67), (*v28 & 1) == 0))
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v29)
    {
      v29 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v29 + 28) ^ *(this + 3)) < 8)
    {
      goto LABEL_35;
    }

    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v30)
    {
      v30 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v30 + 36) ^ *(this + 3)) <= 7)
    {
LABEL_35:
      v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v31)
      {
        v31 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a3 + 320))(&v66, a3, a2, v31 + 64);
      v32 = 1.0;
      if (!sub_29A3F9DF4(&v66))
      {
        goto LABEL_64;
      }

      v33 = sub_29A8D5794(&v66);
      v34 = (*v33 * *v33);
      v35 = 3.14159265;
      goto LABEL_39;
    }

    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v37)
    {
      v37 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v37 + 34) ^ *(this + 3)) > 7)
    {
      v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v40)
      {
        v40 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v40 + 27) ^ *(this + 3)) > 7)
      {
        v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v62)
        {
          v62 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        v32 = 1.0;
        if ((*(v62 + 29) ^ *(this + 3)) > 7)
        {
          goto LABEL_65;
        }

        if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens))
        {
          sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        (*(*a3 + 320))(&v66, a3, a2);
        if (!sub_29A3F9DF4(&v66))
        {
LABEL_64:
          sub_29A186B14(&v66);
LABEL_65:
          v27 = v27 * v32;
          goto LABEL_66;
        }

        v64 = *sub_29A8D5794(&v66) / 180.0 * 3.14159265;
        v34 = 1.0 - cos(v64 * 0.5);
        v35 = 6.28318531;
LABEL_39:
        v32 = v34 * v35;
        goto LABEL_64;
      }

      v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v41)
      {
        v41 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a3 + 320))(&v66, a3, a2, v41 + 72);
      v32 = 1.0;
      if (sub_29A3F9DF4(&v66))
      {
        v32 = *sub_29A8D5794(&v66);
      }

      v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v42)
      {
        v42 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a3 + 320))(v65, a3, a2, v42 + 64);
      if (!sub_29A3F9DF4(v65))
      {
LABEL_63:
        sub_29A186B14(v65);
        goto LABEL_64;
      }
    }

    else
    {
      v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v38)
      {
        v38 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a3 + 320))(&v66, a3, a2, v38 + 96);
      v32 = 1.0;
      if (sub_29A3F9DF4(&v66))
      {
        v32 = *sub_29A8D5794(&v66);
      }

      v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v39)
      {
        v39 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a3 + 320))(v65, a3, a2, v39 + 48);
      if (!sub_29A3F9DF4(v65))
      {
        goto LABEL_63;
      }
    }

    v32 = v32 * *sub_29A8D5794(v65);
    goto LABEL_63;
  }

LABEL_66:
  v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v43)
  {
    v43 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v66, a3, a2, v43 + 104);
  v44 = 0.0;
  if (sub_29A3F9DF4(&v66))
  {
    if ((BYTE8(v66) & 4) != 0)
    {
      v44 = *(*((*(&v66 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
    }

    else
    {
      v44 = *&v66;
    }
  }

  sub_29A186B14(&v66);
  v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v45)
  {
    v45 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v66, a3, a2, v45 + 112);
  v46 = 1.0;
  if (sub_29A3F9DF4(&v66))
  {
    if ((BYTE8(v66) & 4) != 0)
    {
      v46 = *(*((*(&v66 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
    }

    else
    {
      v46 = *&v66;
    }
  }

  sub_29A186B14(&v66);
  v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v47)
  {
    v47 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v66, a3, a2, v47 + 120);
  v48 = 1.0;
  if (sub_29A3F9DF4(&v66))
  {
    if ((BYTE8(v66) & 4) != 0)
    {
      v48 = *(*((*(&v66 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
    }

    else
    {
      v48 = *&v66;
    }
  }

  sub_29A186B14(&v66);
  v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v49)
  {
    v49 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v66, a3, a2, v49 + 160);
  if (sub_29A3F9DF4(&v66))
  {
    if ((BYTE8(v66) & 4) != 0)
    {
      v50 = *(*((*(&v66 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
    }

    else
    {
      v50 = v66;
    }
  }

  else
  {
    v50 = 1119092736;
  }

  sub_29A186B14(&v66);
  LODWORD(v65[0]) = v50;
  v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v51)
  {
    v51 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v66, a3, a2, v51 + 144);
  v52 = 0.0;
  if (sub_29A3F9DF4(&v66))
  {
    if ((BYTE8(v66) & 4) != 0)
    {
      v52 = *(*((*(&v66 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
    }

    else
    {
      v52 = *&v66;
    }
  }

  sub_29A186B14(&v66);
  v66 = xmmword_29B43C8B0;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(a4, &v66);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetHasIntensity(a4, v27 != 0.0);
  v53 = v9 * v27;
  v54 = v11 * v27;
  v55 = v13 * v27;
  *&v66 = v53 * v44;
  *(&v66 + 1) = v54 * v44;
  *(&v66 + 2) = v55 * v44;
  *(&v66 + 3) = v44;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetAmbient(a4, &v66);
  *&v66 = v53 * v46;
  *(&v66 + 1) = v54 * v46;
  *(&v66 + 2) = v55 * v46;
  *(&v66 + 3) = v46;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetDiffuse(a4, &v66);
  *&v66 = v53 * v48;
  *(&v66 + 1) = v54 * v48;
  *(&v66 + 2) = v55 * v48;
  *(&v66 + 3) = v48;
  v56 = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpecular(a4, &v66);
  v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v57)
  {
    v57 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a3 + 320))(&v66, a3, a2, v57 + 136, v56);
  if (sub_29A1EFCDC(&v66))
  {
    if ((BYTE8(v66) & 4) != 0)
    {
      v58 = *(*((*(&v66 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
    }

    else
    {
      v58 = v66;
    }
  }

  else
  {
    v58 = 0;
  }

  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetHasShadow(a4, v58 & 1);
  sub_29A186B14(&v66);
  v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v59)
  {
    v59 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v59 + 34) ^ *(this + 3)) < 8)
  {
    goto LABEL_104;
  }

  v60 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v60)
  {
    v60 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v60 + 28) ^ *(this + 3)) <= 7)
  {
LABEL_104:
    pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpotCutoff(a4, v65);
    LODWORD(v66) = fmaxf(v52, 0.0);
    pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpotFalloff(a4, &v66);
  }

  v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v61)
  {
    v61 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v61 + 29) ^ *(this + 3)) > 7)
  {
    *&v66 = 0;
    DWORD2(v66) = 1065353216;
  }

  else
  {
    *&v66 = 0;
    DWORD2(v66) = 0;
  }

  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetAttenuation(a4, &v66);
  sub_29A186B14(&v67);
  return sub_29A186B14(&v69);
}

void sub_29AE606A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A186B14(va);
  sub_29A186B14(va1);
  _Unwind_Resume(a1);
}

float sub_29AE607D4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FDE60(a1))
  {
    return sub_29AE62420(a1);
  }

  else
  {
    return *pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3f>::Invoke, &stru_2A2040998);
  }
}

int8x8_t sub_29AE60830(float a1)
{
  v1 = (a1 + -1000.0) / 9000.0;
  v2 = 1.0;
  if (v1 <= 1.0)
  {
    v2 = v1;
  }

  if (v1 >= 0.0)
  {
    v3 = v2 * 18.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = vcvtms_s32_f32(v3);
  v5 = v3 - floorf(v3);
  v6 = &unk_29B71046C + 12 * v4;
  v7 = *(v6 + 2);
  v8 = *(v6 + 5);
  v9 = *(v6 + 8);
  v10 = *(v6 + 11);
  v11 = ((((v7 * 0.0) + v8) + (v9 * 0.0)) + (v10 * 0.0)) + (v5 * (((((v7 * -0.5) + (v8 * 0.0)) + (v9 * 0.5)) + (v10 * 0.0)) + (v5 * ((((v7 + (v8 * -2.5)) + (v9 + v9)) - (v10 * 0.5)) + (v5 * ((((v7 * -0.5) + (v8 * 1.5)) - (v9 * 1.5)) + (v10 * 0.5)))))));
  v12 = *(v6 + 12);
  v13 = *(v6 + 24);
  v14 = *(v6 + 36);
  v15 = vmul_f32(*v6, 0xBF000000BF000000);
  __asm { FMOV            V17.2S, #1.5 }

  v21 = vmul_f32(v14, 0x3F0000003F000000);
  __asm { FMOV            V20.2S, #-2.5 }

  v23 = vmul_f32(v14, 0);
  v24 = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(*v6, 0), v12), vmul_f32(v13, 0)), v23), vmul_n_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v15, vmul_f32(v12, 0)), vmul_f32(v13, 0x3F0000003F000000)), v23), vmul_n_f32(vadd_f32(vsub_f32(vadd_f32(vadd_f32(*v6, vmul_f32(v12, _D20)), vadd_f32(v13, v13)), v21), vmul_n_f32(vadd_f32(vsub_f32(vadd_f32(v15, vmul_f32(v12, _D17)), vmul_f32(v13, _D17)), v21), v5)), v5)), v5));
  v25 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v24), 1.0 / (vaddv_f32(vmul_f32(v24, 0x3F3717593E59B3D0)) + (v11 * 0.0722))));
  return vbic_s8(v25, vcltz_f32(v25));
}

float sub_29AE60A14(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A3F9DF4(a1) & 1) == 0)
  {
    return *pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A8D6C3C, MEMORY[0x29EDC94C0]);
  }

  return sub_29AE62490(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStLight::_PrepareDomeLight@<X0>(const pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2@<X2>, __n128 *a3@<X8>)
{
  v46 = *MEMORY[0x29EDCA608];
  v38 = xmmword_29B43C8B0;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(a3, &v38);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetHasShadow(a3, 0);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetIsDomeLight(a3, 1);
  *&v38 = 0;
  DWORD2(v38) = 0;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetAttenuation(a3, &v38);
  if (!(*(*a2 + 80))(a2, a1))
  {
    return pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetHasIntensity(a3, 0);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v6)
  {
    v6 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 320))(&v38, a2, a1, v6 + 56);
  v7 = sub_29AE60A14(&v38);
  sub_29A186B14(&v38);
  if (v7 == 0.0)
  {
    return pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetHasIntensity(a3, 0);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v9)
  {
    v9 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 320))(&v38, a2, a1, v9 + 8);
  v10 = sub_29AE607D4(&v38);
  v12 = v11;
  v14 = v13;
  sub_29A186B14(&v38);
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v15)
  {
    v15 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 320))(&v44, a2, a1, v15 + 24);
  if (sub_29A1EFCDC(&v44))
  {
    v16 = (v45 & 4) != 0 ? (*((v45 & 0xFFFFFFFFFFFFFFF8) + 168))(&v44) : &v44;
    if (*v16)
    {
      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v17)
      {
        v17 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a2 + 320))(&v38, a2, a1, v17 + 16);
      if (sub_29A3F9DF4(&v38))
      {
        v18 = sub_29A8D5794(&v38);
        v10 = v10 * *sub_29AE60830(*v18).i32;
        v12 = v12 * v19;
        v14 = v14 * v20;
      }

      sub_29A186B14(&v38);
    }
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v21)
  {
    v21 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 320))(&v38, a2, a1, v21 + 56);
  v22 = sub_29AE60A14(&v38);
  sub_29A186B14(&v38);
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v23)
  {
    v23 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 320))(&v38, a2, a1, v23 + 40);
  v24 = sub_29AE60A14(&v38);
  sub_29A186B14(&v38);
  v25 = 50.0;
  if (v24 <= 50.0)
  {
    v25 = v24;
  }

  if (v24 < -50.0)
  {
    v25 = -50.0;
  }

  v26 = exp2f(v25);
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v27)
  {
    v27 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 320))(&v38, a2, a1, v27 + 112);
  v28 = 1.0;
  if (sub_29A3F9DF4(&v38))
  {
    if ((BYTE8(v38) & 4) != 0)
    {
      v28 = *(*((*(&v38 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v38);
    }

    else
    {
      v28 = *&v38;
    }
  }

  sub_29A186B14(&v38);
  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v29)
  {
    v29 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 320))(&v38, a2, a1, v29 + 120);
  v30 = 1.0;
  if (sub_29A3F9DF4(&v38))
  {
    if ((BYTE8(v38) & 4) != 0)
    {
      v30 = *(*((*(&v38 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v38);
    }

    else
    {
      v30 = *&v38;
    }
  }

  v31 = v22 * v26;
  sub_29A186B14(&v38);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetHasIntensity(a3, v31 != 0.0);
  v32 = v10 * v31;
  v33 = v12 * v31;
  v34 = v14 * v31;
  *&v38 = v32 * v28;
  *(&v38 + 1) = v33 * v28;
  *(&v38 + 2) = v34 * v28;
  *(&v38 + 3) = v28;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetDiffuse(a3, &v38);
  *&v38 = v32 * v30;
  *(&v38 + 1) = v33 * v30;
  *(&v38 + 2) = v34 * v30;
  *(&v38 + 3) = v30;
  v35 = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpecular(a3, &v38);
  v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v36)
  {
    v36 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 320))(&v42, a2, a1, v36 + 80, v35);
  if (v43)
  {
    if (sub_29A1FA780(&v42))
    {
      if ((v43 & 4) != 0)
      {
        v37 = (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(&v42);
      }

      else
      {
        v37 = v42;
      }

      pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetDomeLightTextureFile(a3, v37);
    }

    else
    {
      *&v38 = "hdSt/light.cpp";
      *(&v38 + 1) = "_PrepareDomeLight";
      v39 = 333;
      v40 = "GlfSimpleLight pxrInternal__aapl__pxrReserved__::HdStLight::_PrepareDomeLight(const SdfPath &, HdSceneDelegate *const)";
      v41 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v38, 1, "Dome light texture file not an asset path.");
    }
  }

  sub_29A186B14(&v42);
  return sub_29A186B14(&v44);
}

void sub_29AE610D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A186B14(&a9);
  sub_29A186B14(va);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(v15);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStLight::_PrepareSimpleLight@<X0>(const pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2@<X2>, pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a3@<X8>)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v6)
  {
    v6 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  (*(*a2 + 120))(v13, a2, a1, v6 + 240);
  if (sub_29AE613A4(v13) & 1) != 0 || (*&v9 = "hdSt/light.cpp", *(&v9 + 1) = "_PrepareSimpleLight", v10 = 354, v11 = "GlfSimpleLight pxrInternal__aapl__pxrReserved__::HdStLight::_PrepareSimpleLight(const SdfPath &, HdSceneDelegate *const)", v12 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v9, "v.IsHolding<GlfSimpleLight>()", 0)))
  {
    v7 = sub_29AE61430(v13);
    sub_29AB82270(a3, v7);
  }

  v9 = xmmword_29B43C8B0;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(a3, &v9);
  return sub_29A186B14(v13);
}

void sub_29AE6136C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE613A4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B710574 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2098110);
}

void **sub_29AE61430(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AE613A4(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AE624F0, &stru_2A2098110);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStLight::Sync(pxrInternal__aapl__pxrReserved__::HdStLight *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v73 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v59, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStLight::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)");
  if (a2 || (v65[0] = "hdSt/light.cpp", v65[1] = "Sync", *&v66 = 380, *(&v66 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdStLight::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)", LOBYTE(v67) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v65, "sceneDelegate != nullptr", 0) & 1) != 0))
  {
    v7 = *a4;
    if (*a4)
    {
      (*(*a2 + 72))(v65, a2, this + 8);
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v8)
      {
        v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v61[0] = (v8 + 640);
      v9 = sub_29AC1E77C(this + 8, v8 + 80, &unk_29B4D6118, v61);
      sub_29A3FC3C4(v9 + 3, v65);
    }

    if ((v7 & 2) != 0)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v10)
      {
        v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStLight::Get(v61, this, (v10 + 272));
      if (sub_29A23DDC0(v61))
      {
        if ((v61[1] & 4) != 0)
        {
          (*((v61[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v61);
        }

        v65[1] = 0;
        v65[0] = 0;
        *&v66 = 0;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v11)
      {
        v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v11 + 35) ^ *(this + 3)) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::HdStLight::_PrepareSimpleLight((this + 8), a2, v65);
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v12)
        {
          v12 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        *&v51 = v12 + 240;
        v13 = sub_29AC1E77C(this + 8, v12 + 30, &unk_29B4D6118, &v51);
        sub_29AE62178((v13 + 3), v65);
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v14)
      {
        v14 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v14 + 30) ^ *(this + 3)) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::HdStLight::_PrepareDomeLight((this + 8), a2, v65);
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v15)
        {
          v15 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        *&v51 = v15 + 240;
        v16 = sub_29AC1E77C(this + 8, v15 + 30, &unk_29B4D6118, &v51);
        sub_29AE62178((v16 + 3), v65);
      }

      pxrInternal__aapl__pxrReserved__::HdStLight::_ApproximateAreaLight(this, (this + 8), a2, v65);
      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v17)
      {
        v17 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      *&v51 = v17 + 240;
      v18 = sub_29AC1E77C(this + 8, v17 + 30, &unk_29B4D6118, &v51);
      sub_29AE62178((v18 + 3), v65);
    }

    if ((v7 & 3) != 0)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v19)
      {
        v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStLight::Get(v61, this, (v19 + 640));
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      *v65 = 0u;
      v66 = 0u;
      if (sub_29A3FC38C(v61))
      {
        if ((v61[1] & 4) != 0)
        {
          v20 = (*((v61[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v61);
        }

        else
        {
          v20 = v61[0];
        }
      }

      else
      {
        v20 = v65;
      }

      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 3);
      v53 = *(v20 + 2);
      v54 = v23;
      v51 = v21;
      v52 = v22;
      v24 = *(v20 + 4);
      v25 = *(v20 + 5);
      v26 = *(v20 + 7);
      v57 = *(v20 + 6);
      v58 = v26;
      v55 = v24;
      v56 = v25;
      sub_29A186B14(v61);
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v27)
      {
        v27 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v27 + 30) ^ *(this + 3)) <= 7)
      {
        v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v28)
        {
          v28 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        (*(*a2 + 320))(&v63, a2, this + 8, v28 + 32);
        if (sub_29A3FC38C(&v63))
        {
          if ((v64 & 4) != 0)
          {
            v29 = (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(&v63);
          }

          else
          {
            v29 = v63;
          }

          v30 = *v29;
          v31 = v29[1];
          v32 = v29[3];
          v67 = v29[2];
          v68 = v32;
          *v65 = v30;
          v66 = v31;
          v33 = v29[4];
          v34 = v29[5];
          v35 = v29[7];
          v71 = v29[6];
          v72 = v35;
          v69 = v33;
          v70 = v34;
          pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v65, &v51);
          v55 = v69;
          v56 = v70;
          v57 = v71;
          v58 = v72;
          v51 = *v65;
          v52 = v66;
          v53 = v67;
          v54 = v68;
        }

        v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v36)
        {
          v36 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStLight::Get(&v62, this, (v36 + 240));
        v50 = xmmword_29B43C8B0;
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(v61, &v50);
        sub_29AE62244(&v62, v61, v65);
      }

      v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v37)
      {
        v37 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v37 + 35) ^ *(this + 3)) >= 8)
      {
        v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v38)
        {
          v38 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStLight::Get(&v63, this, (v38 + 240));
        v62 = xmmword_29B43C8B0;
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(v61, &v62);
        sub_29AE62244(&v63, v61, v65);
      }
    }

    if ((v7 & 4) != 0)
    {
      v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v39)
      {
        v39 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a2 + 320))(v65, a2, this + 8, v39 + 256);
      v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v40)
      {
        v40 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      v61[0] = (v40 + 256);
      v41 = sub_29AC1E77C(this + 8, v40 + 32, &unk_29B4D6118, v61);
      sub_29A18606C(v41 + 3, v65);
      sub_29A186B14(v65);
    }

    if ((v7 & 8) != 0)
    {
      v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      if (!v42)
      {
        v42 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
      }

      (*(*a2 + 320))(v61, a2, this + 8, v42 + 248);
      if (sub_29AC0660C(v61))
      {
        if ((v61[1] & 4) != 0)
        {
          v43 = (*((v61[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v61);
        }

        else
        {
          v43 = v61[0];
        }

        pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v65, v43);
        v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v44)
        {
          v44 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        *&v51 = v44 + 248;
        v45 = sub_29AC1E77C(this + 8, v44 + 31, &unk_29B4D6118, &v51);
        if ((sub_29AE628B4((v45 + 3), v65) & 1) == 0)
        {
          v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
          if (!v46)
          {
            v46 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
          }

          *&v51 = v46 + 248;
          v47 = sub_29AC1E77C(this + 8, v46 + 31, &unk_29B4D6118, &v51);
          sub_29AE622B8((v47 + 3), v65);
          pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkCollectionDirty((*(a2 + 1) + 440), &v65[1]);
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v65);
        v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v48)
        {
          v48 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        *&v51 = v48 + 248;
        v49 = sub_29AC1E77C(this + 8, v48 + 31, &unk_29B4D6118, &v51);
        sub_29AE622B8((v49 + 3), v65);
      }

      pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(v65);
      sub_29A186B14(v61);
    }

    *a4 = 0;
  }

  if (v59)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v60, v59);
  }
}