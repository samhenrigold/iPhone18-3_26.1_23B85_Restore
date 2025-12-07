uint64_t sub_29B199008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern(uint64_t a1)
{
  v5 = qword_2A14FD3B8;
  if (!qword_2A14FD3B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3B8);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B199308(_DWORD *a1, _DWORD *a2)
{
  sub_29A821B38(a1);
  sub_29B1992D0(a1, a2);
  return a1;
}

_DWORD *sub_29B1993AC(_DWORD *a1, _DWORD *a2)
{
  sub_29A821B38(a1);
  sub_29B199374(a1, a2);
  sub_29A821B38(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathAncestorsRange.iterator(uint64_t a1)
{
  v5 = qword_2A14FD3C0;
  if (!qword_2A14FD3C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3C0);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B19949C(_DWORD *a1, _DWORD *a2)
{
  sub_29A821B78(a1);
  sub_29B1992D0(a1, a2);
  return a1;
}

_DWORD *sub_29B199508(_DWORD *a1, _DWORD *a2)
{
  sub_29A821B78(a1);
  sub_29B199374(a1, a2);
  sub_29A821B78(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathAncestorsRange(uint64_t a1)
{
  v5 = qword_2A14FD3C8;
  if (!qword_2A14FD3C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3C8);
      return v2;
    }
  }

  return v5;
}

char *sub_29B199660(char *a1, __int128 *a2)
{
  sub_29A1D18FC(a1);
  sub_29B199628(a1, a2);
  return a1;
}

uint64_t sub_29B19970C(uint64_t a1, uint64_t a2)
{
  sub_29A1D18FC(a1);
  sub_29B1996D4(a1, a2);
  sub_29A1D18FC(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.ArAssetInfo(uint64_t a1)
{
  v5 = qword_2A14FD3D0;
  if (!qword_2A14FD3D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3D0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B199930(uint64_t a1, uint64_t a2)
{
  sub_29B1997FC(a1);
  sub_29B1998F8(a1, a2);
  sub_29B1997FC(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TraceDynamicKey(uint64_t a1)
{
  v5 = qword_2A14FD3D8;
  if (!qword_2A14FD3D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3D8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TraceStaticKeyData(uint64_t a1)
{
  v5 = qword_2A14FD3E0;
  if (!qword_2A14FD3E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3E0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TraceKey(uint64_t a1)
{
  v5 = qword_2A14FD3E8;
  if (!qword_2A14FD3E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3E8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfLineSeg2d(uint64_t a1)
{
  v5 = qword_2A14FD3F0;
  if (!qword_2A14FD3F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3F0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfLine2d(uint64_t a1)
{
  v5 = qword_2A14FD3F8;
  if (!qword_2A14FD3F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3F8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfUtf8CodePointIterator(uint64_t a1)
{
  v5 = qword_2A14FD400;
  if (!qword_2A14FD400)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD400);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfHashMap_pxrInternal__aapl__pxrReserved__.TfToken_ CInt_ pxrInternal__aapl__pxrReserved__.TfToken.HashFunctor_ std.__1.equal_to_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ CInt___(uint64_t a1)
{
  v5 = qword_2A14FD408;
  if (!qword_2A14FD408)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD408);
      return v2;
    }
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMaterialNetwork2::operator==(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (sub_29B1A422C(a1, a2))
  {
    v5 = 0;
    if (sub_29B1A42C4(a1 + 24, a2 + 24))
    {
      v5 = 0;
      if (sub_29A35D70C((a1 + 48), a2 + 48))
      {
        v5 = pxrInternal__aapl__pxrReserved__::operator==((a1 + 72), (a2 + 72), v2);
      }
    }
  }

  return v5 & 1;
}

BOOL pxrInternal__aapl__pxrReserved__::HdDisplayStyle::operator==(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    v3 = 0;
    if ((*(a1 + 4) & 1) == (*(a2 + 4) & 1))
    {
      v3 = 0;
      if ((*(a1 + 5) & 1) == (*(a2 + 5) & 1))
      {
        v3 = 0;
        if ((*(a1 + 6) & 1) == (*(a2 + 6) & 1))
        {
          v3 = 0;
          if ((*(a1 + 7) & 1) == (*(a2 + 7) & 1))
          {
            return (*(a1 + 8) & 1) == (*(a2 + 8) & 1);
          }
        }
      }
    }
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::HdTupleType::operator==(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::HdVec4f_2_10_10_10_REV::operator==(int *a1, int *a2)
{
  v3 = 0;
  if (*a2 >> 30 == *a1 >> 30)
  {
    v3 = 0;
    if ((4 * *a2) >> 22 == (4 * *a1) >> 22)
    {
      v3 = 0;
      if (*a2 << 12 >> 22 == *a1 << 12 >> 22)
      {
        return *a2 << 22 >> 22 == *a1 << 22 >> 22;
      }
    }
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdUtilsTimeCodeRange::const_iterator::operator==(void *a1, void *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdUtilsDependencyInfo::operator==(uint64_t a1, void *a2)
{
  v4 = 0;
  if (sub_29A1B00DC(a1, a2))
  {
    return sub_29A22BEE4((a1 + 24), (a2 + 3));
  }

  return v4;
}

void pxrInternal__aapl__pxrReserved__::operator==(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::operator==<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>();
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A5AC4(a1, a1 + 8, a1 + 32, v3);
  sub_29B1A5AC4(v4, v4 + 8, v4 + 32, v2);
  sub_29B1A5A90(v3, v2);
}

{
  v7 = a1;
  v6 = a2;
  v5[0] = sub_29B1A56C4(a1, a1 + 24);
  v5[1] = v2;
  v4[0] = sub_29B1A56C4(v6, v6 + 24);
  v4[1] = v3;
  sub_29B1A60BC(v5, v4);
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A5AC4(a1, a1 + 24, a1 + 48, v3);
  sub_29B1A5AC4(v4, v4 + 24, v4 + 48, v2);
  sub_29B1A61E0(v3, v2);
}

{
  v7 = a1;
  v6 = a2;
  v5[0] = sub_29B1A56C4(a1, a1 + 8);
  v5[1] = v2;
  v4[0] = sub_29B1A56C4(v6, v6 + 8);
  v4[1] = v3;
  sub_29B1A6938(v5, v4);
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A5AC4(a1, a1 + 24, a1 + 28, v3);
  sub_29B1A5AC4(v4, v4 + 24, v4 + 28, v2);
  sub_29B1A6A5C(v3, v2);
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A6C44(a1, a1 + 8, a1 + 32, a1 + 56, v3);
  sub_29B1A6C44(v4, v4 + 8, v4 + 32, v4 + 56, v2);
  sub_29B1A6C10(v3, v2);
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A6C44(a1, a1 + 24, a1 + 48, a1 + 72, v3);
  sub_29B1A6C44(v4, v4 + 24, v4 + 48, v4 + 72, v2);
  sub_29B1A75D0(v3, v2);
}

{
  pxrInternal__aapl__pxrReserved__::GfVec2i::operator==();
}

{
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>::operator==<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>();
}

void pxrInternal__aapl__pxrReserved__::operator==(pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery *a1, pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery *a2)
{
  v5 = a1;
  v4 = a2;
  pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(a1, v3);
  pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(v4, v2);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void sub_29B19AC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16, _Unwind_Exception *exception_object, char a18)
{
  if (*(v18 - 57))
  {
    sub_29A57F434(v18 - 56);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator==(void *a1, void *a2)
{
  if (a1[1] == a2[1] && *a1 == *a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::operator==(void *a1, void *a2)
{
  v3 = 1;
  if (a1 != a2)
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    pxrInternal__aapl__pxrReserved__::operator==();
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpExpressionVariables::operator==(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  if (a1 != a2)
  {
    v6[0] = sub_29B1A56C4(a1, a1 + 16);
    v6[1] = v2;
    v5[0] = sub_29B1A56C4(v7, v7 + 16);
    v5[1] = v3;
    sub_29B1A5690(v6, v5);
  }

  return 1;
}

BOOL pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator==(void *a1, void *a2)
{
  v3 = 0;
  if (a1[1] == a2[1])
  {
    return *a1 == *a2;
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==()
{
  return 1;
}

{
  return 1;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==(void *a1, void *a2)
{
  v4 = 0;
  if (sub_29A1B00DC(a1, a2))
  {
    return sub_29A1B00DC(a1 + 3, a2 + 3);
  }

  return v4;
}

BOOL pxrInternal__aapl__pxrReserved__::GfSize3::operator==(void *a1, void *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    v3 = 0;
    if (a1[1] == a2[1])
    {
      return a1[2] == a2[2];
    }
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::GfSize2::operator==(void *a1, void *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::GfRange1d::operator==(double *a1, double *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::GfRange1f::operator==(float *a1, float *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfEnum::operator==(uint64_t a1, uint64_t a2, const std::type_info *a3)
{
  if (*(a2 + 8) == *(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfSafeTypeCompare(*a2, *a1, a3);
  }

  return 0;
}

void *sub_29B19D59C(void *a1, void *a2)
{
  sub_29B19D490(a1);
  sub_29B0B8190(a1, a2);
  sub_29B19D490(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.HdMaterialConnection2_ std.__1.less_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.HdMaterialConnection2___(uint64_t a1)
{
  v5 = qword_2A14FD410;
  if (!qword_2A14FD410)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD410);
      return v2;
    }
  }

  return v5;
}

void *sub_29B19D798(void *a1, void *a2)
{
  sub_29B19D68C(a1);
  sub_29B0B8190(a1, a2);
  sub_29B19D68C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.SdfPath_ pxrInternal__aapl__pxrReserved__.HdMaterialNode2_ std.__1.less_pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.SdfPath__ pxrInternal__aapl__pxrReserved__.HdMaterialNode2___(uint64_t a1)
{
  v5 = qword_2A14FD418;
  if (!qword_2A14FD418)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD418);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19D994(void **a1, void **a2)
{
  sub_29B19D888(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19D888(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiVertexBufferDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiVertexBufferDesc__(uint64_t a1)
{
  v5 = qword_2A14FD420;
  if (!qword_2A14FD420)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD420);
      return v2;
    }
  }

  return v5;
}

uint64_t *sub_29B19DB90(uint64_t *a1, uint64_t *a2)
{
  sub_29B19DA84(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19DA84(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiVertexAttributeDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiVertexAttributeDesc__(uint64_t a1)
{
  v5 = qword_2A14FD428;
  if (!qword_2A14FD428)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD428);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19DD8C(void **a1, void **a2)
{
  sub_29B19DC80(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19DC80(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc__(uint64_t a1)
{
  v5 = qword_2A14FD430;
  if (!qword_2A14FD430)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD430);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19DF88(void **a1, void **a2)
{
  sub_29B19DE7C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19DE7C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamDesc__(uint64_t a1)
{
  v5 = qword_2A14FD438;
  if (!qword_2A14FD438)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD438);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19E184(void **a1, void **a2)
{
  sub_29B19E078(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E078(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionBufferDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionBufferDesc__(uint64_t a1)
{
  v5 = qword_2A14FD440;
  if (!qword_2A14FD440)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD440);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19E380(void **a1, void **a2)
{
  sub_29B19E274(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E274(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTextureDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTextureDesc__(uint64_t a1)
{
  v5 = qword_2A14FD448;
  if (!qword_2A14FD448)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD448);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19E57C(void **a1, void **a2)
{
  sub_29B19E470(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E470(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc.Member_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc.Member__(uint64_t a1)
{
  v5 = qword_2A14FD450;
  if (!qword_2A14FD450)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD450);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19E778(void **a1, void **a2)
{
  sub_29B19E66C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E66C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiTextureBindDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiTextureBindDesc__(uint64_t a1)
{
  v5 = qword_2A14FD458;
  if (!qword_2A14FD458)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD458);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19E974(void **a1, void **a2)
{
  sub_29B19E868(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E868(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiBufferBindDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiBufferBindDesc__(uint64_t a1)
{
  v5 = qword_2A14FD460;
  if (!qword_2A14FD460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD460);
      return v2;
    }
  }

  return v5;
}

uint64_t *sub_29B19EB70(uint64_t *a1, uint64_t *a2)
{
  sub_29B19EA64(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19EA64(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiSampler__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiSampler___(uint64_t a1)
{
  v5 = qword_2A14FD468;
  if (!qword_2A14FD468)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD468);
      return v2;
    }
  }

  return v5;
}

uint64_t *sub_29B19ED6C(uint64_t *a1, uint64_t *a2)
{
  sub_29B19EC60(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19EC60(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_CUnsignedInt_ std.__1.allocator_CUnsignedInt__(uint64_t a1)
{
  v5 = qword_2A14FD470;
  if (!qword_2A14FD470)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD470);
      return v2;
    }
  }

  return v5;
}

uint64_t *sub_29B19EF68(uint64_t *a1, uint64_t *a2)
{
  sub_29B19EE5C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19EE5C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiBuffer__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiBuffer___(uint64_t a1)
{
  v5 = qword_2A14FD478;
  if (!qword_2A14FD478)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD478);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiShaderProgram_(uint64_t a1)
{
  v5 = qword_2A14FD480;
  if (!qword_2A14FD480)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD480);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectableAPI(uint64_t a1)
{
  v5 = qword_2A14FD488;
  if (!qword_2A14FD488)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD488);
      return v2;
    }
  }

  return v5;
}

void sub_29B19F3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A424A8C(a10 + 20);
  sub_29A424A8C(a10 + 19);
  sub_29A424A8C(a10 + 18);
  sub_29A424A8C(a10 + 17);
  sub_29A424A8C(a10 + 15);
  sub_29AC94144((a10 + 9));
  _Unwind_Resume(a1);
}

__n128 sub_29B19F414(uint64_t a1, uint64_t a2)
{
  memcpy(a1, a2, 0x48uLL);
  sub_29B0CBDC8((a1 + 72), (a2 + 72));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  sub_29B0C1C58((a1 + 120), (a2 + 120));
  *(a1 + 128) = *(a2 + 128);
  sub_29B0C1C58((a1 + 136), (a2 + 136));
  sub_29B0C1C58((a1 + 144), (a2 + 144));
  sub_29B0C1C58((a1 + 152), (a2 + 152));
  sub_29B0C1C58((a1 + 160), (a2 + 160));
  sub_29B0CBDC8((a1 + 168), (a2 + 168));
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 208);
  return result;
}

__n128 sub_29B19F598(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = a2->n128_u64[0];
  sub_29B0C1C58(&a1->n128_u64[1], &a2->n128_u64[1]);
  sub_29B0ED0F8(a1[1].n128_u64, a2[1].n128_u64);
  sub_29B0ED0F8(a1[2].n128_u64, a2[2].n128_u64);
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u8[0] = a2[4].n128_u8[0];
  return result;
}

void sub_29B19F798(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*,pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*,pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B19F964(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*,pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B19F9BC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B19F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29ABD4BD0(a1, v9, v8, v5);
  return sub_29B19FA40(a4, v6);
}

uint64_t sub_29B19FB68(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABD4D10(a1);
  }

  return a1;
}

void *sub_29B19FD68(void *a1, void *a2)
{
  sub_29B0B8190(a1, a2);
  sub_29B0B8190(a1 + 3, a2 + 3);
  sub_29B0CBDC8(a1 + 6, a2 + 6);
  sub_29B0C0374(a1 + 9, a2 + 9);
  return a1;
}

uint64_t sub_29B19FDDC(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0C1C58((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t sub_29B19FE28(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0C1C58((a1 + 8), (a2 + 8));
  sub_29B0B8190((a1 + 16), (a2 + 16));
  return a1;
}

uint64_t sub_29B19FE88(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0C1C58((a1 + 8), (a2 + 8));
  sub_29B0B82B8((a1 + 16), (a2 + 16));
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_29B19FF30(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B12E534((a1 + 24), a2 + 24);
  return a1;
}

uint64_t sub_29B19FFE4(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0B82B8((a1 + 8), (a2 + 8));
  sub_29B0C1C58((a1 + 16), (a2 + 16));
  return a1;
}

void *sub_29B1A0044(void *a1)
{
  sub_29A424A8C(a1 + 2);
  sub_29A424A8C(a1);
  return a1;
}

__n128 sub_29B1A0154(__n128 *a1, __n128 *a2)
{
  sub_29B1A01C0(a1, a2);
  sub_29B0B82B8(&a1[1].n128_u32[3], &a2[1].n128_u32[3]);
  sub_29B0C1C58(&a1[2].n128_u64[1], &a2[2].n128_u64[1]);
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_29B1A01C0(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  sub_29B0C1C58((a1 + 16), (a2 + 16));
  result = a1;
  *(a1 + 24) = *(a2 + 24) & 1;
  return result;
}

void sub_29B1A0320(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  *(v14 - 24) = a1;
  *(v14 - 28) = a2;
  sub_29A424A8C(a14 + 3);
  sub_29A424A8C(a14);
  _Unwind_Resume(*(v14 - 24));
}

uint64_t sub_29B1A03E0(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  sub_29B0C1F58(a1 + 32, (a2 + 32));
  sub_29B0C1F58(a1 + 80, (a2 + 80));
  sub_29B0C1F58(a1 + 128, (a2 + 128));
  sub_29B0C1F58(a1 + 176, (a2 + 176));
  sub_29B0C1F58(a1 + 224, (a2 + 224));
  sub_29B0C1F58(a1 + 272, (a2 + 272));
  return a1;
}

void sub_29B1A04B0(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  memcpy(&a1[1], &a2[1], 0x98uLL);
  sub_29B19D8E8(&a1[7].__r_.__value_.__l.__size_, &a2[7].__r_.__value_.__l.__size_);
}

void *sub_29B1A0588(void *a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  memcpy(a1 + 3, (a2 + 24), 0x98uLL);
  sub_29B0CBDC8(a1 + 22, (a2 + 176));
  sub_29B0CBDC8(a1 + 25, (a2 + 200));
  memcpy(a1 + 28, (a2 + 224), 0x80uLL);
  return a1;
}

uint64_t sub_29B1A06A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0CBDC8((a1 + 8), (a2 + 8));
  result = a1;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_29B1A06FC(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  sub_29B0CBDC8((a1 + 56), (a2 + 56));
  sub_29B0CBDC8((a1 + 80), (a2 + 80));
  sub_29B0CBDC8((a1 + 104), (a2 + 104));
  sub_29B0CBDC8((a1 + 128), (a2 + 128));
  sub_29B0CBDC8((a1 + 152), (a2 + 152));
  sub_29B0CBDC8((a1 + 176), (a2 + 176));
  sub_29B0CBDC8((a1 + 200), (a2 + 200));
  sub_29B0CBDC8((a1 + 224), (a2 + 224));
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  sub_29B14E5E8(a1 + 264, a2 + 264);
  sub_29B14E2B4((a1 + 328), (a2 + 328));
  result = a1;
  *(a1 + 360) = *(a2 + 360);
  return result;
}

std::string *sub_29B1A0830(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  std::string::basic_string(a1 + 1, a2 + 1);
  result = a1;
  a1[2].__r_.__value_.__r.__words[0] = a2[2].__r_.__value_.__r.__words[0];
  return result;
}

uint64_t sub_29B1A08B0(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, (a2 + 24));
  result = a1;
  *(a1 + 48) = *(a2 + 48);
  return result;
}

uint64_t sub_29B1A0908(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, (a2 + 24));
  sub_29B0CBDC8((a1 + 48), (a2 + 48));
  sub_29B0C0434(a1 + 72, (a2 + 72));
  result = a1;
  *(a1 + 96) = *(a2 + 96);
  return result;
}

uint64_t sub_29B1A0988(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, (a2 + 24));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  sub_29B0C0434(a1 + 72, (a2 + 72));
  sub_29B0C0434(a1 + 96, (a2 + 96));
  return a1;
}

uint64_t sub_29B1A0A10(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  std::string::basic_string((a1 + 24), (a2 + 24));
  result = a1;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 53) = *(a2 + 53);
  return result;
}

uint64_t sub_29B1A0A98(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, (a2 + 24));
  result = a1;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 53) = *(a2 + 53);
  return result;
}

__n128 sub_29B1A0AF8(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 33);
  *(a1 + 33) = result;
  return result;
}

__n128 sub_29B1A0B44(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 33);
  *(a1 + 33) = result;
  return result;
}

std::string *sub_29B1A0B90(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  memcpy(&a1[1], &a2[1], 0x28uLL);
  return a1;
}

uint64_t sub_29B1A0BE0(uint64_t a1, _OWORD *a2)
{
  sub_29B0C0434(a1, a2);
  memcpy((a1 + 24), a2 + 24, 0x28uLL);
  return a1;
}

uint64_t sub_29B1A0CD8(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0CBDC8((a1 + 24), (a2 + 24));
  sub_29B0CBDC8((a1 + 48), (a2 + 48));
  return a1;
}

void *sub_29B1A0DC0(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  result = a1;
  a1[6] = a2[6];
  *(a1 + 53) = *(a2 + 53);
  return result;
}

void *sub_29B1A0EDC(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0CBDC8(a1 + 6, a2 + 6);
  result = a1;
  a1[9] = a2[9];
  *(a1 + 77) = *(a2 + 77);
  return result;
}

__n128 sub_29B1A0F50(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

__n128 sub_29B1A0F9C(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

__n128 sub_29B1A0FE8(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

__n128 sub_29B1A1034(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

std::string *sub_29B1A1080(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  memcpy(&a1[1], &a2[1], 0x40uLL);
  return a1;
}

uint64_t sub_29B1A10D0(uint64_t a1, _OWORD *a2)
{
  sub_29B0C0434(a1, a2);
  memcpy((a1 + 24), a2 + 24, 0x40uLL);
  return a1;
}

__n128 sub_29B1A1120(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_29B1A116C(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_29B1A122C(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0CBDC8((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_29B1A1864(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B7F5C(a1 + 16, a2 + 16);
  result = a1;
  *(a1 + 56) = *(a2 + 56);
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *sub_29B1A1914(pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *a1)
{
  sub_29A424A8C(a1 + 4);
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(a1);
  return a1;
}

void **sub_29B1A1AD4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A466A6C(v3);
  return a1;
}

void sub_29B1A1C64(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*,pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A55A160(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*,pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1A1E30(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*,pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1A1E88(&v6, a1, a4);
  v7 = sub_29B1A1EC8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1A1EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A55A1B0(a1, v9, v8, v5);
  return sub_29B1A1F98(a4, v6);
}

void *sub_29B1A1F4C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 112 * a3;
  return result;
}

uint64_t sub_29B1A2130(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A466A6C(a1);
  }

  return a1;
}

void sub_29B1A217C(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::pair<std::string,std::string>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,void,0>();
}

void std::allocator_traits<std::allocator<std::pair<std::string,std::string>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1C11FC(a1, v8);
    std::vector<std::pair<std::string,std::string>>::__construct_at_end<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1A2348(v7);
}

void *std::vector<std::pair<std::string,std::string>>::__construct_at_end<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B162284(&v6, a1, a4);
  v7 = sub_29B1A23A0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1A23A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A55A26C(a1, v9, v8, v5);
  return sub_29B1A2424(a4, v6);
}

uint64_t sub_29B1A2508(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A0D2770(a1);
  }

  return a1;
}

void *sub_29B1A2554(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  result = a1;
  a1[6] = a2[6];
  return result;
}

void *sub_29B1A25AC(void *a1, void *a2)
{
  sub_29B12F07C(a1, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 2), (a2 + 2));
  return a1;
}

void *sub_29B1A2620(void *a1, void *a2)
{
  sub_29B12F07C(a1, a2);
  sub_29B0C0374(a1 + 2, a2 + 2);
  return a1;
}

_DWORD *sub_29B1A266C(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  sub_29B0B975C(a1 + 2, a2 + 2);
  sub_29B113450((a1 + 4), (a2 + 4));
  return a1;
}

void sub_29B1A26D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8(a10 + 2);
  sub_29A1DCEA8(a10);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B1A26FC(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0B82B8(a1 + 2, a2 + 2);
  sub_29B197EF0((a1 + 4), (a2 + 4));
  return a1;
}

void sub_29B1A2760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8(a10 + 2);
  sub_29A1DCEA8(a10);
  _Unwind_Resume(a1);
}

__n128 sub_29B1A278C(uint64_t a1, uint64_t a2)
{
  sub_29B1A27D0(a1, a2);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_29B1A286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29B0882A0((a10 + 3));
  sub_29A1C9440(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1A2B18(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) == a2)
    {
      sub_29B088388();
      *(a1 + 24) = v2;
      (*(**(a2 + 24) + 24))(*(a2 + 24), *(a1 + 24));
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29B1A2BF0(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C046C((a1 + 24), (a2 + 24));
  return a1;
}

_DWORD *sub_29B1A2C3C(_DWORD *a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0C0434((a1 + 2), (a2 + 8));
  return a1;
}

uint64_t sub_29B1A2C88(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_29B1A2CD4(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0CBDC8((a1 + 8), (a2 + 8));
  sub_29B0CBDC8((a1 + 32), (a2 + 32));
  result = a1;
  *(a1 + 56) = *(a2 + 56) & 1;
  return result;
}

uint64_t sub_29B1A2DB4(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, (a2 + 24));
  sub_29B0C0434(a1 + 48, (a2 + 48));
  sub_29B0C046C((a1 + 72), (a2 + 72));
  return a1;
}

void sub_29B1A2E5C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B0C1C90((a1 + 24), (a2 + 24));
}

uint64_t sub_29B1A2EB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  return a1;
}

void sub_29B1A30C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 - 24) = a1;
  *(v10 - 28) = a2;
  sub_29B1A2F64(a10);
  _Unwind_Resume(*(v10 - 24));
}

BOOL std::unordered_map<pxrInternal__aapl__pxrReserved__::TfToken,int,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int>>>::insert<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v6 = a3;
  result = sub_29B167588(&v7, &v6);
  if (result)
  {
    sub_29B174F64(&v7);
    sub_29B1A3820(a1, v4);
  }

  return result;
}

uint64_t sub_29B1A31C8(uint64_t a1)
{
  v2 = sub_29B16B74C(a1);
  sub_29B0BCCB0(&v3, v2);
  return v3;
}

uint64_t sub_29B1A3204()
{
  v1 = sub_29B16B780();
  sub_29B0BCCB0(&v2, v1);
  return v2;
}

void sub_29B1A3240(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a2);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>,void,0>();
}

void std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

size_t *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__rehash<true>(uint64_t a1, size_t a2)
{
  v13[1] = a1;
  v13[0] = a2;
  if (a2 == 1)
  {
    v13[0] = 2;
  }

  else if ((v13[0] & (v13[0] - 1)) != 0)
  {
    v13[0] = std::__next_prime(v13[0]);
  }

  result = sub_29B169F9C(a1);
  v12 = result;
  if (v13[0] > result)
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__do_rehash<true>();
  }

  if (v13[0] < v12)
  {
    if (sub_29B16A228(v12))
    {
      v8 = *sub_29B16A2F8(a1);
      v3 = sub_29B16A310(a1);
      v4 = sub_29B16A2E0(v8 / *v3);
      prime = sub_29B16A274(v4);
    }

    else
    {
      v7 = *sub_29B16A2F8(a1);
      v5 = sub_29B16A310(a1);
      v6 = sub_29B16A2E0(v7 / *v5);
      prime = std::__next_prime(v6);
    }

    v11 = prime;
    result = sub_29B0E1A40(v13, &v11);
    v13[0] = *result;
    if (v13[0] < v12)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__do_rehash<true>();
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__do_rehash<true>(void *a1, unint64_t a2)
{
  sub_29B0BD304(a1);
  sub_29B088388();
  if (a2)
  {
    sub_29B1A3774(v2, a2);
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> **,0>();
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> **,0>(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29B1695FC((result + 1), v2);
  }
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int> const&>()
{
  sub_29B088388();
  sub_29B1A3E94(v4, 1uLL);
}

{
    ;
  }
}

void *sub_29B1A3F78(uint64_t a1, unint64_t a2)
{
  v3 = 32 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B1A3FE8(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B1A4134(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29B1A4190((result + 1), v2);
  }
}

void sub_29B1A4190(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    v2 = sub_29B0BC338(a2);
    sub_29B166294(v2);
    std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int>,void,0>();
  }

  if (a2)
  {
    sub_29B1702A4(*result, a2, 1);
  }
}

uint64_t sub_29B1A422C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B1A435C(a1);
  v5 = 0;
  if (v4 == sub_29B1A435C(a2))
  {
    v7 = sub_29B16EB20();
    v6 = sub_29B0E9B5C();
    v2 = sub_29B16EB20();
    v5 = sub_29B1A4388(v7, v6, v2);
  }

  return v5 & 1;
}

uint64_t sub_29B1A42C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B1A435C(a1);
  v5 = 0;
  if (v4 == sub_29B1A435C(a2))
  {
    v7 = sub_29B16EB20();
    v6 = sub_29B0E9B5C();
    v2 = sub_29B16EB20();
    v5 = sub_29B1A45A8(v7, v6, v2);
  }

  return v5 & 1;
}

uint64_t sub_29B1A43D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B13BBA8(a1);
  v8 = v3;
  sub_29B13BBA8(v11);
  v7 = v4;
  sub_29B13BBA8(v10);
  return sub_29B1A4450(v8, v7, v5, &v9);
}

uint64_t sub_29B1A4450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  if (sub_29B167588(&v11, &v10))
  {
    sub_29B0E9B98(&v11);
    v7 = v4;
    sub_29B0E9B98(&v9);
    sub_29B1A4510(a4, v7, v5);
  }

  return 1;
}

uint64_t sub_29B1A45F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B13BBA8(a1);
  v8 = v3;
  sub_29B13BBA8(v11);
  v7 = v4;
  sub_29B13BBA8(v10);
  return sub_29B1A4670(v8, v7, v5, &v9);
}

uint64_t sub_29B1A4670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  if (sub_29B167588(&v11, &v10))
  {
    sub_29B0E9B98(&v11);
    v7 = v4;
    sub_29B0E9B98(&v9);
    sub_29B1A4730(a4, v7, v5);
  }

  return 1;
}

uint64_t sub_29B1A47C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B175838(a4, a1, a3);
  }

  return 1;
}

uint64_t sub_29B1A4948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B0C0D80(a1);
  v8 = v3;
  sub_29B0C0D80(a2);
  v7 = v4;
  sub_29B0C0D80(a3);
  return sub_29B1A49A4(v8, v7, v5, &v11);
}

uint64_t sub_29B1A49A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B1A4A50(a4, a1, a3);
  }

  return 1;
}

uint64_t sub_29B1A4B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B0C0D80(a1);
  v8 = v3;
  sub_29B0C0D80(a2);
  v7 = v4;
  sub_29B0C0D80(a3);
  return sub_29B1A47C8(v8, v7, v5, &v11);
}

void pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetAttr(pxrInternal__aapl__pxrReserved__::UsdShadeOutput *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetAttr(pxrInternal__aapl__pxrReserved__::UsdShadeInput *this)
{
  ;
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::GetAttr(pxrInternal__aapl__pxrReserved__::UsdGeomXformOp *this)
{
  v4 = this;
  sub_29B088358(&v3);
  return sub_29B1A4C90(&v3, this);
}

BOOL sub_29B1A4CC8()
{
  sub_29B088388();
  result = sub_29B1A4D48(v0);
  if (result)
  {
    sub_29A151D68();
  }

  return result;
}

uint64_t sub_29B1A4D08(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  sub_29B13BC60();
  v4[0] = v2;
  return sub_29B1A4D70(v4);
}

uint64_t sub_29B1A4DB0(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = xmmword_2A20C5F70;
  v2 = sub_29B0C5884(a2);
  sub_29B1A4EA8(&v8, v2);
  v6 = *v3;
  v7 = v10;
  sub_29B088388();
  return v6(v7, v4);
}

uint64_t sub_29B1A50F4(void *a1, void *a2)
{
  v3 = sub_29B0DB240(a1);
  if (v3 == sub_29B0DB240(a2))
  {
    sub_29B0DB6DC(a1);
  }

  return 0;
}

uint64_t sub_29B1A51E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A5258(v8, v7, v5, &v9);
}

uint64_t sub_29B1A5258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B1A5334(a4, a1, a3);
  }

  return 1;
}

void sub_29B1A53F0(uint64_t a1)
{
  v1 = a1;
  sub_29B0BCBCC(&v1);
  sub_29B088388();
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange::equal(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::operator==();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::equal(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *a2)
{
  if (*this == *a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange::equal(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::operator==();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::equal(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *a2)
{
  if (*this == *a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>,std::tuple<pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    v6 = pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::operator==(v5, v3);
  }

  return v6 & 1;
}

void *sub_29B1A5924(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29B0884A0(a1, a2);
  sub_29B0884A0(a1 + 1, a3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator::equal(pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator *a2)
{
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator::equal(pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator *a2)
{
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator==();
}

{
    ;
  }
}

uint64_t sub_29B1A5BF8(void *a1, void *a2)
{
  v3 = sub_29B173D9C(a1);
  if (v3 == sub_29B173D9C(a2))
  {
    sub_29B1A5D94(a1);
  }

  return 0;
}

BOOL std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if (sub_29B1A581C())
  {
    v4 = *sub_29B1A583C(a2);
    return v4 == *sub_29B1A583C(a3);
  }

  return v5;
}

uint64_t sub_29B1A5E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A5E90(v8, v7, v5, &v9);
}

uint64_t sub_29B1A5E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B1A5F3C(a4, a1, a3);
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*,0>()
{
  ;
}

{
    ;
  }
}

void *sub_29B1A605C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29B0884A0(a1, a2);
  sub_29B0884A0(a1 + 1, a3);
  sub_29B0884A0(a1 + 2, a4);
  return a1;
}

BOOL std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>,std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    return sub_29A1B00DC(v5, v3);
  }

  return v6;
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    v6 = sub_29B1A641C(v5, v3);
  }

  return v6 & 1;
}

uint64_t sub_29B1A637C(void *a1, void *a2)
{
  v3 = sub_29B16BF9C(a1);
  if (v3 == sub_29B16BF9C(a2))
  {
    sub_29B1A6748(a1);
  }

  return 0;
}

uint64_t sub_29B1A641C(void *a1, void *a2)
{
  v3 = sub_29B15FEA8(a1);
  if (v3 == sub_29B15FEA8(a2))
  {
    sub_29B1A650C(a1);
  }

  return 0;
}

uint64_t sub_29B1A6594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A6608(v8, v7, v5, &v9);
}

uint64_t sub_29B1A6608(_DWORD *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  while (a1 != a2)
  {
    if (!sub_29B1A66B4(a4, a1, a3))
    {
      v9 = 0;
      return v9 & 1;
    }

    ++a1;
    ++a3;
  }

  v9 = 1;
  return v9 & 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A67D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A6844(v8, v7, v5, &v9);
}

uint64_t sub_29B1A6844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B1A68F0(a4, a1, a3);
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29B1A581C())
  {
    sub_29B1A583C(a2);
    sub_29B1A583C(a3);
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

BOOL std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::string const&,int const&,BOOL const&>,std::tuple<std::string const&,int const&,BOOL const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    return sub_29A1B00DC(v5, v3);
  }

  return v6;
}

uint64_t sub_29B1A6E34(void *a1, void *a2)
{
  v3 = sub_29B16641C(a1);
  if (v3 == sub_29B16641C(a2))
  {
    sub_29B1A727C(a1);
  }

  return 0;
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29B1A581C())
  {
    sub_29B1A583C(a2);
    sub_29B1A583C(a3);
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

uint64_t sub_29B1A6F4C(void *a1, void *a2)
{
  v3 = sub_29B0DAD68(a1);
  if (v3 == sub_29B0DAD68(a2))
  {
    sub_29B1A703C(a1);
  }

  return 0;
}

uint64_t sub_29B1A70C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A7138(v8, v7, v5, &v9);
}

uint64_t sub_29B1A7138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B1A71E4(a4, a1, a3);
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A7304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A7378(v8, v7, v5, &v9);
}

uint64_t sub_29B1A7378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B1A7424(a4, a1, a3);
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*,0>()
{
  ;
}

{
    ;
  }
}

void *sub_29B1A755C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29B0884A0(a1, a2);
  sub_29B0884A0(a1 + 1, a3);
  sub_29B0884A0(a1 + 2, a4);
  sub_29B0884A0(a1 + 3, a5);
  return a1;
}

uint64_t sub_29B1A776C(void *a1, void *a2)
{
  v3 = sub_29B166304(a1);
  if (v3 == sub_29B166304(a2))
  {
    sub_29B1A7CF0(a1);
  }

  return 0;
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    v6 = sub_29B1A7924(v5, v3);
  }

  return v6 & 1;
}

uint64_t sub_29B1A7884(void *a1, void *a2)
{
  v3 = sub_29B0DAD68(a1);
  if (v3 == sub_29B0DAD68(a2))
  {
    sub_29B1A7AB0(a1);
  }

  return 0;
}

uint64_t sub_29B1A7924(void *a1, void *a2)
{
  v3 = sub_29B15FEA8(a1);
  if (v3 == sub_29B15FEA8(a2))
  {
    sub_29B1A79C4(a1);
  }

  return 0;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A7B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A7BAC(v8, v7, v5, &v9);
}

uint64_t sub_29B1A7BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B1A7C58(a4, a1, a3);
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A7D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A7DEC(v8, v7, v5, &v9);
}

uint64_t sub_29B1A7DEC(Overlay *a1, Overlay *a2, const pxrInternal__aapl__pxrReserved__::SdfPathPattern *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_29B1A7E98(a4, a1, a3);
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern*,0>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfHumanReadableValue::GetText(pxrInternal__aapl__pxrReserved__::SdfHumanReadableValue *this)
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A7F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B1A435C(a1);
  v5 = 0;
  if (v4 == sub_29B1A435C(a2))
  {
    v7 = sub_29B0BDE94();
    v6 = sub_29B0BB014(a1);
    v2 = sub_29B0BDE94();
    v5 = sub_29B1A7FC8(v7, v6, v2);
  }

  return v5 & 1;
}

uint64_t sub_29B1A8018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B13BBA8(a1);
  v8 = v3;
  sub_29B13BBA8(v11);
  v7 = v4;
  sub_29B13BBA8(v10);
  return sub_29B1A8090(v8, v7, v5, &v9);
}

uint64_t sub_29B1A8090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (sub_29B0BC5E4(&v10, &v9))
  {
    v6 = sub_29B0BB0C8(&v10);
    v4 = sub_29B0BB0C8(&v8);
    sub_29B1A8150(a4, v6, v4);
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::GfQuath::GetImaginary(pxrInternal__aapl__pxrReserved__::GfQuath *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfDualQuath::GetReal(pxrInternal__aapl__pxrReserved__::GfDualQuath *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfQuatf::GetImaginary(pxrInternal__aapl__pxrReserved__::GfQuatf *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfDualQuatf::GetReal(pxrInternal__aapl__pxrReserved__::GfDualQuatf *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfQuatd::GetImaginary(pxrInternal__aapl__pxrReserved__::GfQuatd *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfDualQuatd::GetReal(pxrInternal__aapl__pxrReserved__::GfDualQuatd *this)
{
  ;
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::TfSafeTypeCompare(pxrInternal__aapl__pxrReserved__ *this, const std::type_info *a2, const std::type_info *a3)
{
  __s1 = sub_29B0BE910(this);
  v3 = sub_29B0BE910(a2);
  return strcmp(__s1, v3) == 0;
}

uint64_t sub_29B1A8698(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29AC329F8(a1, v1);
  return a1;
}

void sub_29B1A8770(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = a3;
  v8 = a1;
  v7 = sub_29B167558();
  result = sub_29B167588(&v10, &v9);
  if (result)
  {
    sub_29B0BCCB0(&v6, v7);
    sub_29B0E9B98(&v10);
    sub_29B1A89BC(a1, v6, v4);
  }

  return result;
}

void sub_29B1A8930(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2> const,0>()
{
  ;
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v37 = a2;
  v36 = a1;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v31 = sub_29B0BCC78();
  sub_29B0BCCB0(&v32, v31);
  v24 = 1;
  if (!sub_29B0BAF80(&v37, &v32))
  {
    sub_29B088388();
    v23 = v5;
    v22 = v33;
    v6 = sub_29B0BB0C8(&v37);
    v24 = sub_29B17212C(v23, v22, v6);
  }

  if (v24)
  {
    v30 = v37;
    v28 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v29, v28);
    v21 = 1;
    if (!sub_29B0BAF80(&v30, &v29))
    {
      sub_29B088388();
      v20 = v7;
      v8 = sub_29B0BCD54(&v30);
      v9 = sub_29B0BB0C8(v8);
      v21 = sub_29B17217C(v20, v9, v33);
    }

    if (!v21)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v37)
    {
      *v35 = v30;
      return v30 + 1;
    }

    else
    {
      *v35 = v37;
      return *v35;
    }
  }

  else
  {
    sub_29B088388();
    v19 = v10;
    v11 = sub_29B0BB0C8(&v37);
    if (sub_29B17217C(v19, v11, v33))
    {
      v26[1] = v37;
      sub_29B0BE6D8(v37, 1);
      v27 = v12;
      v25 = sub_29B0BCC78();
      sub_29B0BCCB0(v26, v25);
      v18 = 1;
      if (!sub_29B0BAF80(&v27, v26))
      {
        sub_29B088388();
        v17 = v13;
        v16 = v33;
        v14 = sub_29B0BB0C8(&v27);
        v18 = sub_29B17212C(v17, v16, v14);
      }

      if (!v18)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v37) + 8))
      {
        *v35 = v27;
        return *v35;
      }

      else
      {
        *v35 = v37;
        return v37 + 1;
      }
    }

    else
    {
      *v35 = v37;
      *v34 = v37;
      return v34;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2> const&>()
{
  sub_29B088388();
  sub_29B1A9180(v3, 1uLL);
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if (!sub_29B17212C(v4, a3, (v9 + 4)))
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if (!sub_29B17217C(v5, (v9 + 4), a3))
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

void sub_29B1A9350(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29B1A93AC((result + 1), v2);
  }
}

void sub_29B1A93AC(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    sub_29B166294(a2 + 32);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void,0>();
  }

  if (a2)
  {
    sub_29B1A8700(*result, a2, 1);
  }
}

uint64_t sub_29B1A94A0(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29AC32AB8(a1, v1);
  return a1;
}

void sub_29B1A9578(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = a3;
  v8 = a1;
  v7 = sub_29B167558();
  result = sub_29B167588(&v10, &v9);
  if (result)
  {
    sub_29B0BCCB0(&v6, v7);
    sub_29B0E9B98(&v10);
    sub_29B1A97C4(a1, v6, v4);
  }

  return result;
}

void sub_29B1A9738(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2> const,0>()
{
  ;
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v23 = a2;
  v22 = a1;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v17 = sub_29B0BCC78();
  sub_29B0BCCB0(&v18, v17);
  if (!sub_29B0BAF80(&v23, &v18))
  {
    sub_29B088388();
    v13 = v5;
    v12 = v19;
    v6 = sub_29B0BB0C8(&v23);
    sub_29B1A9E18(v13, v12, v6);
  }

  v16 = v23;
  v14 = sub_29B0BCD1C();
  sub_29B0BCCB0(&v15, v14);
  if (!sub_29B0BAF80(&v16, &v15))
  {
    sub_29B088388();
    v11 = v7;
    v8 = sub_29B0BCD54(&v16);
    v9 = sub_29B0BB0C8(v8);
    sub_29B1A9E68(v11, v9, v19);
  }

  if (*v23)
  {
    *v21 = v16;
    return v16 + 1;
  }

  else
  {
    *v21 = v23;
    return *v21;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2> const&>()
{
  sub_29B088388();
  sub_29B1AA020(v3, 1uLL);
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  if (v6)
  {
    sub_29B088388();
    sub_29B1A9E18(v3, a3, v6 + 32);
  }

  sub_29B0BC18C();
  *a2 = v4;
  return *a2;
}

void *sub_29B1AA104(uint64_t a1, unint64_t a2)
{
  v3 = 96 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B1AA190(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B1AA30C(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29B1AA368((result + 1), v2);
  }
}

void sub_29B1AA368(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    sub_29B166294(a2 + 32);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void,0>();
  }

  if (a2)
  {
    sub_29B1A9508(*result, a2, 1);
  }
}

void **sub_29B1AA3FC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB87628(v3);
  return a1;
}

void sub_29B1AA4A0(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10E7C8(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AA66C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B174018(&v6, a1, a4);
  v7 = sub_29B1AA6C4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AA6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB874D8(a1, v9, v8, v5);
  return sub_29B1AA748(a4, v6);
}

uint64_t sub_29B1AA7F4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB87628(a1);
  }

  return a1;
}

uint64_t *sub_29B1AA840(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B1AA888(v3);
  return a1;
}

void sub_29B1AA888(uint64_t **result)
{
  if (**result)
  {
    sub_29B1AA90C(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B160304(*result);
    sub_29B1602CC(v3, v2, v1);
  }
}

void sub_29B1AA90C(uint64_t *a1)
{
  sub_29B16032C(a1);
  sub_29B1AA958(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1AA958(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1AAA08(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A379A04(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AABD4(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B161784(&v6, a1, a4);
  v7 = sub_29B1AAC2C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AAC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B1AACB0(a1, v9, v8, v5);
  return sub_29B1AACEC(a4, v6);
}

uint64_t sub_29B1AADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B161A54(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1AAE70(v17, v11);
  v8 = sub_29B1AACEC(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B1AAEA0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1AA888(a1);
  }

  return a1;
}

void **sub_29B1AAEEC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB89F08(v3);
  return a1;
}

void sub_29B1AAF8C(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29AB89A2C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AB158(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1AB1D0(&v6, a1, a4);
  v7 = sub_29B1AB210(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AB210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB89A7C(a1, v9, v8, v5);
  return sub_29B1AB2E0(a4, v6);
}

void *sub_29B1AB294(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 104 * a3;
  return result;
}

uint64_t sub_29B1AB3E8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB89F08(a1);
  }

  return a1;
}

void **sub_29B1AB434(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB899A4(v3);
  return a1;
}

void sub_29B1AB4D4(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A9C996C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AB6A0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1AB710(&v6, a1, a4);
  v7 = sub_29B1AB750(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AB750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB896D8(a1, v9, v8, v5);
  return sub_29B1AB820(a4, v6);
}

void *sub_29B1AB7D4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 120 * a3;
  return result;
}

uint64_t sub_29B1AB928(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB899A4(a1);
  }

  return a1;
}

void **sub_29B1AB974(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A9E63AC(v3);
  return a1;
}

void sub_29B1AB9EC(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1ABBB8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B1ABC10(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1ABC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB895F4(a1, v9, v8, v5);
  return sub_29B1ABC94(a4, v6);
}

uint64_t sub_29B1ABD40(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A9E63AC(a1);
  }

  return a1;
}

void **sub_29B1ABD8C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB89550(v3);
  return a1;
}

void sub_29B1ABE04(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A044EF0(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1ABFD0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16C78C(&v6, a1, a4);
  v7 = sub_29B1AC028(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AC028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB893FC(a1, v9, v8, v5);
  return sub_29B1AC0AC(a4, v6);
}

uint64_t sub_29B1AC158(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB89550(a1);
  }

  return a1;
}

void **sub_29B1AC1A4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB89D8C(v3);
  return a1;
}

void sub_29B1AC21C(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A044EF0(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AC3E8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16C78C(&v6, a1, a4);
  v7 = sub_29B1AC440(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AC440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB89C54(a1, v9, v8, v5);
  return sub_29B1AC4C4(a4, v6);
}

uint64_t sub_29B1AC570(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB89D8C(a1);
  }

  return a1;
}

void **sub_29B1AC5BC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB88D58(v3);
  return a1;
}

void sub_29B1AC634(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*,pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*,pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AC800(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*,pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B1AC858(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AC858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB88BC8(a1, v9, v8, v5);
  return sub_29B1AC8DC(a4, v6);
}

uint64_t sub_29B1AC988(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB88D58(a1);
  }

  return a1;
}

void **sub_29B1AC9D4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB88B40(v3);
  return a1;
}

void sub_29B1ACA74(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*,pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A9332C4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*,pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1ACC40(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*,pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1ACCB8(&v6, a1, a4);
  v7 = sub_29B1ACCF8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1ACCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB889A0(a1, v9, v8, v5);
  return sub_29B1ACDC8(a4, v6);
}

void *sub_29B1ACD7C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 88 * a3;
  return result;
}

uint64_t sub_29B1ACED0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB88B40(a1);
  }

  return a1;
}

uint64_t *sub_29B1ACF1C(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B1ACF64(v3);
  return a1;
}

void sub_29B1ACF64(uint64_t **result)
{
  if (**result)
  {
    sub_29B1ACFE8(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DE1B0(*result);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B1ACFE8(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B1AD034(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1AD034(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1AD0E4(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AD2B0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B1AD308(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AD308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B1AD38C(a1, v9, v8, v5);
  return sub_29B1AD3C8(a4, v6);
}

uint64_t sub_29B1AD494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1AD54C(v17, v11);
  v8 = sub_29B1AD3C8(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B1AD57C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1ACF64(a1);
  }

  return a1;
}

uint64_t *sub_29B1AD5C8(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B1AD610(v3);
  return a1;
}

void sub_29B1AD610(uint64_t **result)
{
  if (**result)
  {
    sub_29B1AD694(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B15FE80(*result);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B1AD694(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B1AD6E0(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1AD6E0(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<unsigned int>>::destroy[abi:ne200100]<unsigned int,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<unsigned int>>::destroy[abi:ne200100]<unsigned int,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1AD790(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<unsigned int>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<unsigned int>,void,0>();
}

void std::allocator_traits<std::allocator<unsigned int>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<unsigned int>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0111A4(a1, v8);
    std::vector<unsigned int>::__construct_at_end<unsigned int *,unsigned int *>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AD95C(v7);
}

void *std::vector<unsigned int>::__construct_at_end<unsigned int *,unsigned int *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B1AD9B4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AD9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B1ADA38(a1, v9, v8, v5);
  return sub_29B1ADA74(a4, v6);
}

uint64_t sub_29B1ADB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1ADBF8(v17, v11);
  v8 = sub_29B1ADA74(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B1ADC28(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1AD610(a1);
  }

  return a1;
}

uint64_t *sub_29B1ADC74(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B1ADCBC(v3);
  return a1;
}

void sub_29B1ADCBC(uint64_t **result)
{
  if (**result)
  {
    sub_29B1ADD40(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DE1B0(*result);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B1ADD40(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B1ADD8C(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1ADD8C(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1ADE3C(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AE008(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B1AE060(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AE060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B1AE0E4(a1, v9, v8, v5);
  return sub_29B1AE120(a4, v6);
}

uint64_t sub_29B1AE1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1AE2A4(v17, v11);
  v8 = sub_29B1AE120(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B1AE2D4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1ADCBC(a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfType.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.TfType.hashValue.getter(uint64_t a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfType(0);
  sub_29B1AE43C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AE43C()
{
  v2 = qword_2A14FD490;
  if (!qword_2A14FD490)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD490);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.GlfBindingMap>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.GlfBindingMap_(0);
  sub_29B1AE5CC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AE5CC()
{
  v2 = qword_2A14FD498;
  if (!qword_2A14FD498)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.GlfBindingMap_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD498);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.HdSceneIndexBase>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexBase_(0);
  sub_29B1AE73C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AE73C()
{
  v2 = qword_2A14FD4A0;
  if (!qword_2A14FD4A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexBase_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.HdSceneIndexObserver>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexObserver_(0);
  sub_29B1AE8AC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AE8AC()
{
  v2 = qword_2A14FD4A8;
  if (!qword_2A14FD4A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexObserver_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.SdfLayer>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer_(0);
  sub_29B1AEA1C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AEA1C()
{
  v2 = qword_2A14FD4B0;
  if (!qword_2A14FD4B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase_(0);
  sub_29B1AEB8C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AEB8C()
{
  v2 = qword_2A14FD4B8;
  if (!qword_2A14FD4B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.TfNotice.Probe>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TfNotice.Probe_(0);
  sub_29B1AECFC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AECFC()
{
  v2 = qword_2A14FD4C0;
  if (!qword_2A14FD4C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TfNotice.Probe_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.TraceAggregateNode>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TraceAggregateNode_(0);
  sub_29B1AEE6C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AEE6C()
{
  v2 = qword_2A14FD4C8;
  if (!qword_2A14FD4C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TraceAggregateNode_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.TraceReporterDataSourceCollector>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TraceReporterDataSourceCollector_(0);
  sub_29B1AEFDC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AEFDC()
{
  v2 = qword_2A14FD4D0;
  if (!qword_2A14FD4D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TraceReporterDataSourceCollector_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.UsdStage>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.UsdStage_(0);
  sub_29B1AF14C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF14C()
{
  v2 = qword_2A14FD4D8;
  if (!qword_2A14FD4D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.UsdStage_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfEnum.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfEnum *a2, unsigned int a3)
{
  v9 = a2;
  v10 = a3;
  v8 = a1;
  v6 = a2;
  v7 = a3;
  v4 = a2;
  v5 = a3;
  Overlay::__hash_value(&v4, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.TfEnum.hashValue.getter(uint64_t a1, unsigned int a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfEnum(0);
  sub_29B1AF2F8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF2F8()
{
  v2 = qword_2A14FD4E0;
  if (!qword_2A14FD4E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfEnum(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.GlfUniformBlock>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.GlfUniformBlock_(0);
  sub_29B1AF4A8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF4A8()
{
  v2 = qword_2A14FD4E8;
  if (!qword_2A14FD4E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.GlfUniformBlock_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdDependencyForwardingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdDependencyForwardingSceneIndex_(0);
  sub_29B1AF618();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF618()
{
  v2 = qword_2A14FD4F0;
  if (!qword_2A14FD4F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdDependencyForwardingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdFlatteningSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdFlatteningSceneIndex_(0);
  sub_29B1AF788();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF788()
{
  v2 = qword_2A14FD4F8;
  if (!qword_2A14FD4F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdFlatteningSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdGpGenerativeProceduralFilteringSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdGpGenerativeProceduralFilteringSceneIndex_(0);
  sub_29B1AF8F8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF8F8()
{
  v2 = qword_2A14FD500;
  if (!qword_2A14FD500)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdGpGenerativeProceduralFilteringSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD500);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdLegacyPrimSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdLegacyPrimSceneIndex_(0);
  sub_29B1AFA68();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AFA68()
{
  v2 = qword_2A14FD508;
  if (!qword_2A14FD508)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdLegacyPrimSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD508);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdMergingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdMergingSceneIndex_(0);
  sub_29B1AFBD8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AFBD8()
{
  v2 = qword_2A14FD510;
  if (!qword_2A14FD510)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdMergingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD510);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdNoticeBatchingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdNoticeBatchingSceneIndex_(0);
  sub_29B1AFD48();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AFD48()
{
  v2 = qword_2A14FD518;
  if (!qword_2A14FD518)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdNoticeBatchingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD518);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdPrefixingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdPrefixingSceneIndex_(0);
  sub_29B1AFEB8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AFEB8()
{
  v2 = qword_2A14FD520;
  if (!qword_2A14FD520)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdPrefixingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD520);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdRetainedSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdRetainedSceneIndex_(0);
  sub_29B1B0028();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0028()
{
  v2 = qword_2A14FD528;
  if (!qword_2A14FD528)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdRetainedSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD528);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdSceneIndexBase>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexBase_(0);
  sub_29B1B0198();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0198()
{
  v2 = qword_2A14FD530;
  if (!qword_2A14FD530)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexBase_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD530);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdSiExtComputationPrimvarPruningSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdSiExtComputationPrimvarPruningSceneIndex_(0);
  sub_29B1B0308();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0308()
{
  v2 = qword_2A14FD538;
  if (!qword_2A14FD538)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdSiExtComputationPrimvarPruningSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD538);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiCoordSysPrimSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiCoordSysPrimSceneIndex_(0);
  sub_29B1B0478();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0478()
{
  v2 = qword_2A14FD540;
  if (!qword_2A14FD540)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiCoordSysPrimSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD540);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiImplicitSurfaceSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiImplicitSurfaceSceneIndex_(0);
  sub_29B1B05E8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B05E8()
{
  v2 = qword_2A14FD548;
  if (!qword_2A14FD548)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiImplicitSurfaceSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD548);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiNurbsApproximatingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiNurbsApproximatingSceneIndex_(0);
  sub_29B1B0758();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0758()
{
  v2 = qword_2A14FD550;
  if (!qword_2A14FD550)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiNurbsApproximatingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD550);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiPinnedCurveExpandingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiPinnedCurveExpandingSceneIndex_(0);
  sub_29B1B08C8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B08C8()
{
  v2 = qword_2A14FD558;
  if (!qword_2A14FD558)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiPinnedCurveExpandingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD558);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiPrimManagingSceneIndexObserver>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiPrimManagingSceneIndexObserver_(0);
  sub_29B1B0A38();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0A38()
{
  v2 = qword_2A14FD560;
  if (!qword_2A14FD560)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiPrimManagingSceneIndexObserver_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD560);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiPrimTypeNoticeBatchingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiPrimTypeNoticeBatchingSceneIndex_(0);
  sub_29B1B0BA8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0BA8()
{
  v2 = qword_2A14FD568;
  if (!qword_2A14FD568)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiPrimTypeNoticeBatchingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD568);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiRenderSettingsFilteringSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiRenderSettingsFilteringSceneIndex_(0);
  sub_29B1B0D18();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0D18()
{
  v2 = qword_2A14FD570;
  if (!qword_2A14FD570)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiRenderSettingsFilteringSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD570);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiSceneGlobalsSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiSceneGlobalsSceneIndex_(0);
  sub_29B1B0E88();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0E88()
{
  v2 = qword_2A14FD578;
  if (!qword_2A14FD578)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiSceneGlobalsSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD578);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdsiTetMeshConversionSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiTetMeshConversionSceneIndex_(0);
  sub_29B1B0FF8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0FF8()
{
  v2 = qword_2A14FD580;
  if (!qword_2A14FD580)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdsiTetMeshConversionSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD580);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.NdrDiscoveryPlugin>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.NdrDiscoveryPlugin_(0);
  sub_29B1B1168();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1168()
{
  v2 = qword_2A14FD588;
  if (!qword_2A14FD588)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.NdrDiscoveryPlugin_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD588);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase_(0);
  sub_29B1B12D8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B12D8()
{
  v2 = qword_2A14FD590;
  if (!qword_2A14FD590)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD590);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.SdfSimpleLayerStateDelegate>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.SdfSimpleLayerStateDelegate_(0);
  sub_29B1B1448();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1448()
{
  v2 = qword_2A14FD598;
  if (!qword_2A14FD598)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.SdfSimpleLayerStateDelegate_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD598);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.TraceAggregateNode>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.TraceAggregateNode_(0);
  sub_29B1B15B8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B15B8()
{
  v2 = qword_2A14FD5A0;
  if (!qword_2A14FD5A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.TraceAggregateNode_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.TraceAggregateTree>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.TraceAggregateTree_(0);
  sub_29B1B1728();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1728()
{
  v2 = qword_2A14FD5A8;
  if (!qword_2A14FD5A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.TraceAggregateTree_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.TraceEventNode>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.TraceEventNode_(0);
  sub_29B1B1898();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1898()
{
  v2 = qword_2A14FD5B0;
  if (!qword_2A14FD5B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.TraceEventNode_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.TraceEventTree>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.TraceEventTree_(0);
  sub_29B1B1A08();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1A08()
{
  v2 = qword_2A14FD5B8;
  if (!qword_2A14FD5B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.TraceEventTree_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdImagingDrawModeSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingDrawModeSceneIndex_(0);
  sub_29B1B1B78();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1B78()
{
  v2 = qword_2A14FD5C0;
  if (!qword_2A14FD5C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingDrawModeSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdImagingExtentResolvingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingExtentResolvingSceneIndex_(0);
  sub_29B1B1CE8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1CE8()
{
  v2 = qword_2A14FD5C8;
  if (!qword_2A14FD5C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingExtentResolvingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdImagingMaterialBindingsResolvingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingMaterialBindingsResolvingSceneIndex_(0);
  sub_29B1B1E58();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1E58()
{
  v2 = qword_2A14FD5D0;
  if (!qword_2A14FD5D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingMaterialBindingsResolvingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdImagingNiPrototypePropagatingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingNiPrototypePropagatingSceneIndex_(0);
  sub_29B1B1FC8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B1FC8()
{
  v2 = qword_2A14FD5D8;
  if (!qword_2A14FD5D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingNiPrototypePropagatingSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdImagingRenderSettingsFlatteningSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingRenderSettingsFlatteningSceneIndex_(0);
  sub_29B1B2138();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B2138()
{
  v2 = qword_2A14FD5E0;
  if (!qword_2A14FD5E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingRenderSettingsFlatteningSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdImagingRootOverridesSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingRootOverridesSceneIndex_(0);
  sub_29B1B22A8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B22A8()
{
  v2 = qword_2A14FD5E8;
  if (!qword_2A14FD5E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingRootOverridesSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdImagingSelectionSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingSelectionSceneIndex_(0);
  sub_29B1B2418();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B2418()
{
  v2 = qword_2A14FD5F0;
  if (!qword_2A14FD5F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingSelectionSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdImagingUnloadedDrawModeSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingUnloadedDrawModeSceneIndex_(0);
  sub_29B1B2588();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B2588()
{
  v2 = qword_2A14FD5F8;
  if (!qword_2A14FD5F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdImagingUnloadedDrawModeSceneIndex_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD5F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.UsdStage>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdStage_(0);
  sub_29B1B26F8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B26F8()
{
  v2 = qword_2A14FD600;
  if (!qword_2A14FD600)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.UsdStage_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD600);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfToken.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfToken(0);
  sub_29B0C33EC();
  return _hashValue<A>(for:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfBBox3d.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  Overlay::__hash_value(__dst, v2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfBBox3d.hashValue.getter()
{
  v3 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfBBox3d(0);
  sub_29B1B298C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B298C()
{
  v2 = qword_2A14FD608;
  if (!qword_2A14FD608)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfBBox3d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD608);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix4d.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  Overlay::__hash_value(__dst, v2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix4d.hashValue.getter()
{
  v3 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4d(0);
  sub_29B1B2B88();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B2B88()
{
  v2 = qword_2A14FD610;
  if (!qword_2A14FD610)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD610);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4d.hash(into:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v6[9] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  Overlay::__hash_value(v6);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4d.hashValue.getter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4d(0);
  sub_29B1B2D94();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B2D94()
{
  v2 = qword_2A14FD618;
  if (!qword_2A14FD618)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD618);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4f.hash(into:)(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v7 = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  Overlay::__hash_value(v6);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4f.hashValue.getter(float a1, float a2, float a3, float a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4f(0);
  sub_29B1B2F60();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B2F60()
{
  v2 = qword_2A14FD620;
  if (!qword_2A14FD620)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD620);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4h.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[0] = a2;
  v3[2] = a1;
  v3[1] = a2;
  Overlay::__hash_value(v3);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4h.hashValue.getter(uint64_t a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4h(0);
  sub_29B1B3140();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B3140()
{
  v2 = qword_2A14FD628;
  if (!qword_2A14FD628)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4h(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD628);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.pxr_half.half.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::pxr_half::half *a2)
{
  v4 = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.pxr_half.half.hashValue.getter(__int16 a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.pxr_half.half(0);
  sub_29B1B330C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B330C()
{
  v2 = qword_2A14FD630;
  if (!qword_2A14FD630)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.pxr_half.half(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD630);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4i.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v8 = a2;
  *(&v8 + 1) = a3;
  *v4 = v8;
  v7 = a1;
  v5 = a2;
  v6 = a3;
  Overlay::__hash_value(v4);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4i.hashValue.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4i(0);
  sub_29B1B34E4();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B34E4()
{
  v2 = qword_2A14FD638;
  if (!qword_2A14FD638)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4i(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD638);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3d.hash(into:)(uint64_t a1, double a2, double a3, double a4)
{
  *&v5[6] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  Overlay::__hash_value(v5);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3d.hashValue.getter(double a1, double a2, double a3)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3d(0);
  sub_29B1B36E8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B36E8()
{
  v2 = qword_2A14FD640;
  if (!qword_2A14FD640)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD640);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3f.hash(into:)(uint64_t a1, float a2, float a3, float a4)
{
  v6 = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  Overlay::__hash_value(v5);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3f.hashValue.getter(float a1, float a2, float a3)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3f(0);
  sub_29B1B389C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B389C()
{
  v2 = qword_2A14FD648;
  if (!qword_2A14FD648)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD648);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3h.hash(into:)(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v7 = a1;
  LOWORD(v5) = a2;
  HIWORD(v5) = WORD1(a2);
  v6 = WORD2(a2);
  v3 = v5;
  v4 = WORD2(a2);
  Overlay::__hash_value(&v3);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3h.hashValue.getter(uint64_t a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3h(0);
  sub_29B1B3A70();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B3A70()
{
  v2 = qword_2A14FD650;
  if (!qword_2A14FD650)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3h(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD650);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B1B3AF0()
{
  LODWORD(v2) = *v0;
  WORD2(v2) = *(v0 + 4);
  return pxrInternal__aapl__pxrReserved__.GfVec3h.hashValue.getter(v2);
}

uint64_t sub_29B1B3B2C(uint64_t a1)
{
  LODWORD(v3) = *v1;
  WORD2(v3) = *(v1 + 4);
  return pxrInternal__aapl__pxrReserved__.GfVec3h.hash(into:)(a1, v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3i.hash(into:)(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a2;
  v10 = a3;
  v8 = a1;
  v6 = a2;
  v7 = a3;
  v4 = a2;
  v5 = a3;
  Overlay::__hash_value(&v4);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3i.hashValue.getter(uint64_t a1, int a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3i(0);
  sub_29B1B3C7C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B3C7C()
{
  v2 = qword_2A14FD658;
  if (!qword_2A14FD658)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3i(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD658);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange3d.hash(into:)(uint64_t a1)
{
  v5 = a1;
  v4 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  Overlay::__hash_value(__dst);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange3d.hashValue.getter()
{
  v3 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3d(0);
  sub_29B1B3E70();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B3E70()
{
  v2 = qword_2A14FD660;
  if (!qword_2A14FD660)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD660);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange3f.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  v3 = *v1;
  v4 = *(v1 + 2);
  Overlay::__hash_value(&v3);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange3f.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3f(0);
  sub_29B1B405C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B405C()
{
  v2 = qword_2A14FD668;
  if (!qword_2A14FD668)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD668);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange1f.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfRange1f *a2, float a3, float a4)
{
  v6 = a1;
  *&v5[2] = a3;
  *&v5[3] = a4;
  *v5 = a3;
  *&v5[1] = a4;
  Overlay::__hash_value(v5, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange1f.hashValue.getter(float a1, float a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1f(0);
  sub_29B1B4230();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B4230()
{
  v2 = qword_2A14FD670;
  if (!qword_2A14FD670)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD670);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange1d.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfRange1d *a2, double a3, double a4)
{
  v5[4] = a1;
  *&v5[2] = a3;
  *&v5[3] = a4;
  *v5 = a3;
  *&v5[1] = a4;
  Overlay::__hash_value(v5, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange1d.hashValue.getter(double a1, double a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1d(0);
  sub_29B1B43CC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B43CC()
{
  v2 = qword_2A14FD678;
  if (!qword_2A14FD678)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD678);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuatd.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  Overlay::__hash_value(__dst, v2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuatd.hashValue.getter()
{
  v3 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatd(0);
  sub_29B1B4580();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B4580()
{
  v2 = qword_2A14FD680;
  if (!qword_2A14FD680)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatd(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD680);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuatd.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfQuatd *a2, double a3, double a4, double a5, double a6)
{
  v7[9] = a1;
  *&v7[4] = a3;
  *&v7[5] = a4;
  *&v7[6] = a5;
  *&v7[7] = a6;
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  Overlay::__hash_value(v7, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuatd.hashValue.getter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatd(0);
  sub_29B1B478C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B478C()
{
  v2 = qword_2A14FD688;
  if (!qword_2A14FD688)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatd(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD688);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuatf.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfDualQuatf *a2)
{
  v6 = a1;
  v5 = v2;
  v4[0] = *v2;
  v4[1] = v2[1];
  Overlay::__hash_value(v4, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuatf.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatf(0);
  sub_29B1B4940();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B4940()
{
  v2 = qword_2A14FD690;
  if (!qword_2A14FD690)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatf(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD690);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuatf.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfQuatf *a2, float a3, float a4, float a5, float a6)
{
  v8 = a1;
  *&v7[4] = a3;
  *&v7[5] = a4;
  *&v7[6] = a5;
  *&v7[7] = a6;
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  Overlay::__hash_value(v7, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuatf.hashValue.getter(float a1, float a2, float a3, float a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatf(0);
  sub_29B1B4B3C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B4B3C()
{
  v2 = qword_2A14FD698;
  if (!qword_2A14FD698)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatf(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD698);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuath.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfDualQuath *a2, uint64_t a3)
{
  v7 = a2;
  v8 = a3;
  *&v6 = a2;
  *(&v6 + 1) = a3;
  v5 = a1;
  v4 = v6;
  Overlay::__hash_value(&v4, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuath.hashValue.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuath(0);
  sub_29B1B4D58();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B4D58()
{
  v2 = qword_2A14FD6A0;
  if (!qword_2A14FD6A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuath(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuath.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfQuath *a2)
{
  v3[3] = a2;
  v3[0] = a2;
  v3[2] = a1;
  v3[1] = a2;
  Overlay::__hash_value(v3, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuath.hashValue.getter(uint64_t a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuath(0);
  sub_29B1B4FC8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B4FC8()
{
  v2 = qword_2A14FD6A8;
  if (!qword_2A14FD6A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuath(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfFrustum.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfFrustum(0);
  sub_29B1B5190();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B5190()
{
  v2 = qword_2A14FD6B0;
  if (!qword_2A14FD6B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfFrustum(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange2d.hash(into:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v6[9] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  Overlay::__hash_value(v6);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange2d.hashValue.getter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2d(0);
  sub_29B1B5344();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B5344()
{
  v2 = qword_2A14FD6B8;
  if (!qword_2A14FD6B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2d.hash(into:)(uint64_t a1, double a2, double a3)
{
  *&v4[4] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[0] = a2;
  v4[1] = a3;
  Overlay::__hash_value(v4);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2d.hashValue.getter(double a1, double a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2d(0);
  sub_29B1B54F0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B54F0()
{
  v2 = qword_2A14FD6C0;
  if (!qword_2A14FD6C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2f.hash(into:)(uint64_t a1, float a2, float a3)
{
  v5 = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[0] = a2;
  v4[1] = a3;
  Overlay::__hash_value(v4);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2f.hashValue.getter(float a1, float a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2f(0);
  sub_29B1B5684();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B5684()
{
  v2 = qword_2A14FD6C8;
  if (!qword_2A14FD6C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2h.hash(into:)(uint64_t a1, int a2)
{
  v5 = a2;
  v4 = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2h.hashValue.getter(int a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2h(0);
  sub_29B1B5830();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B5830()
{
  v2 = qword_2A14FD6D0;
  if (!qword_2A14FD6D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2h(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2i.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2i.hashValue.getter(uint64_t a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2i(0);
  sub_29B1B5A04();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B5A04()
{
  v2 = qword_2A14FD6D8;
  if (!qword_2A14FD6D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2i(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange2f.hash(into:)(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v7 = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  Overlay::__hash_value(v6);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange2f.hashValue.getter(float a1, float a2, float a3, float a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2f(0);
  sub_29B1B5BE8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B5BE8()
{
  v2 = qword_2A14FD6E0;
  if (!qword_2A14FD6E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRotation.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfRotation *a2, double a3, double a4, double a5, double a6)
{
  v7[9] = a1;
  *&v7[4] = a3;
  *&v7[5] = a4;
  *&v7[6] = a5;
  *&v7[7] = a6;
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  Overlay::__hash_value(v7, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRotation.hashValue.getter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRotation(0);
  sub_29B1B5DBC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B5DBC()
{
  v2 = qword_2A14FD6E8;
  if (!qword_2A14FD6E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRotation(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuaternion.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfQuaternion *a2, double a3, double a4, double a5, double a6)
{
  v7[9] = a1;
  *&v7[4] = a3;
  *&v7[5] = a4;
  *&v7[6] = a5;
  *&v7[7] = a6;
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  Overlay::__hash_value(v7, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuaternion.hashValue.getter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuaternion(0);
  sub_29B1B5F90();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B5F90()
{
  v2 = qword_2A14FD6F0;
  if (!qword_2A14FD6F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuaternion(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfInterval.hash(into:)(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, double a4, double a5)
{
  v14 = a1;
  v10 = a4;
  v11 = a2;
  v12 = a5;
  v13 = a3;
  v6 = a4;
  v7 = a2;
  v8 = a5;
  v9 = a3;
  Overlay::__hash_value(&v6);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfInterval.hashValue.getter(char a1, char a2, double a3, double a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfInterval(0);
  sub_29B1B6164();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B6164()
{
  v2 = qword_2A14FD6F8;
  if (!qword_2A14FD6F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfInterval(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD6F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix2d.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfMatrix2d *a2, double a3, double a4, double a5, double a6)
{
  v7[9] = a1;
  *&v7[4] = a3;
  *&v7[5] = a4;
  *&v7[6] = a5;
  *&v7[7] = a6;
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  Overlay::__hash_value(v7, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix2d.hashValue.getter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2d(0);
  sub_29B1B6348();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B6348()
{
  v2 = qword_2A14FD700;
  if (!qword_2A14FD700)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD700);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix2f.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfMatrix2f *a2, float a3, float a4, float a5, float a6)
{
  v8 = a1;
  *&v7[4] = a3;
  *&v7[5] = a4;
  *&v7[6] = a5;
  *&v7[7] = a6;
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  Overlay::__hash_value(v7, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix2f.hashValue.getter(float a1, float a2, float a3, float a4)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2f(0);
  sub_29B1B6514();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B6514()
{
  v2 = qword_2A14FD708;
  if (!qword_2A14FD708)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD708);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix3f.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  Overlay::__hash_value(__dst, v2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix3f.hashValue.getter()
{
  v3 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3f(0);
  sub_29B1B66D8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B66D8()
{
  v2 = qword_2A14FD710;
  if (!qword_2A14FD710)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD710);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix3d.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  Overlay::__hash_value(__dst, v2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix3d.hashValue.getter()
{
  v3 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3d(0);
  sub_29B1B68D4();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B68D4()
{
  v2 = qword_2A14FD718;
  if (!qword_2A14FD718)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD718);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix4f.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  Overlay::__hash_value(__dst, v2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix4f.hashValue.getter()
{
  v3 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4f(0);
  sub_29B1B6AD0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B6AD0()
{
  v2 = qword_2A14FD720;
  if (!qword_2A14FD720)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4f(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD720);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMultiInterval.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMultiInterval(0);
  sub_29B1B6C98();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B6C98()
{
  v2 = qword_2A14FD728;
  if (!qword_2A14FD728)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMultiInterval(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD728);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRect2i.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfRect2i *a2, uint64_t a3)
{
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v4 = v8;
  v7 = a1;
  v5 = a2;
  v6 = a3;
  Overlay::__hash_value(&v4, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRect2i.hashValue.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRect2i(0);
  sub_29B1B6E68();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B6E68()
{
  v2 = qword_2A14FD730;
  if (!qword_2A14FD730)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRect2i(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD730);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtDictionary.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary(0);
  sub_29B1B7038();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B7038()
{
  v2 = qword_2A14FD738;
  if (!qword_2A14FD738)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD738);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtValue.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtValue(0);
  sub_29B1B71A8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B71A8()
{
  v2 = qword_2A14FD740;
  if (!qword_2A14FD740)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD740);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.ArAssetInfo.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.ArAssetInfo(0);
  sub_29B1B7318();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B7318()
{
  v2 = qword_2A14FD748;
  if (!qword_2A14FD748)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.ArAssetInfo(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD748);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.ArDefaultResolverContext.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.ArDefaultResolverContext(0);
  sub_29B1B7488();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B7488()
{
  v2 = qword_2A14FD750;
  if (!qword_2A14FD750)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.ArDefaultResolverContext(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD750);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.ArResolverContext.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.ArResolverContext(0);
  sub_29B1B75F8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B75F8()
{
  v2 = qword_2A14FD758;
  if (!qword_2A14FD758)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.ArResolverContext(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD758);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.ArResolvedPath.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.ArResolvedPath(0);
  sub_29B1B7768();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B7768()
{
  v2 = qword_2A14FD760;
  if (!qword_2A14FD760)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.ArResolvedPath(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD760);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.ArTimestamp.hash(into:)(uint64_t a1, double a2)
{
  *&v3[2] = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.ArTimestamp.hashValue.getter(double a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.ArTimestamp(0);
  sub_29B1B78DC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B78DC()
{
  v2 = qword_2A14FD768;
  if (!qword_2A14FD768)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.ArTimestamp(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD768);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPath.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPath(0);
  sub_29B0C3484();
  return _hashValue<A>(for:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfUnregisteredValue.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfUnregisteredValue(0);
  sub_29B1B7B44();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B7B44()
{
  v2 = qword_2A14FD770;
  if (!qword_2A14FD770)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfUnregisteredValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD770);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfValueBlock.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueBlock(0);
  sub_29B1B7C98();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B7C98()
{
  v2 = qword_2A14FD778;
  if (!qword_2A14FD778)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueBlock(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD778);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHumanReadableValue.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHumanReadableValue(0);
  sub_29B1B7E08();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B7E08()
{
  v2 = qword_2A14FD780;
  if (!qword_2A14FD780)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHumanReadableValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD780);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfAssetPath.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAssetPath(0);
  sub_29B1B7F78();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B7F78()
{
  v2 = qword_2A14FD788;
  if (!qword_2A14FD788)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAssetPath(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD788);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.SdfLayer>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.SdfLayer_(0);
  sub_29B1B80E8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B80E8()
{
  v2 = qword_2A14FD790;
  if (!qword_2A14FD790)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.SdfLayer_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD790);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfAttributeSpec>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfAttributeSpec_(0);
  sub_29B1B8258();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B8258()
{
  v2 = qword_2A14FD798;
  if (!qword_2A14FD798)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfAttributeSpec_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD798);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfPrimSpec>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec_(0);
  sub_29B1B83C8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B83C8()
{
  v2 = qword_2A14FD7A0;
  if (!qword_2A14FD7A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfPropertySpec>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec_(0);
  sub_29B1B8538();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B8538()
{
  v2 = qword_2A14FD7A8;
  if (!qword_2A14FD7A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfRelationshipSpec>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfRelationshipSpec_(0);
  sub_29B1B86A8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B86A8()
{
  v2 = qword_2A14FD7B0;
  if (!qword_2A14FD7B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfRelationshipSpec_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfSpec>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfSpec_(0);
  sub_29B1B8818();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B8818()
{
  v2 = qword_2A14FD7B8;
  if (!qword_2A14FD7B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfSpec_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfVariantSetSpec>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfVariantSetSpec_(0);
  sub_29B1B8988();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B8988()
{
  v2 = qword_2A14FD7C0;
  if (!qword_2A14FD7C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfVariantSetSpec_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfVariantSpec>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfVariantSpec_(0);
  sub_29B1B8AF8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B8AF8()
{
  v2 = qword_2A14FD7C8;
  if (!qword_2A14FD7C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfVariantSpec_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfOpaqueValue.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfOpaqueValue(0);
  sub_29B1B8C4C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B8C4C()
{
  v2 = qword_2A14FD7D0;
  if (!qword_2A14FD7D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfOpaqueValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPathExpression.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression(0);
  sub_29B1B8DBC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B8DBC()
{
  v2 = qword_2A14FD7D8;
  if (!qword_2A14FD7D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPathPattern.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern(0);
  sub_29B1B8F2C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B8F2C()
{
  v2 = qword_2A14FD7E0;
  if (!qword_2A14FD7E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPathPattern.Component.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern.Component(0);
  sub_29B1B909C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B909C()
{
  v2 = qword_2A14FD7E8;
  if (!qword_2A14FD7E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern.Component(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPathExpression.ExpressionReference.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression.ExpressionReference(0);
  sub_29B1B920C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B920C()
{
  v2 = qword_2A14FD7F0;
  if (!qword_2A14FD7F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression.ExpressionReference(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression(0);
  sub_29B1B937C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B937C()
{
  v2 = qword_2A14FD7F8;
  if (!qword_2A14FD7F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD7F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg(0);
  sub_29B1B94EC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B94EC()
{
  v2 = qword_2A14FD800;
  if (!qword_2A14FD800)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD800);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall(0);
  sub_29B1B965C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B965C()
{
  v2 = qword_2A14FD808;
  if (!qword_2A14FD808)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD808);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfTimeCode.hash(into:)(uint64_t a1, double a2)
{
  *&v3[2] = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfTimeCode.hashValue.getter(double a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfTimeCode(0);
  sub_29B1B97D0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B97D0()
{
  v2 = qword_2A14FD810;
  if (!qword_2A14FD810)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD810);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfValueTypeName.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfValueTypeName *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfValueTypeName.hashValue.getter(uint64_t a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueTypeName(0);
  sub_29B1B994C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B994C()
{
  v2 = qword_2A14FD818;
  if (!qword_2A14FD818)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueTypeName(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD818);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfAttributeSpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAttributeSpec(0);
  sub_29B1B9AC4();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B9AC4()
{
  v2 = qword_2A14FD820;
  if (!qword_2A14FD820)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAttributeSpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD820);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPropertySpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPropertySpec(0);
  sub_29B1B9C34();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B9C34()
{
  v2 = qword_2A14FD828;
  if (!qword_2A14FD828)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPropertySpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD828);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfSpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSpec(0);
  sub_29B1B9DA4();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B9DA4()
{
  v2 = qword_2A14FD830;
  if (!qword_2A14FD830)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD830);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfLayerOffset.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a2, double a3, double a4)
{
  v5[4] = a1;
  *&v5[2] = a3;
  *&v5[3] = a4;
  *v5 = a3;
  *&v5[1] = a4;
  Overlay::__hash_value(v5, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfLayerOffset.hashValue.getter(double a1, double a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLayerOffset(0);
  sub_29B1B9F30();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B9F30()
{
  v2 = qword_2A14FD838;
  if (!qword_2A14FD838)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLayerOffset(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD838);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPayload.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPayload(0);
  sub_29B1BA0B0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BA0B0()
{
  v2 = qword_2A14FD840;
  if (!qword_2A14FD840)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD840);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPrimSpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPrimSpec(0);
  sub_29B1BA220();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BA220()
{
  v2 = qword_2A14FD848;
  if (!qword_2A14FD848)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPrimSpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD848);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPseudoRootSpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPseudoRootSpec(0);
  sub_29B1BA390();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BA390()
{
  v2 = qword_2A14FD850;
  if (!qword_2A14FD850)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPseudoRootSpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD850);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfReference.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfReference(0);
  sub_29B1BA500();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BA500()
{
  v2 = qword_2A14FD858;
  if (!qword_2A14FD858)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfReference(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD858);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfRelationshipSpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfRelationshipSpec(0);
  sub_29B1BA670();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BA670()
{
  v2 = qword_2A14FD860;
  if (!qword_2A14FD860)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfRelationshipSpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD860);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfVariantSetSpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariantSetSpec(0);
  sub_29B1BA7E0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BA7E0()
{
  v2 = qword_2A14FD868;
  if (!qword_2A14FD868)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariantSetSpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD868);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfVariantSpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariantSpec(0);
  sub_29B1BA950();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BA950()
{
  v2 = qword_2A14FD870;
  if (!qword_2A14FD870)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariantSpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD870);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpMapFunction.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpMapFunction(0);
  sub_29B1BAAC0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BAAC0()
{
  v2 = qword_2A14FD878;
  if (!qword_2A14FD878)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpMapFunction(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD878);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpNodeRef.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, uint64_t a3)
{
  v4[5] = a2;
  v4[6] = a3;
  v4[4] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[0] = a2;
  v4[1] = a3;
  Overlay::__hash_value(v4, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpNodeRef.hashValue.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNodeRef(0);
  sub_29B1BAC6C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BAC6C()
{
  v2 = qword_2A14FD880;
  if (!qword_2A14FD880)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNodeRef(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD880);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpSite.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpSite(0);
  sub_29B1BAE1C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BAE1C()
{
  v2 = qword_2A14FD888;
  if (!qword_2A14FD888)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpSite(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD888);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpLayerStackSite.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpLayerStackSite(0);
  sub_29B1BAF8C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BAF8C()
{
  v2 = qword_2A14FD890;
  if (!qword_2A14FD890)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpLayerStackSite(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD890);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpLayerStackIdentifier.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpLayerStackIdentifier(0);
  sub_29B1BB0FC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BB0FC()
{
  v2 = qword_2A14FD898;
  if (!qword_2A14FD898)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpLayerStackIdentifier(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD898);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpExpressionVariablesSource.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpExpressionVariablesSource(0);
  sub_29B1BB26C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BB26C()
{
  v2 = qword_2A14FD8A0;
  if (!qword_2A14FD8A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpExpressionVariablesSource(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpInstanceKey.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpInstanceKey(0);
  sub_29B1BB3DC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BB3DC()
{
  v2 = qword_2A14FD8A8;
  if (!qword_2A14FD8A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpInstanceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdPrim.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrim(0);
  sub_29B0C364C();
  return _hashValue<A>(for:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdTimeCode.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a2, double a3)
{
  v4[2] = a1;
  *&v4[1] = a3;
  *v4 = a3;
  Overlay::__hash_value(v4, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdTimeCode.hashValue.getter(double a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(0);
  sub_29B0F15A4();
  return _hashValue<A>(for:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdObject.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdObject(0);
  sub_29B1BB738();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BB738()
{
  v2 = qword_2A14FD8B0;
  if (!qword_2A14FD8B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdObject(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdStageLoadRules.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageLoadRules(0);
  sub_29B1BB8A8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BB8A8()
{
  v2 = qword_2A14FD8B8;
  if (!qword_2A14FD8B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageLoadRules(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdStagePopulationMask.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStagePopulationMask(0);
  sub_29B1BBA18();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BBA18()
{
  v2 = qword_2A14FD8C0;
  if (!qword_2A14FD8C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStagePopulationMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdAttribute.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdAttribute(0);
  sub_29B0C351C();
  return _hashValue<A>(for:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdProperty.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdProperty(0);
  sub_29B1BBC78();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BBC78()
{
  v2 = qword_2A14FD8C8;
  if (!qword_2A14FD8C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdProperty(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdRelationship.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdRelationship(0);
  sub_29B1BBDE8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BBDE8()
{
  v2 = qword_2A14FD8D0;
  if (!qword_2A14FD8D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdRelationship(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdStageCache.Id.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdStageCache.Id.hashValue.getter(uint64_t a1)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageCache.Id(0);
  sub_29B1BBF5C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BBF5C()
{
  v2 = qword_2A14FD8D8;
  if (!qword_2A14FD8D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageCache.Id(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdGeomPrimvar.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomPrimvar(0);
  sub_29B1BC0D4();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BC0D4()
{
  v2 = qword_2A14FD8E0;
  if (!qword_2A14FD8E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomPrimvar(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdSkelAnimQuery.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelAnimQuery(0);
  sub_29B1BC244();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BC244()
{
  v2 = qword_2A14FD8E8;
  if (!qword_2A14FD8E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelAnimQuery(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdSkelSkeletonQuery.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelSkeletonQuery(0);
  sub_29B1BC3B4();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BC3B4()
{
  v2 = qword_2A14FD8F0;
  if (!qword_2A14FD8F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelSkeletonQuery(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding(0);
  sub_29B1BC524();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BC524()
{
  v2 = qword_2A14FD8F8;
  if (!qword_2A14FD8F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD8F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.HdTupleType.hash(into:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v8 = a1;
  v6 = a2;
  v7 = a3;
  v4 = a2;
  v5 = a3;
  Overlay::__hash_value(&v4);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.HdTupleType.hashValue.getter(unsigned int a1, uint64_t a2)
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.HdTupleType(0);
  sub_29B1BC6B0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BC6B0()
{
  v2 = qword_2A14FD900;
  if (!qword_2A14FD900)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdTupleType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD900);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.HdBufferSpec.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBufferSpec(0);
  sub_29B1BC830();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BC830()
{
  v2 = qword_2A14FD908;
  if (!qword_2A14FD908)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBufferSpec(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD908);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.HdReprSelector.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.HdReprSelector(0);
  sub_29B1BC9A0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BC9A0()
{
  v2 = qword_2A14FD910;
  if (!qword_2A14FD910)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdReprSelector(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD910);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.HdRprimCollection.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRprimCollection(0);
  sub_29B1BCB10();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BCB10()
{
  v2 = qword_2A14FD918;
  if (!qword_2A14FD918)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRprimCollection(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD918);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.HdDataSourceLocator.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDataSourceLocator(0);
  sub_29B1BCC80();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BCC80()
{
  v2 = qword_2A14FD920;
  if (!qword_2A14FD920)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDataSourceLocator(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD920);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.HdStBindingRequest.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBindingRequest(0);
  sub_29B1BCDF0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BCDF0()
{
  v2 = qword_2A14FD928;
  if (!qword_2A14FD928)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBindingRequest(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD928);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.HdStTextureIdentifier.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStTextureIdentifier(0);
  sub_29B1BCF60();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BCF60()
{
  v2 = qword_2A14FD930;
  if (!qword_2A14FD930)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStTextureIdentifier(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD930);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec4i>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_(0);
  sub_29B1BD0D0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BD0D0()
{
  v2 = qword_2A14FD938;
  if (!qword_2A14FD938)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD938);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec3i>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_(0);
  sub_29B1BD240();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BD240()
{
  v2 = qword_2A14FD940;
  if (!qword_2A14FD940)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD940);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec2i>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_(0);
  sub_29B1BD3B0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BD3B0()
{
  v2 = qword_2A14FD948;
  if (!qword_2A14FD948)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD948);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec4h>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_(0);
  sub_29B1BD520();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BD520()
{
  v2 = qword_2A14FD950;
  if (!qword_2A14FD950)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD950);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec3h>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_(0);
  sub_29B1BD690();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BD690()
{
  v2 = qword_2A14FD958;
  if (!qword_2A14FD958)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD958);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec2h>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_(0);
  sub_29B1BD800();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BD800()
{
  v2 = qword_2A14FD960;
  if (!qword_2A14FD960)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD960);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec4f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_(0);
  sub_29B1BD970();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BD970()
{
  v2 = qword_2A14FD968;
  if (!qword_2A14FD968)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD968);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec3f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_(0);
  sub_29B1BDAE0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BDAE0()
{
  v2 = qword_2A14FD970;
  if (!qword_2A14FD970)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD970);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec2f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_(0);
  sub_29B1BDC50();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BDC50()
{
  v2 = qword_2A14FD978;
  if (!qword_2A14FD978)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD978);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec4d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_(0);
  sub_29B1BDDC0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BDDC0()
{
  v2 = qword_2A14FD980;
  if (!qword_2A14FD980)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD980);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec3d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_(0);
  sub_29B1BDF30();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BDF30()
{
  v2 = qword_2A14FD988;
  if (!qword_2A14FD988)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD988);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec2d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_(0);
  sub_29B1BE0A0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BE0A0()
{
  v2 = qword_2A14FD990;
  if (!qword_2A14FD990)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD990);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix4f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_(0);
  sub_29B1BE210();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BE210()
{
  v2 = qword_2A14FD998;
  if (!qword_2A14FD998)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD998);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix3f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_(0);
  sub_29B1BE380();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BE380()
{
  v2 = qword_2A14FD9A0;
  if (!qword_2A14FD9A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix2f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_(0);
  sub_29B1BE4F0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BE4F0()
{
  v2 = qword_2A14FD9A8;
  if (!qword_2A14FD9A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix4d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_(0);
  sub_29B1BE660();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BE660()
{
  v2 = qword_2A14FD9B0;
  if (!qword_2A14FD9B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix3d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_(0);
  sub_29B1BE7D0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BE7D0()
{
  v2 = qword_2A14FD9B8;
  if (!qword_2A14FD9B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix2d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_(0);
  sub_29B1BE940();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BE940()
{
  v2 = qword_2A14FD9C0;
  if (!qword_2A14FD9C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange3f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_(0);
  sub_29B1BEAB0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BEAB0()
{
  v2 = qword_2A14FD9C8;
  if (!qword_2A14FD9C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange3d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_(0);
  sub_29B1BEC20();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BEC20()
{
  v2 = qword_2A14FD9D0;
  if (!qword_2A14FD9D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange2f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_(0);
  sub_29B1BED90();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BED90()
{
  v2 = qword_2A14FD9D8;
  if (!qword_2A14FD9D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange2d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_(0);
  sub_29B1BEF00();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BEF00()
{
  v2 = qword_2A14FD9E0;
  if (!qword_2A14FD9E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange1f>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_(0);
  sub_29B1BF070();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BF070()
{
  v2 = qword_2A14FD9E8;
  if (!qword_2A14FD9E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange1d>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_(0);
  sub_29B1BF1E0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BF1E0()
{
  v2 = qword_2A14FD9F0;
  if (!qword_2A14FD9F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfInterval>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_(0);
  sub_29B1BF350();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BF350()
{
  v2 = qword_2A14FD9F8;
  if (!qword_2A14FD9F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD9F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRect2i>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_(0);
  sub_29B1BF4C0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BF4C0()
{
  v2 = qword_2A14FDA00;
  if (!qword_2A14FDA00)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA00);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfQuath>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_(0);
  sub_29B1BF630();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BF630()
{
  v2 = qword_2A14FDA08;
  if (!qword_2A14FDA08)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA08);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfQuatf>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_(0);
  sub_29B1BF7A0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BF7A0()
{
  v2 = qword_2A14FDA10;
  if (!qword_2A14FDA10)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA10);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfQuatd>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_(0);
  sub_29B1BF910();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BF910()
{
  v2 = qword_2A14FDA18;
  if (!qword_2A14FDA18)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA18);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfQuaternion>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_(0);
  sub_29B1BFA80();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BFA80()
{
  v2 = qword_2A14FDA20;
  if (!qword_2A14FDA20)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA20);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfDualQuath>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuath_(0);
  sub_29B1BFBF0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BFBF0()
{
  v2 = qword_2A14FDA28;
  if (!qword_2A14FDA28)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuath_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA28);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfDualQuatf>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuatf_(0);
  sub_29B1BFD60();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BFD60()
{
  v2 = qword_2A14FDA30;
  if (!qword_2A14FDA30)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuatf_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA30);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfDualQuatd>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuatd_(0);
  sub_29B1BFED0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1BFED0()
{
  v2 = qword_2A14FDA38;
  if (!qword_2A14FDA38)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuatd_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA38);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CBool>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_(0);
  sub_29B1C0040();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0040()
{
  v2 = qword_2A14FDA40;
  if (!qword_2A14FDA40)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA40);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CChar>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(0);
  sub_29B1C01B0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C01B0()
{
  v2 = qword_2A14FDA48;
  if (!qword_2A14FDA48)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA48);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CUnsignedChar>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(0);
  sub_29B1C0320();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0320()
{
  v2 = qword_2A14FDA50;
  if (!qword_2A14FDA50)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA50);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CShort>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(0);
  sub_29B1C0490();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0490()
{
  v2 = qword_2A14FDA58;
  if (!qword_2A14FDA58)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA58);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CUnsignedShort>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_(0);
  sub_29B1C0600();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0600()
{
  v2 = qword_2A14FDA60;
  if (!qword_2A14FDA60)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA60);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CInt>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_(0);
  sub_29B1C0770();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0770()
{
  v2 = qword_2A14FDA68;
  if (!qword_2A14FDA68)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA68);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CUnsignedInt>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_(0);
  sub_29B1C08E0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C08E0()
{
  v2 = qword_2A14FDA70;
  if (!qword_2A14FDA70)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA70);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CLongLong>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_(0);
  sub_29B1C0A50();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0A50()
{
  v2 = qword_2A14FDA78;
  if (!qword_2A14FDA78)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA78);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CUnsignedLongLong>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_(0);
  sub_29B1C0BC0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0BC0()
{
  v2 = qword_2A14FDA80;
  if (!qword_2A14FDA80)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA80);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CDouble>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(0);
  sub_29B1C0D30();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0D30()
{
  v2 = qword_2A14FDA88;
  if (!qword_2A14FDA88)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA88);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CFloat>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(0);
  sub_29B1C0EA0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C0EA0()
{
  v2 = qword_2A14FDA90;
  if (!qword_2A14FDA90)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA90);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.pxr_half.half>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(0);
  sub_29B1C1010();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C1010()
{
  v2 = qword_2A14FDA98;
  if (!qword_2A14FDA98)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDA98);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___(0);
  sub_29B1C1180();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C1180()
{
  v2 = qword_2A14FDAA0;
  if (!qword_2A14FDAA0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.TfToken>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_(0);
  sub_29B1C12F0();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1C12F0()
{
  v2 = qword_2A14FDAA8;
  if (!qword_2A14FDAA8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C1808()
{
  v2 = qword_2A14FDAB0;
  if (!qword_2A14FDAB0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfBBox3d(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C19F0()
{
  v2 = qword_2A14FDAB8;
  if (!qword_2A14FDAB8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatd(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C1AA0()
{
  v2 = qword_2A14FDAC0;
  if (!qword_2A14FDAC0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatf(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C1B50()
{
  v2 = qword_2A14FDAC8;
  if (!qword_2A14FDAC8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuath(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C1C00()
{
  v2 = qword_2A14FDAD0;
  if (!qword_2A14FDAD0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfFrustum(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C1D28()
{
  v2 = qword_2A14FDAD8;
  if (!qword_2A14FDAD8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRotation(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C1E98()
{
  v2 = qword_2A14FDAE0;
  if (!qword_2A14FDAE0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C1F30()
{
  v2 = qword_2A14FDAE8;
  if (!qword_2A14FDAE8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C1FC8()
{
  v2 = qword_2A14FDAF0;
  if (!qword_2A14FDAF0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.ArAssetInfo(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C20D8()
{
  v2 = qword_2A14FDAF8;
  if (!qword_2A14FDAF8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfUnregisteredValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDAF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2170()
{
  v2 = qword_2A14FDB00;
  if (!qword_2A14FDB00)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueBlock(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2208()
{
  v2 = qword_2A14FDB08;
  if (!qword_2A14FDB08)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHumanReadableValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2378()
{
  v2 = qword_2A14FDB10;
  if (!qword_2A14FDB10)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfOpaqueValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2410()
{
  v2 = qword_2A14FDB18;
  if (!qword_2A14FDB18)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C24A8()
{
  v2 = qword_2A14FDB20;
  if (!qword_2A14FDB20)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2540()
{
  v2 = qword_2A14FDB28;
  if (!qword_2A14FDB28)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern.Component(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C25D8()
{
  v2 = qword_2A14FDB30;
  if (!qword_2A14FDB30)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression.ExpressionReference(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2670()
{
  v2 = qword_2A14FDB38;
  if (!qword_2A14FDB38)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2708()
{
  v2 = qword_2A14FDB40;
  if (!qword_2A14FDB40)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C27A0()
{
  v2 = qword_2A14FDB48;
  if (!qword_2A14FDB48)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2850()
{
  v2 = qword_2A14FDB50;
  if (!qword_2A14FDB50)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueTypeName(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C29F0()
{
  v2 = qword_2A14FDB58;
  if (!qword_2A14FDB58)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpMapFunction(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2B00()
{
  v2 = qword_2A14FDB60;
  if (!qword_2A14FDB60)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpInstanceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2BE0()
{
  v2 = qword_2A14FDB68;
  if (!qword_2A14FDB68)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageLoadRules(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2C78()
{
  v2 = qword_2A14FDB70;
  if (!qword_2A14FDB70)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStagePopulationMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2D88()
{
  v2 = qword_2A14FDB78;
  if (!qword_2A14FDB78)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelAnimQuery(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2E20()
{
  v2 = qword_2A14FDB80;
  if (!qword_2A14FDB80)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelSkeletonQuery(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2EB8()
{
  v2 = qword_2A14FDB88;
  if (!qword_2A14FDB88)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C2F98()
{
  v2 = qword_2A14FDB90;
  if (!qword_2A14FDB90)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRprimCollection(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C3048()
{
  v2 = qword_2A14FDB98;
  if (!qword_2A14FDB98)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBindingRequest(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDB98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C30E0()
{
  v2 = qword_2A14FDBA0;
  if (!qword_2A14FDBA0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStTextureIdentifier(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C3448()
{
  v2 = qword_2A14FDBA8;
  if (!qword_2A14FDBA8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuath_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C34E0()
{
  v2 = qword_2A14FDBB0;
  if (!qword_2A14FDBB0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuatf_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C3578()
{
  v2 = qword_2A14FDBB8;
  if (!qword_2A14FDBB8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuatd_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBB8);
    return WitnessTable;
  }

  return v2;
}

void retainSdfSimpleLayerStateDelegate(pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate *a1)
{
  pxrInternal__aapl__pxrReserved__::TfRetainReleaseHelper::retain<pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate>();
}

{
    ;
  }
}

void releaseSdfSimpleLayerStateDelegate(pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate *a1)
{
  pxrInternal__aapl__pxrReserved__::TfRetainReleaseHelper::release<pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate>();
}

{
    ;
  }
}

unint64_t sub_29B1C502C()
{
  v2 = qword_2A14FDBC0;
  if (!qword_2A14FDBC0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLayer(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSimpleLayerStateDelegate(uint64_t a1)
{
  v5 = qword_2A14FDBF0;
  if (!qword_2A14FDBF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FDBF0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B1C52D8()
{
  v2 = qword_2A14FDBC8;
  if (!qword_2A14FDBC8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSimpleLayerStateDelegate(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C54EC()
{
  v2 = qword_2A14FDBD0;
  if (!qword_2A14FDBD0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C5874()
{
  v2 = qword_2A14FDBD8;
  if (!qword_2A14FDBD8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLayer(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C590C()
{
  v2 = qword_2A14FDBE0;
  if (!qword_2A14FDBE0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSimpleLayerStateDelegate(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1C59A4()
{
  v2 = qword_2A14FDBE8;
  if (!qword_2A14FDBE8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FDBE8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B1C5B24(pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate **a1, pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate **a2)
{
  v2 = *a1;
  *a1 = *a2;
  releaseSdfSimpleLayerStateDelegate(v2);
}

void *sub_29B1C5BF8(uint64_t a1)
{
  sub_29B1EAB28(a1, &v4);
  if ((v5 - v4) < 0x11)
  {
    if (v5 - v4 == 16)
    {
      v1 = (*(**v4 + 64))();
    }

    else
    {
      v1 = sub_29B1F2B94();
    }
  }

  else
  {
    v1 = sub_29B1F2C14();
  }

  v2 = v1;
  v6 = &v4;
  sub_29A0176E4(&v6);
  return v2;
}

void sub_29B1C5C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

void sub_29B1C5CA8(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29B1D8ACC(a1, &p_p);
  v6 = &p_p->__vftable;
  sub_29AAE1890(a1, a1 + 2, &__p);
  sub_29B1C865C(v6, &__p, &v30);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  sub_29B1D8ACC(a1, &p_p);
  sub_29B1C865C(p_p, &a1[2], &__p);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  sub_29B1C6AE8(&v30, v31, __p, v28, (v28 - __p) >> 4);
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7)
  {
    sub_29B1D8ACC(a1, &p_p);
    sub_29B1C6A4C(p_p, a2, &v25);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    if (v25)
    {
      sub_29B1C6018(v25, &p_p);
      v8 = &p_p->__vftable;
      v9 = v23;
      v10 = *a3;
      if (p_p != v23)
      {
        v11 = a3[1];
        while (2)
        {
          v12 = v30;
          v13 = v31;
          while (v12 != v13)
          {
            v10 = *v12;
            v11 = v12[1];
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v14 = sub_29AAD8124(v10);
            v15 = v14[23];
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v14 + 1);
            }

            if (v15 && sub_29B1DC438(v14, v8))
            {
              a3[1] = v11;
              goto LABEL_45;
            }

            if (v11)
            {
              sub_29A014BEC(v11);
            }

            v12 += 2;
          }

          v8 += 3;
          if (v8 != v9)
          {
            continue;
          }

          break;
        }

        a3[1] = v11;
      }
    }

    else
    {
      p_p = 0;
      v23 = 0;
      v24 = 0;
      v10 = *a3;
    }

    *a3 = v10;
    v17 = v30;
    v18 = v31;
    if (v30 == v31)
    {
LABEL_41:
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      while (1)
      {
        v10 = *v17;
        v19 = v17[1];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = sub_29AAD8124(v10);
        v21 = v20[23];
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v20 + 1);
        }

        if (!v21)
        {
          break;
        }

        if (v19)
        {
          sub_29A014BEC(v19);
        }

        v17 += 2;
        if (v17 == v18)
        {
          goto LABEL_41;
        }
      }

      a3[1] = v19;
LABEL_45:
      *a3 = v10;
    }

    v32 = &p_p;
    sub_29A012C90(&v32);
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  else if (v30 == v31)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v16 = v30[1];
    *a3 = *v30;
    a3[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }

  p_p = &__p;
  sub_29A0176E4(&p_p);
  __p = &v30;
  sub_29A0176E4(&__p);
}