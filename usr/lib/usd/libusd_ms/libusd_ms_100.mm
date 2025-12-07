void sub_29AA2AC08(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase::~Sdf_FileFormatFactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType *sub_29AA2ACBC(atomic_ullong *a1)
{
  result = sub_29AA2AD04();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType::~UsdXpcFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType *sub_29AA2AD04()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType::UsdXpcFileFormatTokens_StaticTokenType(v0);
  return v0;
}

double pxrInternal__aapl__pxrReserved__::converterUtils::makeValidIdentifier@<D0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  memset(&v27, 0, sizeof(v27));
  v3 = *(a1 + 23);
  v4 = a1[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
  }

  if (!v4)
  {
    goto LABEL_46;
  }

  v6 = 0;
  v7 = v3 >> 63;
  v8 = MEMORY[0x29EDCA600];
  do
  {
    if (v7)
    {
      v9 = *a1;
    }

    else
    {
      v9 = a1;
    }

    v10 = *(v9 + v6);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = __maskrune(v10, 0x500uLL);
    }

    else
    {
      v11 = *(v8 + 4 * v10 + 60) & 0x500;
    }

    if (v11)
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      std::string::push_back(&v27, *(v12 + v6));
    }

    else
    {
      std::string::append(&v27, "_");
    }

    ++v6;
    v13 = *(a1 + 23);
    v7 = v13 >> 63;
    if ((v13 & 0x80000000) != 0)
    {
      v13 = a1[1];
    }
  }

  while (v6 < v13);
  v14 = v27.__r_.__value_.__r.__words[0];
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v27;
  }

  else
  {
    v15 = v27.__r_.__value_.__r.__words[0];
  }

  v16 = v15->__r_.__value_.__s.__data_[0];
  if ((v16 & 0x8000000000000000) == 0 && (*(v8 + 4 * v16 + 60) & 0x400) != 0)
  {
    std::operator+<char>();
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v27 = v26;
    v14 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v27;
  }

  v17 = v14->__r_.__value_.__s.__data_[0];
  v18 = v14->__r_.__value_.__s.__data_[0] && (v17 - 48) >= 0xA;
  if (!v18 || v17 != 95 && (v17 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_46;
  }

  do
  {
    v20 = v14->__r_.__value_.__s.__data_[0];
    v14 = (v14 + 1);
    v19 = v20;
    v21 = (v20 & 0xFFFFFFDF) - 65;
    v22 = v20 - 48;
  }

  while (v20 == 95 || v21 < 0x1A || v22 < 0xA);
  if (!v19)
  {
    result = *&v27.__r_.__value_.__l.__data_;
    *a2 = v27;
  }

  else
  {
LABEL_46:
    sub_29A008E78(a2, "defaultIdentifier");
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

void sub_29AA2AF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::converterUtils::Asset::getPath(pxrInternal__aapl__pxrReserved__::converterUtils::Asset *this@<X0>, std::string *a2@<X8>)
{
  sub_29A008E78(&v11, "/");
  v6 = *(this + 1);
  v5 = this + 8;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = v5[23];
  }

  else
  {
    v9 = *(v5 + 1);
  }

  v10 = std::string::append(&v11, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_29AA2AFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::converterUtils::Asset::getMaterialsPath@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v16[2] = *MEMORY[0x29EDCA608];
  if (*(this + 55) < 0)
  {
    if (this[5])
    {
      return sub_29A008D14(a2, v2[4], v2[5]);
    }
  }

  else if (*(this + 55))
  {
LABEL_16:
    *a2 = *(v2 + 2);
    *(a2 + 16) = v2[6];
    return this;
  }

  pxrInternal__aapl__pxrReserved__::converterUtils::Asset::getPath(this, &v15);
  v4 = std::string::append(&v15, "/Materials");
  v5 = v4->__r_.__value_.__r.__words[0];
  v16[0] = v4->__r_.__value_.__l.__size_;
  *(v16 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
  v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (*(v2 + 55) < 0)
  {
    operator delete(v2[4]);
  }

  v7 = v16[0];
  v2[4] = v5;
  v2[5] = v7;
  *(v2 + 47) = *(v16 + 7);
  *(v2 + 55) = v6;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v8 = sub_29A5A70E0(v2);
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v15, (v2 + 4));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v16, "Scope");
  pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(v8, &v15, &v10);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11, v9);
  }

  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v15.__r_.__value_.__r.__words + 1);
  this = sub_29A1DE3A4(&v15);
  if ((*(v2 + 55) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  return sub_29A008D14(a2, v2[4], v2[5]);
}

void sub_29AA2B19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::converterUtils::Asset::getGeomPath@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v16[2] = *MEMORY[0x29EDCA608];
  if (*(this + 79) < 0)
  {
    if (this[8])
    {
      return sub_29A008D14(a2, v2[7], v2[8]);
    }
  }

  else if (*(this + 79))
  {
LABEL_16:
    *a2 = *(v2 + 7);
    *(a2 + 16) = v2[9];
    return this;
  }

  pxrInternal__aapl__pxrReserved__::converterUtils::Asset::getPath(this, &v15);
  v4 = std::string::append(&v15, "/Geom");
  v5 = v4->__r_.__value_.__r.__words[0];
  v16[0] = v4->__r_.__value_.__l.__size_;
  *(v16 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
  v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (*(v2 + 79) < 0)
  {
    operator delete(v2[7]);
  }

  v7 = v16[0];
  v2[7] = v5;
  v2[8] = v7;
  *(v2 + 71) = *(v16 + 7);
  *(v2 + 79) = v6;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v8 = sub_29A5A70E0(v2);
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v15, (v2 + 7));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v16, "Scope");
  pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(v8, &v15, &v10);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11, v9);
  }

  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v15.__r_.__value_.__r.__words + 1);
  this = sub_29A1DE3A4(&v15);
  if ((*(v2 + 79) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  return sub_29A008D14(a2, v2[7], v2[8]);
}

void sub_29AA2B3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::converterUtils::Asset::makeUsdStage(pxrInternal__aapl__pxrReserved__::converterUtils::Asset *this)
{
  v6[3] = *MEMORY[0x29EDCA608];
  sub_29A008E78(&__p, ".usda");
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous(&__p, &v5, &v4);
  sub_29A01752C(&v5, v6[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A321960(&__p, &v4);
  pxrInternal__aapl__pxrReserved__::UsdStage::Open(&__p, 0, &v5);
  *this = v5;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_RemoveRef();
}

void sub_29AA2B7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA2B9A8(pxrInternal__aapl__pxrReserved__::UsdStage *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[1] = &off_2A2044DD0;
  sub_29A1B01B8(v9, a4);
  v7 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadataByDictKey(a1, a2, a3, v9);
  sub_29A186B14(v9);
  return v7;
}

void sub_29AA2BA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::converterUtils::Material::makeUsdMaterial(uint64_t a1@<X0>, uint64_t *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  sub_29A89A040(v7, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v8, a1);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::Define(v7, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29B295ABC(&v8, v7);
  v6 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
}

void pxrInternal__aapl__pxrReserved__::converterUtils::Material::_createSurfaceShader(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdShadeMaterial *a2@<X1>, uint64_t *a3@<X2>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a4@<X8>)
{
  v38 = *MEMORY[0x29EDCA608];
  sub_29A735768(a2, &v33);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v33);
  if (*(String + 23) < 0)
  {
    sub_29A008D14(__p, *String, String[1]);
  }

  else
  {
    v9 = *String;
    v32 = String[2];
    *__p = v9;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v33 + 1);
  sub_29A1DE3A4(&v33);
  sub_29A89A040(v21, a3);
  if (v32 >= 0)
  {
    v10 = HIBYTE(v32);
  }

  else
  {
    v10 = __p[1];
  }

  sub_29A022DE0(v27, v10 + 14);
  if (v28 >= 0)
  {
    v11 = v27;
  }

  else
  {
    v11 = v27[0];
  }

  if (v10)
  {
    if (v32 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    memmove(v11, v12, v10);
  }

  strcpy(v11 + v10, "/surfaceShader");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v29, v27);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define(v21, &v33);
  v14 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(v34 + 6, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15, v13);
  }

  *(a1 + 32) = v14;
  sub_29A2258F0((a1 + 40), &v35);
  sub_29A225948((a1 + 44), &v36);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&v33);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30);
  sub_29B2BC328(&v29, &v28, v27, v21);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v21, "UsdPreviewSurface");
  sub_29B2BC3A0(&v33, v21);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr((a1 + 24), &v33, 0, v22);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
  sub_29A1DE3A4(&v24);
  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v16);
  }

  sub_29A186B14(&v33);
  if ((v21[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v21[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  if (!v17)
  {
    v17 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::CreateSurfaceOutput(&v33, a2, (v17 + 216));
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::ConnectableAPI(v21, (a1 + 24));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v20, "surface");
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v19);
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::ConnectToSource();
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(v21);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36);
  sub_29A1DE3A4(&v35);
  if (v34)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34, v18);
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a4, (a1 + 24));
  *a4 = &unk_2A2061448;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA2BEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::converterUtils::Material::makeUsdUVTexture(uint64_t a1, const void **a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a4, uint64_t *a5)
{
  v32 = *MEMORY[0x29EDCA608];
  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = &v22;
  sub_29A022DE0(&v22, v9 + 10);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v22.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "/uvReader_");
  v12 = *(a3 + 175);
  if (v12 >= 0)
  {
    v13 = (a3 + 152);
  }

  else
  {
    v13 = *(a3 + 152);
  }

  if (v12 >= 0)
  {
    v14 = *(a3 + 175);
  }

  else
  {
    v14 = *(a3 + 160);
  }

  v15 = std::string::append(&v22, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v31 = v15->__r_.__value_.__r.__words[2];
  v30 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(v29, &v30);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v17 = sub_29A89A040(&v30, a5);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define(v17, v28);
  sub_29B28F9E0(&v30);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v21, "UsdPrimvarReader_float2");
  sub_29B2BC3E0(&v30, v21, &v22);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr(v28, &v30, 0, v23);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26);
  sub_29A1DE3A4(&v25);
  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24, v18);
  }

  sub_29A186B14(&v30);
  if ((v21[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v21[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a3 + 64))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22, "varname");
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v19)
    {
      v19 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput(v28, &v22, (v19 + 88), &v30);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v21, a3 + 152);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22, "frame:stPrimvarName");
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v20)
  {
    v20 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::CreateInput(a4, &v22, (v20 + 88), &v30);
  if ((v22.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v22.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v22, a3 + 152);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>();
}

void sub_29AA2CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&a24);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((v36 - 176));
  sub_29A1DCEA8((v36 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_29AA2CEC8(int a1)
{
  if ((atomic_load_explicit(&qword_2A14F8E50, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    v3 = __cxa_guard_acquire(&qword_2A14F8E50);
    a1 = v2;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v4)
      {
        v4 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      qword_2A14F8E18[0] = *(v4 + 32);
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v5)
      {
        v5 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      qword_2A14F8E20 = *(v5 + 35);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v6)
      {
        v6 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      qword_2A14F8E28 = *(v6 + 7);
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v7)
      {
        v7 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      qword_2A14F8E30 = *(v7 + 35);
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v8)
      {
        v8 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      qword_2A14F8E38 = *(v8 + 7);
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v9)
      {
        v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      qword_2A14F8E40 = *(v9 + 7);
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v10)
      {
        v10 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      qword_2A14F8E48 = *(v10 + 7);
      __cxa_guard_release(&qword_2A14F8E50);
      a1 = v2;
    }
  }

  return qword_2A14F8E18[a1];
}

char *sub_29AA2D050(int a1)
{
  if ((atomic_load_explicit(&qword_2A14F8F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F00))
  {
    sub_29A008E78(qword_2A14F8E58, "normal");
    sub_29A008E78(qword_2A14F8E70, "diffuseColor");
    sub_29A008E78(qword_2A14F8E88, "opacity");
    sub_29A008E78(qword_2A14F8EA0, "emissiveColor");
    sub_29A008E78(qword_2A14F8EB8, "occlusion");
    sub_29A008E78(qword_2A14F8ED0, "metallic");
    sub_29A008E78(qword_2A14F8EE8, "roughness");
    __cxa_atexit(sub_29AA2D360, 0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F00);
  }

  return &qword_2A14F8E58[3 * a1];
}

void pxrInternal__aapl__pxrReserved__::converterUtils::Material::makeConstInput(pxrInternal__aapl__pxrReserved__::converterUtils::Material *this, serialize::MapInput *a2, pxrInternal__aapl__pxrReserved__::UsdShadeMaterial *a3)
{
  v13 = sub_29AA2CEC8(*(a2 + 16));
  v5 = *(a2 + 103);
  if (v5 < 0)
  {
    v5 = *(a2 + 11);
  }

  if (v5 == 3)
  {
    v6 = *(a2 + 19);
    v11 = *(a2 + 68);
    v12 = v6;
    v7 = sub_29AA2D050(*(a2 + 16));
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9, v7);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput((this + 24), &v9, &v13, v10);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec3f>();
  }

  v8 = sub_29AA2D050(*(a2 + 16));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11, v8);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput((this + 24), &v11, &v13, v10);
  LODWORD(v9) = *(a2 + 17);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<float>();
}

void sub_29AA2D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_29A7CCF50(&a10);
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AA2D360()
{
  v0 = &byte_2A14F8EFF;
  v1 = -168;
  v2 = &byte_2A14F8EFF;
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

void *pxrInternal__aapl__pxrReserved__::XpcConverter::XpcConverter(void *this)
{
  this[3] = 0;
  this[2] = 0;
  *this = &unk_2A206F568;
  this[1] = this + 2;
  return this;
}

{
  this[3] = 0;
  this[2] = 0;
  *this = &unk_2A206F568;
  this[1] = this + 2;
  return this;
}

void pxrInternal__aapl__pxrReserved__::XpcConverter::~XpcConverter(pxrInternal__aapl__pxrReserved__::XpcConverter *this)
{
  *this = &unk_2A206F568;
  sub_29AA2EEC8(this + 8, *(this + 2));
}

{
  *this = &unk_2A206F568;
  sub_29AA2EEC8(this + 8, *(this + 2));
}

{
  *this = &unk_2A206F568;
  sub_29AA2EEC8(this + 8, *(this + 2));

  operator delete(this);
}

void pxrInternal__aapl__pxrReserved__::XpcConverter::createMaterial(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_29AA2ECD0(&__p, (a2 + 16));
  if (a3[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
}

void sub_29AA2D6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial(va);
  sub_29AA2D6F4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA2D6F4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::XpcConverter::createMesh(uint64_t a1, uint64_t a2, void *a3)
{
  v7[6] = *MEMORY[0x29EDCA608];
  if (*(a2 + 72) != *(a2 + 64))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(v7, a2 + 16);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define(a3, v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7 + 1);
    sub_29A1DE3A4(v7);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v5, v6);
    v5[3] = 0;
    v5[0] = &unk_2A2060598;
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetSubdivisionSchemeAttr(v6, v7);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens))
    {
      sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>();
  }
}

void sub_29AA2E1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29AA2E444@<X0>(int a1@<W0>, atomic_uint **a2@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (a1 == 3)
  {
    if (!result)
    {
      result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v5 = *(result + 40);
  }

  else if (a1 == 1)
  {
    if (!result)
    {
      result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v5 = *(result + 146);
  }

  else
  {
    if (!result)
    {
      result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v5 = *(result + 154);
  }

  *a2 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v6;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::XpcConverter::createPointCloud(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v29, a2 + 16);
  pxrInternal__aapl__pxrReserved__::UsdGeomPoints::Define(a3, v27);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29 + 1);
  sub_29A1DE3A4(&v29);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_29A8E740C(&v24, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 2));
  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  while (v6 != v7)
  {
    v8 = *(v6 + 8);
    v29 = *v6;
    LODWORD(v30) = v8;
    sub_29AA261EC(&v24, &v29);
    v6 += 12;
  }

  v30 = &off_2A20433C0;
  v9 = operator new(0x30uLL);
  v10 = v25;
  *v9 = v24;
  *(v9 + 1) = v10;
  v11 = v26;
  *(v9 + 4) = v26;
  if (v11)
  {
    v12 = (v11 - 16);
    if (*(v9 + 3))
    {
      v12 = *(v9 + 3);
    }

    atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v9 + 10);
  v29 = v9;
  atomic_fetch_add_explicit(v9 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::CreatePointsAttr(v27, &v29, 0, v19);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v13);
  }

  sub_29A186B14(&v29);
  if (*(a2 + 96) != *(a2 + 88))
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens))
    {
      sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::CreateDisplayColorPrimvar(v27, &v29);
  }

  if (*(a2 + 135) < 0)
  {
    if (!*(a2 + 120))
    {
      goto LABEL_25;
    }
  }

  else if (!*(a2 + 135))
  {
LABEL_25:
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v29 = (a2 + 112);
  v15 = sub_29AA2EF74((a1 + 8), (a2 + 112), &unk_29B4D6118, &v29, &v28);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v18, (v15 + 7));
  v18 = &unk_2A2061000;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v29, v27);
  v31 = 0;
  v29 = &unk_2A20611A8;
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  if (!v16)
  {
    v16 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  if (!v17)
  {
    v17 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::Bind(&v29, &v18, (v16 + 40), v17);
}

void sub_29AA2E8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::XpcConverter::makeUsdStage(uint64_t *__return_ptr a1@<X8>, serialize::Prim *a3@<X1>)
{
  if (*(a3 + 2) == 2)
  {
    if (*(a3 + 87) < 0)
    {
      sub_29A008D14(__p, *(a3 + 8), *(a3 + 9));
    }

    else
    {
      *__p = *(a3 + 4);
      v4 = *(a3 + 10);
    }

    sub_29AA2EE74(v5, __p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::converterUtils::Asset::makeUsdStage(v5);
  }

  *a1 = 0;
}

void sub_29AA2EC6C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  sub_29A5AD4D8(a1);
}

char *sub_29AA2ECD0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  v6 = 1;
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v9);
  v10 = 0;
  *pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((__dst + 24), &v6) = &unk_2A2061448;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return __dst;
}

void sub_29AA2EDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A57F434(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void *sub_29AA2EDD8(void *result, unint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    if (result[3])
    {
      v3 = result;
    }

    else
    {
      v3 = (v2 - 8);
    }

    if (*v3 < a2)
    {
      v4 = *result;
      v5 = sub_29A190EBC(result, a2);
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          v5[i] = *(v2 + i * 8);
        }
      }

LABEL_12:
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }
  }

  else if (a2)
  {
    sub_29A190EBC(result, a2);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_29AA2EE74(uint64_t a1, uint64_t **a2)
{
  *a1 = 0;
  pxrInternal__aapl__pxrReserved__::converterUtils::makeValidIdentifier(a2, (a1 + 8));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_29AA2EEC8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AA2EEC8(a1, *a2);
    sub_29AA2EEC8(a1, a2[1]);
    sub_29AA2EF24((a2 + 4));

    operator delete(a2);
  }
}

void sub_29AA2EF24(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_29AA2EF74(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AA2F00C(a1, &v9, a4);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

char *sub_29AA2F00C@<X0>(char *a1@<X0>, char **a2@<X8>, __int128 **a3@<X2>)
{
  v6 = operator new(0x50uLL);
  *a2 = v6;
  a2[1] = a1;
  a2[2] = 0;
  v8 = *a3;
  result = sub_29AA2F08C(v6 + 32, &v8);
  *(a2 + 16) = 1;
  return result;
}

char *sub_29AA2F08C(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  v7 = 1;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
  v11 = 0;
  *pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((__dst + 24), &v7) = &unk_2A2061000;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  sub_29A1DE3A4(&v9);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v5);
  }

  return __dst;
}

void sub_29AA2F170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A57F434(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void sub_29AA2F194(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AA2EF24(v2 + 32);
    }

    operator delete(v2);
  }
}

_BYTE *serialize::Serializer::Serializer(_BYTE *this)
{
  *this = 1;
  return this;
}

{
  *this = 1;
  return this;
}

char *serialize::Serializer::load(xpc_object_t *this)
{
  *this = 0;
  int64 = xpc_dictionary_get_int64(this[1], "type");
  v3 = 0;
  if (int64 > 4)
  {
    if (int64 > 6)
    {
      if (int64 == 7)
      {
        v3 = operator new(0x68uLL);
        sub_29AA3052C(v3, 1);
        goto LABEL_24;
      }

      if (int64 != 8)
      {
        return v3;
      }

      v3 = operator new(0xB0uLL);
      sub_29A008E78(__p, "");
      sub_29AA30620(v3, 1, __p);
    }

    else
    {
      if (int64 != 5)
      {
        v3 = operator new(0x40uLL);
        sub_29A008E78(__p, "");
        *v3 = &unk_2A206F598;
        *(v3 + 2) = 6;
        if ((SHIBYTE(v10) & 0x80000000) == 0)
        {
          *(v3 + 1) = *__p;
          *(v3 + 4) = v10;
          *(v3 + 5) = 0;
          *(v3 + 6) = 0;
          *(v3 + 7) = 0;
          *v3 = &unk_2A206F6F8;
          goto LABEL_24;
        }

        sub_29A008D14(v3 + 16, __p[0], __p[1]);
        v7 = SHIBYTE(v10);
        *(v3 + 6) = 0;
        *(v3 + 7) = 0;
        *(v3 + 5) = 0;
        *v3 = &unk_2A206F6F8;
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_20:
        operator delete(__p[0]);
        goto LABEL_24;
      }

      v3 = operator new(0x88uLL);
      sub_29A008E78(__p, "");
      sub_29AA302F0(v3, __p);
    }

    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (int64 > 2)
  {
    if (int64 == 3)
    {
      v3 = operator new(0x88uLL);
      sub_29A008E78(__p, "");
      *v3 = &unk_2A206F598;
      *(v3 + 2) = 3;
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        *(v3 + 1) = *__p;
        *(v3 + 4) = v10;
        *(v3 + 5) = 0;
        *(v3 + 6) = 0;
        *(v3 + 7) = 0;
        *v3 = &unk_2A206F620;
        *(v3 + 4) = 0u;
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        *(v3 + 7) = 0u;
        *(v3 + 16) = 0;
        goto LABEL_24;
      }

      sub_29A008D14(v3 + 16, __p[0], __p[1]);
      v6 = SHIBYTE(v10);
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      *(v3 + 5) = 0;
      *v3 = &unk_2A206F620;
      *(v3 + 4) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 7) = 0u;
      *(v3 + 16) = 0;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v3 = operator new(0x128uLL);
      sub_29A008E78(__p, "");
      *v3 = &unk_2A206F598;
      *(v3 + 2) = 4;
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        *(v3 + 1) = *__p;
        *(v3 + 4) = v10;
        *(v3 + 5) = 0;
        *(v3 + 6) = 0;
        *(v3 + 7) = 0;
        *v3 = &unk_2A206F668;
        *(v3 + 35) = 0;
        *(v3 + 36) = 0;
        *(v3 + 34) = 0;
        *(v3 + 4) = 0u;
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        *(v3 + 7) = 0u;
        *(v3 + 8) = 0u;
        *(v3 + 9) = 0u;
        *(v3 + 10) = 0u;
        *(v3 + 11) = 0u;
        *(v3 + 12) = 0u;
        *(v3 + 13) = 0u;
        *(v3 + 14) = 0u;
        *(v3 + 15) = 0u;
        *(v3 + 252) = 0u;
        goto LABEL_24;
      }

      sub_29A008D14(v3 + 16, __p[0], __p[1]);
      v8 = SHIBYTE(v10);
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      *(v3 + 5) = 0;
      *v3 = &unk_2A206F668;
      *(v3 + 35) = 0;
      *(v3 + 36) = 0;
      *(v3 + 34) = 0;
      *(v3 + 4) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 7) = 0u;
      *(v3 + 8) = 0u;
      *(v3 + 9) = 0u;
      *(v3 + 10) = 0u;
      *(v3 + 11) = 0u;
      *(v3 + 12) = 0u;
      *(v3 + 13) = 0u;
      *(v3 + 14) = 0u;
      *(v3 + 15) = 0u;
      *(v3 + 252) = 0u;
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

  if (int64 == 1)
  {
    v3 = operator new(0x40uLL);
    sub_29A008E78(__p, "");
    *v3 = &unk_2A206F598;
    *(v3 + 2) = 1;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      *(v3 + 1) = *__p;
      *(v3 + 4) = v10;
      *(v3 + 5) = 0;
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      goto LABEL_24;
    }

    sub_29A008D14(v3 + 16, __p[0], __p[1]);
    v5 = SHIBYTE(v10);
    *(v3 + 6) = 0;
    *(v3 + 7) = 0;
    *(v3 + 5) = 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (int64 == 2)
  {
    v3 = operator new(0x68uLL);
    sub_29AA30434(v3);
LABEL_24:
    (*(*v3 + 24))(v3, this);
  }

  return v3;
}

void sub_29AA2F67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t serialize::Serializer::save(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = xpc_dictionary_create(0, 0, 0);
  (*(*a2 + 24))(a2, a1);
  return *(a1 + 8);
}

void serialize::Serializer::sync(unsigned __int8 *a1, const char *a2, int *a3)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_int64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_int64(v4, a2);
  }
}

{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_int64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_int64(v4, a2);
  }
}

{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_int64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_int64(v4, a2);
  }
}

void serialize::Serializer::sync(unsigned __int8 *a1, const char *a2, const char *a3)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v3 != 1)
  {
    xpc_dictionary_get_string(v4, a2);

    JUMPOUT(0x29C2C1A60);
  }

  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  xpc_dictionary_set_string(v4, a2, a3);
}

float serialize::Serializer::sync(serialize::Serializer *this, const char *a2, float *a3)
{
  v4 = *this;
  v5 = *(this + 1);
  if (v4 == 1)
  {
    v6 = *a3;

    xpc_dictionary_set_double(v5, a2, v6);
  }

  else
  {
    result = xpc_dictionary_get_double(v5, a2);
    *a3 = result;
  }

  return result;
}

void serialize::Serializer::sync(serialize::Serializer *this, const char *a2, unint64_t *a3)
{
  v3 = *this;
  v4 = *(this + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_uint64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_uint64(v4, a2);
  }
}

void serialize::Serializer::sync(serialize::Serializer *this, const char *a2, int *a3)
{
  v3 = *this;
  v4 = *(this + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_uint64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_uint64(v4, a2);
  }
}

void serialize::Serializer::sync(serialize::Serializer *a1, char *a2, float *a3)
{
  sub_29A008E78(&v15, a2);
  v6 = std::string::append(&v15, ":x");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  serialize::Serializer::sync(a1, v8, a3);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v15, a2);
  v9 = std::string::append(&v15, ":y");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v17 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  serialize::Serializer::sync(a1, v11, a3 + 1);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v15, a2);
  v12 = std::string::append(&v15, ":z");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v17 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  serialize::Serializer::sync(a1, v14, a3 + 2);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

{
  sub_29A008E78(&v18, a2);
  v6 = std::string::append(&v18, ":x");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v20 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  serialize::Serializer::sync(a1, v8, a3);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v18, a2);
  v9 = std::string::append(&v18, ":y");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v20 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  serialize::Serializer::sync(a1, v11, a3 + 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v18, a2);
  v12 = std::string::append(&v18, ":z");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  serialize::Serializer::sync(a1, v14, a3 + 2);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v18, a2);
  v15 = std::string::append(&v18, ":w");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v20 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  serialize::Serializer::sync(a1, v17, a3 + 3);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_29AA2FAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29AA2FCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void serialize::Serializer::sync(uint64_t a1, const char *a2, void **a3)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    v6 = a3[1] - *a3;

    xpc_dictionary_set_data(v4, a2, v5, v6);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 8), a2, &length);
    sub_29A36CF34(a3, data, &data[length & 0xFFFFFFFFFFFFFFFCLL], length >> 2);
  }
}

{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    v6 = a3[1] - *a3;

    xpc_dictionary_set_data(v4, a2, v5, v6);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 8), a2, &length);
    sub_29A36CF34(a3, data, &data[length & 0xFFFFFFFFFFFFFFFCLL], length >> 2);
  }
}

void serialize::Serializer::sync(uint64_t a1, const char *a2, uint64_t *a3)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    v6 = a3[1] - *a3;

    xpc_dictionary_set_data(v4, a2, v5, v6);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 8), a2, &length);
    sub_29AA306E4(a3, data, (data + 12 * (length / 0xC)), length / 0xC);
  }
}

{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    v6 = a3[1] - *a3;

    xpc_dictionary_set_data(v4, a2, v5, v6);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 8), a2, &length);
    sub_29AA30874(a3, data, (data + (length & 0xFFFFFFFFFFFFFFF8)), length >> 3);
  }
}

void serialize::Serializer::sync(xpc_object_t *a1, char *a2, uint64_t **a3)
{
  v21 = a3[1] - *a3;
  sub_29A008E78(&v18, a2);
  v6 = std::string::append(&v18, ":count");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v20 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  serialize::Serializer::sync(a1, v8, &v21);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v9 = v21;
  if (v21)
  {
    if (*a1 == 1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
      sub_29A08AF9C(__p, v21);
      v10 = *a3;
      v11 = a3[1];
      if (*a3 != v11)
      {
        do
        {
          v12 = *v10;
          v18.__r_.__value_.__s.__data_[0] = 1;
          v18.__r_.__value_.__l.__size_ = xpc_dictionary_create(0, 0, 0);
          (*(*v12 + 24))(v12, &v18);
          size = v18.__r_.__value_.__l.__size_;
          sub_29A0A71C8(__p, &size);
          ++v10;
        }

        while (v10 != v11);
      }

      v13 = xpc_array_create(__p[0], v9);
      xpc_dictionary_set_value(a1[1], a2, v13);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      value = xpc_dictionary_get_value(a1[1], a2);
      sub_29A08AF9C(a3, v9);
      v15 = 0;
      do
      {
        v16 = xpc_array_get_value(value, v15);
        LOBYTE(__p[0]) = 1;
        __p[1] = v16;
        v18.__r_.__value_.__r.__words[0] = serialize::Serializer::load(__p);
        if (v18.__r_.__value_.__r.__words[0])
        {
          sub_29A0A71C8(a3, &v18);
        }

        ++v15;
      }

      while (v9 != v15);
    }
  }
}

void sub_29AA30228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA30278(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_2A206F598;
  *(a1 + 8) = a3;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_29AA302F0(uint64_t a1, __int128 *a2)
{
  sub_29A008E78(__p, "");
  *a1 = &unk_2A206F598;
  *(a1 + 8) = 5;
  if (SHIBYTE(v8) < 0)
  {
    sub_29A008D14((a1 + 16), __p[0], __p[1]);
    v4 = SHIBYTE(v8);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v8;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *a1 = &unk_2A206F6B0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 88), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 104) = *(a2 + 2);
    *(a1 + 88) = v5;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_29AA303F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 9) = v18;
    operator delete(v18);
  }

  serialize::Prim::~Prim(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA30434(uint64_t a1)
{
  sub_29A008E78(__p, "");
  *a1 = &unk_2A206F598;
  *(a1 + 8) = 2;
  if (SHIBYTE(v5) < 0)
  {
    sub_29A008D14((a1 + 16), __p[0], __p[1]);
    v2 = SHIBYTE(v5);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *a1 = &unk_2A206F5D8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 1008981770;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 24;
  return a1;
}

void sub_29AA30510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA3052C(uint64_t a1, int a2)
{
  sub_29A008E78(__p, "");
  *a1 = &unk_2A206F598;
  *(a1 + 8) = 7;
  if (SHIBYTE(v7) < 0)
  {
    sub_29A008D14((a1 + 16), __p[0], __p[1]);
    v4 = SHIBYTE(v7);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v7;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *a1 = &unk_2A206F740;
  *(a1 + 64) = a2;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0;
  return a1;
}

void sub_29AA30604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA30620(uint64_t a1, int a2, __int128 *a3)
{
  v5 = sub_29AA30278(a1, a3, 8);
  *v5 = &unk_2A206F788;
  *(v5 + 64) = a2;
  __asm { FMOV            V0.4S, #1.0 }

  *(v5 + 68) = _Q0;
  *(v5 + 104) = 0u;
  *(v5 + 92) = 0;
  *(v5 + 84) = 0;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  sub_29A008E78((v5 + 152), "st");
  return a1;
}

void sub_29AA306B0(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v2);
  }

  serialize::Prim::~Prim(v1);
  _Unwind_Resume(a1);
}

char *sub_29AA306E4(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0x1555555555555555;
    }

    else
    {
      v12 = v11;
    }

    result = sub_29A379A04(a1, v12);
    v13 = a1[1];
    while (v6 != a3)
    {
      *v13 = *v6;
      *(v13 + 8) = *(v6 + 2);
      v6 = (v6 + 12);
      v13 += 12;
    }

LABEL_21:
    a1[1] = v13;
    return result;
  }

  v14 = a1[1];
  v15 = v14 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v14 - result) >> 2) < a4)
  {
    v16 = (a2 + v15);
    if (v14 != result)
    {
      do
      {
        v17 = *v6;
        *(result + 2) = *(v6 + 2);
        *result = v17;
        result += 12;
        v6 = (v6 + 12);
        v15 -= 12;
      }

      while (v15);
      v14 = a1[1];
    }

    v18 = v14;
    if (v16 != a3)
    {
      v18 = v14;
      v19 = v14;
      do
      {
        *v19 = *v16;
        *(v19 + 2) = *(v16 + 2);
        v16 = (v16 + 12);
        v19 += 12;
        v18 += 12;
      }

      while (v16 != a3);
    }

    v13 = v18;
    goto LABEL_21;
  }

  while (v6 != a3)
  {
    v20 = *v6;
    *(result + 2) = *(v6 + 2);
    *result = v20;
    result += 12;
    v6 = (v6 + 12);
  }

  a1[1] = result;
  return result;
}

char *sub_29AA30874(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (a4 > (v8 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A00C968(a1, v11);
    v12 = a1[1];
    while (v6 != a3)
    {
      v13 = *v6++;
      *v12++ = v13;
    }

LABEL_21:
    a1[1] = v12;
    return result;
  }

  v14 = a1[1];
  v15 = v14 - result;
  if (a4 > (v14 - result) >> 3)
  {
    v16 = (a2 + v15);
    if (v14 != result)
    {
      do
      {
        v17 = *v6++;
        *result = v17;
        result += 8;
        v15 -= 8;
      }

      while (v15);
      v14 = a1[1];
    }

    v18 = v14;
    if (v16 != a3)
    {
      v18 = v14;
      v19 = v14;
      do
      {
        v20 = *v16++;
        *v19++ = v20;
        v18 += 8;
      }

      while (v16 != a3);
    }

    v12 = v18;
    goto LABEL_21;
  }

  while (v6 != a3)
  {
    v21 = *v6++;
    *result = v21;
    result += 8;
  }

  a1[1] = result;
  return result;
}

void serialize::Prim::~Prim(serialize::Prim *this)
{
  *this = &unk_2A206F598;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  serialize::Prim::~Prim(this);

  operator delete(v1);
}

uint64_t serialize::Prim::release(serialize::Prim *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 == v3)
  {
    goto LABEL_4;
  }

  do
  {
    v4 = *v2++;
    result = (*(*v4 + 16))(v4);
  }

  while (v2 != v3);
  if (this)
  {
LABEL_4:
    v6 = *(*this + 8);

    return v6(this);
  }

  return result;
}

void serialize::Prim::serialize(serialize::Prim *this, serialize::Serializer *a2)
{
  serialize::Serializer::sync(a2, "type", this + 2);
  serialize::Serializer::sync(a2, "path", this + 16);

  serialize::Serializer::sync(a2, "children", this + 5);
}

void serialize::Stage::serialize(serialize::Stage *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "defaultPrim", this + 64);
  serialize::Serializer::sync(a2, "metersPerUnit", this + 22);
  serialize::Serializer::sync(a2, "startTimeCode", this + 23);
  serialize::Serializer::sync(a2, "endTimeCode", this + 24);

  serialize::Serializer::sync(a2, "timeCodesPerSecond", this + 25);
}

void serialize::PointCloud::serialize(serialize::PointCloud *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "vertices", this + 8);
  serialize::Serializer::sync(a2, "colors", this + 11);

  serialize::Serializer::sync(a2, "materialPath", this + 112);
}

void serialize::Mesh::serialize(serialize::Mesh *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "faceVertexCounts", this + 8);
  serialize::Serializer::sync(a2, "indices", this + 11);
  serialize::Serializer::sync(a2, "uvIndices", this + 14);
  serialize::Serializer::sync(a2, "normalIndices", this + 17);
  serialize::Serializer::sync(a2, "vertices", this + 20);
  serialize::Serializer::sync(a2, "normals", this + 23);
  serialize::Serializer::sync(a2, "colors", this + 26);
  serialize::Serializer::sync(a2, "uvs", this + 29);
  serialize::Serializer::sync(a2, "normalInterpolation", this + 64);
  serialize::Serializer::sync(a2, "colorInterpolation", this + 65);
  serialize::Serializer::sync(a2, "uvInterpolation", this + 66);

  serialize::Serializer::sync(a2, "materialPath", this + 272);
}

void serialize::Subset::serialize(serialize::Subset *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "faces", this + 8);
  serialize::Serializer::sync(a2, "name", this + 88);

  serialize::Serializer::sync(a2, "materialPath", this + 112);
}

void serialize::MapInput::serialize(serialize::MapInput *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "inputName", this + 16);
  serialize::Serializer::sync(a2, "value", this + 17);

  serialize::Serializer::sync(a2, "channels", this + 80);
}

void serialize::Shader::serialize(serialize::Shader *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "inputName", this + 16);
  serialize::Serializer::sync(a2, "scale", this + 17);
  serialize::Serializer::sync(a2, "bias", this + 21);
  serialize::Serializer::sync(a2, "file", this + 104);
  serialize::Serializer::sync(a2, "channels", this + 128);

  serialize::Serializer::sync(a2, "texCoordSet", this + 152);
}

void sub_29AA30F28(void **this)
{
  *this = &unk_2A206F5D8;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  serialize::Prim::~Prim(this);
}

void sub_29AA30F88(void **this)
{
  *this = &unk_2A206F5D8;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  serialize::Prim::~Prim(this);

  operator delete(v2);
}

void sub_29AA30FEC(void **this)
{
  *this = &unk_2A206F620;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[11];
  if (v2)
  {
    this[12] = v2;
    operator delete(v2);
  }

  v3 = this[8];
  if (v3)
  {
    this[9] = v3;
    operator delete(v3);
  }

  serialize::Prim::~Prim(this);
}

void sub_29AA3106C(void **this)
{
  *this = &unk_2A206F620;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[11];
  if (v2)
  {
    this[12] = v2;
    operator delete(v2);
  }

  v3 = this[8];
  if (v3)
  {
    this[9] = v3;
    operator delete(v3);
  }

  serialize::Prim::~Prim(this);

  operator delete(v4);
}

void sub_29AA310F4(void **a1)
{
  sub_29AA31414(a1);

  operator delete(v1);
}

void sub_29AA3111C(void **this)
{
  *this = &unk_2A206F6B0;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  serialize::Prim::~Prim(this);
}

void sub_29AA3119C(void **this)
{
  *this = &unk_2A206F6B0;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  serialize::Prim::~Prim(this);

  operator delete(v3);
}

void sub_29AA31224(serialize::Prim *a1)
{
  serialize::Prim::~Prim(a1);

  operator delete(v1);
}

void sub_29AA3124C(void **this)
{
  *this = &unk_2A206F740;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  serialize::Prim::~Prim(this);
}

void sub_29AA312AC(void **this)
{
  *this = &unk_2A206F740;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  serialize::Prim::~Prim(this);

  operator delete(v2);
}

void sub_29AA31310(void **this)
{
  *this = &unk_2A206F788;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  serialize::Prim::~Prim(this);
}

void sub_29AA31390(void **this)
{
  *this = &unk_2A206F788;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  serialize::Prim::~Prim(this);

  operator delete(v2);
}

void sub_29AA31414(void **this)
{
  *this = &unk_2A206F668;
  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  v2 = this[29];
  if (v2)
  {
    this[30] = v2;
    operator delete(v2);
  }

  v3 = this[26];
  if (v3)
  {
    this[27] = v3;
    operator delete(v3);
  }

  v4 = this[23];
  if (v4)
  {
    this[24] = v4;
    operator delete(v4);
  }

  v5 = this[20];
  if (v5)
  {
    this[21] = v5;
    operator delete(v5);
  }

  v6 = this[17];
  if (v6)
  {
    this[18] = v6;
    operator delete(v6);
  }

  v7 = this[14];
  if (v7)
  {
    this[15] = v7;
    operator delete(v7);
  }

  v8 = this[11];
  if (v8)
  {
    this[12] = v8;
    operator delete(v8);
  }

  v9 = this[8];
  if (v9)
  {
    this[9] = v9;
    operator delete(v9);
  }

  serialize::Prim::~Prim(this);
}

void pxrInternal__aapl__pxrReserved__::UsdMetrics::AddField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *__str, int a6)
{
  memset(&__p, 0, sizeof(__p));
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v7 = std::string::operator=(&__p, __str);
  v10 = a6;
  pxrInternal__aapl__pxrReserved__::UsdMetrics::GetFields(v7);
  sub_29AA315D8(&qword_2A1746D98, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29AA31584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdMetrics::GetFields(pxrInternal__aapl__pxrReserved__::UsdMetrics *this)
{
  if ((atomic_load_explicit(byte_2A1746D90, memory_order_acquire) & 1) == 0)
  {
    sub_29B2BC56C();
  }

  return &qword_2A1746D98;
}

uint64_t sub_29AA315D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AA31EB4(a1, a2);
  }

  else
  {
    sub_29AA31E3C(a1, a2);
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

void **sub_29AA31638(void **a1)
{
  v3 = a1;
  sub_29AA321D0(&v3);
  return a1;
}

double pxrInternal__aapl__pxrReserved__::UsdMetrics::GetField@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdMetrics::GetFields(a1);
  v4 = qword_2A1746DA0;
  if (qword_2A1746D98 == qword_2A1746DA0)
  {
LABEL_22:
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = (a2 + 32);
    v6 = qword_2A1746D98 + 32;
    while (1)
    {
      v7 = *(v6 - 16);
      *a2 = *(v6 - 32);
      *(a2 + 16) = v7;
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14((a2 + 32), *v6, *(v6 + 8));
      }

      else
      {
        v8 = *v6;
        *(a2 + 48) = *(v6 + 16);
        *v5 = v8;
      }

      v9 = v6 - 32;
      *(a2 + 56) = *(v6 + 24);
      v10 = *(a2 + 55);
      if (v10 >= 0)
      {
        v11 = *(a2 + 55);
      }

      else
      {
        v11 = *(a2 + 40);
      }

      v12 = *(a1 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a1 + 8);
      }

      if (v11 == v12)
      {
        v14 = v10 >= 0 ? (a2 + 32) : *v5;
        v15 = v13 >= 0 ? a1 : *a1;
        if (!memcmp(v14, v15, v11))
        {
          break;
        }
      }

      if (v10 < 0)
      {
        operator delete(*v5);
      }

      v6 += 64;
      if (v9 + 64 == v4)
      {
        goto LABEL_22;
      }
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdMetrics::GetTime(pxrInternal__aapl__pxrReserved__::UsdMetrics *this)
{
  v1 = mach_absolute_time();

  return pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetrics::GetUsedMemory(pxrInternal__aapl__pxrReserved__::UsdMetrics *this)
{
  task_info_outCnt = 12;
  if (task_info(*MEMORY[0x29EDCA6B0], 0x14u, &task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetrics::GetGPUMemory(pxrInternal__aapl__pxrReserved__::UsdMetrics *this)
{
  v32 = *MEMORY[0x29EDCA608];
  sub_29A008E78(&v31, "footprint ");
  v1 = getpid();
  std::to_string(&v28, v1);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v28;
  }

  else
  {
    v2 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v4 = std::string::append(&v31, v2, size);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v30 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v30 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = popen(v6, "r");
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    if (feof(v7))
    {
LABEL_16:
      pclose(v8);
      goto LABEL_18;
    }

    while (1)
    {
      fgets(&v31, 2048, v8);
      sub_29A008E78(&v28, &v31);
      v11 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      v12 = v28.__r_.__value_.__l.__size_;
      v13 = v28.__r_.__value_.__r.__words[0];
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v28;
      }

      else
      {
        v14 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      if (v12 >= 13)
      {
        break;
      }

LABEL_44:
      if (v11 < 0)
      {
LABEL_45:
        operator delete(v13);
      }

LABEL_46:
      if (feof(v8))
      {
        goto LABEL_16;
      }
    }

    v15 = v14 + v12;
    v16 = v14;
    while (1)
    {
      v17 = memchr(v16, 73, v12 - 12);
      if (!v17)
      {
        goto LABEL_44;
      }

      if (*v17 == 0x656C656363414F49 && *(v17 + 5) == 0x726F746172656C65)
      {
        break;
      }

      v16 = (v17 + 1);
      v12 = v15 - v16;
      if (v15 - v16 < 13)
      {
        goto LABEL_44;
      }
    }

    if (v17 == v15 || v17 - v14 == -1)
    {
      goto LABEL_44;
    }

    v27 = v9;
    v19 = 0;
    for (i = &v31.__r_.__value_.__s.__data_[1]; ; ++i)
    {
      v21 = v31.__r_.__value_.__s.__data_[v19];
      if (v21 != 32 && v21 != 9)
      {
        break;
      }

      ++v19;
    }

    v23 = atoll(&v31 + v19);
    while (v21 > 0x20 || ((1 << v21) & 0x100000201) == 0)
    {
      v21 = *(&v31.__r_.__value_.__l.__data_ + ++v19);
      ++i;
    }

    while (v21 == 32 || v21 == 9)
    {
      v24 = *i++;
      v21 = v24;
    }

    switch(v21)
    {
      case 'G':
        if (*i == 66)
        {
          v25 = v23 << 30;
          goto LABEL_70;
        }

        v26 = 13;
        break;
      case 'M':
        if (*i == 66)
        {
          v25 = v23 << 20;
          goto LABEL_70;
        }

        break;
      case 'K':
        if (*i == 66)
        {
          v25 = v23 << 10;
          goto LABEL_70;
        }

        break;
      case 'T':
        v26 = 66 - *i;
        break;
      default:
        v26 = 84 - v21;
        break;
    }

    if (v26)
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 << 40;
    }

LABEL_70:
    v9 = v25 + v27;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v9 = 0;
LABEL_18:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_29AA31B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdMetrics::Reset(pxrInternal__aapl__pxrReserved__::UsdMetrics *this)
{
  pxrInternal__aapl__pxrReserved__::UsdMetrics::GetFields(this);

  sub_29AA31BB4(&qword_2A1746D98);
}

void sub_29AA31BB4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetricsProfile::UsdMetricsProfile(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2A206F7D0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v3;
  }

  v4 = dword_2A1746D88;
  *(a1 + 48) = dword_2A1746D88;
  if (v4 == 2)
  {
    task_info_outCnt = 12;
    v8 = task_info(*MEMORY[0x29EDCA6B0], 0x14u, &task_info_out, &task_info_outCnt);
    v9 = v13;
    if (v8)
    {
      v9 = 0;
    }

    *(a1 + 8) = v9;
    GPUMemory = pxrInternal__aapl__pxrReserved__::UsdMetrics::GetGPUMemory(v8);
    v7 = 16;
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v5 = mach_absolute_time();
    GPUMemory = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(v5);
    v7 = 8;
LABEL_10:
    *(a1 + v7) = GPUMemory;
  }

  return a1;
}

void sub_29AA31CF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdMetricsProfile::~UsdMetricsProfile(pxrInternal__aapl__pxrReserved__::UsdMetricsProfile *this)
{
  *this = &unk_2A206F7D0;
  v2 = *(this + 12);
  if (v2 == 2)
  {
    v3 = *(this + 1);
    task_info_outCnt = 12;
    v9 = task_info(*MEMORY[0x29EDCA6B0], 0x14u, &task_info_out, &task_info_outCnt);
    v10 = v9;
    v11 = v17;
    v12 = *(this + 1);
    v6 = *(this + 2);
    GPUMemory = pxrInternal__aapl__pxrReserved__::UsdMetrics::GetGPUMemory(v9);
    if (v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = v11;
    }

    v8 = v14 - v12;
    v7 = GPUMemory - *(this + 2);
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_9;
    }

    v3 = *(this + 1);
    v4 = mach_absolute_time();
    v5 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(v4);
    v6 = 0;
    v7 = 0;
    v8 = v5 - *(this + 1);
  }

  pxrInternal__aapl__pxrReserved__::UsdMetrics::AddField(v3, v8, v6, v7, this + 1, *(this + 12));
LABEL_9:
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  pxrInternal__aapl__pxrReserved__::UsdMetricsProfile::~UsdMetricsProfile(this);

  operator delete(v1);
}

void *sub_29AA31E3C(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  if (*(a2 + 55) < 0)
  {
    result = sub_29A008D14((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v6 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v6;
  }

  *(v4 + 56) = *(a2 + 56);
  v3[1] = v4 + 64;
  return result;
}

uint64_t sub_29AA31EB4(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v23 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v20 = v8;
  v21 = v9;
  *&v22 = v9;
  *(&v22 + 1) = &v8[64 * v7];
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 1) = v10;
  if (*(a2 + 55) < 0)
  {
    sub_29A008D14(v9 + 32, *(a2 + 32), *(a2 + 40));
    v12 = v21;
    v13 = v22;
  }

  else
  {
    v11 = *(a2 + 32);
    *(v9 + 6) = *(a2 + 48);
    *(v9 + 2) = v11;
    v12 = v9;
    v13 = v9;
  }

  *(v9 + 14) = *(a2 + 56);
  *&v22 = v13 + 64;
  v14 = a1[1];
  v15 = &v12[*a1 - v14];
  sub_29AA31FF8(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_29AA3213C(&v20);
  return v19;
}

void sub_29AA31FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AA3213C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA31FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
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
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      *(a4 + 56) = *(v6 + 56);
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      v5 += 64;
    }
  }

  return sub_29AA320BC(v10);
}

uint64_t sub_29AA320BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AA320F4(a1);
  }

  return a1;
}

void sub_29AA320F4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 64;
  }
}

uint64_t sub_29AA3213C(uint64_t a1)
{
  sub_29AA32174(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AA32174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_29AA321D0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AA31BB4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmarkArgs::UsdMetricsBenchmarkArgs(pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmarkArgs *this)
{
  *(this + 2) = 0;
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  return result;
}

{
  *(this + 2) = 0;
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  return result;
}

double pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmarkArgs::Processing(pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmarkArgs *this)
{
  if (*(this + 87) < 0)
  {
    if (!*(this + 9))
    {
      goto LABEL_22;
    }
  }

  else if (!*(this + 87))
  {
    goto LABEL_22;
  }

  __idx = 0;
  v2 = std::stoi((this + 64), &__idx, 10);
  v3 = v2;
  v4 = *(this + 87);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(this + 9);
  }

  v5 = v2;
  if (__idx + 1 >= v4)
  {
    goto LABEL_20;
  }

  std::string::basic_string(&__str, (this + 64), __idx, 2uLL, &v17);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 2)
    {
      v5 = v3;
      if (LOWORD(__str.__r_.__value_.__l.__data_) == 11822)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_19:
    v5 = v3;
    goto LABEL_20;
  }

  if (__str.__r_.__value_.__l.__size_ != 2)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    goto LABEL_19;
  }

  v6 = *__str.__r_.__value_.__l.__data_;
  operator delete(__str.__r_.__value_.__l.__data_);
  v5 = v3;
  if (v6 == 11822)
  {
LABEL_14:
    std::string::basic_string(&__str, (this + 64), __idx + 2, 0xFFFFFFFFFFFFFFFFLL, &v17);
    v5 = std::stoi(&__str, 0, 10);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v5 <= v3)
    {
      v5 = v3;
    }
  }

LABEL_20:
  sub_29A0A6994(this + 88, v5 - v3 + 1);
  LODWORD(__str.__r_.__value_.__l.__data_) = v3;
  if (v5 >= v3)
  {
    do
    {
      sub_29A00D250(this + 11, &__str);
      v7 = LODWORD(__str.__r_.__value_.__l.__data_)++;
    }

    while (v7 < v5);
  }

LABEL_22:
  *(this + 52) = 0;
  if (*(this + 55) < 0)
  {
    if (*(this + 5))
    {
      goto LABEL_24;
    }

LABEL_38:
    MEMORY[0x29C2C1A60](this + 160, "image");
    MEMORY[0x29C2C1A60](this + 184, ".jpg");
    *(this + 52) = 4;
    return result;
  }

  if (!*(this + 55))
  {
    goto LABEL_38;
  }

LABEL_24:
  v8 = std::string::find((this + 32), 35, 0);
  v10 = v8;
  v11 = *(this + 55);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = *(this + 5);
  }

  if (v8 < v11)
  {
    std::string::basic_string(&__str, (this + 32), 0, v8, &__idx);
    if (*(this + 183) < 0)
    {
      operator delete(*(this + 20));
    }

    *(this + 160) = __str;
    v12 = *(this + 55);
    while (1)
    {
      v13 = v12;
      if ((v12 & 0x80) != 0)
      {
        v13 = *(this + 5);
      }

      if (v10 >= v13)
      {
        break;
      }

      v14 = this + 32;
      if ((v12 & 0x80) != 0)
      {
        v14 = *(this + 4);
      }

      if (v14[v10] != 35)
      {
        break;
      }

      ++*(this + 52);
      ++v10;
    }

    std::string::basic_string(&__str, (this + 32), v10, 0xFFFFFFFFFFFFFFFFLL, &__idx);
    if (*(this + 207) < 0)
    {
      operator delete(*(this + 23));
    }

    result = *&__str.__r_.__value_.__l.__data_;
    *(this + 184) = __str;
  }

  return result;
}

void sub_29AA32524(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29AA32398);
}

void sub_29AA32554(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29AA322D8);
}

void pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmarkArgs::GetImagePath(pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmarkArgs *this@<X0>, int __val@<W1>, uint64_t a3@<X8>)
{
  v24[2] = *MEMORY[0x29EDCA608];
  if (*(this + 52))
  {
    goto LABEL_2;
  }

  if ((*(this + 55) & 0x80000000) == 0)
  {
    if (*(this + 55))
    {
      *a3 = *(this + 2);
      *(a3 + 16) = *(this + 6);
      return;
    }

    goto LABEL_2;
  }

  v20 = *(this + 5);
  if (!v20)
  {
LABEL_2:
    std::to_string(&v23, __val);
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    if (size < *(this + 52))
    {
      do
      {
        sub_29A008E78(&v22, "0");
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v23;
        }

        else
        {
          v6 = v23.__r_.__value_.__r.__words[0];
        }

        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v7 = v23.__r_.__value_.__l.__size_;
        }

        v8 = std::string::append(&v22, v6, v7);
        v9 = v8->__r_.__value_.__r.__words[0];
        v24[0] = v8->__r_.__value_.__l.__size_;
        *(v24 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
        v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
        v8->__r_.__value_.__r.__words[0] = 0;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v23.__r_.__value_.__r.__words[0] = v9;
        v23.__r_.__value_.__l.__size_ = v24[0];
        *(&v23.__r_.__value_.__r.__words[1] + 7) = *(v24 + 7);
        *(&v23.__r_.__value_.__s + 23) = v10;
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
          v10 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
        }

        if ((v10 & 0x80u) == 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = v23.__r_.__value_.__l.__size_;
        }
      }

      while (v11 < *(this + 52));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(this + 20, &v23.__r_.__value_.__l.__data_, &v22);
    v14 = *(this + 23);
    v13 = this + 184;
    v12 = v14;
    v15 = v13[23];
    if (v15 >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    if (v15 >= 0)
    {
      v17 = v13[23];
    }

    else
    {
      v17 = *(v13 + 1);
    }

    v18 = std::string::append(&v22, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(a3 + 16) = *(&v18->__r_.__value_.__l + 2);
    *a3 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    return;
  }

  v21 = *(this + 4);

  sub_29A008D14(a3, v21, v20);
}

void sub_29AA32798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmark::usdBenchmark(pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmark *this, const pxrInternal__aapl__pxrReserved__::UsdMetricsBenchmarkArgs *a2, pxrInternal__aapl__pxrReserved__::UsdMetricsConsole *a3)
{
  if (*(a2 + 159) < 0)
  {
    if (*(a2 + 18))
    {
LABEL_3:
      pxrInternal__aapl__pxrReserved__::UsdStage::Open((a2 + 136), 0, &v7);
    }
  }

  else if (*(a2 + 159))
  {
    goto LABEL_3;
  }

  sub_29A008E78(v5, "usdFilePath is not specified");
  pxrInternal__aapl__pxrReserved__::UsdMetricsConsole::error(a3, v5);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return 1;
}

void sub_29AA3297C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A5AD4D8((v30 - 24));
}

void sub_29AA32A38(uint64_t *a1)
{
  *a1 = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_RemoveRef();
}

pxrInternal__aapl__pxrReserved__::UsdMetricsConsole *pxrInternal__aapl__pxrReserved__::UsdMetricsConsole::UsdMetricsConsole(pxrInternal__aapl__pxrReserved__::UsdMetricsConsole *this)
{
  *this = 0;
  v2 = (this + 8);
  v3 = (this + 424);
  *(this + 59) = 0;
  v4 = MEMORY[0x29EDC9560] + 64;
  *(this + 53) = MEMORY[0x29EDC9560] + 64;
  v5 = *(MEMORY[0x29EDC9520] + 16);
  v6 = *(MEMORY[0x29EDC9520] + 8);
  *(this + 1) = v6;
  *(v2 + *(v6 - 24)) = v5;
  v7 = (this + *(*(this + 1) - 24) + 8);
  std::ios_base::init(v7, this + 16);
  v8 = MEMORY[0x29EDC9560] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *v2 = v8;
  *v3 = v4;
  MEMORY[0x29C2C1D10](this + 16);
  return this;
}

void sub_29AA32BD0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdMetricsConsole::~UsdMetricsConsole(pxrInternal__aapl__pxrReserved__::UsdMetricsConsole *this)
{
  v2 = (this + 8);
  if (*(this + 17) && !std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  v3 = MEMORY[0x29EDC9520];
  v4 = *MEMORY[0x29EDC9520];
  *(this + 1) = *MEMORY[0x29EDC9520];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  MEMORY[0x29C2C1D20](this + 16);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](this + 424);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetricsConsole::log(unsigned __int8 *a1, uint64_t ***a2)
{
  v3 = *a1;
  v4 = MEMORY[0x29EDC93C8];
  if (v3 == 1)
  {
    v5 = *(a1 + 17);
    v6 = a1 + 8;
    if (v5)
    {
      v4 = v6;
    }
  }

  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = sub_29A00911C(v4, a2, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v12, MEMORY[0x29EDC93D0]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v12);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetricsConsole::print(uint64_t a1, uint64_t ***a2)
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

  v4 = sub_29A00911C(MEMORY[0x29EDC93C8], a2, v3);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v7, MEMORY[0x29EDC93D0]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v7);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetricsConsole::error(uint64_t a1, uint64_t **a2)
{
  v3 = sub_29A00911C(MEMORY[0x29EDC93C0], "\x1B[91m", 5);
  v4 = sub_29A00911C(v3, "Error: ", 7);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = sub_29A00911C(v4, v6, v7);
  v9 = sub_29A00911C(v8, "\x1B[0m", 4);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v12, MEMORY[0x29EDC93D0]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v12);
  std::ostream::put();
  return std::ostream::flush();
}

void pxrInternal__aapl__pxrReserved__::UsdMetricsConsole::openFile(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  std::ofstream::open();
  if (*(a1 + 136))
  {
    *a1 = 1;
  }

  else
  {
    std::operator+<char>();
    v3 = std::string::append(&v5, "'");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v7 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::UsdMetricsConsole::error(v3, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29AA330BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *pxrInternal__aapl__pxrReserved__::UsdMetricsPlatform::CPU@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  v3 = 1024;
  sysctlbyname("machdep.cpu.brand_string", __s, &v3, 0, 0);
  __s[v3 - 1] = 0;
  return sub_29A008E78(a1, __s);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetricsPlatform::GetVirtualMemory(pxrInternal__aapl__pxrReserved__::UsdMetricsPlatform *this)
{
  task_info_outCnt = 12;
  if (task_info(*MEMORY[0x29EDCA6B0], 0x14u, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  else
  {
    return *task_info_out;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMetricsPlatform::GetMaxMemory(pxrInternal__aapl__pxrReserved__::UsdMetricsPlatform *this)
{
  task_info_outCnt = 12;
  if (task_info(*MEMORY[0x29EDCA6B0], 0x14u, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *pxrInternal__aapl__pxrReserved__::AaplUtilsUniqueTempDirPath@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>)
{
  v7 = MEMORY[0x29EDB8E70];
  v8 = objc_msgSend_UUID(MEMORY[0x29EDBA140], a2, a3, a4, a5, a6);
  v14 = objc_msgSend_UUIDString(v8, v9, v10, v11, v12, v13);
  v15 = MEMORY[0x29EDB8E70];
  v16 = NSTemporaryDirectory();
  v21 = objc_msgSend_fileURLWithPath_(v15, v17, v16, v18, v19, v20);
  isDirectory_relativeToURL = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(v7, v22, v14, 1, v21, v23);
  v30 = objc_msgSend_path(isDirectory_relativeToURL, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_UTF8String(v30, v31, v32, v33, v34, v35);

  return sub_29A008E78(a1, v36);
}

void pxrInternal__aapl__pxrReserved__::AaplUtilsTempFileName(uint64_t a1@<X0>, std::string *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  pxrInternal__aapl__pxrReserved__::AaplUtilsUniqueTempDirPath(v42, a3, a4, a5, a6, a7);
  v14 = objc_msgSend_UUID(MEMORY[0x29EDBA140], v9, v10, v11, v12, v13);
  v20 = objc_msgSend_UUIDString(v14, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_UTF8String(v20, v21, v22, v23, v24, v25);
  sub_29A008E78(__p, v26);
  if ((v43 & 0x80u) == 0)
  {
    v27 = v43;
  }

  else
  {
    v27 = v42[1];
  }

  v28 = &v38;
  sub_29A022DE0(&v38, v27 + 1);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = v38.__r_.__value_.__r.__words[0];
  }

  if (v27)
  {
    if ((v43 & 0x80u) == 0)
    {
      v29 = v42;
    }

    else
    {
      v29 = v42[0];
    }

    memmove(v28, v29, v27);
  }

  *(&v28->__r_.__value_.__l.__data_ + v27) = 47;
  if ((v41 & 0x80u) == 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v31 = v41;
  }

  else
  {
    v31 = __p[1];
  }

  v32 = std::string::append(&v38, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = *(a1 + 23);
  if (v34 >= 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = *a1;
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 23);
  }

  else
  {
    v36 = *(a1 + 8);
  }

  v37 = std::string::append(&v39, v35, v36);
  *a2 = *v37;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }
}

void sub_29AA33440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GetLogInstance(pxrInternal__aapl__pxrReserved__ *this)
{
  if (qword_2A1746DB0 != -1)
  {
    sub_29B2BC5E4();
  }

  return qword_2A1746DB8;
}

os_log_t sub_29AA334E8()
{
  qword_2A1746DB8 = 0;
  result = os_variant_has_internal_content();
  if (result)
  {
    result = os_log_create("com.apple.usdlib", "usd");
    qword_2A1746DB8 = result;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::_CreateCloneFilePath(std::string *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  v11 = MEMORY[0x29EDB8E70];
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], a2, a2, a5, a6, a7);
  }

  else
  {
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], a2, a2->__r_.__value_.__r.__words[0], a5, a6, a7);
  }

  v17 = objc_msgSend_fileURLWithPath_(v11, v13, v12, v14, v15, v16);
  TmpDir = pxrInternal__aapl__pxrReserved__::ArchGetTmpDir(v17, v18);
  if (!TmpDir)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  sub_29AA3662C(&v39, &TmpDir);
  sub_29A65B7E0(&v36, "USDLib");
  sub_29AA33A10(&v37, &v36, &v39);
  sub_29A8CCEB8(&__p, a3);
  sub_29AA33A10(&v38, &__p, &v37);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  sub_29A8CCEB8(&v37, a2);
  sub_29A8CCEB8(&v36, a1);
  memset(&__p, 0, sizeof(__p));
  sub_29A8CCEB8(&v33.__pn_, a2);
  sub_29A8CCEB8(&v32, a1);
  sub_29AA33A84(&v33, &v32, &__dst);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __dst.__pn_;
  *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
  __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__pn_.__r_.__value_.__l.__data_);
  }

  sub_29AA33B6C(&v37, &__dst);
  v41.__data_ = &__dst;
  v19 = sub_29AA33B30(&v36, v41);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__dst, v38.__pn_.__r_.__value_.__l.__data_, v38.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v38;
  }

  if (!v19)
  {
    sub_29AA33B6C(&__p, &v32);
    sub_29AA33A10(&v33, &v32, &v38);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    __dst = v33;
    *(&v33.__pn_.__r_.__value_.__s + 23) = 0;
    v33.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  std::__fs::filesystem::__status(&__dst, 0);
  if (v33.__pn_.__r_.__value_.__s.__data_[0] && v33.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::__status(&__dst, 0);
    if (v33.__pn_.__r_.__value_.__s.__data_[0] == 2)
    {
      goto LABEL_31;
    }
  }

  else if (std::__fs::filesystem::__create_directories(&__dst, 0))
  {
LABEL_31:
    sub_29AA33C24(&v37, &v33);
    sub_29AA33CDC(&__dst, &v33);
    if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(a4, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *a4 = __dst;
    }

    std::string::append(a4, ".");
    v25 = objc_msgSend_pathExtension(v17, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_UTF8String(v25, v26, v27, v28, v29, v30);
    std::string::append(a4, v31);
    goto LABEL_39;
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
LABEL_39:
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_29AA338C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 81) < 0)
  {
    operator delete(*(v45 - 104));
  }

  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path *sub_29AA33A10@<X0>(std::__fs::filesystem::path *__return_ptr a1@<X8>, std::__fs::filesystem::path *this@<X1>, uint64_t a3@<X0>)
{
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(a1, *a3, *(a3 + 8));
  }

  else
  {
    *&a1->__pn_.__r_.__value_.__l.__data_ = *a3;
    a1->__pn_.__r_.__value_.__r.__words[2] = *(a3 + 16);
  }

  return sub_29AA33CDC(a1, this);
}

void sub_29AA33A68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA33A84(const std::__fs::filesystem::path *a1@<X0>, const std::__fs::filesystem::path *a2@<X1>, std::__fs::filesystem::path *a3@<X8>)
{
  std::__fs::filesystem::__weakly_canonical(&v6, a1, 0);
  std::__fs::filesystem::__weakly_canonical(&__p, a2, 0);
  std::__fs::filesystem::path::lexically_relative(a3, &v6, &__p);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_29AA33AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

BOOL sub_29AA33B30(const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

double sub_29AA33B6C@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  if (v3.__size_ >= 0x17)
  {
    if ((v3.__size_ | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3.__size_ | 7) + 1;
    }

    p_dst = operator new(v5);
    *(&__dst + 1) = v3.__size_;
    v8 = v5 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v8) = v3.__size_;
    p_dst = &__dst;
    if (!v3.__size_)
    {
      goto LABEL_10;
    }
  }

  memmove(p_dst, v3.__data_, v3.__size_);
LABEL_10:
  *(p_dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v8;
  return result;
}

double sub_29AA33C24@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__stem(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  if (v3.__size_ >= 0x17)
  {
    if ((v3.__size_ | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3.__size_ | 7) + 1;
    }

    p_dst = operator new(v5);
    *(&__dst + 1) = v3.__size_;
    v8 = v5 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v8) = v3.__size_;
    p_dst = &__dst;
    if (!v3.__size_)
    {
      goto LABEL_10;
    }
  }

  memmove(p_dst, v3.__data_, v3.__size_);
LABEL_10:
  *(p_dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v8;
  return result;
}

std::__fs::filesystem::path *sub_29AA33CDC(std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::_AaplUtilsCloneStageFileBased(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v55[4] = *MEMORY[0x29EDCA608];
  v8 = sub_29A5A70E0(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::Save(v8);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  *v47 = 0u;
  *v44 = 0u;
  *v45 = 0u;
  v51 = 1065353216;
  v52 = 0u;
  v53 = 0u;
  v54 = 1065353216;
  v55[0] = 0;
  v14 = objc_msgSend_UUID(MEMORY[0x29EDBA140], v9, v10, v11, v12, v13);
  v20 = objc_msgSend_UUIDString(v14, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_UTF8String(v20, v21, v22, v23, v24, v25);
  sub_29A008E78(&v43, v26);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__dst, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v43;
  }

  v27 = *(a2 + 23);
  if (v27 >= 0)
  {
    v28 = a2;
  }

  else
  {
    v28 = *a2;
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 23);
  }

  else
  {
    v29 = *(a2 + 8);
  }

  std::string::append(&__dst, v28, v29);
  objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v30, v31, v32, v33, v34);
  v35 = sub_29A5A70E0(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v40, v35);
  v36 = sub_29B293A0C(&v40);
  if (v37 & 1 | v36)
  {
    sub_29A1DA6E4(&v40);
  }

  MEMORY[0x29C2C1A60](a3, "Could not get root layer");
  v38.n128_f64[0] = sub_29B2BC5F8(a4);
  v39 = v41;
  if (v41 && atomic_fetch_add_explicit((v41 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v39 + 8))(v39, v38);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  sub_29A5AD4D8(v55);
}

void sub_29AA34C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (*(v69 - 105) < 0)
  {
    operator delete(*(v69 - 128));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a64 && atomic_fetch_add_explicit(a64 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a64 + 8))(a64, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  sub_29AA34F64(&a69);
}

void pxrInternal__aapl__pxrReserved__::_AaplUtilsCloneStageBufferBased(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  *v39 = 0u;
  *v36 = 0u;
  *v37 = 0u;
  v43 = 1065353216;
  v44 = 0u;
  v45 = 0u;
  v46 = 1065353216;
  v47 = 0;
  v11 = objc_msgSend_UUID(MEMORY[0x29EDBA140], a2, a3, a5, a6, a7);
  v17 = objc_msgSend_UUIDString(v11, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_UTF8String(v17, v18, v19, v20, v21, v22);
  sub_29A008E78(&v34, v23);
  std::operator+<char>();
  v24 = *(a2 + 23);
  if (v24 >= 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if (v24 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 8);
  }

  std::string::append(&v33, v25, v26);
  v27 = sub_29A5A70E0(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v31, v27);
  v28 = sub_29B293A0C(&v31);
  if (v29 & 1 | v28)
  {
    sub_29A1DA6E4(&v31);
  }

  MEMORY[0x29C2C1A60](a3, "Could not get root layer");
  sub_29B2BC5F8(a4);
  v30 = v32;
  if (v32 && atomic_fetch_add_explicit((v32 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v30 + 8))(v30);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  sub_29A5AD4D8(&v47);
}

void sub_29AA35D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29A008B0C(&a65);
  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  v65 = STACK[0x320];
  if (STACK[0x320])
  {
    STACK[0x328] = v65;
    operator delete(v65);
  }

  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  v66 = STACK[0x368];
  if (STACK[0x368] && atomic_fetch_add_explicit(v66 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v66 + 8))(v66);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  sub_29AA34F64(&STACK[0x3A0]);
}

double sub_29AA36000@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  if (v3.__size_ >= 0x17)
  {
    if ((v3.__size_ | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3.__size_ | 7) + 1;
    }

    p_dst = operator new(v5);
    *(&__dst + 1) = v3.__size_;
    v8 = v5 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v8) = v3.__size_;
    p_dst = &__dst;
    if (!v3.__size_)
    {
      goto LABEL_10;
    }
  }

  memmove(p_dst, v3.__data_, v3.__size_);
LABEL_10:
  *(p_dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v8;
  return result;
}

double pxrInternal__aapl__pxrReserved__::AaplUtilsCloneStage@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    if (*(a2 + 24) == 1)
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
  }

  MEMORY[0x29C2C1A60](a3, "Invalid input stage.", a3);
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 104) = 1065353216;
  *(a4 + 144) = 1065353216;
  return result;
}

double pxrInternal__aapl__pxrReserved__::AaplUtilsCloneStageCleanUp(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], a2, a3, a4, a5, a6);
  v13 = a1[3].__r_.__value_.__r.__words[2];
  if (v13)
  {
    v14 = v8;
    do
    {
      if (*(v13 + 63) < 0)
      {
        sub_29A008D14(&__p, v13[5], v13[6]);
      }

      else
      {
        __p = *(v13 + 5);
      }

      v15 = MEMORY[0x29EDB8E70];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v9, &__p, v10, v11, v12);
      }

      else
      {
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v9, __p.__r_.__value_.__l.__data_, v10, v11, v12);
      }

      v21 = objc_msgSend_fileURLWithPath_(v15, v17, v16, v18, v19, v20);
      if ((objc_msgSend_removeItemAtURL_error_(v14, v22, v21, 0, v23, v24) & 1) == 0)
      {
        std::operator+<char>();
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = v28;
        *(a2 + 16) = v29;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v13 = *v13;
    }

    while (v13);
  }

  sub_29A8CCEB8(&__p, a1);
  std::__fs::filesystem::__status(&__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v28 && v28 != 255)
  {
    sub_29A8CCEB8(&__p, a1);
    v26 = std::__fs::filesystem::__remove_all(&__p, 0);
    v27 = v26;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v27)
      {
        return result;
      }
    }

    else if (v26)
    {
      return result;
    }

    std::operator+<char>();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&__p.__r_.__value_.__l.__data_;
    *a2 = __p;
  }

  return result;
}

void sub_29AA3652C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA36554(uint64_t a1)
{
  sub_29AA36590(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AA36590(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AA365D4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29AA365D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

std::string *sub_29AA3662C(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_29A11D6EC(this, v3, v4);
  return this;
}

void sub_29AA36670(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29AA3668C(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4, uint64_t a5)
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
      v5 = v9;
      if (v9 >= v11)
      {
        v5 = v9 % v11;
      }
    }

    else
    {
      v5 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v5);
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

          if (v16 != v5)
          {
            break;
          }
        }
      }
    }
  }

  sub_29AA368F8(a1, v10, a4, v28);
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
        v5 = v10 % v11;
      }

      else
      {
        v5 = v10;
      }
    }

    else
    {
      v5 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v5);
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
    *(v23 + 8 * v5) = a1 + 16;
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

void sub_29AA368E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AA369A0(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29AA368F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x40uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  v9[7] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29AA369A0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AA365D4(v2 + 16);
    }

    operator delete(v2);
  }
}

void **sub_29AA369FC(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
          ++v17;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      sub_29A00C9A4();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0101E8(v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6++;
      *v12++ = v13;
    }
  }

  v7[1] = v12;
  return result;
}

const void **sub_29AA36B2C(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
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

  sub_29AA36D88(a1, v10, v28, a3, a4);
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

void sub_29AA36D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AA369A0(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29AA36D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, __int128 *a4@<X2>, uint64_t a5@<X3>)
{
  v10 = operator new(0x40uLL);
  *a3 = v10;
  a3[1] = a1;
  a3[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29AA36E08(v10 + 2, a4, a5);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29AA36E08(void *__dst, __int128 *a2, uint64_t a3)
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

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_29A4DC2E8(__dst + 3, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  return __dst;
}

void sub_29AA36E74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_29AA36E90()
{
  *(v0 + 104) = 1065353216;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1065353216;
  *(v0 + 152) = 0;
  return result;
}

void sub_29AA36EAC(void *a1)
{

  bzero(a1, 0x98uLL);
}

void pxrInternal__aapl__pxrReserved__::AaplUtilsUSDLibVersion(std::string *a1@<X8>)
{
  std::to_string(&v15, 23);
  v2 = std::string::append(&v15, ".");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v14, 2);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v14;
  }

  else
  {
    v4 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v16, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v17, ".");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v13, 1);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v13;
  }

  else
  {
    v10 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v13.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v18, v10, v11);
  *a1 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_29AA37038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate::MakeFullyQualifiedURL@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  v293 = *MEMORY[0x29EDCA608];
  if (*(a2 + 23) >= 0)
  {
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], a2, a2, a4, a6, a7);
  }

  else
  {
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], a2, *a2, a4, a6, a7);
  }

  v17 = v12;
  v18 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], v13, v12, v14, v15, v16);
  if (objc_msgSend_scheme(v18, v19, v20, v21, v22, v23))
  {
    v29 = objc_msgSend_pathExtension(v18, v24, v25, v26, v27, v28);
    result = objc_msgSend_isEqualToString_(v29, v30, @"usdz", v31, v32, v33);
    if (result)
    {
      v288 = 0;
      v289 = 0;
      v290 = 0;
      v39 = objc_msgSend_componentsWithString_(MEMORY[0x29EDBA110], v35, v17, v36, v37, v38);
      objc_msgSend_setQuery_(v39, v40, 0, v41, v42, v43);
      v49 = objc_msgSend_URL(v39, v44, v45, v46, v47, v48);
      v55 = objc_msgSend_absoluteString(v49, v50, v51, v52, v53, v54);
      v61 = objc_msgSend_UTF8String(v55, v56, v57, v58, v59, v60);
      sub_29A008E78(__p, v61);
      if (sub_29AA37674((a1 + 592), &v288, __p))
      {
        if (*(v290 + 40) == 1)
        {
          v66 = (v290 + 48);
          if (*(v290 + 71) < 0)
          {
            v66 = *v66;
          }

          v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v62, v66, v63, v64, v65);
          v73 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x29EDB9F50], v68, v69, v70, v71, v72);
          v78 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v67, v74, v73, v75, v76, v77);
          v83 = objc_msgSend_componentsWithString_(MEMORY[0x29EDBA110], v79, v17, v80, v81, v82);
          v284 = 0u;
          v285 = 0u;
          v282 = 0u;
          v283 = 0u;
          Items = objc_msgSend_queryItems(v83, v84, v85, v86, v87, v88);
          v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(Items, v90, &v282, v292, 16, v91);
          if (!v97)
          {
            goto LABEL_18;
          }

          v98 = 0;
          v99 = *v283;
          do
          {
            for (i = 0; i != v97; ++i)
            {
              if (*v283 != v99)
              {
                objc_enumerationMutation(Items);
              }

              v101 = objc_msgSend_name(*(*(&v282 + 1) + 8 * i), v92, v93, v94, v95, v96);
              v98 |= objc_msgSend_isEqualToString_(v101, v102, @"resource", v103, v104, v105);
            }

            v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(Items, v92, &v282, v292, 16, v96);
          }

          while (v97);
          if ((v98 & 1) == 0)
          {
LABEL_18:
            v106 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v92, @"resource=%@", v94, v95, v96, v78);
            objc_msgSend_setQuery_(v83, v107, v106, v108, v109, v110);
            v116 = objc_msgSend_URL(v83, v111, v112, v113, v114, v115);
            v122 = objc_msgSend_absoluteString(v116, v117, v118, v119, v120, v121);
            v128 = objc_msgSend_UTF8String(v122, v123, v124, v125, v126, v127);
            sub_29A008E78(a5, v128);
            if (v287 < 0)
            {
              operator delete(__p[0]);
            }

            v290 = 0;
            return sub_29A0F845C(&v288);
          }
        }
      }

      else
      {
        *a4 = 0;
      }

      if (v287 < 0)
      {
        operator delete(__p[0]);
      }

      v290 = 0;
      result = sub_29A0F845C(&v288);
    }

    if (*(a2 + 23) < 0)
    {
      return sub_29A008D14(a5, *a2, a2[1]);
    }

    *a5 = *a2;
    a5[2] = a2[2];
    return result;
  }

  if (pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a2) && ((v133 = MEMORY[0x29EDB8E70], *(a3 + 23) >= 0) ? (v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v129, a3, v130, v131, v132)) : (v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v129, *a3, v130, v131, v132)), v139 = objc_msgSend_URLWithString_(v133, v135, v134, v136, v137, v138), objc_msgSend_scheme(v139, v140, v141, v142, v143, v144)))
  {
    if (*(a2 + 23) >= 0)
    {
      v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v145, a2, v146, v147, v148);
    }

    else
    {
      v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v145, *a2, v146, v147, v148);
    }

    v277 = v149;
    v155 = objc_msgSend_pathExtension(v139, v150, v151, v152, v153, v154);
    if (objc_msgSend_isEqualToString_(v155, v156, @"usdz", v157, v158, v159))
    {
      v165 = MEMORY[0x29EDBA110];
      v166 = objc_msgSend_absoluteString(v139, v160, v161, v162, v163, v164);
      v278 = 0u;
      v279 = 0u;
      v280 = 0u;
      v281 = 0u;
      v276 = objc_msgSend_componentsWithString_(v165, v167, v166, v168, v169, v170);
      v176 = objc_msgSend_queryItems(v276, v171, v172, v173, v174, v175);
      v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v176, v177, &v278, v291, 16, v178);
      if (v180)
      {
        v181 = *v279;
        while (2)
        {
          for (j = 0; j != v180; ++j)
          {
            if (*v279 != v181)
            {
              objc_enumerationMutation(v176);
            }

            v183 = *(*(&v278 + 1) + 8 * j);
            v184 = objc_msgSend_name(v183, v160, v179, v162, v163, v164);
            if (objc_msgSend_isEqualToString_(v184, v185, @"resource", v186, v187, v188))
            {
              v213 = objc_msgSend_value(v183, v160, v179, v162, v163, v164);
              v219 = objc_msgSend_stringByRemovingPercentEncoding(v213, v214, v215, v216, v217, v218);
              v220 = MEMORY[0x29EDB8E70];
              v225 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], v221, v219, v222, v223, v224);
              v229 = objc_msgSend_URLWithString_relativeToURL_(v220, v226, v277, v225, v227, v228);
              v235 = objc_msgSend_absoluteURL(v229, v230, v231, v232, v233, v234);
              v241 = objc_msgSend_absoluteString(v235, v236, v237, v238, v239, v240);
              v245 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v241, v242, @"//", &stru_2A20CD118, v243, v244);
              v246 = objc_alloc(MEMORY[0x29EDBA120]);
              v250 = objc_msgSend_initWithName_value_(v246, v247, @"resource", v245, v248, v249);
              v255 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v251, 1, v252, v253, v254);
              objc_msgSend_addObject_(v255, v256, v250, v257, v258, v259);
              objc_msgSend_setQueryItems_(v276, v260, v255, v261, v262, v263);
              v269 = objc_msgSend_string(v276, v264, v265, v266, v267, v268);
              v275 = objc_msgSend_UTF8String(v269, v270, v271, v272, v273, v274);
              return sub_29A008E78(a5, v275);
            }
          }

          v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v176, v160, &v278, v291, 16, v164);
          if (v180)
          {
            continue;
          }

          break;
        }
      }
    }

    v189 = MEMORY[0x29EDB8E70];
    if (*(a2 + 23) >= 0)
    {
      v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v160, a2, v162, v163, v164);
    }

    else
    {
      v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v160, *a2, v162, v163, v164);
    }

    v194 = objc_msgSend_URLWithString_relativeToURL_(v189, v191, v190, v139, v192, v193);
    v200 = objc_msgSend_absoluteURL(v194, v195, v196, v197, v198, v199);
    v206 = objc_msgSend_absoluteString(v200, v201, v202, v203, v204, v205);
    v212 = objc_msgSend_UTF8String(v206, v207, v208, v209, v210, v211);
    return sub_29A008E78(a5, v212);
  }

  else
  {

    return sub_29A008E78(a5, "");
  }
}

void sub_29AA37620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  a38 = 0;
  sub_29A0F845C(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA37674(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29AA38D64(a1, 0, a3, 0, a2, 1, sub_29AA390A0, 0);
}

void pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate::FetchFile(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X4>, std::__shared_weak_count **a4@<X8>)
{
  v8 = operator new(0x30uLL);
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = 0;
  v9 = v8 + 1;
  v8->__vftable = &unk_2A206F8E0;
  v8[1].__shared_owners_ = 0;
  v8[1].__shared_weak_owners_ = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if (sub_29AA37954((a1 + 8), &v46, a2))
  {
    v14 = *(v48 + 48);
    *a4 = *(v48 + 40);
    a4[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = 0;
    sub_29A0F845C(&v46);
    sub_29A014BEC(v8);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v10, a2, v11, v12, v13);
    }

    else
    {
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v10, *a2, v11, v12, v13);
    }

    v20 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], v16, v15, v17, v18, v19);
    if (objc_msgSend_scheme(v20, v21, v22, v23, v24, v25))
    {
      v26 = dispatch_group_create();
      dispatch_group_enter(v26);
      v32 = objc_msgSend_sharedSession(MEMORY[0x29EDBA130], v27, v28, v29, v30, v31);
      v44[0] = MEMORY[0x29EDCA5F8];
      v44[1] = 3321888768;
      v44[2] = sub_29AA379D4;
      v44[3] = &unk_2A206F810;
      v44[4] = v26;
      v44[5] = a2;
      v44[6] = a3;
      v44[7] = v8 + 1;
      v45 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = objc_msgSend_dataTaskWithURL_completionHandler_(v32, v33, v20, v44, v34, v35);
      objc_msgSend_resume(v36, v37, v38, v39, v40, v41);
      dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
      if (v8[1].__shared_owners_ == v8[1].__vftable)
      {
        *a3 = 0;
      }

      sub_29AA37C78((a1 + 8), &v46, a2);
      v42 = v48;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v43 = *(v42 + 48);
      *(v42 + 40) = v9;
      *(v42 + 48) = v8;
      if (v43)
      {
        sub_29A014BEC(v43);
      }

      *a4 = v9;
      a4[1] = v8;
      if (v45)
      {
        sub_29A014BEC(v45);
      }
    }

    else
    {
      *a3 = 0;
      *a4 = v9;
      a4[1] = v8;
    }

    v48 = 0;
    sub_29A0F845C(&v46);
  }
}

void sub_29AA3790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  a21 = 0;
  sub_29A0F845C(&a19);
  sub_29A014BEC(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA37954(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29AA395F4(a1, 0, a3, 0, a2, 1, sub_29AA39930, 0);
}

void sub_29AA379D4(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      if (*(v13 + 23) < 0)
      {
        v13 = *v13;
      }

      v40 = 136315394;
      v41 = v13;
      v42 = 2112;
      v43 = objc_msgSend_localizedDescription(a4, v8, v9, v10, v11, v12);
      v14 = MEMORY[0x29EDCA988];
      v15 = "Encountered an error downloading %s : %@";
      v16 = 22;
LABEL_11:
      _os_log_impl(&dword_299FE7000, v14, OS_LOG_TYPE_DEFAULT, v15, &v40, v16);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v18 = objc_msgSend_statusCode(a3, a2, a3, 0, a5, a6);
  if ((v18 - 204) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v24 = v18;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 40);
      if (*(v29 + 23) < 0)
      {
        v29 = *v29;
      }

      v40 = 136315650;
      v41 = v29;
      v42 = 2048;
      v43 = v24;
      v44 = 2112;
      v45 = objc_msgSend_localizedStringForStatusCode_(MEMORY[0x29EDB9FC8], v25, v24, v26, v27, v28);
      v14 = MEMORY[0x29EDCA988];
      v15 = "Encountered an error downloading %s : (%ld) %@";
      v16 = 32;
      goto LABEL_11;
    }

LABEL_12:
    dispatch_group_leave(*(a1 + 32));
    **(a1 + 48) = 0;
    return;
  }

  v34 = objc_msgSend_length(a2, v19, v20, v21, v22, v23);
  v35 = *(a1 + 56);
  v36 = v35[1] - *v35;
  v37 = (v34 - v36);
  if (v34 <= v36)
  {
    if (v34 < v36)
    {
      v35[1] = *v35 + v34;
    }
  }

  else
  {
    sub_29A1B2C78(v35, v37);
  }

  v38 = objc_msgSend_bytes(a2, v37, v30, v31, v32, v33);
  sub_29AA39DA4(*(a1 + 56), v38, &v38[v34], v34);
  v39 = *(a1 + 32);

  dispatch_group_leave(v39);
}

void sub_29AA37BE8(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 3);
  v4 = *(a2 + 64);
  a1[7] = *(a2 + 56);
  a1[8] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29AA37C34(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 3);
}

uint64_t sub_29AA37C78(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29AA395F4(a1, 1, a3, 0, a2, 1, sub_29AA39ECC, 0);
}

void pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate::FetchByteRange(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, std::__shared_weak_count **a7@<X8>, _BYTE *a8)
{
  v19 = operator new(0x30uLL);
  v19->__shared_owners_ = 0;
  v19->__shared_weak_owners_ = 0;
  v19[1].__vftable = 0;
  v20 = v19 + 1;
  v19->__vftable = &unk_2A206F8E0;
  v19[1].__shared_owners_ = 0;
  v19[1].__shared_weak_owners_ = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  if (a6 && sub_29AA37954((a1 + 8), &v68, a2))
  {
    v21 = *(v70 + 48);
    *a7 = *(v70 + 40);
    a7[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v70 = 0;
    sub_29A0F845C(&v68);
    sub_29A014BEC(v19);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v15, a2, v16, v17, v18);
    }

    else
    {
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v15, *a2, v16, v17, v18);
    }

    v27 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], v23, v22, v24, v25, v26);
    if (objc_msgSend_scheme(v27, v28, v29, v30, v31, v32))
    {
      if (a5)
      {
        v37 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v33, @"bytes=%d-%d", v34, v35, v36, a3, a4 - 1);
      }

      else
      {
        v37 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v33, @"bytes=%d", v34, v35, v36, a3);
      }

      v38 = v37;
      v39 = objc_alloc(MEMORY[0x29EDBA058]);
      v44 = objc_msgSend_initWithURL_(v39, v40, v27, v41, v42, v43);
      objc_msgSend_setValue_forHTTPHeaderField_(v44, v45, v38, @"Range", v46, v47);
      v53 = objc_msgSend_sharedSession(MEMORY[0x29EDBA130], v48, v49, v50, v51, v52);
      v54 = dispatch_group_create();
      dispatch_group_enter(v54);
      v66[0] = MEMORY[0x29EDCA5F8];
      v66[1] = 3321888768;
      v66[2] = sub_29AA37FEC;
      v66[3] = &unk_2A206F810;
      v66[4] = v54;
      v66[5] = a2;
      v66[6] = a8;
      v66[7] = v19 + 1;
      v67 = v19;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v58 = objc_msgSend_dataTaskWithRequest_completionHandler_(v53, v55, v44, v66, v56, v57);
      objc_msgSend_resume(v58, v59, v60, v61, v62, v63);
      dispatch_group_wait(v54, 0xFFFFFFFFFFFFFFFFLL);
      if (v19[1].__shared_owners_ == v19[1].__vftable)
      {
        *a8 = 0;
      }

      if (a6)
      {
        sub_29AA37C78((a1 + 8), &v68, a2);
        v64 = v70;
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v65 = *(v64 + 48);
        *(v64 + 40) = v20;
        *(v64 + 48) = v19;
        if (v65)
        {
          sub_29A014BEC(v65);
        }
      }

      *a7 = v20;
      a7[1] = v19;
      if (v67)
      {
        sub_29A014BEC(v67);
      }
    }

    else
    {
      *a8 = 0;
      *a7 = v20;
      a7[1] = v19;
    }

    v70 = 0;
    sub_29A0F845C(&v68);
  }
}

void sub_29AA37F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a22)
  {
    sub_29A014BEC(a22);
  }

  a25 = 0;
  sub_29A0F845C(&a23);
  sub_29A014BEC(v25);
  _Unwind_Resume(a1);
}

void sub_29AA37FEC(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      if (*(v13 + 23) < 0)
      {
        v13 = *v13;
      }

      v40 = 136315394;
      v41 = v13;
      v42 = 2112;
      v43 = objc_msgSend_localizedDescription(a4, v8, v9, v10, v11, v12);
      v14 = MEMORY[0x29EDCA988];
      v15 = "Encountered an error downloading %s : %@";
      v16 = 22;
LABEL_13:
      _os_log_impl(&dword_299FE7000, v14, OS_LOG_TYPE_DEFAULT, v15, &v40, v16);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v18 = objc_msgSend_statusCode(a3, a2, a3, 0, a5, a6);
  if (v18 != 206)
  {
    v32 = v18;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 40);
      if (*(v37 + 23) < 0)
      {
        v37 = *v37;
      }

      v40 = 136315650;
      v41 = v37;
      v42 = 2048;
      v43 = v32;
      v44 = 2112;
      v45 = objc_msgSend_localizedStringForStatusCode_(MEMORY[0x29EDB9FC8], v33, v32, v34, v35, v36);
      v14 = MEMORY[0x29EDCA988];
      v15 = "Encountered an error downloading byte range for %s : (%ld) %@";
      v16 = 32;
      goto LABEL_13;
    }

LABEL_14:
    dispatch_group_leave(*(a1 + 32));
    **(a1 + 48) = 0;
    return;
  }

  v28 = objc_msgSend_length(a2, v19, v20, v21, v22, v23);
  v29 = *(a1 + 56);
  v30 = v29[1] - *v29;
  v31 = (v28 - v30);
  if (v28 <= v30)
  {
    if (v28 < v30)
    {
      v29[1] = *v29 + v28;
    }
  }

  else
  {
    sub_29A1B2C78(v29, v31);
  }

  v38 = objc_msgSend_bytes(a2, v31, v24, v25, v26, v27);
  sub_29AA39DA4(*(a1 + 56), v38, &v38[v28], v28);
  v39 = *(a1 + 32);

  dispatch_group_leave(v39);
}

uint64_t pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate::RegisterPackageInfo(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = sub_29AA382B0((a1 + 592), &v8, a2);
  v5 = v10;
  v6 = v10;
  *(v10 + 40) = *a3;
  std::string::operator=((v5 + 48), (a3 + 8));
  if (v6 + 40 != a3)
  {
    *(v5 + 104) = *(a3 + 64);
    sub_29AA38A78((v5 + 72), *(a3 + 48), 0);
  }

  v10 = 0;
  sub_29A0F845C(&v8);
  return v4;
}

void sub_29AA38298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA382B0(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29AA38D64(a1, 1, a3, 0, a2, 1, sub_29AA39FDC, 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate::FetchPackageStreamInfo(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v120 = *MEMORY[0x29EDCA608];
  if (a2[23] >= 0)
  {
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], a2, a2, a4, a5, a6);
  }

  else
  {
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], a2, *a2, a4, a5, a6);
  }

  v13 = v8;
  v14 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], v9, v8, v10, v11, v12);
  result = objc_msgSend_scheme(v14, v15, v16, v17, v18, v19);
  if (result)
  {
    v26 = objc_msgSend_pathExtension(v14, v21, v22, v23, v24, v25);
    result = objc_msgSend_isEqualToString_(v26, v27, @"usdz", v28, v29, v30);
    if (result)
    {
      v35 = objc_msgSend_componentsWithString_(MEMORY[0x29EDBA110], v31, v13, v32, v33, v34);
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      Items = objc_msgSend_queryItems(v35, v36, v37, v38, v39, v40);
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(Items, v42, &v115, v119, 16, v43);
      if (v49)
      {
        v50 = 1;
        v51 = *v116;
        while (2)
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v116 != v51)
            {
              objc_enumerationMutation(Items);
            }

            v53 = *(*(&v115 + 1) + 8 * i);
            v54 = objc_msgSend_name(v53, v44, v45, v46, v47, v48);
            if (objc_msgSend_isEqualToString_(v54, v55, @"resource", v56, v57, v58))
            {
              v59 = MEMORY[0x29EDBA0F8];
              v60 = objc_msgSend_value(v53, v44, v45, v46, v47, v48);
              v65 = objc_msgSend_stringWithString_(v59, v61, v60, v62, v63, v64);
              v71 = objc_msgSend_stringByRemovingPercentEncoding(v65, v66, v67, v68, v69, v70);
              objc_msgSend_setQuery_(v35, v72, 0, v73, v74, v75);
              v81 = objc_msgSend_string(v35, v76, v77, v78, v79, v80);
              v87 = objc_msgSend_UTF8String(v81, v82, v83, v84, v85, v86);
              sub_29A008E78(v113, v87);
              v93 = objc_msgSend_UTF8String(v71, v88, v89, v90, v91, v92);
              sub_29A008E78(&__str, v93);
              std::string::operator=(a3, &__str);
              v109 = 0;
              v110 = 0;
              v111 = 0;
              if ((sub_29AA37674((a1 + 592), &v109, v113) & 1) == 0)
              {
                v111 = 0;
                sub_29A0F845C(&v109);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                if (v114 < 0)
                {
                  operator delete(v113[0]);
                }

                return 0;
              }

              v94 = v111;
              v105 = *(v111 + 40);
              if (*(v111 + 71) < 0)
              {
                sub_29A008D14(&__p, *(v111 + 48), *(v111 + 56));
              }

              else
              {
                __p = *(v111 + 48);
                v107 = *(v111 + 64);
              }

              sub_29AA38CEC(v108, v94 + 72);
              v95 = sub_29A5DAB7C(v108, a3);
              v96 = v95;
              if (v95)
              {
                v97 = *(v95 + 10);
                v98 = *(v95 + 11);
                *a4 = v98;
                *a5 = (v98 + v97);
              }

              else
              {
                v103[0] = "aaplHttpResolver/aaplHttpFoundationResolverDelegate.mm";
                v103[1] = "FetchPackageStreamInfo";
                v103[2] = 320;
                v103[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate::FetchPackageStreamInfo(const std::string &, std::string &, uint64_t &, uint64_t &) const";
                v104 = 0;
                if (*(a3 + 23) >= 0)
                {
                  v99 = a3;
                }

                else
                {
                  v99 = *a3;
                }

                v100 = v113;
                if (v114 < 0)
                {
                  v100 = v113[0];
                }

                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v103, 3, "Could not find resource %s in %s\n", v99, v100);
              }

              sub_29A0EB4E8(v108);
              if (SHIBYTE(v107) < 0)
              {
                operator delete(__p);
              }

              v111 = 0;
              sub_29A0F845C(&v109);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              if (v114 < 0)
              {
                operator delete(v113[0]);
              }

              v50 = 0;
              result = 0;
              if (!v96)
              {
                return result;
              }
            }
          }

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(Items, v44, &v115, v119, 16, v48);
          if (v49)
          {
            continue;
          }

          break;
        }

        if ((v50 & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_29AA386A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  a32 = 0;
  sub_29A0F845C(&a30);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA3871C(uint64_t a1)
{
  sub_29A0EB4E8((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate::IsUrl(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x29EDB8E70];
  if (a2[23] >= 0)
  {
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], a2, a2, a4, a5, a6);
  }

  else
  {
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], a2, *a2, a4, a5, a6);
  }

  v12 = objc_msgSend_URLWithString_(v6, v8, v7, v9, v10, v11);
  return objc_msgSend_scheme(v12, v13, v14, v15, v16, v17) != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate::ClearCaches(pxrInternal__aapl__pxrReserved__::AaplHttpFoundationResolverDelegate *this)
{
  sub_29AA3880C(this + 1);

  return sub_29AA388D8(this + 74);
}

uint64_t sub_29AA3880C(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v3 = sub_29A0EC0EC(v2);
  do
  {
    v4 = 0;
    v5 = v3;
    v6 = a1[v3 + 1];
    if (v3-- > 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = v6 + 24 * v4;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29AA39AC0(a1, v10);
          v10 = *v11;
        }

        while (*v11 > 0x3FuLL);
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29AA3A10C(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

uint64_t sub_29AA388D8(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v3 = sub_29A0EC0EC(v2);
  do
  {
    v4 = 0;
    v5 = v3;
    v6 = a1[v3 + 1];
    if (v3-- > 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = v6 + 24 * v4;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29AA39230(a1, v10);
          v10 = *v11;
        }

        while (*v11 > 0x3FuLL);
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29AA3A160(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

void sub_29AA389A4(unint64_t *a1)
{
  *a1 = &unk_2A206F850;
  sub_29AA388D8(a1 + 74);
  sub_29AA3880C(a1 + 1);

  pxrInternal__aapl__pxrReserved__::AaplHttpResolverDelegate::~AaplHttpResolverDelegate(a1);
}

void sub_29AA38A0C(unint64_t *a1)
{
  *a1 = &unk_2A206F850;
  sub_29AA388D8(a1 + 74);
  sub_29AA3880C(a1 + 1);
  pxrInternal__aapl__pxrReserved__::AaplHttpResolverDelegate::~AaplHttpResolverDelegate(a1);

  operator delete(v2);
}

void sub_29AA38A78(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 2), (v4 + 2));
        v8[5] = v4[5];
        v10 = *v8;
        sub_29AA38B7C(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_29A0EB524(a1, v10);
  }

  while (v4 != a3)
  {
    sub_29AA38BD0(a1, (v4 + 2));
    v4 = *v4;
  }
}

void sub_29AA38B4C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29A0EB524(v1, v2);
  __cxa_rethrow();
}

void *sub_29AA38B7C(void *a1, void *a2)
{
  v4 = sub_29A12A708(a1, a2 + 2);
  a2[1] = v4;
  v5 = sub_29A1FFBB4(a1, v4, a2 + 2);
  sub_29A0FF16C(a1, a2, v5);
  return a2;
}

void sub_29AA38C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29AA38C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v6 + 16, *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 1) = *a2;
    v6[4] = *(a2 + 16);
  }

  v7[5] = *(a2 + 24);
  *(a3 + 16) = 1;
  result = sub_29A12A708(a1, v7 + 2);
  v7[1] = result;
  return result;
}

void sub_29AA38CD0(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_29A0EC874(v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA38CEC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A177FC8(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t sub_29AA38D64(uint64_t *a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, _BYTE *, uint64_t), void *a8)
{
  v13 = *a3;
  if (a3[23] >= 0)
  {
    v13 = a3;
  }

  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = v13 + 1;
    do
    {
      v15 = (0x9E3779B97F4A7C15 * v15) ^ v14;
      v17 = *v16++;
      v14 = v17;
    }

    while (v17);
  }

  else
  {
    v15 = 0;
  }

  v18 = 0;
  v19 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29AA39264(&v34, a1, v19 & v15, 0);
    v20 = (v36 + 16);
    do
    {
      v20 = *v20;
    }

    while (v20 >= 0x40 && !sub_29A1B00DC(a3, v20 + 2));
    if (a2)
    {
      break;
    }

    if (v20)
    {
      v21 = 1;
LABEL_17:
      v22 = a8;
      if (!a5)
      {
        goto LABEL_52;
      }

LABEL_18:
      if ((sub_29A10872C(a5, v20 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v23 = 2;
        while ((sub_29A10872C(a5, v20 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v24 = v23 < 16;
          v23 *= 2;
          if (!v24)
          {
            v25 = v34;
            v34 = 0;
            if (v35 == 1)
            {
LABEL_23:
              v26 = *v25;
              v27 = *v25 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v28 = v26;
                atomic_compare_exchange_strong(v25, &v28, v27);
                if (v28 == v26)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v25, 0, memory_order_relaxed) != v26)
                {
                  sched_yield();
                  goto LABEL_23;
                }
              }
            }

            else
            {
              atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v29 = *a1;
            __dmb(0xBu);
            a8 = v22;
            goto LABEL_38;
          }
        }
      }

      sub_29A0F845C(&v34);
      *(a5 + 16) = v20;
      *(a5 + 24) = v15;
      if (!v18)
      {
        goto LABEL_49;
      }

LABEL_48:
      sub_29AA390A8(a1, v18, (a1 + 72), 0);
      goto LABEL_49;
    }

    v29 = *a1;
    __dmb(0xBu);
    if (v19 == v29 || !sub_29A108BB8(a1, v15, v19, v29))
    {
      sub_29A0F845C(&v34);
      return 0;
    }

LABEL_38:
    sub_29A0F845C(&v34);
    v19 = v29;
  }

  if (v20)
  {
LABEL_14:
    v21 = 0;
    goto LABEL_17;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v35 & 1) == 0)
  {
    v35 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v34) & 1) == 0)
    {
      v20 = (v36 + 16);
      while (1)
      {
        v20 = *v20;
        if (v20 < 0x40)
        {
          break;
        }

        if (sub_29A1B00DC(a3, v20 + 2))
        {
          if (v35 != 1)
          {
            goto LABEL_14;
          }

          v21 = 0;
          atomic_fetch_add(v34, 3uLL);
          v35 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  v29 = *a1;
  __dmb(0xBu);
  if (v19 != v29)
  {
    if (!sub_29A108BB8(a1, v15, v19, v29))
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v29 = v19;
LABEL_40:
  v18 = sub_29A108650(a1, v36, a8, v29);
  v22 = 0;
  v21 = 1;
  v20 = a8;
  if (a5)
  {
    goto LABEL_18;
  }

LABEL_52:
  sub_29A0F845C(&v34);
  if (v18)
  {
    goto LABEL_48;
  }

LABEL_49:
  if (v22)
  {
    sub_29AA39230(a1, v22);
  }

  return v21;
}

void sub_29AA39080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29AA390A8(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29AA39264(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      sub_29AA39340(a2, v11, a3);
    }
  }

  else
  {
    v12 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v12;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v12);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v12);
    }
  }

  return a1;
}

void *sub_29AA39340(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29AA39264(&v20, a1, v10 & a3, 0);
  v11 = (v22 + 16);
  v12 = *(v22 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while (1)
    {
      v14 = *(v12 + 39) >= 0 ? (v12 + 16) : *(v12 + 16);
      v15 = *v14;
      if (*v14)
      {
        v16 = 0;
        v17 = v14 + 1;
        do
        {
          v16 = (0x9E3779B97F4A7C15 * v16) ^ v15;
          v18 = *v17++;
          v15 = v18;
        }

        while (v18);
      }

      else
      {
        v16 = 0;
      }

      if ((v16 & v13) != a3)
      {
        break;
      }

      if (v21 & 1) != 0 || (v21 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v20)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_32:
        v12 = *v11;
        if (*v11 <= 0x3F)
        {
          return sub_29A0F845C(&v20);
        }
      }

      else
      {
        v11 = (v22 + 16);
        v12 = *(v22 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v20);
        }
      }
    }

    v11 = v12;
    goto LABEL_32;
  }

  return sub_29A0F845C(&v20);
}

void sub_29AA39500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29AA39514(uint64_t a1)
{
  sub_29A0EB4E8((a1 + 56));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_29AA39594(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A206F8E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AA395D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t sub_29AA395F4(uint64_t *a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, _BYTE *, uint64_t), void *a8)
{
  v13 = *a3;
  if (a3[23] >= 0)
  {
    v13 = a3;
  }

  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = v13 + 1;
    do
    {
      v15 = (0x9E3779B97F4A7C15 * v15) ^ v14;
      v17 = *v16++;
      v14 = v17;
    }

    while (v17);
  }

  else
  {
    v15 = 0;
  }

  v18 = 0;
  v19 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29AA39AF4(&v34, a1, v19 & v15, 0);
    v20 = (v36 + 16);
    do
    {
      v20 = *v20;
    }

    while (v20 >= 0x40 && !sub_29A1B00DC(a3, v20 + 2));
    if (a2)
    {
      break;
    }

    if (v20)
    {
      v21 = 1;
LABEL_17:
      v22 = a8;
      if (!a5)
      {
        goto LABEL_52;
      }

LABEL_18:
      if ((sub_29A10872C(a5, v20 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v23 = 2;
        while ((sub_29A10872C(a5, v20 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v24 = v23 < 16;
          v23 *= 2;
          if (!v24)
          {
            v25 = v34;
            v34 = 0;
            if (v35 == 1)
            {
LABEL_23:
              v26 = *v25;
              v27 = *v25 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v28 = v26;
                atomic_compare_exchange_strong(v25, &v28, v27);
                if (v28 == v26)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v25, 0, memory_order_relaxed) != v26)
                {
                  sched_yield();
                  goto LABEL_23;
                }
              }
            }

            else
            {
              atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v29 = *a1;
            __dmb(0xBu);
            a8 = v22;
            goto LABEL_38;
          }
        }
      }

      sub_29A0F845C(&v34);
      *(a5 + 16) = v20;
      *(a5 + 24) = v15;
      if (!v18)
      {
        goto LABEL_49;
      }

LABEL_48:
      sub_29AA39938(a1, v18, (a1 + 72), 0);
      goto LABEL_49;
    }

    v29 = *a1;
    __dmb(0xBu);
    if (v19 == v29 || !sub_29A108BB8(a1, v15, v19, v29))
    {
      sub_29A0F845C(&v34);
      return 0;
    }

LABEL_38:
    sub_29A0F845C(&v34);
    v19 = v29;
  }

  if (v20)
  {
LABEL_14:
    v21 = 0;
    goto LABEL_17;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v35 & 1) == 0)
  {
    v35 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v34) & 1) == 0)
    {
      v20 = (v36 + 16);
      while (1)
      {
        v20 = *v20;
        if (v20 < 0x40)
        {
          break;
        }

        if (sub_29A1B00DC(a3, v20 + 2))
        {
          if (v35 != 1)
          {
            goto LABEL_14;
          }

          v21 = 0;
          atomic_fetch_add(v34, 3uLL);
          v35 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  v29 = *a1;
  __dmb(0xBu);
  if (v19 != v29)
  {
    if (!sub_29A108BB8(a1, v15, v19, v29))
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v29 = v19;
LABEL_40:
  v18 = sub_29A108650(a1, v36, a8, v29);
  v22 = 0;
  v21 = 1;
  v20 = a8;
  if (a5)
  {
    goto LABEL_18;
  }

LABEL_52:
  sub_29A0F845C(&v34);
  if (v18)
  {
    goto LABEL_48;
  }

LABEL_49:
  if (v22)
  {
    sub_29AA39AC0(a1, v22);
  }

  return v21;
}

void sub_29AA39910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29AA39938(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29AA39AF4(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      sub_29AA39BD0(a2, v11, a3);
    }
  }

  else
  {
    v12 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v12;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v12);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v12);
    }
  }

  return a1;
}

void *sub_29AA39BD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29AA39AF4(&v20, a1, v10 & a3, 0);
  v11 = (v22 + 16);
  v12 = *(v22 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while (1)
    {
      v14 = *(v12 + 39) >= 0 ? (v12 + 16) : *(v12 + 16);
      v15 = *v14;
      if (*v14)
      {
        v16 = 0;
        v17 = v14 + 1;
        do
        {
          v16 = (0x9E3779B97F4A7C15 * v16) ^ v15;
          v18 = *v17++;
          v15 = v18;
        }

        while (v18);
      }

      else
      {
        v16 = 0;
      }

      if ((v16 & v13) != a3)
      {
        break;
      }

      if (v21 & 1) != 0 || (v21 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v20)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_32:
        v12 = *v11;
        if (*v11 <= 0x3F)
        {
          return sub_29A0F845C(&v20);
        }
      }

      else
      {
        v11 = (v22 + 16);
        v12 = *(v22 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v20);
        }
      }
    }

    v11 = v12;
    goto LABEL_32;
  }

  return sub_29A0F845C(&v20);
}

void sub_29AA39D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void **sub_29AA39DA4(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = v7[1];
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      sub_29A00C9A4();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0101E8(v7, v11);
    v12 = v7[1];
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(v7[1], __src, v13);
    }

    v14 = &v12[v13];
  }

  v7[1] = v14;
  return result;
}

uint64_t sub_29AA39F00(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v6 = tbb::internal::allocate_via_handler_v3(0x38);
  v11[0] = v6;
  v11[1] = a1;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = (v6 + 16);
  v8 = *a3;
  if (*(*a3 + 23) < 0)
  {
    sub_29A008D14(v7, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(v6 + 32) = *(v8 + 2);
    *v7 = v9;
  }

  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  v11[0] = 0;
  sub_29AA39FA8(v11, v5);
  return v6;
}

uint64_t *sub_29AA39FA8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

uint64_t sub_29AA3A010(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v6 = tbb::internal::allocate_via_handler_v3(0x70);
  v11[0] = v6;
  v11[1] = a1;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = (v6 + 16);
  v8 = *a3;
  if (*(*a3 + 23) < 0)
  {
    sub_29A008D14(v7, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(v6 + 32) = *(v8 + 2);
    *v7 = v9;
  }

  *(v6 + 104) = 0;
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 104) = 1065353216;
  v11[0] = 0;
  sub_29AA3A0D8(v11, v5);
  return v6;
}

uint64_t *sub_29AA3A0D8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

uint64_t sub_29AA3A10C(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8 + 8 * a2);
  if (a2 < 8)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      result = tbb::internal::deallocate_via_handler_v3(result, 1);
    }
  }

  else
  {
    result = tbb::internal::deallocate_via_handler_v3(result, a2);
  }

  *(v3 + 8 * a2) = 0;
  return result;
}

uint64_t sub_29AA3A160(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8 + 8 * a2);
  if (a2 < 8)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      result = tbb::internal::deallocate_via_handler_v3(result, 1);
    }
  }

  else
  {
    result = tbb::internal::deallocate_via_handler_v3(result, a2);
  }

  *(v3 + 8 * a2) = 0;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::AaplHttpAsset::AaplHttpAsset(void *a1, __n128 *a2, int a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::ArAsset::ArAsset(a1);
  *v5 = &unk_2A206F930;
  result = *a2;
  *(v5 + 1) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(v5 + 6) = a3;
  return result;
}

{
  v5 = pxrInternal__aapl__pxrReserved__::ArAsset::ArAsset(a1);
  *v5 = &unk_2A206F930;
  result = *a2;
  *(v5 + 1) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(v5 + 6) = a3;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::AaplHttpAsset::GetBuffer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = **(this + 8) + *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

size_t pxrInternal__aapl__pxrReserved__::AaplHttpAsset::Read(pxrInternal__aapl__pxrReserved__::AaplHttpAsset *this, void *__dst, size_t a3, uint64_t a4)
{
  if (__CFADD__(a4, a3) || (v4 = a4 + a3, v5 = *(this + 6), __CFADD__(v5, a4 + a3)))
  {
    v11 = "aaplHttpResolver/aaplHttpAsset.cpp";
    v12 = "Read";
    v13 = 34;
    v14 = "virtual size_t pxrInternal__aapl__pxrReserved__::AaplHttpAsset::Read(void *, size_t, size_t) const";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Read parameters would cause overflow.");
    return 0;
  }

  v8 = **(this + 1);
  v9 = *(*(this + 1) + 8) - v8;
  if (v4 + v5 > v9)
  {
    v11 = "aaplHttpResolver/aaplHttpAsset.cpp";
    v12 = "Read";
    v13 = 39;
    v14 = "virtual size_t pxrInternal__aapl__pxrReserved__::AaplHttpAsset::Read(void *, size_t, size_t) const";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Trying to read beyond end of buffer.");
    return 0;
  }

  v10 = v9 - v5;
  if (v10 < v4)
  {
    v4 = v10;
  }

  v6 = v4 - a4;
  memcpy(__dst, (v8 + a4 + v5), a3);
  return v6;
}

void sub_29AA3A39C(pxrInternal__aapl__pxrReserved__::ArAsset *this)
{
  *this = &unk_2A206F930;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);
}

void sub_29AA3A3F8(pxrInternal__aapl__pxrReserved__::ArAsset *this)
{
  *this = &unk_2A206F930;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);

  operator delete(v3);
}

void pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_OpenAsset(pxrInternal__aapl__pxrReserved__::ArResolver *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  CurrentContext = pxrInternal__aapl__pxrReserved__::ArResolver::GetCurrentContext(v27, a1);
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  ResourceOffset = 0;
  v21 = 1;
  v20 = 0uLL;
  Delegate = pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetDelegate(CurrentContext);
  v7 = Delegate;
  __src[0] = 0;
  __src[1] = 0;
  v19 = 0;
  if (!Delegate)
  {
    __p[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
    __p[1] = "_OpenAsset";
    v15 = 40;
    v16 = "virtual std::shared_ptr<ArAsset> pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_OpenAsset(const ArResolvedPath &) const";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 3, "HttpResolverDelegate was not available");
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_OpenAsset(__p, a3);
    goto LABEL_29;
  }

  if ((*(*Delegate + 56))(Delegate, a2, v25, &v24, &v23))
  {
    v8 = (*(*v7 + 40))(__p, v7, a2, v24, v23, 1, 1, v27, __src, &v21);
    v10 = __p[0];
    v9 = __p[1];
    v20 = *__p;
    if (v21)
    {
      v13[0] = __p[0];
      v13[1] = __p[1];
      if (__p[1])
      {
        atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
      }

      ResourceOffset = pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetResourceOffset(v8, v25, v13, &v21);
      if (v9)
      {
        sub_29A014BEC(v9);
      }
    }

    else
    {
      __p[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
      __p[1] = "_OpenAsset";
      v15 = 49;
      v16 = "virtual std::shared_ptr<ArAsset> pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_OpenAsset(const ArResolvedPath &) const";
      v17 = 0;
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 3, "Failed to download bytes for %s", v11);
    }
  }

  else
  {
    (*(*v7 + 32))(__p, v7, a2, v27, __src, &v21);
    v20 = *__p;
    v10 = __p[0];
  }

  if (v21 == 1)
  {
    if (v10[1] != *v10)
    {
      sub_29AA3BE64(&v20, &ResourceOffset, __p);
      *a3 = *__p;
      goto LABEL_32;
    }

    if (SHIBYTE(v19) < 0)
    {
      if (__src[1])
      {
        sub_29A008D14(__p, __src[0], __src[1]);
        goto LABEL_22;
      }
    }

    else if (HIBYTE(v19))
    {
      *__p = *__src;
      v15 = v19;
LABEL_22:
      pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_OpenAsset(__p, a3);
      goto LABEL_29;
    }
  }

  if ((*(*v7 + 80))(v7) && ((*(*v7 + 72))(v7, a2) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_OpenAsset(a2, a3);
    goto LABEL_32;
  }

  __p[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
  __p[1] = "_OpenAsset";
  v15 = 69;
  v16 = "virtual std::shared_ptr<ArAsset> pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_OpenAsset(const ArResolvedPath &) const";
  v17 = 0;
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 3, "Failed to download %s", v12);
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_OpenAsset(__p, a3);
LABEL_29:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_32:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__src[0]);
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  __p[0] = v27;
  sub_29A0176E4(__p);
}

void sub_29AA3A844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    sub_29A014BEC(a28);
  }

  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  a13 = (v28 - 96);
  sub_29A0176E4(&a13);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetDelegate(pxrInternal__aapl__pxrReserved__::AaplHttpResolver *this)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_delegate))
  {
    v2 = operator new(0x498uLL);
    bzero(v2, 0x498uLL);
    *v2 = &unk_2A206F850;
    v2[71] = 0;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
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
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 30) = 0u;
    *(v2 + 31) = 0u;
    *(v2 + 32) = 0u;
    __dmb(0xBu);
    v2[1] = 0;
    __dmb(0xBu);
    v2[66] = 0;
    *(v2 + 67) = 0u;
    *(v2 + 69) = 0u;
    *(v2 + 71) = 0u;
    v2[2] = v2 + 67;
    __dmb(0xBu);
    v2[1] = 1;
    v2[141] = 0;
    v2[144] = 0;
    *(v2 + 75) = 0u;
    *(v2 + 77) = 0u;
    *(v2 + 79) = 0u;
    *(v2 + 81) = 0u;
    *(v2 + 83) = 0u;
    *(v2 + 85) = 0u;
    *(v2 + 87) = 0u;
    *(v2 + 89) = 0u;
    *(v2 + 91) = 0u;
    *(v2 + 93) = 0u;
    *(v2 + 95) = 0u;
    *(v2 + 97) = 0u;
    *(v2 + 99) = 0u;
    *(v2 + 101) = 0u;
    *(v2 + 103) = 0u;
    *(v2 + 105) = 0u;
    *(v2 + 107) = 0u;
    *(v2 + 109) = 0u;
    *(v2 + 111) = 0u;
    *(v2 + 113) = 0u;
    *(v2 + 115) = 0u;
    *(v2 + 117) = 0u;
    *(v2 + 119) = 0u;
    *(v2 + 121) = 0u;
    *(v2 + 123) = 0u;
    *(v2 + 125) = 0u;
    *(v2 + 127) = 0u;
    *(v2 + 129) = 0u;
    *(v2 + 131) = 0u;
    *(v2 + 133) = 0u;
    *(v2 + 135) = 0u;
    *(v2 + 137) = 0u;
    __dmb(0xBu);
    v2[74] = 0;
    __dmb(0xBu);
    v2[139] = 0;
    *(v2 + 70) = 0u;
    *(v2 + 71) = 0u;
    *(v2 + 72) = 0u;
    v2[75] = v2 + 140;
    __dmb(0xBu);
    v2[74] = 1;
    atomic_store(v2, &pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_delegate);
  }

  return atomic_load(&pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_delegate);
}

uint64_t pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetResourceOffset(uint64_t a1, uint64_t a2, uint64_t **a3, _BYTE *a4)
{
  v5 = **a3;
  v6 = (*a3)[1] - v5;
  if (v6 == 30)
  {
LABEL_8:
    v9 = 0;
    *a4 = 0;
    return v9;
  }

  v8 = 30;
  while (*(v5 + v8 - 30) != 80 || *(v5 + v8 - 29) != 75 || *(v5 + v8 - 28) != 3 || *(v5 + v8 - 27) != 4)
  {
    if (v6 == ++v8)
    {
      goto LABEL_8;
    }
  }

  if (v8 - 4 >= v6)
  {
    v17 = "aaplHttpResolver/aaplHttpResolver.cpp";
    v18 = "GetResourceOffset";
    v19 = 366;
    v20 = "uint32_t pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetResourceOffset(const std::string &, const std::shared_ptr<std::vector<char>>, BOOL &) const";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Failed to read uncompressed size for %s.");
    return 0;
  }

  if (v8 - 2 >= v6)
  {
    v17 = "aaplHttpResolver/aaplHttpResolver.cpp";
    v18 = "GetResourceOffset";
    v19 = 375;
    v20 = "uint32_t pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetResourceOffset(const std::string &, const std::shared_ptr<std::vector<char>>, BOOL &) const";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Failed to read file name length for %s.");
    return 0;
  }

  if (v8 >= v6)
  {
    v17 = "aaplHttpResolver/aaplHttpResolver.cpp";
    v18 = "GetResourceOffset";
    v19 = 384;
    v20 = "uint32_t pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetResourceOffset(const std::string &, const std::shared_ptr<std::vector<char>>, BOOL &) const";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Failed to read extra field length for %s.");
    return 0;
  }

  v11 = *(v5 + v8 - 4);
  if (v11 + v8 >= v6)
  {
    v17 = "aaplHttpResolver/aaplHttpResolver.cpp";
    v18 = "GetResourceOffset";
    v19 = 399;
    v20 = "uint32_t pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetResourceOffset(const std::string &, const std::shared_ptr<std::vector<char>>, BOOL &) const";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Failed to read file name for %s.");
    return 0;
  }

  v12 = *(v5 + v8 - 2);
  sub_29A02887C(__p, (v5 + v8), *(v5 + v8 - 4));
  if (sub_29A3341A0(__p, a2))
  {
    *a4 = 0;
    v17 = "aaplHttpResolver/aaplHttpResolver.cpp";
    v18 = "GetResourceOffset";
    v19 = 407;
    v20 = "uint32_t pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetResourceOffset(const std::string &, const std::shared_ptr<std::vector<char>>, BOOL &) const";
    v21 = 0;
    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Found %s but expected %s", v13, v14);
    v9 = 0;
  }

  else
  {
    *a4 = 1;
    v9 = (v11 + v12 + 30);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_29AA3ACF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_GetModificationTimestamp(pxrInternal__aapl__pxrReserved__::AaplHttpResolver *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__ *a3)
{
  Delegate = pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetDelegate(a1);
  if (Delegate)
  {
    v7 = Delegate;
    if ((*(*Delegate + 80))(Delegate) && ((*(*v7 + 72))(v7, a3) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_GetModificationTimestamp(a1, a2, a3);
    }

    else
    {
      (*(*v7 + 24))(v7, a3);
    }
  }

  else
  {
    v8[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
    v8[1] = "_GetModificationTimestamp";
    v8[2] = 79;
    v8[3] = "virtual ArTimestamp pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_GetModificationTimestamp(const std::string &, const ArResolvedPath &) const";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 3, "HttpResolverDelegate was not available");
  }
}

void pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_CreateIdentifier(pxrInternal__aapl__pxrReserved__::ArResolver *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (!*(a2 + 23))
    {
      *a4 = *a2;
      return;
    }

    goto LABEL_5;
  }

  if (*(a2 + 8))
  {
LABEL_5:
    CurrentContext = pxrInternal__aapl__pxrReserved__::ArResolver::GetCurrentContext(v21, this);
    v20 = 0;
    Delegate = pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetDelegate(CurrentContext);
    v10 = Delegate;
    if (Delegate)
    {
      (*(*Delegate + 16))(__p, Delegate, a2, a3, &v20, v21);
      if (v20 == 1)
      {
        if (pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(this, __p))
        {
          (*(*v10 + 16))(v13, v10, a2, a3, &v20, v21);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *v13;
          v19 = v14;
        }

        else
        {
          LOBYTE(v13[0]) = 0;
          sub_29A008E78(&v13[1], "");
          memset(v16, 0, sizeof(v16));
          v17 = 1065353216;
          (*(*v10 + 48))(v10, __p, v13);
          sub_29A0EB4E8(v16);
          if (SHIBYTE(v15) < 0)
          {
            operator delete(v13[1]);
          }
        }
      }

      v12 = HIBYTE(v19);
      if (v19 < 0)
      {
        v12 = __p[1];
      }

      if (v12)
      {
        *&a4->__r_.__value_.__l.__data_ = *__p;
        a4->__r_.__value_.__r.__words[2] = v19;
        __p[1] = 0;
        v19 = 0;
        __p[0] = 0;
      }

      else if (!(*(*v10 + 80))(v10) || ((*(*v10 + 72))(v10, a2) & 1) != 0 || ((*(*v10 + 72))(v10, a3) & 1) != 0)
      {
        sub_29A008E78(a4, "");
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_CreateIdentifier(this, a2, a3, a4);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v13[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
      v13[1] = "_CreateIdentifier";
      v14 = 103;
      v15 = "virtual std::string pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_CreateIdentifier(const std::string &, const ArResolvedPath &) const";
      LOBYTE(v16[0]) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 3, "HttpResolverDelegate was not available");
      sub_29A008E78(a4, "");
    }

    v13[0] = v21;
    sub_29A0176E4(v13);
    return;
  }

  v11 = *a2;

  sub_29A008D14(a4, v11, 0);
}

void sub_29AA3B174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_29AA3871C(&a10);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a10 = v24 - 72;
  sub_29A0176E4(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(pxrInternal__aapl__pxrReserved__::ArResolver *a1, uint64_t a2)
{
  v41 = 1;
  CurrentContext = pxrInternal__aapl__pxrReserved__::ArResolver::GetCurrentContext(v40, a1);
  Delegate = pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetDelegate(CurrentContext);
  v5 = Delegate;
  if (!Delegate)
  {
    v29 = "aaplHttpResolver/aaplHttpResolver.cpp";
    v30.__r_.__value_.__r.__words[0] = "GetPackageContents";
    v30.__r_.__value_.__l.__size_ = 167;
    v30.__r_.__value_.__r.__words[2] = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
    LOBYTE(v31) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 3, "HttpResolverDelegate was not available");
    v10 = 0;
    goto LABEL_24;
  }

  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  (*(*Delegate + 40))(&v36, Delegate, a2, -128, 0, 0, 0, v40, v38, &v41);
  if (v41 == 1)
  {
    v6 = *v36;
    v7 = v36[1] - *v36;
    if (v7 >= 0x14)
    {
      if (v7 == 20)
      {
LABEL_14:
        v29 = "aaplHttpResolver/aaplHttpResolver.cpp";
        v30.__r_.__value_.__r.__words[0] = "GetPackageContents";
        v30.__r_.__value_.__l.__size_ = 207;
        v30.__r_.__value_.__r.__words[2] = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
        LOBYTE(v31) = 0;
        if (*(a2 + 23) >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 3, "Failed to find End of Central Directory record for %s", v9);
      }

      else
      {
        v8 = 20;
        while (1)
        {
          if (*(v6 + v8 - 20) == 80)
          {
            if (v7 <= v8 - 19)
            {
              goto LABEL_69;
            }

            if (*(v6 + v8 - 19) == 75)
            {
              if (v7 <= v8 - 18)
              {
                goto LABEL_69;
              }

              if (*(v6 + v8 - 18) == 5)
              {
                if (v7 <= v8 - 17)
                {
LABEL_69:
                  sub_29A792748();
                }

                if (*(v6 + v8 - 17) == 6)
                {
                  break;
                }
              }
            }
          }

          if (v7 == ++v8)
          {
            goto LABEL_14;
          }
        }

        if (v8 - 8 >= v7)
        {
          v29 = "aaplHttpResolver/aaplHttpResolver.cpp";
          v30.__r_.__value_.__r.__words[0] = "GetPackageContents";
          v30.__r_.__value_.__l.__size_ = 215;
          v30.__r_.__value_.__r.__words[2] = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
          LOBYTE(v31) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 3, "Failed to read number of entries in End of Central Directory record.");
        }

        else if (v8 - 4 >= v7)
        {
          v29 = "aaplHttpResolver/aaplHttpResolver.cpp";
          v30.__r_.__value_.__r.__words[0] = "GetPackageContents";
          v30.__r_.__value_.__l.__size_ = 223;
          v30.__r_.__value_.__r.__words[2] = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
          LOBYTE(v31) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 3, "Failed to read directory size in End of Central Directory record.");
        }

        else
        {
          if (v8 < v7)
          {
            (*(*v5 + 40))(&v34, v5, a2, *(v6 + v8 - 4), (*(v6 + v8 - 4) + *(v6 + v8 - 8)), 1, 0, v40, v38, &v41);
            if (v41)
            {
              LOBYTE(v29) = 1;
              sub_29A008E78(&v30, "");
              v31 = 0u;
              v32 = 0u;
              v33 = 1065353216;
              v12 = v34;
              v13 = *v34;
              v14 = v34[1] - *v34;
              if (v14 == 30)
              {
LABEL_65:
                v10 = 0;
              }

              else
              {
                v15 = 0;
                v16 = 0;
                do
                {
                  v17 = v13 + v16;
                  if (*(v13 + v16) == 80 && *(v17 + 1) == 75 && *(v17 + 2) == 1 && *(v17 + 3) == 2)
                  {
                    v18 = v16 + 28;
                    if (v16 + 28 >= v14)
                    {
                      __p.__r_.__value_.__r.__words[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
                      __p.__r_.__value_.__l.__size_ = "GetPackageContents";
                      __p.__r_.__value_.__r.__words[2] = 270;
                      v27 = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
                      v28 = 0;
                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read uncompressed size for entry.");
                      goto LABEL_65;
                    }

                    v19 = v16 + 30;
                    if (v16 + 30 >= v14)
                    {
                      __p.__r_.__value_.__r.__words[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
                      __p.__r_.__value_.__l.__size_ = "GetPackageContents";
                      __p.__r_.__value_.__r.__words[2] = 279;
                      v27 = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
                      v28 = 0;
                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read file name length for entry.");
                      goto LABEL_65;
                    }

                    if (v16 + 32 >= v14)
                    {
                      __p.__r_.__value_.__r.__words[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
                      __p.__r_.__value_.__l.__size_ = "GetPackageContents";
                      __p.__r_.__value_.__r.__words[2] = 288;
                      v27 = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
                      v28 = 0;
                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read extra field length for entry.");
                      goto LABEL_65;
                    }

                    v16 += 46;
                    if (v16 >= v14)
                    {
                      __p.__r_.__value_.__r.__words[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
                      __p.__r_.__value_.__l.__size_ = "GetPackageContents";
                      __p.__r_.__value_.__r.__words[2] = 297;
                      v27 = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
                      v28 = 0;
                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read file offset for entry");
                      goto LABEL_65;
                    }

                    v20 = *(v13 + v18);
                    if (v16 + v20 >= v14)
                    {
                      __p.__r_.__value_.__r.__words[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
                      __p.__r_.__value_.__l.__size_ = "GetPackageContents";
                      __p.__r_.__value_.__r.__words[2] = 312;
                      v27 = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
                      v28 = 0;
                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to file name for entry");
                      goto LABEL_65;
                    }

                    v21 = *(v17 + 24);
                    v22 = *(v13 + v19);
                    v23 = *(v17 + 42);
                    sub_29A02887C(&__str, (v13 + v16), v20);
                    if (!v15)
                    {
                      std::string::operator=(&v30, &__str);
                    }

                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_29A008D14(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      __p = __str;
                    }

                    v27 = ((v21 + v20 + v22 + 30) | (v23 << 32));
                    sub_29A177FC8(&v31, &__p, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    ++v15;
                    v12 = v34;
                    v13 = *v34;
                  }

                  ++v16;
                  v14 = v12[1] - v13;
                }

                while (v16 < v14 - 30);
                if (!*(&v32 + 1))
                {
                  goto LABEL_65;
                }

                (*(*v5 + 48))(v5, a2, &v29);
                v10 = v41;
              }

              sub_29AA3871C(&v29);
            }

            else
            {
              v29 = "aaplHttpResolver/aaplHttpResolver.cpp";
              v30.__r_.__value_.__r.__words[0] = "GetPackageContents";
              v30.__r_.__value_.__l.__size_ = 244;
              v30.__r_.__value_.__r.__words[2] = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
              LOBYTE(v31) = 0;
              if (*(a2 + 23) >= 0)
              {
                v24 = a2;
              }

              else
              {
                v24 = *a2;
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 3, "Failed to fetch central directory for %s", v24);
              v10 = 0;
            }

            if (v35)
            {
              sub_29A014BEC(v35);
            }

            goto LABEL_19;
          }

          v29 = "aaplHttpResolver/aaplHttpResolver.cpp";
          v30.__r_.__value_.__r.__words[0] = "GetPackageContents";
          v30.__r_.__value_.__l.__size_ = 232;
          v30.__r_.__value_.__r.__words[2] = "BOOL pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetPackageContents(const std::string &) const";
          LOBYTE(v31) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 3, "Failed to read directory offset in End of Central Directory record.");
        }
      }
    }
  }

  v10 = 0;
LABEL_19:
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

LABEL_24:
  v29 = v40;
  sub_29A0176E4(&v29);
  return v10 & 1;
}

void sub_29AA3B898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  sub_29AA3871C(&a25);
  if (a35)
  {
    sub_29A014BEC(a35);
  }

  v37 = *(v35 - 144);
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (*(v35 - 113) < 0)
  {
    operator delete(*(v35 - 136));
  }

  a25 = v35 - 112;
  sub_29A0176E4(&a25);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_Resolve(pxrInternal__aapl__pxrReserved__::AaplHttpResolver *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  Delegate = pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetDelegate(a1);
  if (!Delegate)
  {
    v11[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
    v11[1] = "_Resolve";
    v11[2] = 149;
    v11[3] = "virtual ArResolvedPath pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_Resolve(const std::string &) const";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 3, "HttpResolverDelegate was not available");
LABEL_10:
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v8 = Delegate;
  if ((*(*Delegate + 80))(Delegate) && ((*(*v8 + 72))(v8, a2) & 1) == 0)
  {

    pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_Resolve(a1, a2, a3);
  }

  else if (*(a2 + 23) < 0)
  {
    v9 = *a2;
    v10 = *(a2 + 8);

    sub_29A008D14(a3, v9, v10);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void *pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_GetExtension@<X0>(pxrInternal__aapl__pxrReserved__::AaplHttpResolver *a1@<X0>, void *a2@<X8>)
{
  Delegate = pxrInternal__aapl__pxrReserved__::AaplHttpResolver::GetDelegate(a1);
  if (Delegate)
  {
    v4 = *(*Delegate + 64);

    return v4();
  }

  else
  {
    v6[0] = "aaplHttpResolver/aaplHttpResolver.cpp";
    v6[1] = "_GetExtension";
    v6[2] = 424;
    v6[3] = "virtual std::string pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_GetExtension(const std::string &) const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 3, "HttpResolverDelegate was not available");
    return sub_29A008E78(a2, "");
  }
}

void pxrInternal__aapl__pxrReserved__::AaplHttpResolver::SetDelegate(uint64_t a1, unint64_t a2, int a3)
{
  if (a3)
  {
    if (atomic_load(&pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_delegate))
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_delegate);
      atomic_store(0, &pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_delegate);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  atomic_store(a2, &pxrInternal__aapl__pxrReserved__::AaplHttpResolver::_delegate);
}

void sub_29AA3BC0C(void **a1)
{
  *a1 = &unk_2A20457C0;
  v2 = a1 + 1;
  sub_29A0176E4(&v2);
  pxrInternal__aapl__pxrReserved__::ArResolver::~ArResolver(a1);
}

void sub_29AA3BC68(void **a1)
{
  *a1 = &unk_2A20457C0;
  v3 = a1 + 1;
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::ArResolver::~ArResolver(a1);
  operator delete(v2);
}

void *sub_29AA3BCC8()
{
  v2 = nullsub_1473;
  return sub_29AA3BD24(v0);
}

void *sub_29AA3BD24(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A206FA70;
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

void sub_29AA3BDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA3BDD4(pxrInternal__aapl__pxrReserved__::Ar_ResolverFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Ar_ResolverFactoryBase::~Ar_ResolverFactoryBase(a1);

  operator delete(v1);
}

void *sub_29AA3BDFC()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::ArResolver::ArResolver(v0);
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  *v0 = &unk_2A206F990;
  return v0;
}

void *sub_29AA3BE64@<X0>(unint64_t *a1@<X1>, int *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  result = sub_29AA3BEC8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AA3BEC8(void *a1, unint64_t *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A206FAB0;
  sub_29AA3BFC8(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29AA3BF5C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A206FAB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AA3BFC8(uint64_t a1, void *a2, unint64_t *a3, int *a4)
{
  v4 = a3[1];
  v5.n128_u64[0] = *a3;
  v5.n128_u64[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::AaplHttpAsset::AaplHttpAsset(a2, &v5, *a4);
  if (v5.n128_u64[1])
  {
    sub_29A014BEC(v5.n128_u64[1]);
  }
}

void sub_29AA3C020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_29AA3C044()
{
  v1 = nullsub_1474;
}

void pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::~UsdPhysicsPreliminary_InfiniteColliderPlane(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::~UsdGeomGprim(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdPhysics/preliminary_InfiniteColliderPlane.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdPhysicsPreliminary_InfiniteColliderPlane pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A206FB88;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA3C244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane *this)
{
  if ((atomic_load_explicit(&qword_2A1746DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746DC8))
  {
    __cxa_guard_release(&qword_2A1746DC8);
  }

  return &qword_2A1746DC0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane *this)
{
  if ((atomic_load_explicit(&qword_2A1746DD8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1746DD8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::_GetStaticTfType(v2);
      byte_2A1746DD0 = sub_29A7343F0(&qword_2A1746DC0, v3);
      __cxa_guard_release(&qword_2A1746DD8);
    }
  }

  return byte_2A1746DD0;
}