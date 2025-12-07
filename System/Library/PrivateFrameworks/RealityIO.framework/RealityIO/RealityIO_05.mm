uint64_t static UsdAttributeValueArrayElement.getValueArray(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(a1);
  if (!result)
  {
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t static UsdAttributeValueSIMD2ArrayElement.getValue2Array(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 24))(a1);
  if (!result)
  {
    type metadata accessor for SIMD2();
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t static UsdAttributeValueSIMD3ArrayElement.getValue3Array(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 24))(a1);
  if (!result)
  {
    type metadata accessor for SIMD3();
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t static UsdAttributeValueSIMD4ArrayElement.getValue4Array(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 24))(a1);
  if (!result)
  {
    type metadata accessor for SIMD4();
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t static Bool.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBool();
  *a1 = result;
  return result;
}

uint64_t static Bool.setValue(_:to:time:)(char a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithBool();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Bool.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  v3 = 2;
  if (v2)
  {
    v4 = v2;
    Bool = RIOPxrVtValueGetBool();

    if (Bool)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v3;
}

void *static Bool.getValue(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetBool();

    return 0;
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Bool(unsigned __int8 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithBool();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Bool(char *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 2;
  if (v4)
  {
    v6 = v4;
    Bool = RIOPxrVtValueGetBool();

    if (Bool)
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }
  }

  *a2 = v5;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Bool(_BYTE *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetBool();
  }

  *a2 = 0;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Bool@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBool();
  *a1 = result;
  return result;
}

uint64_t static Int8.setValue(_:to:time:)(char a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int8.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  v5 = 1;
  if (v2)
  {
    v3 = v2;
    Int32 = RIOPxrVtValueGetInt32();

    if (Int32)
    {
      v5 = 0;
    }
  }

  return (v5 << 8);
}

void *static Int8.getValue(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetInt32();

    return 0;
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int8(char *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int8(_BYTE *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  v7 = 1;
  if (v4)
  {
    v5 = v4;
    Int32 = RIOPxrVtValueGetInt32();

    if (Int32)
    {
      v7 = 0;
    }
  }

  *a2 = 0;
  a2[1] = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int8(_BYTE *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetInt32();
  }

  *a2 = 0;
}

uint64_t static Int16.setValue(_:to:time:)(__int16 a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int16.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E90];

  return static Int16.getValueOpt(from:time:)(a1, v2, a2);
}

void *static Int16.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E90];

  return static Int16.getValue(from:time:)(a1, v2, a2);
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int16(__int16 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int16(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E90];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int16(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int16(_WORD *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E90];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int16(v4, x8_0);
}

uint64_t static Int32.setValue(_:to:time:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

unint64_t static Int32.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E90];

  return static Int32.getValueOpt(from:time:)(a1, v2, a2);
}

void *static Int32.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E90];

  return static Int16.getValue(from:time:)(a1, v2, a2);
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int32(unsigned int *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int32(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E90];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int32(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int32(_DWORD *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E90];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int32(v4, x8_0);
}

uint64_t Int.vtValue.getter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return RIOPxrVtValueCreateWithInt32();
  }

  __break(1u);
  return result;
}

uint64_t static Int.setValue(_:to:time:)(uint64_t result, uint64_t a2, double a3)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v3 = RIOPxrVtValueCreateWithInt32();
    v4 = RIOPxrUsdAttributeSetValue();

    return v4;
  }

  __break(1u);
  return result;
}

void *static Int.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetInt32();

    return 0;
  }

  return result;
}

void *static Int.getValue(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetInt32();

    return 0;
  }

  return result;
}

uint64_t static Int.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int(uint64_t *a1, uint64_t a2, double a3)
{
  result = *a1;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v4 = RIOPxrVtValueCreateWithInt32();
    v5 = RIOPxrUsdAttributeSetValue();

    return v5;
  }

  __break(1u);
  return result;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Int32 = RIOPxrVtValueGetInt32();

    v7 = Int32 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int(void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetInt32();
  }

  *a2 = 0;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance Int()
{
  result = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return RIOPxrVtValueCreateWithInt32();
  }

  __break(1u);
  return result;
}

uint64_t static Int64.setValue(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = RIOPxrVtValueCreateWithInt64();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *static Int64.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00EA0];

  return static Int64.getValueOpt(from:time:)(a1, v2, a2);
}

void *static Int64.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00EA0];

  return static Int64.getValue(from:time:)(a1, v2, a2);
}

uint64_t static Int64.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int64(void *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt64();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int64(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00EA0];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int64(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int64(void *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00EA0];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int64(v4, x8_0);
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Int64@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64();
  *a1 = result;
  return result;
}

unint64_t UInt.vtValue.getter(unint64_t result)
{
  if (!HIDWORD(result))
  {
    return RIOPxrVtValueCreateWithUInt32();
  }

  __break(1u);
  return result;
}

unint64_t static UInt.setValue(_:to:time:)(unint64_t result, uint64_t a2, double a3)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v3 = RIOPxrVtValueCreateWithUInt32();
    v4 = RIOPxrUsdAttributeSetValue();

    return v4;
  }

  return result;
}

void *static UInt.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetUInt32();

    return 0;
  }

  return result;
}

void *static UInt.getValue(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetUInt32();

    return 0;
  }

  return result;
}

uint64_t static UInt.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32();
  *a1 = result;
  return result;
}

unint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt(unint64_t *a1, uint64_t a2, double a3)
{
  result = *a1;
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v4 = RIOPxrVtValueCreateWithUInt32();
    v5 = RIOPxrUsdAttributeSetValue();

    return v5;
  }

  return result;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    UInt32 = RIOPxrVtValueGetUInt32();

    v7 = UInt32 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt(void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetUInt32();
  }

  *a2 = 0;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance UInt()
{
  result = *v0;
  if (!HIDWORD(*v0))
  {
    return RIOPxrVtValueCreateWithUInt32();
  }

  __break(1u);
  return result;
}

uint64_t static UInt8.setValue(_:to:time:)(unsigned __int8 a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithUInt8();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static UInt8.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    UInt8 = RIOPxrVtValueGetUInt8();

    v5 = UInt8 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return (v5 << 8);
}

void *static UInt8.getValue(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetUInt8();

    return 0;
  }

  return result;
}

uint64_t static UInt8.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt8(unsigned __int8 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithUInt8();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt8(_BYTE *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    UInt8 = RIOPxrVtValueGetUInt8();

    v7 = UInt8 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  a2[1] = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt8(_BYTE *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetUInt8();
  }

  *a2 = 0;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance UInt8@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8();
  *a1 = result;
  return result;
}

uint64_t static UInt16.setValue(_:to:time:)(unsigned __int16 a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithUInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static UInt16.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00EA8];

  return static Int16.getValueOpt(from:time:)(a1, v2, a2);
}

uint64_t static Int16.getValueOpt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, int *), double a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v10 = 0, v5 = v4, v6 = a2(v4, &v10), v5, v6))
  {
    v7 = 0;
    v8 = v10;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  return v8 | (v7 << 16);
}

void *static UInt16.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00EA8];

  return static Int16.getValue(from:time:)(a1, v2, a2);
}

void *static Int16.getValue(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned int *), double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7 = 0;
    v5 = result;
    v6 = a2(result, &v7);

    if (v6)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt16(unsigned __int16 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithUInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt16(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00EA8];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int16(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int16(uint64_t (*a2)(uint64_t, int *)@<X3>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6 && (v11 = 0, v7 = v6, v8 = a2(v6, &v11), v7, v8))
  {
    v9 = 0;
    v10 = v11;
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  *a3 = v10;
  *(a3 + 2) = v9;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt16(_WORD *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00EA8];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int16(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int16(uint64_t (*a2)(uint64_t, int *)@<X3>, _WORD *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6 && (v10 = 0, v7 = v6, v8 = a2(v6, &v10), v7, v8))
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

uint64_t static UInt32.setValue(_:to:time:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithUInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

unint64_t static UInt32.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00EA8];

  return static Int32.getValueOpt(from:time:)(a1, v2, a2);
}

unint64_t static Int32.getValueOpt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned int *), double a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v10 = 0;
    v5 = v4;
    v6 = a2(v4, &v10);

    v7 = v10;
    v8 = v6 ^ 1;
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  return v7 | (v8 << 32);
}

void *static UInt32.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00EA8];

  return static Int16.getValue(from:time:)(a1, v2, a2);
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt32(unsigned int *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithUInt32();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt32(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00EA8];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int32(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int32(uint64_t (*a2)(uint64_t, int *)@<X3>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v11 = 0;
    v7 = v6;
    v8 = a2(v6, &v11);

    v9 = v11;
    if (!v8)
    {
      v9 = 0;
    }

    v10 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *a3 = v9;
  *(a3 + 4) = v10;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt32(_DWORD *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00EA8];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int32(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int32(uint64_t (*a2)(uint64_t, int *)@<X3>, _DWORD *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6 && (v10 = 0, v7 = v6, v8 = a2(v6, &v10), v7, v8))
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

uint64_t static UInt64.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64();
  *a1 = result;
  return result;
}

uint64_t static UInt64.setValue(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = RIOPxrVtValueCreateWithUInt64();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *static UInt64.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00EB0];

  return static Int64.getValueOpt(from:time:)(a1, v2, a2);
}

void *static Int64.getValueOpt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, void *), double a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7[0] = 0;
    v5 = result;
    v6 = a2(result, v7);

    if (v6)
    {
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *static UInt64.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00EB0];

  return static Int64.getValue(from:time:)(a1, v2, a2);
}

void *static Int64.getValue(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, void *), double a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7[0] = 0;
    v5 = result;
    v6 = a2(result, v7);

    if (v6)
    {
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt64(void *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithUInt64();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt64(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00EB0];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int64(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int64(uint64_t (*a2)(uint64_t, void *)@<X3>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v11[0] = 0;
    v7 = v6;
    v8 = a2(v6, v11);

    v9 = v11[0];
    if (!v8)
    {
      v9 = 0;
    }

    v10 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *a3 = v9;
  *(a3 + 8) = v10;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt64(void *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00EB0];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int64(v4, x8_0);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int64(uint64_t (*a2)(uint64_t, void *)@<X3>, void *a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6 && (v10[0] = 0, v7 = v6, v8 = a2(v6, v10), v7, v8))
  {
    v9 = v10[0];
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance UInt64@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64();
  *a1 = result;
  return result;
}

uint64_t static Half.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf();
  *a1 = result;
  return result;
}

uint64_t static Half.setValue(_:to:time:)(float *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithHalf();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void static Half.getValueOpt(from:time:)(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Float = RIOPxrVtValueGetFloat();

    *a2 = 0;
    v7 = Float ^ 1;
  }

  else
  {
    *a2 = 0;
    v7 = 1;
  }

  *(a2 + 4) = v7;
}

uint64_t RIOPxrVtValueRef.asHalf.getter@<X0>(uint64_t a1@<X8>)
{
  result = RIOPxrVtValueGetFloat();
  *a1 = 0;
  *(a1 + 4) = result ^ 1;
  return result;
}

void static Half.getValue(from:time:)(_DWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetFloat();
  }

  *a2 = 0;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Half(float *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithHalf();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Half(_DWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetFloat();
  }

  *a2 = 0;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf();
  *a1 = result;
  return result;
}

uint64_t static Float.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat();
  *a1 = result;
  return result;
}

uint64_t static Float.setValue(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithFloat();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

unint64_t static Float.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Float = RIOPxrVtValueGetFloat();

    v5 = Float ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 << 32;
}

float static Float.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetFloat();
  }

  return 0.0;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Float(float *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithFloat();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Float(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Float = RIOPxrVtValueGetFloat();

    v7 = Float ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 4) = v7;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat();
  *a1 = result;
  return result;
}

uint64_t static Double.setValue(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithDouble();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *static Double.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetDouble();

    return 0;
  }

  return result;
}

double static Double.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetDouble();
  }

  return 0.0;
}

uint64_t static Double.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Double(double *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithDouble();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Double(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Double = RIOPxrVtValueGetDouble();

    v7 = Double ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Double(void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetDouble();
  }

  *a2 = 0;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble();
  *a1 = result;
  return result;
}

uint64_t static simd_quatf.setValue(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithQuatf();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *static simd_quatf.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetQuatf();

    return 0;
  }

  return result;
}

double static simd_quatf.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  result = 0.0;
  if (v2)
  {
    v4 = v2;
    RIOPxrVtValueGetQuatf();

    return 0.0;
  }

  return result;
}

uint64_t static simd_quatf.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatf();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_quatf(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithQuatf();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_quatf(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Quatf = RIOPxrVtValueGetQuatf();

    v7 = Quatf ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_quatf(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    v6 = v4;
    RIOPxrVtValueGetQuatf();

    v5 = 0uLL;
  }

  *a2 = v5;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance simd_quatf@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatf();
  *a1 = result;
  return result;
}

uint64_t static simd_quatd.setValue(_:to:time:)(uint64_t a1, __n128 a2, __n128 a3, double a4)
{
  v4 = RIOPxrVtValueCreateWithQuatd();
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

void static simd_quatd.getValueOpt(from:time:)(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Quatd = RIOPxrVtValueGetQuatd();

    v7 = Quatd ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

double static simd_quatd.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  result = 0.0;
  if (v2)
  {
    v4 = v2;
    RIOPxrVtValueGetQuatd();

    return 0.0;
  }

  return result;
}

uint64_t static simd_quatd.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatd();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_quatd(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithQuatd();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_quatd(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Quatd = RIOPxrVtValueGetQuatd();

    v7 = Quatd ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_quatd(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Quatd = RIOPxrVtValueGetQuatd();

    if (Quatd)
    {
      v8 = 0u;
      v7 = 0u;
    }

    else
    {
      v7 = 0uLL;
      v8 = 0uLL;
    }
  }

  else
  {
    v8 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v8;
  a2[1] = v7;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance simd_quatd@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatd();
  *a1 = result;
  return result;
}

uint64_t static simd_float2x2.setValue(_:to:time:)(uint64_t a1, double a2, double a3, double a4)
{
  v4 = RIOPxrVtValueCreateWithMatrix2f();
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static simd_float2x2.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_float2x2(double *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix2f();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_float2x2@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, double a3@<D0>)
{
  result = specialized static simd_float2x2.getValueOpt(from:time:)(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  return result;
}

uint64_t static simd_double2x2.setValue(_:to:time:)(uint64_t a1, double a2, double a3, double a4)
{
  v4 = RIOPxrVtValueCreateWithMatrix2d();
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

void static simd_double2x2.getValueOpt(from:time:)(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    v7 = Matrix2d ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

double static simd_double2x2.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  result = 0.0;
  if (v2)
  {
    v4 = v2;
    RIOPxrVtValueGetMatrix2d();

    return 0.0;
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_double2x2(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix2d();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_double2x2(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    v7 = Matrix2d ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_double2x2(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    if (Matrix2d)
    {
      v8 = 0u;
      v7 = 0u;
    }

    else
    {
      v7 = 0uLL;
      v8 = 0uLL;
    }
  }

  else
  {
    v8 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v8;
  a2[1] = v7;
}

uint64_t static simd_float3x3.setValue(_:to:time:)(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix3f();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

double static simd_float3x3.getValueOpt(from:time:)@<D0>(uint64_t a1@<X8>)
{
  specialized static simd_float3x3.getValueOpt(from:time:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double static simd_float3x3.getValue(from:time:)@<D0>(_OWORD *a1@<X8>)
{
  specialized static simd_float3x3.getValue(from:time:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t static simd_float3x3.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_float3x3(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix3f();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

double protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_float3x3@<D0>(uint64_t a1@<X8>)
{
  specialized static simd_float3x3.getValueOpt(from:time:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_float3x3@<D0>(_OWORD *a1@<X8>)
{
  specialized static simd_float3x3.getValue(from:time:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t static simd_double3x3.setValue(_:to:time:)(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix3d();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void static simd_double3x3.getValueOpt(from:time:)(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v7 = 0;
      v9 = 0u;
      v8 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
    }

    else
    {
      v7 = 1;
      v8 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v9 = 0uLL;
    }
  }

  else
  {
    v7 = 1;
    v9 = 0uLL;
    v8 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 96) = v7;
}

void static simd_double3x3.getValue(from:time:)(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v8 = 0u;
      v7 = 0u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
    }

    else
    {
      v7 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v8 = 0uLL;
    }
  }

  else
  {
    v8 = 0uLL;
    v7 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v11;
  a2[5] = v12;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_double3x3(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix3d();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_double3x3(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v7 = 0;
      v9 = 0u;
      v8 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
    }

    else
    {
      v7 = 1;
      v8 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v9 = 0uLL;
    }
  }

  else
  {
    v7 = 1;
    v9 = 0uLL;
    v8 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 96) = v7;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_double3x3(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v8 = 0u;
      v7 = 0u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
    }

    else
    {
      v7 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v8 = 0uLL;
    }
  }

  else
  {
    v8 = 0uLL;
    v7 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v11;
  a2[5] = v12;
}

uint64_t static simd_float4x4.setValue(_:to:time:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = RIOPxrVtValueCreateWithMatrix4f();
  v7 = RIOPxrUsdAttributeSetValue();

  return v7;
}

__n128 static simd_float4x4.getValueOpt(from:time:)@<Q0>(uint64_t a1@<X8>)
{
  specialized static simd_float4x4.getValueOpt(from:time:)(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t static simd_float4x4.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_float4x4(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix4f();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

__n128 protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_float4x4@<Q0>(uint64_t a1@<X8>)
{
  specialized static simd_float4x4.getValueOpt(from:time:)(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_float4x4(_OWORD *a1@<X8>, uint64_t a2@<X0>, double a3@<D0>)
{
  *&v4 = specialized static simd_float4x4.getValue(from:time:)(a2, a3);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
}

uint64_t static simd_double4x4.setValue(_:to:time:)(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix4d();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

__n128 static simd_double4x4.getValueOpt(from:time:)@<Q0>(uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix4d = RIOPxrVtValueGetMatrix4d();

    if (Matrix4d)
    {
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      _sSo14simd_double4x4aSgWOi__0(&v20);
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v13 = v22;
      v14 = v23;
      v15 = v24;
      v16 = v25;
      v11 = v20;
      v12 = v21;
    }

    else
    {
      _sSo14simd_double4x4aSgWOi0__0(&v11);
    }

    v26 = v17;
    v27 = v18;
    v28 = v19;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v20 = v11;
    v21 = v12;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0__0(&v20);
  }

  v7 = v27;
  *(a2 + 96) = v26;
  *(a2 + 112) = v7;
  *(a2 + 128) = v28;
  v8 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v8;
  v9 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v9;
  result = v21;
  *a2 = v20;
  *(a2 + 16) = result;
  return result;
}

double static simd_double4x4.getValue(from:time:)@<D0>(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v5 = v4, Matrix4d = RIOPxrVtValueGetMatrix4d(), v5, (Matrix4d & 1) != 0))
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
  }

  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v14;
  a2[7] = v15;
  *a2 = v8;
  a2[1] = v9;
  result = *&v10;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_double4x4(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithMatrix4d();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

__n128 protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_double4x4@<Q0>(uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix4d = RIOPxrVtValueGetMatrix4d();

    if (Matrix4d)
    {
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      _sSo14simd_double4x4aSgWOi__0(&v20);
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v13 = v22;
      v14 = v23;
      v15 = v24;
      v16 = v25;
      v11 = v20;
      v12 = v21;
    }

    else
    {
      _sSo14simd_double4x4aSgWOi0__0(&v11);
    }

    v26 = v17;
    v27 = v18;
    v28 = v19;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v20 = v11;
    v21 = v12;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0__0(&v20);
  }

  v7 = v27;
  *(a2 + 96) = v26;
  *(a2 + 112) = v7;
  *(a2 + 128) = v28;
  v8 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v8;
  v9 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v9;
  result = v21;
  *a2 = v20;
  *(a2 + 16) = result;
  return result;
}

double protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_double4x4@<D0>(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v5 = v4, Matrix4d = RIOPxrVtValueGetMatrix4d(), v5, Matrix4d))
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
  }

  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v14;
  a2[7] = v15;
  *a2 = v8;
  a2[1] = v9;
  result = *&v10;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

uint64_t Frame4D.vtValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v16 = v0[6];
  v17 = v7;
  v14 = v5;
  v15 = v6;
  v12 = v3;
  v13 = v4;
  v10 = v1;
  v11 = v2;
  Frame4D.asDouble4x4()(&v9);
  return RIOPxrVtValueCreateWithMatrix4d();
}

uint64_t static Frame4D.setValue(_:to:time:)(__int128 *a1, uint64_t a2, double a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[7];
  v20 = a1[6];
  v21 = v9;
  v18 = v7;
  v19 = v8;
  v16 = v5;
  v17 = v6;
  v14 = v3;
  v15 = v4;
  Frame4D.asDouble4x4()(&v13);
  v10 = RIOPxrVtValueCreateWithMatrix4d();
  v11 = RIOPxrUsdAttributeSetValue();

  return v11;
}

__n128 static Frame4D.getValueOpt(from:time:)@<Q0>(uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v5 = v4, Matrix4d = RIOPxrVtValueGetMatrix4d(), v5, (Matrix4d & 1) != 0))
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    Frame4D.init(_:)(&v11, a2);
    _sSo14simd_double4x4aSgWOi__0(a2);
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0__0(&v11);
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    *(a2 + 128) = v19;
    v9 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v9;
    v10 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v10;
    result = v12;
    *a2 = v11;
    *(a2 + 16) = result;
  }

  return result;
}

double static Frame4D.getValue(from:time:)@<D0>(_OWORD *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v5 = v4, Matrix4d = RIOPxrVtValueGetMatrix4d(), v5, (Matrix4d & 1) != 0))
  {
    memset(v8, 0, sizeof(v8));
    Frame4D.init(_:)(v8, a2);
  }

  else
  {
    result = 0.0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t static Frame4D.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Frame4D(__int128 *a1, uint64_t a2, double a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[7];
  v20 = a1[6];
  v21 = v9;
  v18 = v7;
  v19 = v8;
  v16 = v5;
  v17 = v6;
  v14 = v3;
  v15 = v4;
  Frame4D.asDouble4x4()(&v13);
  v10 = RIOPxrVtValueCreateWithMatrix4d();
  v11 = RIOPxrUsdAttributeSetValue();

  return v11;
}

double protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Frame4D@<D0>(_OWORD *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v5 = v4, Matrix4d = RIOPxrVtValueGetMatrix4d(), v5, Matrix4d))
  {
    memset(v8, 0, sizeof(v8));
    Frame4D.init(_:)(v8, a2);
  }

  else
  {
    result = 0.0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Frame4D@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance Frame4D()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v16 = v0[6];
  v17 = v7;
  v14 = v5;
  v15 = v6;
  v12 = v3;
  v13 = v4;
  v10 = v1;
  v11 = v2;
  Frame4D.asDouble4x4()(&v9);
  return RIOPxrVtValueCreateWithMatrix4d();
}

uint64_t String.vtValue.getter(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  v2 = RIOPxrVtValueCreateWithCString();

  return v2;
}

uint64_t static String.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  String.utf8CString.getter();
  v4 = RIOPxrVtValueCreateWithCString();

  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

void *static String.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyString();
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *static String.getValue(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyString();
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static String.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateString();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance String(void *a1, uint64_t a2, double a3)
{
  String.utf8CString.getter();
  v3 = RIOPxrVtValueCreateWithCString();

  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance String(uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = RIOPxrVtValueCopyString();
  if (!v6)
  {

LABEL_5:
    v8 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

LABEL_6:
  *a2 = v8;
  a2[1] = v10;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance String(uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = RIOPxrVtValueCopyString();
  if (!v6)
  {

LABEL_5:
    v8 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

LABEL_6:
  *a2 = v8;
  a2[1] = v10;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance String@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateString();
  *a1 = result;
  return result;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance String()
{
  String.utf8CString.getter();
  v0 = RIOPxrVtValueCreateWithCString();

  return v0;
}

uint64_t static ToolsFoundations.Token.setValue(_:to:time:)(void *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithToken();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void static ToolsFoundations.Token.getValue(from:time:)(void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, v6 = RIOPxrVtValueCopyToken(), v5, !v6))
  {
    v6 = RIOPxrTfTokenEmpty();
  }

  *a2 = v6;
}

uint64_t static ToolsFoundations.Token.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateToken();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance ToolsFoundations.Token(void *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithToken();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance ToolsFoundations.Token(void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, v6 = RIOPxrVtValueCopyToken(), v5, !v6))
  {
    v6 = RIOPxrTfTokenEmpty();
  }

  *a2 = v6;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance ToolsFoundations.Token@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateToken();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.AssetPath.setValue(_:to:time:)(void *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithAssetPath();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void static ToolsFoundations.Token.getValueOpt(from:time:)(uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v7 = v6;
    v8 = a2();
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void static SceneDescriptionFoundations.AssetPath.getValue(from:time:)(uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, EmptyPath = RIOPxrVtValueCopyAssetPath(), v5, !EmptyPath))
  {
    EmptyPath = RIOPxrSdfAssetPathCreateEmptyPath();
  }

  *a2 = EmptyPath;
}

uint64_t static SceneDescriptionFoundations.AssetPath.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPath();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance SceneDescriptionFoundations.AssetPath(void *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithAssetPath();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance ToolsFoundations.Token(uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v7 = v6;
    v8 = a2();
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, EmptyPath = RIOPxrVtValueCopyAssetPath(), v5, !EmptyPath))
  {
    EmptyPath = RIOPxrSdfAssetPathCreateEmptyPath();
  }

  *a2 = EmptyPath;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance SceneDescriptionFoundations.AssetPath@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPath();
  *a1 = result;
  return result;
}

uint64_t static TexCoord2<>.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *(a3 + 8);
  type metadata accessor for SIMD2();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21[-v14];
  (*(a3 + 24))(a1, a2, a3, a5);
  v22 = a2;
  v23 = a3;
  v17 = type metadata accessor for TexCoord2(0, a2, v10, v16);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static TexCoord2<>.getValueOpt(from:time:), v21, MEMORY[0x277D84A98], v17, v18, a4, v19);
  return (*(v12 + 8))(v15, v11);
}

void *_s9RealityIO9TexCoord2VyACyxGs5SIMD2VyxGcfCAA4HalfV_Tt1B5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  result[2] = 4;
  result[4] = 0;
  result[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(result + 8) = *(a1 + 32);
  if (v5 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = *(a1 + 36);

  if (v6[2] >= 2uLL)
  {
    *(v6 + 9) = v7;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static TexCoord2<>.getValue(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a3 + 8);
  v9 = type metadata accessor for SIMD2();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v15 - v11;
  v13.n128_f64[0] = (*(a3 + 32))(a1, a2, a3, a4);
  return TexCoord2.init(_:)(v12, a2, v8, v13);
}

uint64_t static TexCoord2<>.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = a4;
  v24 = a2;
  v9 = *(a4 + 8);
  v10 = type metadata accessor for TexCoord2(0, a3, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for SIMD2();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v23 - v19;
  v21.n128_f64[0] = (*(v11 + 16))(v14, a1, v10, v18);
  SIMD2.init(_:)(v14, a3, v9, v21);
  LOBYTE(v5) = (*(v5 + 16))(v20, v24, a3, v5, a5);
  (*(v16 + 8))(v20, v15);
  return v5 & 1;
}

uint64_t static TexCoord2<>.valueTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateTexCoord2d();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateTexCoord2f();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 40))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateTexCoord2h();
  }

  *a3 = result;
  return result;
}

uint64_t TexCoord2<>.vtValue.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v12 = *(v11 + 8);
  v13 = type metadata accessor for SIMD2();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v22 - v17;
  v19.n128_f64[0] = (*(v6 + 16))(v8, v3, a1, v16);
  SIMD2.init(_:)(v8, v10, v12, v19);
  v20 = (*(a2 + 16))(v18, v10, a2);
  (*(v14 + 8))(v18, v13);
  return v20;
}

uint64_t static Color3<>.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = *(a4 + 8);
  type metadata accessor for SIMD3();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v22[-v16];
  (*(a4 + 24))(a1, a2, a4, a6);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v18 = type metadata accessor for Color3(0, a2, a3, v12);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static Color3<>.getValueOpt(from:time:), v22, MEMORY[0x277D84A98], v18, v19, a5, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t static Color3<>.getValue(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 8);
  v11 = type metadata accessor for SIMD3();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v17 - v13;
  v15.n128_f64[0] = (*(a4 + 32))(a1, a2, a4, a5);
  return Color3.init(_:)(v14, a2, v15, a3, v10);
}

uint64_t static Color3<>.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = a5;
  v24 = a1;
  v25 = a2;
  v10 = *(a5 + 8);
  v11 = type metadata accessor for Color3(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for SIMD3();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v24 - v20;
  v22.n128_f64[0] = (*(v12 + 16))(v15, v24, v11, v19);
  SIMD3<>.init(_:)(v15, a3, v22, a4, v10);
  LOBYTE(v6) = (*(v6 + 16))(v21, v25, a3, v6, a6);
  (*(v17 + 8))(v21, v16);
  return v6 & 1;
}

uint64_t static Color3<>.valueTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor3d();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor3f();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 40))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateColor3h();
  }

  *a3 = result;
  return result;
}

uint64_t Color3<>.vtValue.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v12 = *(v11 + 8);
  v13 = type metadata accessor for SIMD3();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v22 - v17;
  v19.n128_f64[0] = (*(v6 + 16))(v8, v3, a1, v16);
  SIMD3<>.init(_:)(v8, v10, v19, *(a1 + 24), v12);
  v20 = (*(a2 + 16))(v18, v10, a2);
  (*(v14 + 8))(v18, v13);
  return v20;
}

uint64_t static TexCoord3<>.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X3>, void (*a5)(char *, char *)@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = *(a3 + 8);
  type metadata accessor for SIMD3();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v24[-v18];
  (*(a3 + 24))(a1, a2, a3, a7);
  v25 = a2;
  v26 = a3;
  v20 = a4(0, a2, v14);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(a5, v24, MEMORY[0x277D84A98], v20, v21, a6, v22);
  return (*(v16 + 8))(v19, v15);
}

uint64_t closure #1 in static TexCoord2<>.getValueOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(char *, uint64_t, uint64_t))
{
  v9 = *(a3 + 8);
  v10 = (a5)(0, a2, v9, a4);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v17 - v13;
  (*(v15 + 16))(v17 - v13, a1, v12);
  return a6(v14, a2, v9);
}

uint64_t _s9RealityIO9TexCoord3VyACyxGs5SIMD3VyxGcfCAA4HalfV_Tt1B5Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(result + 32) = *(a1 + 32);
  if (v5 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  *(result + 36) = *(a1 + 36);
  if (v5 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 40);

  if (*(v6 + 16) >= 3uLL)
  {
    *(v6 + 40) = v7;
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static TexCoord3<>.getValue(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), double a5)
{
  v10 = *(a3 + 8);
  v11 = type metadata accessor for SIMD3();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v16 - v13;
  (*(a3 + 32))(a1, a2, a3, a5);
  return a4(v14, a2, v10);
}

uint64_t static TexCoord3<>.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), void (*a6)(char *, uint64_t, uint64_t), double a7)
{
  v24 = a6;
  v25 = a2;
  v7 = a4;
  v11 = *(a4 + 8);
  v12 = a5(0, a3, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v24 - v15;
  v17 = type metadata accessor for SIMD3();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v24 - v21;
  (*(v13 + 16))(v16, a1, v12, v20);
  v24(v16, a3, v11);
  LOBYTE(v7) = (*(v7 + 16))(v22, v25, a3, v7, a7);
  (*(v18 + 8))(v22, v17);
  return v7 & 1;
}

uint64_t static TexCoord3<>.valueTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = a3();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = a4();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 40))(a1, a2);
    }

    result = a5();
  }

  *a6 = result;
  return result;
}

uint64_t TexCoord3<>.vtValue.getter(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), __n128 a4)
{
  v23 = a3;
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v13 = *(v12 + 8);
  v14 = type metadata accessor for SIMD3();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v22 - v18;
  (*(v7 + 16))(v9, v4, a1, v17);
  v23(v9, v11, v13);
  v20 = (*(a2 + 16))(v19, v11, a2);
  (*(v15 + 8))(v19, v14);
  return v20;
}

uint64_t static Color4<>.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = *(a4 + 8);
  type metadata accessor for SIMD4();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v22[-v16];
  (*(a4 + 24))(a1, a2, a4, a6);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v18 = type metadata accessor for Color4(0, a2, a3, v12);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static Color4<>.getValueOpt(from:time:), v22, MEMORY[0x277D84A98], v18, v19, a5, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t closure #1 in static Color3<>.getValueOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t), uint64_t (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 8);
  v12 = a6(0, a2, v11);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v14);
  return a7(v16, a2, a3, v11);
}

uint64_t _s9RealityIO6Color4VyACyxGs5SIMD4VyxGcfCAA4HalfV_Tt1B5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(result + 32) = *(a1 + 32);
  if (v5 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  *(result + 36) = *(a1 + 36);
  if (v5 < 3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 40) = *(a1 + 40);
  if (v5 == 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(a1 + 44);

  if (*(v6 + 16) >= 4uLL)
  {
    *(v6 + 44) = v7;
    *a2 = v6;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static Color4<>.getValue(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 8);
  v11 = type metadata accessor for SIMD4();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v17 - v13;
  v15.n128_f64[0] = (*(a4 + 32))(a1, a2, a4, a5);
  return Color4.init(_:)(v14, a2, v15, a3, v10);
}

uint64_t static Color4<>.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = a5;
  v22 = a1;
  v23 = a2;
  v9 = type metadata accessor for Color4(0, a3, a4, *(a5 + 8));
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for SIMD4();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v22 - v18;
  v20.n128_f64[0] = (*(v10 + 16))(v13, v22, v9, v17);
  SIMD4<>.init(_:)(v13, a3, v19, v20);
  LOBYTE(v6) = (*(v6 + 16))(v19, v23, a3, v6, a6);
  (*(v15 + 8))(v19, v14);
  return v6 & 1;
}

uint64_t static Color4<>.valueTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor4d();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor4f();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 40))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateColor4h();
  }

  *a3 = result;
  return result;
}

uint64_t Color4<>.vtValue.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = type metadata accessor for SIMD4();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v20 - v15;
  v17.n128_f64[0] = (*(v6 + 16))(v8, v3, a1, v14);
  SIMD4<>.init(_:)(v8, v10, v16, v17);
  v18 = (*(a2 + 16))(v16, v10, a2);
  (*(v12 + 8))(v16, v11);
  return v18;
}

uint64_t static ManagedColor.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v31 = a3;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v11, v13);
  v16 = &v31 - v15;
  v17 = *(a2 - 8);
  v19.n128_f32[0] = MEMORY[0x28223BE20](v18, v14);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v19);
  v24 = &v31 - v23;
  (*(a4 + 16))(a1, a2, a4, a6);
  if ((*(v17 + 48))(v16, 1, a2) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v25 = 1;
    v26 = v31;
  }

  else
  {
    (*(v17 + 32))(v24, v16, a2);
    v27 = RIOPxrUsdObjectCopyColorSpace();
    (*(v17 + 16))(v21, v24, a2);
    v32 = v27;
    v28 = v31;
    ManagedColor.init(color:space:)(v21, &v32, a2, v31, a4, a5);
    (*(v17 + 8))(v24, a2);
    v25 = 0;
    v26 = v28;
  }

  v29 = type metadata accessor for ManagedColor(0, a2, v26, a4);
  return (*(*(v29 - 8) + 56))(a5, v25, 1, v29);
}

uint64_t static ManagedColor.getValue(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v9 = a6.n128_f64[0];
  v26 = a5;
  MEMORY[0x28223BE20](a1, a6);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ManagedColor(255, v13, v14, v15);
  v17 = type metadata accessor for Optional();
  v25 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v24 - v19;
  static ManagedColor.getValueOpt(from:time:)(a1, a2, a3, a4, &v24 - v19, v9);
  v21 = *(v16 - 8);
  v22 = *(v21 + 48);
  if (v22(v20, 1, v16) != 1)
  {
    return (*(v21 + 32))(v26, v20, v16);
  }

  (*(a3 + 8))(&outlined read-only object #0 of static ManagedColor.getValue(from:time:), a2, a3);
  v27 = 0;
  ManagedColor.init(color:space:)(v12, &v27, a2, a3, a4, v26);
  result = (v22)(v20, 1, v16);
  if (result != 1)
  {
    return (*(v25 + 8))(v20, v17);
  }

  return result;
}

uint64_t static ManagedColor.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (*(a1 + *(type metadata accessor for ManagedColor(0, a3, a4, a5) + 44)))
  {
    RIOPxrUsdObjectSetColorSpace();
  }

  else
  {
    RIOPxrUsdObjectClearColorSpace();
  }

  return (*(a5 + 8))(a1, a2, a3, a5, a6) & 1;
}

uint64_t static Half.vtValue(from:)(uint64_t result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    if (v1 != 1)
    {
      return RIOPxrVtValueCreateWithHalf2();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static Half.getValue2Opt(from:time:)(uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    if (RIOPxrVtValueGetHalf2())
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = 2;
      *(v6 + 32) = 0;
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t RIOPxrVtValueRef.asHalf2.getter@<X0>(uint64_t *a1@<X8>)
{
  if (RIOPxrVtValueGetHalf2())
  {
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = 2;
    *(result + 32) = 0;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t static Half.getValue2(from:time:)@<X0>(uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  if (!RIOPxrVtValueGetHalf2())
  {

LABEL_5:
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = 2;
    *(result + 32) = 0;
    goto LABEL_6;
  }

  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = 2;
  *(v6 + 32) = 0;

  result = v6;
LABEL_6:
  *a2 = result;
  return result;
}

uint64_t static Half.setValue2(_:to:time:)(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(*result + 16);
  if (v3)
  {
    if (v3 != 1)
    {
      v4 = RIOPxrVtValueCreateWithHalf2();
      v5 = RIOPxrUsdAttributeSetValue();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Half.value2TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Half(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(*result + 16);
  if (v3)
  {
    if (v3 != 1)
    {
      v4 = RIOPxrVtValueCreateWithHalf2();
      v5 = RIOPxrUsdAttributeSetValue();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.value2TypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdVtValueSIMD2Element.vtValue(from:) in conformance Half(uint64_t result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    if (v1 != 1)
    {
      return RIOPxrVtValueCreateWithHalf2();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *RIOPxrVtValueRef.asHalf3.getter@<X0>(void *a1@<X8>)
{
  if (RIOPxrVtValueGetHalf3())
  {
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    result[2] = 4;
    result[5] = 0;
    result[4] = 0;
    *(result + 10) = 0;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t static Half.setValue3(_:to:time:)(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(*result + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 3)
  {
    v4 = RIOPxrVtValueCreateWithHalf3();
    v5 = RIOPxrUsdAttributeSetValue();

    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static Half.value3TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.value3TypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3();
  *a1 = result;
  return result;
}

void static Half.getValue3Opt(from:time:)(void (*a2)(void)@<X1>, void *a3@<X8>)
{
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v7 = v6;
    a2();
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t RIOPxrVtValueRef.asHalf4.getter@<X0>(uint64_t *a1@<X8>)
{
  if (RIOPxrVtValueGetHalf4())
  {
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = 4;
    *(result + 32) = 0uLL;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

void static Half.getValue3(from:time:)(void (*a2)(void **__return_ptr)@<X1>, void *a3@<X8>)
{
  v6 = RIOPxrUsdAttributeCopyValue();
  if (!v6 || (v7 = v6, a2(&v9), v7, (v8 = v9) == 0))
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v8[2] = 4;
    v8[4] = 0;
    v8[5] = 0;
  }

  *a3 = v8;
}

uint64_t static Half.setValue4(_:to:time:)(__n128 **a1, uint64_t a2, double a3)
{
  v6 = *a1;
  v3 = specialized static Half.vtValue(from:)(&v6);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Half.value4TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Half(uint64_t *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v9 = *a1;
  v6 = a6(&v9);
  v7 = RIOPxrUsdAttributeSetValue();

  return v7;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Half(void (*a2)(void)@<X3>, void *a3@<X8>)
{
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v7 = v6;
    a2();
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.value4TypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4();
  *a1 = result;
  return result;
}

void *static Float.getValue2Opt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetFloat2();

    return 0;
  }

  return result;
}

double static Float.getValue2(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetFloat2();
  }

  return 0.0;
}

uint64_t static Float.setValue2(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithFloat2();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Float.value2TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Float(double *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithFloat2();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Float(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Float2 = RIOPxrVtValueGetFloat2();

    v7 = Float2 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = v7;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2(from:time:) in conformance Float(void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetFloat2();
  }

  *a2 = 0;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.value2TypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2();
  *a1 = result;
  return result;
}

void *static Float.getValue3Opt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E70];

  return static Float.getValue3Opt(from:time:)(a1, v2, a2);
}

double static Float.getValue3(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E70];

  return static Float.getValue3(from:time:)(a1, v2, a2);
}

uint64_t static Float.setValue3(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithFloat3();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Float.value3TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Float(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithFloat3();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Float(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E70];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Float(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Float(__int128 *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E70];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Float(v4, x8_0);
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.value3TypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3();
  *a1 = result;
  return result;
}

void *static Float.getValue4Opt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E78];

  return static Float.getValue3Opt(from:time:)(a1, v2, a2);
}

void *static Float.getValue3Opt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, void *), double a3)
{
  v7[3] = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7[0] = 0;
    v7[1] = 0;
    v5 = result;
    v6 = a2(result, v7);

    if (v6)
    {
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double static Float.getValue4(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E78];

  return static Float.getValue3(from:time:)(a1, v2, a2);
}

double static Float.getValue3(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, __n128), double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    v9 = 0uLL;
    v6 = v4;
    v7 = a2(v4, &v9, 0);

    if (v7)
    {
      *&v5 = v9;
    }

    else
    {
      *&v5 = 0;
    }
  }

  return *&v5;
}

uint64_t static Float.setValue4(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithFloat4();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Float.value4TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.setValue4(_:to:time:) in conformance Float(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithFloat4();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4Opt(from:time:) in conformance Float(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E78];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Float(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Float(uint64_t (*a2)(uint64_t, uint64_t *)@<X3>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    v7 = v6;
    v8 = a2(v6, &v12);

    v9 = v12;
    v10 = v13;
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4(from:time:) in conformance Float(__int128 *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E78];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Float(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Float(uint64_t (*a2)(uint64_t, __int128 *, __n128)@<X3>, __int128 *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  v7 = 0uLL;
  if (v6)
  {
    v10 = 0uLL;
    v8 = v6;
    v9 = a2(v6, &v10, 0);

    if (v9)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0uLL;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.value4TypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4();
  *a1 = result;
  return result;
}

void *static Double.getValue2Opt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetDouble2();

    return 0;
  }

  return result;
}

double static Double.getValue2(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  result = 0.0;
  if (v2)
  {
    v4 = v2;
    RIOPxrVtValueGetDouble2();

    return 0.0;
  }

  return result;
}

uint64_t static Double.setValue2(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithDouble2();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Double.value2TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Double(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithDouble2();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Double(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Double2 = RIOPxrVtValueGetDouble2();

    v7 = Double2 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2(from:time:) in conformance Double(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    v6 = v4;
    RIOPxrVtValueGetDouble2();

    v5 = 0uLL;
  }

  *a2 = v5;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.value2TypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2();
  *a1 = result;
  return result;
}

uint64_t static Double.vtValue(from:)(__n128 a1, __n128 a2)
{
  return RIOPxrVtValueCreateWithDouble3();
}

{
  return RIOPxrVtValueCreateWithDouble4();
}

void static Double.getValue3Opt(from:time:)(uint64_t x8_0@<X8>)
{
  v2 = MEMORY[0x277D00E60];

  static Double.getValue3Opt(from:time:)(v2, x8_0);
}

double static Double.getValue3(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E60];

  return static Double.getValue3(from:time:)(a1, v2, a2);
}

uint64_t static Double.value3TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3();
  *a1 = result;
  return result;
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Double(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E60];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Double(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Double(_OWORD *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E60];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Double(v4, x8_0);
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.value3TypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3();
  *a1 = result;
  return result;
}

void static Double.getValue4Opt(from:time:)(uint64_t x8_0@<X8>)
{
  v2 = MEMORY[0x277D00E68];

  static Double.getValue3Opt(from:time:)(v2, x8_0);
}

void static Double.getValue3Opt(from:time:)(uint64_t (*a2)(uint64_t, __int128 *)@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = a2(v6, &v14);

    if (v8)
    {
      v10 = *(&v14 + 1);
      v9 = v14;
      v12 = *(&v15 + 1);
      v11 = v15;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    v13 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
  }

  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
}

double static Double.getValue4(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E68];

  return static Double.getValue3(from:time:)(a1, v2, a2);
}

double static Double.getValue3(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    memset(v9, 0, sizeof(v9));
    v6 = v4;
    v7 = a2(v4, v9);

    if (v7)
    {
      *&v5 = *&v9[0];
    }

    else
    {
      *&v5 = 0;
    }
  }

  return *&v5;
}

uint64_t static Double.setValue3(_:to:time:)(uint64_t a1, uint64_t (*a2)(_OWORD *), __n128 a3, __n128 a4, double a5)
{
  v8[0] = a3;
  v8[1] = a4;
  v5 = a2(v8);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

uint64_t static Double.value4TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Double(_OWORD *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a6(v10);
  v8 = RIOPxrUsdAttributeSetValue();

  return v8;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4Opt(from:time:) in conformance Double(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E68];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Double(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Double(uint64_t (*a2)(uint64_t, __int128 *)@<X3>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = a2(v6, &v14);

    if (v8)
    {
      v10 = *(&v14 + 1);
      v9 = v14;
      v12 = *(&v15 + 1);
      v11 = v15;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    v13 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
  }

  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4(from:time:) in conformance Double(_OWORD *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E68];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Double(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Double(uint64_t (*a2)(uint64_t, __int128 *)@<X3>, _OWORD *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v11 = 0u;
    v12 = 0u;
    v7 = v6;
    v8 = a2(v6, &v11);

    if (v8)
    {
      v10 = v11;
      v9 = v12;
    }

    else
    {
      v9 = 0uLL;
      v10 = 0uLL;
    }
  }

  else
  {
    v10 = 0uLL;
    v9 = 0uLL;
  }

  *a3 = v10;
  a3[1] = v9;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.value4TypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4();
  *a1 = result;
  return result;
}

uint64_t static Int.setValue2(_:to:time:)(uint64_t a1, int64x2_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt2();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.value2TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Int(const float *a1, uint64_t a2, double a3)
{
  vld2_f32(a1);
  v3 = RIOPxrVtValueCreateWithInt2();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Int@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, double a3@<D0>)
{
  result = specialized static Int.getValue2Opt(from:time:)(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  return result;
}

void *static Int32.getValue2Opt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    RIOPxrVtValueGetInt2();

    return 0;
  }

  return result;
}

double static Int32.getValue2(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2 && (v3 = v2, Int2 = RIOPxrVtValueGetInt2(), v3, (Int2 & 1) != 0))
  {
    return 0.0;
  }

  else
  {
    return 0.0;
  }
}

uint64_t static Int32.setValue2(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt2();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Int32(double *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt2();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Int32(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Int2 = RIOPxrVtValueGetInt2();

    v7 = Int2 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = v7;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2(from:time:) in conformance Int32(void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    RIOPxrVtValueGetInt2();
  }

  *a2 = 0;
}

void *static Int32.getValue3Opt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E88];

  return static Int32.getValue3Opt(from:time:)(a1, v2, a2);
}

double static Int32.getValue3(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E88];

  return static Int32.getValue3(from:time:)(a1, v2, a2);
}

uint64_t static Int32.setValue3(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt3();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Int32(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt3();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int32(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E88];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int32(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int32(__int128 *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E88];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int32(v4, x8_0);
}

double static Int.getValue3Opt(from:time:)@<D0>(uint64_t a1@<X8>)
{
  specialized static Int.getValue3Opt(from:time:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t static Int.setValue3(_:to:time:)(uint64_t a1, __n128 a2, float a3, double a4)
{
  v4 = RIOPxrVtValueCreateWithInt3();
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static Int.value3TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Int(int32x4_t *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt3();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

double protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int@<D0>(uint64_t a1@<X8>)
{
  specialized static Int.getValue3Opt(from:time:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int(_OWORD *a1@<X8>, uint64_t a2@<X0>, double a3@<D0>)
{
  *&v4 = specialized static Int.getValue3(from:time:)(a2, a3);
  *a1 = v4;
  a1[1] = v5;
}

void *static Int32.getValue4Opt(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E98];

  return static Int32.getValue3Opt(from:time:)(a1, v2, a2);
}

void *static Int32.getValue3Opt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, void *), double a3)
{
  v7[3] = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7[0] = 0;
    v7[1] = 0;
    v5 = result;
    v6 = a2(result, v7);

    if (v6)
    {
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double static Int32.getValue4(from:time:)(uint64_t a1, double a2)
{
  v2 = MEMORY[0x277D00E98];

  return static Int32.getValue3(from:time:)(a1, v2, a2);
}

double static Int32.getValue3(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, __n128), double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    v9 = 0uLL;
    v6 = v4;
    v7 = a2(v4, &v9, 0);

    if (v7)
    {
      *&v5 = v9;
    }

    else
    {
      *&v5 = 0;
    }
  }

  return *&v5;
}

uint64_t static Int32.setValue4(_:to:time:)(uint64_t a1, double a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt4();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.setValue4(_:to:time:) in conformance Int32(__n128 *a1, uint64_t a2, double a3)
{
  v3 = RIOPxrVtValueCreateWithInt4();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4Opt(from:time:) in conformance Int32(uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E98];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int32(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int32(uint64_t (*a2)(uint64_t, uint64_t *)@<X3>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    v7 = v6;
    v8 = a2(v6, &v12);

    v9 = v12;
    v10 = v13;
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4(from:time:) in conformance Int32(__int128 *x8_0@<X8>)
{
  v4 = MEMORY[0x277D00E98];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int32(v4, x8_0);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int32(uint64_t (*a2)(uint64_t, __int128 *, __n128)@<X3>, __int128 *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = RIOPxrUsdAttributeCopyValue();
  v7 = 0uLL;
  if (v6)
  {
    v10 = 0uLL;
    v8 = v6;
    v9 = a2(v6, &v10, 0);

    if (v9)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0uLL;
    }
  }

  *a3 = v7;
}

double static Int.getValue4Opt(from:time:)@<D0>(uint64_t a1@<X8>)
{
  specialized static Int.getValue4Opt(from:time:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t static Int.setValue4(_:to:time:)(uint64_t a1, int32x4_t a2, int32x4_t a3, double a4)
{
  v4 = RIOPxrVtValueCreateWithInt4();
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static Int.value4TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.setValue4(_:to:time:) in conformance Int(const float *a1, uint64_t a2, double a3)
{
  vld2q_f32(a1);
  v3 = RIOPxrVtValueCreateWithInt4();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

double protocol witness for static UsdAttributeValueSIMD4Element.getValue4Opt(from:time:) in conformance Int@<D0>(uint64_t a1@<X8>)
{
  specialized static Int.getValue4Opt(from:time:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4(from:time:) in conformance Int(_OWORD *a1@<X8>, uint64_t a2@<X0>, double a3@<D0>)
{
  *&v4 = specialized static Int.getValue4(from:time:)(a2, a3);
  *a1 = v4;
  a1[1] = v5;
}

uint64_t static Array<A>.getValue(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(a1);
  if (!result)
  {
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Array<A>.getValueOpt(from:time:)(a1, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Array<A>.getValue(from:time:)(a1, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t static Bool.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Bool.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Bool.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBoolArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Bool(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Bool.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Bool@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBoolArray();
  *a1 = result;
  return result;
}

uint64_t static Int8.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int8.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int8(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int8.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int16.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int16.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int16(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int16.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int32.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E20], MEMORY[0x277D00E18]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int32(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E20], MEMORY[0x277D00E18]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int64.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int64.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int64.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int64(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int64.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Int64@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64Array();
  *a1 = result;
  return result;
}

uint64_t static UInt.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static UInt.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static UInt.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static UInt.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static UInt8.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static UInt8.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static UInt8.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt8(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static UInt8.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance UInt8@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8Array();
  *a1 = result;
  return result;
}

uint64_t static UInt16.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static UInt16.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt16(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static UInt16.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static UInt32.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E58], MEMORY[0x277D00E50]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt32(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E58], MEMORY[0x277D00E50]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static UInt64.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static UInt64.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static UInt64.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt64(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static UInt64.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance UInt64@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64Array();
  *a1 = result;
  return result;
}

uint64_t static Half.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Half.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Half.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalfArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Half(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Half.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalfArray();
  *a1 = result;
  return result;
}

uint64_t static Float.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Float.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Float.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloatArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Float(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Float.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloatArray();
  *a1 = result;
  return result;
}

uint64_t static Double.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Double.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Double.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDoubleArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Double(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Double.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDoubleArray();
  *a1 = result;
  return result;
}

uint64_t static simd_quatf.setValueArray(_:to:time:)(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static simd_quatf.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_quatf.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatfArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_quatf(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static simd_quatf.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance simd_quatf@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatfArray();
  *a1 = result;
  return result;
}

uint64_t static simd_quatd.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static simd_quatd.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_quatd.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatdArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_quatd(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static simd_quatd.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance simd_quatd@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatdArray();
  *a1 = result;
  return result;
}

uint64_t static simd_float2x2.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static simd_float2x2.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_float2x2.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2dArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_float2x2(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static simd_float2x2.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_float3x3.setValueArray(_:to:time:)(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static simd_float3x3.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_float3x3.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3dArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_float3x3(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static simd_float3x3.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_float4x4.setValueArray(_:to:time:)(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static simd_float4x4.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_float4x4.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4dArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_float4x4(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static simd_float4x4.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_double2x2.setValueArray(_:to:time:)(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static simd_double2x2.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_double2x2(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static simd_double2x2.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_double3x3.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static simd_double3x3.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_double3x3(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static simd_double3x3.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static simd_double4x4.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static simd_double4x4.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_double4x4(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static simd_double4x4.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Frame4D.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Frame4D.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Frame4D.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4dArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Frame4D(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Frame4D.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Frame4D@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4dArray();
  *a1 = result;
  return result;
}

uint64_t static Normal3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = static Normal3<>.vtValue(from:)(a1, a3, a4);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

uint64_t static Normal3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v13 = RIOPxrUsdAttributeCopyValue();
    if (v13)
    {
      v8 = v13;
      v14 = RIOPxrVtValueCopyDouble3Array();
      if (v14)
      {
        v23 = v14;
        v15 = v14;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO7Normal3VySdGMd;
        v12 = &_s9RealityIO7Normal3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v7 = RIOPxrUsdAttributeCopyValue();
      if (!v7)
      {
        return 0;
      }

      v8 = v7;
      v9 = RIOPxrVtValueCopyHalf3Array();
      if (v9)
      {
        v23 = v9;
        v10 = v9;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO7Normal3VyAA4HalfVGMd;
        v12 = &_s9RealityIO7Normal3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
        type metadata accessor for Normal3(0, a2, *(a3 + 8), v19);
        v20 = _arrayConditionalCast<A, B>(_:)();

        return v20;
      }

      goto LABEL_14;
    }

    v16 = RIOPxrUsdAttributeCopyValue();
    if (v16)
    {
      v8 = v16;
      v17 = RIOPxrVtValueCopyFloat3Array();
      if (v17)
      {
        v23 = v17;
        v18 = v17;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO7Normal3VySfGMd;
        v12 = &_s9RealityIO7Normal3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

void *RIOPxrVtValueRef.asTexCoord3fArray.getter(uint64_t (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  result = a1(v3);
  if (result)
  {
    v8 = result;
    v6 = result;
    a3(&v7, &v8);

    return v7;
  }

  return result;
}

uint64_t static Color3<>.vtValue(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
  if (MetatypeMetadata == v9)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v9, v10);
    v38 = a2;
    v39 = a3;
    v40 = a4;
    type metadata accessor for Color3(255, a2, a3, *(a4 + 8));
    v16 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v18 = v17;
    WitnessTable = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static Color3<>.vtValue(from:), v37, v16, v18, MEMORY[0x277D84A98], WitnessTable, v21, MEMORY[0x277D84AC0], v20);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = RIOPxrVtValueCreateWithDouble3Array();
LABEL_10:
    v36 = v23;

    return v36;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR);
  if (MetatypeMetadata == v11)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v11, v12);
    v38 = a2;
    v39 = a3;
    v40 = a4;
    type metadata accessor for Color3(255, a2, a3, *(a4 + 8));
    v24 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v26 = v25;
    v27 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static Color3<>.vtValue(from:), v37, v24, v26, MEMORY[0x277D84A98], v27, v29, MEMORY[0x277D84AC0], v28);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = RIOPxrVtValueCreateWithFloat3Array();
    goto LABEL_10;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR);
  if (MetatypeMetadata == v13)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v13, v14);
    v38 = a2;
    v39 = a3;
    v40 = a4;
    type metadata accessor for Color3(255, a2, a3, *(a4 + 8));
    v30 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v32 = v31;
    v33 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static Color3<>.vtValue(from:), v37, v30, v32, MEMORY[0x277D84A98], v33, v35, MEMORY[0x277D84AC0], v34);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = RIOPxrVtValueCreateWithHalf3Array();
    goto LABEL_10;
  }

  return RIOPxrVtValueCreateEmptyValue();
}

uint64_t closure #1 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a4);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v6, v5);
  MEMORY[0x28223BE20](v8, v7);
  v12 = type metadata accessor for Color3(0, v10, v11, *(v9 + 8));
  Color3.red.getter(v12, v13);
  swift_dynamicCast();
  Color3.green.getter(v12, v15);
  swift_dynamicCast();
  Color3.blue.getter(v12, v15);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithDouble3();
  *a3 = result;
  return result;
}

uint64_t closure #2 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a4);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v6, v5);
  MEMORY[0x28223BE20](v8, v7);
  v12 = type metadata accessor for Color3(0, v10, v11, *(v9 + 8));
  Color3.red.getter(v12, v13);
  swift_dynamicCast();
  Color3.green.getter(v12, v15);
  swift_dynamicCast();
  Color3.blue.getter(v12, v15);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithFloat3();
  *a3 = result;
  return result;
}

uint64_t closure #3 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  MEMORY[0x28223BE20](a1, a4);
  v8 = type metadata accessor for Color3(0, v6, v7, *(v5 + 8));
  Color3.red.getter(v8, v9);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  Color3.green.getter(v8, v10);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  Color3.blue.getter(v8, v11);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  result = RIOPxrVtValueCreateWithHalf3();
  *a3 = result;
  return result;
}

uint64_t static Color3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = static Color3<>.vtValue(from:)(a1, a3, a4, a5);
  v7 = RIOPxrUsdAttributeSetValue();

  return v7;
}

uint64_t static Color3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v15 = RIOPxrUsdAttributeCopyValue();
    if (v15)
    {
      v10 = v15;
      v16 = RIOPxrVtValueCopyDouble3Array();
      if (v16)
      {
        v24 = v16;
        v17 = v16;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v23);

        v13 = &_s9RealityIO6Color3VySdGMd;
        v14 = &_s9RealityIO6Color3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v9 = RIOPxrUsdAttributeCopyValue();
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      v11 = RIOPxrVtValueCopyHalf3Array();
      if (v11)
      {
        v24 = v11;
        v12 = v11;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v23);

        v13 = &_s9RealityIO6Color3VyAA4HalfVGMd;
        v14 = &_s9RealityIO6Color3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
        type metadata accessor for Color3(0, a2, a3, *(a4 + 8));
        v21 = _arrayConditionalCast<A, B>(_:)();

        return v21;
      }

      goto LABEL_14;
    }

    v18 = RIOPxrUsdAttributeCopyValue();
    if (v18)
    {
      v10 = v18;
      v19 = RIOPxrVtValueCopyFloat3Array();
      if (v19)
      {
        v24 = v19;
        v20 = v19;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v23);

        v13 = &_s9RealityIO6Color3VySfGMd;
        v14 = &_s9RealityIO6Color3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static Color3<>.valueArrayTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor3dArray();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor3fArray();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 32))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateColor3hArray();
  }

  *a3 = result;
  return result;
}

uint64_t static Color4<>.vtValue(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
  if (MetatypeMetadata == v9)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v9, v10);
    v38 = a2;
    v39 = a3;
    v40 = a4;
    type metadata accessor for Color4(255, a2, a3, *(a4 + 8));
    v16 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v18 = v17;
    WitnessTable = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static Color4<>.vtValue(from:), v37, v16, v18, MEMORY[0x277D84A98], WitnessTable, v21, MEMORY[0x277D84AC0], v20);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = RIOPxrVtValueCreateWithDouble4Array();
LABEL_10:
    v36 = v23;

    return v36;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR);
  if (MetatypeMetadata == v11)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v11, v12);
    v38 = a2;
    v39 = a3;
    v40 = a4;
    type metadata accessor for Color4(255, a2, a3, *(a4 + 8));
    v24 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v26 = v25;
    v27 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static Color4<>.vtValue(from:), v37, v24, v26, MEMORY[0x277D84A98], v27, v29, MEMORY[0x277D84AC0], v28);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = RIOPxrVtValueCreateWithFloat4Array();
    goto LABEL_10;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR);
  if (MetatypeMetadata == v13)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v13, v14);
    v38 = a2;
    v39 = a3;
    v40 = a4;
    type metadata accessor for Color4(255, a2, a3, *(a4 + 8));
    v30 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v32 = v31;
    v33 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static Color4<>.vtValue(from:), v37, v30, v32, MEMORY[0x277D84A98], v33, v35, MEMORY[0x277D84AC0], v34);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = RIOPxrVtValueCreateWithHalf4Array();
    goto LABEL_10;
  }

  return RIOPxrVtValueCreateEmptyValue();
}

uint64_t closure #1 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a4);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v6, v5);
  v9.n128_f32[0] = MEMORY[0x28223BE20](v8, v7);
  MEMORY[0x28223BE20](v10, v9);
  v14 = type metadata accessor for Color4(0, v12, v13, *(v11 + 8));
  Color4.red.getter(v14);
  swift_dynamicCast();
  Color4.green.getter(v14);
  swift_dynamicCast();
  Color4.blue.getter(v14);
  swift_dynamicCast();
  Color4.alpha.getter(v14, v16);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithDouble4();
  *a3 = result;
  return result;
}

uint64_t closure #2 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a4);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v6, v5);
  v9.n128_f32[0] = MEMORY[0x28223BE20](v8, v7);
  MEMORY[0x28223BE20](v10, v9);
  v14 = type metadata accessor for Color4(0, v12, v13, *(v11 + 8));
  Color4.red.getter(v14);
  swift_dynamicCast();
  Color4.green.getter(v14);
  swift_dynamicCast();
  Color4.blue.getter(v14);
  swift_dynamicCast();
  Color4.alpha.getter(v14, v16);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithFloat4();
  *a3 = result;
  return result;
}

uint64_t closure #3 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  MEMORY[0x28223BE20](a1, a4);
  v8 = type metadata accessor for Color4(0, v6, v7, *(v5 + 8));
  Color4.red.getter(v8);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  Color4.green.getter(v8);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  Color4.blue.getter(v8);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  Color4.alpha.getter(v8, v9);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  result = RIOPxrVtValueCreateWithHalf4();
  *a3 = result;
  return result;
}

uint64_t static Color4<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = static Color4<>.vtValue(from:)(a1, a3, a4, a5);
  v7 = RIOPxrUsdAttributeSetValue();

  return v7;
}

uint64_t static Color4<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v15 = RIOPxrUsdAttributeCopyValue();
    if (v15)
    {
      v10 = v15;
      v16 = RIOPxrVtValueCopyDouble4Array();
      if (v16)
      {
        v24 = v16;
        v17 = v16;
        closure #1 in RIOPxrVtValueRef.asColor4dArray.getter(&v23);

        v13 = &_s9RealityIO6Color4VySdGMd;
        v14 = &_s9RealityIO6Color4VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v9 = RIOPxrUsdAttributeCopyValue();
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      v11 = RIOPxrVtValueCopyHalf4Array();
      if (v11)
      {
        v24 = v11;
        v12 = v11;
        closure #1 in RIOPxrVtValueRef.asColor4hArray.getter(&v23);

        v13 = &_s9RealityIO6Color4VyAA4HalfVGMd;
        v14 = &_s9RealityIO6Color4VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
        type metadata accessor for Color4(0, a2, a3, *(a4 + 8));
        v21 = _arrayConditionalCast<A, B>(_:)();

        return v21;
      }

      goto LABEL_14;
    }

    v18 = RIOPxrUsdAttributeCopyValue();
    if (v18)
    {
      v10 = v18;
      v19 = RIOPxrVtValueCopyFloat4Array();
      if (v19)
      {
        v24 = v19;
        v20 = v19;
        closure #1 in RIOPxrVtValueRef.asColor4fArray.getter(&v23);

        v13 = &_s9RealityIO6Color4VySfGMd;
        v14 = &_s9RealityIO6Color4VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static Color4<>.valueArrayTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor4dArray();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor4fArray();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 32))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateColor4hArray();
  }

  *a3 = result;
  return result;
}

uint64_t static Vector3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = static Vector3<>.vtValue(from:)(a1, a3, a4);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

uint64_t static Vector3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v13 = RIOPxrUsdAttributeCopyValue();
    if (v13)
    {
      v8 = v13;
      v14 = RIOPxrVtValueCopyDouble3Array();
      if (v14)
      {
        v23 = v14;
        v15 = v14;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO7Vector3VySdGMd;
        v12 = &_s9RealityIO7Vector3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v7 = RIOPxrUsdAttributeCopyValue();
      if (!v7)
      {
        return 0;
      }

      v8 = v7;
      v9 = RIOPxrVtValueCopyHalf3Array();
      if (v9)
      {
        v23 = v9;
        v10 = v9;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO7Vector3VyAA4HalfVGMd;
        v12 = &_s9RealityIO7Vector3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
        type metadata accessor for Vector3(0, a2, *(a3 + 8), v19);
        v20 = _arrayConditionalCast<A, B>(_:)();

        return v20;
      }

      goto LABEL_14;
    }

    v16 = RIOPxrUsdAttributeCopyValue();
    if (v16)
    {
      v8 = v16;
      v17 = RIOPxrVtValueCopyFloat3Array();
      if (v17)
      {
        v23 = v17;
        v18 = v17;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO7Vector3VySfGMd;
        v12 = &_s9RealityIO7Vector3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static Point3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = static Point3<>.vtValue(from:)(a1, a3, a4);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

uint64_t static Point3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v13 = RIOPxrUsdAttributeCopyValue();
    if (v13)
    {
      v8 = v13;
      v14 = RIOPxrVtValueCopyDouble3Array();
      if (v14)
      {
        v23 = v14;
        v15 = v14;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO6Point3VySdGMd;
        v12 = &_s9RealityIO6Point3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v7 = RIOPxrUsdAttributeCopyValue();
      if (!v7)
      {
        return 0;
      }

      v8 = v7;
      v9 = RIOPxrVtValueCopyHalf3Array();
      if (v9)
      {
        v23 = v9;
        v10 = v9;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO6Point3VyAA4HalfVGMd;
        v12 = &_s9RealityIO6Point3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
        type metadata accessor for Point3(0, a2, *(a3 + 8), v19);
        v20 = _arrayConditionalCast<A, B>(_:)();

        return v20;
      }

      goto LABEL_14;
    }

    v16 = RIOPxrUsdAttributeCopyValue();
    if (v16)
    {
      v8 = v16;
      v17 = RIOPxrVtValueCopyFloat3Array();
      if (v17)
      {
        v23 = v17;
        v18 = v17;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO6Point3VySfGMd;
        v12 = &_s9RealityIO6Point3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static TexCoord2<>.vtValue(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
  if (MetatypeMetadata == v7)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v7, v8);
    v39 = a2;
    v40 = a3;
    type metadata accessor for TexCoord2(255, a2, *(a3 + 8), v14);
    v15 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v17 = v16;
    WitnessTable = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static TexCoord2<>.vtValue(from:), v38, v15, v17, MEMORY[0x277D84A98], WitnessTable, v20, MEMORY[0x277D84AC0], v19);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = RIOPxrVtValueCreateWithDouble2Array();
LABEL_10:
    v37 = v22;

    return v37;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR);
  if (MetatypeMetadata == v9)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v9, v10);
    v39 = a2;
    v40 = a3;
    type metadata accessor for TexCoord2(255, a2, *(a3 + 8), v23);
    v24 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v26 = v25;
    v27 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static TexCoord2<>.vtValue(from:), v38, v24, v26, MEMORY[0x277D84A98], v27, v29, MEMORY[0x277D84AC0], v28);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = RIOPxrVtValueCreateWithFloat2Array();
    goto LABEL_10;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR);
  if (MetatypeMetadata == v11)
  {
    v41 = a1;
    MEMORY[0x28223BE20](v11, v12);
    v39 = a2;
    v40 = a3;
    type metadata accessor for TexCoord2(255, a2, *(a3 + 8), v30);
    v31 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v33 = v32;
    v34 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static TexCoord2<>.vtValue(from:), v38, v31, v33, MEMORY[0x277D84A98], v34, v36, MEMORY[0x277D84AC0], v35);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = RIOPxrVtValueCreateWithHalf2Array();
    goto LABEL_10;
  }

  return RIOPxrVtValueCreateEmptyValue();
}

uint64_t closure #1 in static TexCoord2<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a4);
  MEMORY[0x28223BE20](v6, v5);
  v10 = type metadata accessor for TexCoord2(0, v8, *(v7 + 8), v9);
  TexCoord2.x.getter(v10);
  swift_dynamicCast();
  TexCoord2.y.getter(v10);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithDouble2();
  *a3 = result;
  return result;
}

uint64_t closure #2 in static TexCoord2<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a4);
  MEMORY[0x28223BE20](v6, v5);
  v10 = type metadata accessor for TexCoord2(0, v8, *(v7 + 8), v9);
  TexCoord2.x.getter(v10);
  swift_dynamicCast();
  TexCoord2.y.getter(v10);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithFloat2();
  *a3 = result;
  return result;
}

uint64_t closure #3 in static TexCoord2<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  MEMORY[0x28223BE20](a1, a4);
  v8 = type metadata accessor for TexCoord2(0, v6, *(v5 + 8), v7);
  TexCoord2.x.getter(v8);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  TexCoord2.y.getter(v8);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  result = RIOPxrVtValueCreateWithHalf2();
  *a3 = result;
  return result;
}

uint64_t static TexCoord2<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = static TexCoord2<>.vtValue(from:)(a1, a3, a4);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

uint64_t static TexCoord2<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v13 = RIOPxrUsdAttributeCopyValue();
    if (v13)
    {
      v8 = v13;
      v14 = RIOPxrVtValueCopyDouble2Array();
      if (v14)
      {
        v23 = v14;
        v15 = v14;
        closure #1 in RIOPxrVtValueRef.asTexCoord2dArray.getter(&v22);

        v11 = &_s9RealityIO9TexCoord2VySdGMd;
        v12 = &_s9RealityIO9TexCoord2VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v7 = RIOPxrUsdAttributeCopyValue();
      if (!v7)
      {
        return 0;
      }

      v8 = v7;
      v9 = RIOPxrVtValueCopyHalf2Array();
      if (v9)
      {
        v23 = v9;
        v10 = v9;
        closure #1 in RIOPxrVtValueRef.asTexCoord2hArray.getter(&v22);

        v11 = &_s9RealityIO9TexCoord2VyAA4HalfVGMd;
        v12 = &_s9RealityIO9TexCoord2VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
        type metadata accessor for TexCoord2(0, a2, *(a3 + 8), v19);
        v20 = _arrayConditionalCast<A, B>(_:)();

        return v20;
      }

      goto LABEL_14;
    }

    v16 = RIOPxrUsdAttributeCopyValue();
    if (v16)
    {
      v8 = v16;
      v17 = RIOPxrVtValueCopyFloat2Array();
      if (v17)
      {
        v23 = v17;
        v18 = v17;
        closure #1 in RIOPxrVtValueRef.asTexCoord2fArray.getter(&v22);

        v11 = &_s9RealityIO9TexCoord2VySfGMd;
        v12 = &_s9RealityIO9TexCoord2VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static TexCoord2<>.valueArrayTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateTexCoord2dArray();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateTexCoord2fArray();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 32))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateTexCoord2hArray();
  }

  *a3 = result;
  return result;
}

uint64_t static Normal3<>.vtValue(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, float), void (*a5)(char *, char *), void (*a6)(char *, char *), void (*a7)(char *, char *))
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
  if (MetatypeMetadata == v15)
  {
    v49 = a1;
    v22 = MEMORY[0x28223BE20](v15, v16);
    v47 = a2;
    v48 = a3;
    a4(255, a2, *(a3 + 8), v22);
    v23 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v25 = v24;
    WitnessTable = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a5, v46, v23, v25, MEMORY[0x277D84A98], WitnessTable, v28, MEMORY[0x277D84AC0], v27);
    v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = RIOPxrVtValueCreateWithDouble3Array();
LABEL_10:
    v45 = v30;

    return v45;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR);
  if (MetatypeMetadata == v17)
  {
    v49 = a1;
    v31 = MEMORY[0x28223BE20](v17, v18);
    v47 = a2;
    v48 = a3;
    a4(255, a2, *(a3 + 8), v31);
    v32 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v34 = v33;
    v35 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a6, v46, v32, v34, MEMORY[0x277D84A98], v35, v37, MEMORY[0x277D84AC0], v36);
    v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = RIOPxrVtValueCreateWithFloat3Array();
    goto LABEL_10;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR);
  if (MetatypeMetadata == v19)
  {
    v49 = a1;
    v38 = MEMORY[0x28223BE20](v19, v20);
    v47 = a2;
    v48 = a3;
    a4(255, a2, *(a3 + 8), v38);
    v39 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v41 = v40;
    v42 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a7, v46, v39, v41, MEMORY[0x277D84A98], v42, v44, MEMORY[0x277D84AC0], v43);
    v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = RIOPxrVtValueCreateWithHalf3Array();
    goto LABEL_10;
  }

  return RIOPxrVtValueCreateEmptyValue();
}

uint64_t closure #1 in static Normal3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, void (*a3)(void)@<X5>, void (*a4)(uint64_t)@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t *a6@<X8>, __n128 a7@<Q0>)
{
  v10.n128_f32[0] = MEMORY[0x28223BE20](a1, a7);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v11, v10);
  v14 = MEMORY[0x28223BE20](v13, v12);
  v16 = v15(0, v14);
  a3();
  swift_dynamicCast();
  a4(v16);
  swift_dynamicCast();
  a5(v16);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithDouble3();
  *a6 = result;
  return result;
}

uint64_t closure #2 in static Normal3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, void (*a3)(void)@<X5>, void (*a4)(uint64_t)@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t *a6@<X8>, __n128 a7@<Q0>)
{
  v10.n128_f32[0] = MEMORY[0x28223BE20](a1, a7);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v11, v10);
  v14 = MEMORY[0x28223BE20](v13, v12);
  v16 = v15(0, v14);
  a3();
  swift_dynamicCast();
  a4(v16);
  swift_dynamicCast();
  a5(v16);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithFloat3();
  *a6 = result;
  return result;
}

uint64_t closure #3 in static Normal3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, void (*a3)(void)@<X5>, void (*a4)(uint64_t)@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t *a6@<X8>, __n128 a7@<Q0>)
{
  v11 = MEMORY[0x28223BE20](a1, a7);
  v13 = v12(0, v11);
  a3();
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  a4(v13);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  a5(v13);
  swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations();
  result = RIOPxrVtValueCreateWithHalf3();
  *a6 = result;
  return result;
}

uint64_t static TexCoord3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = static TexCoord3<>.vtValue(from:)(a1, a3, a4);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

uint64_t static TexCoord3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v13 = RIOPxrUsdAttributeCopyValue();
    if (v13)
    {
      v8 = v13;
      v14 = RIOPxrVtValueCopyDouble3Array();
      if (v14)
      {
        v23 = v14;
        v15 = v14;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO9TexCoord3VySdGMd;
        v12 = &_s9RealityIO9TexCoord3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v7 = RIOPxrUsdAttributeCopyValue();
      if (!v7)
      {
        return 0;
      }

      v8 = v7;
      v9 = RIOPxrVtValueCopyHalf3Array();
      if (v9)
      {
        v23 = v9;
        v10 = v9;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO9TexCoord3VyAA4HalfVGMd;
        v12 = &_s9RealityIO9TexCoord3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
        type metadata accessor for TexCoord3(0, a2, *(a3 + 8), v19);
        v20 = _arrayConditionalCast<A, B>(_:)();

        return v20;
      }

      goto LABEL_14;
    }

    v16 = RIOPxrUsdAttributeCopyValue();
    if (v16)
    {
      v8 = v16;
      v17 = RIOPxrVtValueCopyFloat3Array();
      if (v17)
      {
        v23 = v17;
        v18 = v17;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v22);

        v11 = &_s9RealityIO9TexCoord3VySfGMd;
        v12 = &_s9RealityIO9TexCoord3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

void *RIOPxrVtValueRef.asNormal3hArray.getter(unint64_t a1)
{
  result = RIOPxrVtValueCopyHalf3Array();
  if (result)
  {
    v4[1] = result;
    v3 = result;
    closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(a1, v4);

    return v4[0];
  }

  return result;
}

uint64_t static Normal3<>.valueArrayTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = a3();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = a4();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 32))(a1, a2);
    }

    result = a5();
  }

  *a6 = result;
  return result;
}

uint64_t static String.vtValue(from:)()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = RIOPxrVtValueCreateWithStringArray();

  return v1;
}

uint64_t static String.setValueArray(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = RIOPxrVtValueCreateWithStringArray();

  v5 = RIOPxrUsdAttributeSetValue();
  return v5;
}

void *static String.getValueArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueRef.asStringArray.getter();

    return v4;
  }

  return result;
}

uint64_t static String.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateStringArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance String(double a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = RIOPxrVtValueCreateWithStringArray();

  v5 = RIOPxrUsdAttributeSetValue();
  return v5;
}

void *protocol witness for static UsdAttributeValueArrayElement.getValueArrayOpt(from:time:) in conformance String(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueRef.asStringArray.getter();

    return v4;
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance String@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateStringArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdVtValueArrayElement.vtValue(from:) in conformance String()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = RIOPxrVtValueCreateWithStringArray();

  return v1;
}

uint64_t static ToolsFoundations.Token.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static ToolsFoundations.Token.vtValue(from:)(a1, type metadata accessor for RIOPxrTfTokenRef, MEMORY[0x277D00E48]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *specialized static UInt64.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t (*a2)(void), double a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t *))
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v9 = result;
    v10 = a2();
    if (v10)
    {
      v13 = v10;
      v11 = v10;
      a6(&v12, &v13);

      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static ToolsFoundations.Token.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTokenArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance ToolsFoundations.Token(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static ToolsFoundations.Token.vtValue(from:)(a1, type metadata accessor for RIOPxrTfTokenRef, MEMORY[0x277D00E48]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *protocol witness for static UsdAttributeValueArrayElement.getValueArrayOpt(from:time:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(_BOOL8, unint64_t, uint64_t))
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v11 = result;
    v12 = a5();
    if (v12)
    {
      v14[1] = v12;
      v13 = v12;
      closure #1 in RIOPxrVtValueRef.asTokenArray.getter(a6, a7, v14);

      return v14[0];
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance ToolsFoundations.Token@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTokenArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.AssetPath.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static ToolsFoundations.Token.vtValue(from:)(a1, type metadata accessor for RIOPxrSdfAssetPathRef, MEMORY[0x277D00DE8]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static SceneDescriptionFoundations.AssetPath.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPathArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static ToolsFoundations.Token.vtValue(from:)(a1, type metadata accessor for RIOPxrSdfAssetPathRef, MEMORY[0x277D00DE8]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance SceneDescriptionFoundations.AssetPath@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPathArray();
  *a1 = result;
  return result;
}

uint64_t static Half.setValue2Array(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Half.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *static Half.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t *__return_ptr, uint64_t *), double a4)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7 = result;
    v8 = a2();
    if (v8)
    {
      v11 = v8;
      v9 = v8;
      a3(&v10, &v11);

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static Half.value2ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Half(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Half.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *protocol witness for static UsdAttributeValueArrayElement.getValueArrayOpt(from:time:) in conformance Half(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t *__return_ptr, uint64_t *))
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v9 = result;
    v10 = a5();
    if (v10)
    {
      v13 = v10;
      v11 = v10;
      a6(&v12, &v13);

      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.value2ArrayTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2Array();
  *a1 = result;
  return result;
}

uint64_t static Half.setValue3Array(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Half.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Half.value3ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Half(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Half.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.value3ArrayTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3Array();
  *a1 = result;
  return result;
}

uint64_t static Half.setValue4Array(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Half.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void *RIOPxrVtValueRef.asBoolArray.getter(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  result = a1(v2);
  if (result)
  {
    v7 = result;
    v5 = result;
    a2(&v6, &v7);

    return v6;
  }

  return result;
}

uint64_t static Half.value4ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Half(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Half.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.value4ArrayTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4Array();
  *a1 = result;
  return result;
}

uint64_t static Float.setValue2Array(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Float.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Float.value2ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Float(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Float.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.value2ArrayTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2Array();
  *a1 = result;
  return result;
}

uint64_t static Float.setValue3Array(_:to:time:)(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static Float.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Float.value3ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Float(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static Float.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.value3ArrayTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3Array();
  *a1 = result;
  return result;
}

uint64_t static Float.setValue4Array(_:to:time:)(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static Float.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Float.value4ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Float(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static Float.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.value4ArrayTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4Array();
  *a1 = result;
  return result;
}

uint64_t static Double.setValue2Array(_:to:time:)(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static Double.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Double.value2ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Double(double a1, __n128 *a2, uint64_t a3)
{
  v3 = specialized static Double.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.value2ArrayTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2Array();
  *a1 = result;
  return result;
}

uint64_t static Double.vtValue(from:)(uint64_t a1)
{
  return specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00DF8], MEMORY[0x277D00DF0]);
}

{
  return specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00E08], MEMORY[0x277D00E00]);
}

uint64_t static Double.setValue3Array(_:to:time:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00DF8], MEMORY[0x277D00DF0]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Double.value3ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Double(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00DF8], MEMORY[0x277D00DF0]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.value3ArrayTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3Array();
  *a1 = result;
  return result;
}

uint64_t static Double.setValue4Array(_:to:time:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00E08], MEMORY[0x277D00E00]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Double.value4ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Double(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00E08], MEMORY[0x277D00E00]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.value4ArrayTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4Array();
  *a1 = result;
  return result;
}

uint64_t static Int32.setValue2Array(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int32.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Int32(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int32.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int32.vtValue(from:)(__n128 *a1)
{
  return specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E28], MEMORY[0x277D00E10]);
}

{
  return specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E38], MEMORY[0x277D00E30]);
}

uint64_t static Int32.setValue3Array(_:to:time:)(__n128 *a1, uint64_t a2, double a3)
{
  v3 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E28], MEMORY[0x277D00E10]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Int32(__n128 *a1, uint64_t a2, double a3)
{
  v3 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E28], MEMORY[0x277D00E10]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int32.setValue4Array(_:to:time:)(__n128 *a1, uint64_t a2, double a3)
{
  v3 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E38], MEMORY[0x277D00E30]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Int32(__n128 *a1, uint64_t a2, double a3)
{
  v3 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E38], MEMORY[0x277D00E30]);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.setValue2Array(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.value2ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Int(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.setValue3Array(_:to:time:)(double a1, int32x4_t *a2, uint64_t a3)
{
  v3 = specialized static Int.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.value3ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Int(double a1, int32x4_t *a2, uint64_t a3)
{
  v3 = specialized static Int.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.setValue4Array(_:to:time:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t static Int.value4ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Int(double a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized static Int.vtValue(from:)(a2);
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t Dictionary<>.vtValue.getter(uint64_t a1)
{
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaG_So0i2TfhL0a_ALts5NeverOTg503_s9d4IO16fg2O5h5VSo16ijk48RefaSo0f2TfeI0aAGIgngoo_AE3key_AG5valuetAI_AGts5n46OIegnrzr_TR05_sSD9a6IOAA16cd2O5e8VRszSo16fgH46s16Rs_rlE02vtH0AGvgtuV25_AGtAE_AGtXEfU_Tf3nnnpf_nTf1cn_n(a1);
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMd, &_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v7 = v2;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, 1, &v7);

  type metadata accessor for RIOPxrTfTokenRef(0);
  type metadata accessor for RIOPxrVtValueRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithDictionary();

  return v5;
}

void *RIOPxrVtValueRef.asTexCoord2h.getter@<X0>(void *a1@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  result = RIOPxrVtValueGetHalf2();
  if (result)
  {
    v3 = v7;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = 2;
    *(v4 + 32) = v3;
    result = _s9RealityIO9TexCoord2VyACyxGs5SIMD2VyxGcfCAA4HalfV_Tt1B5(v4, &v6);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

int8x16_t RIOPxrVtValueRef.asTexCoord2f.getter@<Q0>(int8x16_t *a1@<X8>)
{
  Float2 = RIOPxrVtValueGetFloat2();
  v3.i64[0] = 0;
  if (Float2)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  result = vandq_s8(v3, vdupq_n_s64(v4));
  *a1 = result;
  a1[1].i8[0] = Float2 ^ 1;
  return result;
}

uint64_t RIOPxrVtValueRef.asColor3h.getter@<X0>(uint64_t (*a1)(uint64_t, __int128 *)@<X0>, uint64_t *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0uLL;
  result = a1(v2, &v9);
  if (result)
  {
    v7 = v9;
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5[2] = 4;
    v5[5] = 0;
    v5[4] = v7;
    *(v5 + 10) = DWORD2(v7);
    result = _s9RealityIO9TexCoord3VyACyxGs5SIMD3VyxGcfCAA4HalfV_Tt1B5Tm(v5, &v8);
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t RIOPxrVtValueRef.asNormal3h.getter@<X0>(uint64_t *a1@<X8>)
{
  v1 = MEMORY[0x277D00E80];

  return RIOPxrVtValueRef.asColor3h.getter(v1, a1);
}

uint64_t RIOPxrVtValueRef.asTexCoord3h.getter@<X0>(uint64_t *a1@<X8>)
{
  v1 = MEMORY[0x277D00E70];

  return RIOPxrVtValueRef.asColor3h.getter(v1, a1);
}

uint64_t RIOPxrVtValueRef.asColor4h.getter@<X0>(uint64_t *a1@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0uLL;
  result = RIOPxrVtValueGetFloat4();
  if (result)
  {
    v5 = v7;
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v3 + 16) = 4;
    *(v3 + 32) = v5;
    result = _s9RealityIO6Color4VyACyxGs5SIMD4VyxGcfCAA4HalfV_Tt1B5(v3, &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

double RIOPxrVtValueRef.asNormal3f.getter@<D0>(int8x16_t *a1@<X8>)
{

  *&result = RIOPxrVtValueRef.asColor3f.getter(a1).u64[0];
  return result;
}

int8x16_t RIOPxrVtValueRef.asColor3f.getter@<Q0>(int8x16_t *a1@<X8>)
{
  Float3 = RIOPxrVtValueGetFloat3();
  v3 = 0uLL;
  v3.i32[3] = 0;
  if (Float3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  result = vandq_s8(v3, vdupq_n_s64(v4));
  *a1 = result;
  a1[1].i8[0] = Float3 ^ 1;
  return result;
}

uint64_t RIOPxrVtValueRef.asColor4f.getter@<X0>(uint64_t a1@<X8>)
{
  result = RIOPxrVtValueGetFloat4();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = result ^ 1;
  return result;
}

int8x16_t RIOPxrVtValueRef.asTexCoord2d.getter@<Q0>(int8x16_t *a1@<X8>)
{
  Double2 = RIOPxrVtValueGetDouble2();
  if (Double2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  result = vandq_s8(0, vdupq_n_s64(v3));
  *a1 = result;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0;
  a1[2].i8[0] = Double2 ^ 1;
  return result;
}

double RIOPxrVtValueRef.asNormal3d.getter@<D0>(int8x16_t *a1@<X8>)
{

  *&result = RIOPxrVtValueRef.asColor3d.getter(a1).u64[0];
  return result;
}

int8x16_t RIOPxrVtValueRef.asColor3d.getter@<Q0>(int8x16_t *a1@<X8>)
{
  Double3 = RIOPxrVtValueGetDouble3();
  if (Double3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  result = vandq_s8(0, vdupq_n_s64(v3));
  *a1 = result;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0;
  a1[2].i8[0] = Double3 ^ 1;
  return result;
}

uint64_t RIOPxrVtValueRef.asColor4d.getter@<X0>(uint64_t a1@<X8>)
{
  result = RIOPxrVtValueGetDouble4();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result ^ 1;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asBoolArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Bool = RIOPxrVtValueGetBool();

      if (Bool)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v7[v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asIntArray.getter@<X0>(uint64_t *a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Int32 = RIOPxrVtValueGetInt32();

      if (Int32)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[8 * v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asUIntArray.getter@<X0>(uint64_t *a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      UInt32 = RIOPxrVtValueGetUInt32();

      if (UInt32)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[8 * v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asUInt8Array.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      UInt8 = RIOPxrVtValueGetUInt8();

      if (UInt8)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v7[v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt32Array.getter@<X0>(uint64_t (*a2)(id, void *)@<X2>, uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v22[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22[0] = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_5:
  v20 = a3;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v21 = v11;
    v12 = v10;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26670F670](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      LODWORD(v22[0]) = 0;
      a3 = a2(v13, v22);

      if (a3)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        v11 = v21;
        goto LABEL_25;
      }
    }

    a3 = LODWORD(v22[0]);
    v15 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v20(0, *(v21 + 16) + 1, 1, v21);
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v18 = v15;
    if (v17 >= v16 >> 1)
    {
      v18 = v20(v16 > 1, v17 + 1, 1, v15);
    }

    *(v18 + 16) = v17 + 1;
    v11 = v18;
    *(v18 + 4 * v17 + 32) = a3;
  }

  while (v10 != v9);
LABEL_25:

  *a4 = v11;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt64Array.getter@<X0>(uint64_t (*a2)(id, void *)@<X2>, uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v22[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22[0] = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_5:
  v20 = a3;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v21 = v11;
    v12 = v10;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26670F670](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v22[0] = 0;
      a3 = a2(v13, v22);

      if (a3)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        v11 = v21;
        goto LABEL_25;
      }
    }

    v15 = v21;
    a3 = v22[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v20(0, *(v21 + 16) + 1, 1, v21);
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v18 = v15;
    if (v17 >= v16 >> 1)
    {
      v18 = v20(v16 > 1, v17 + 1, 1, v15);
    }

    *(v18 + 16) = v17 + 1;
    v11 = v18;
    *(v18 + 8 * v17 + 32) = a3;
  }

  while (v10 != v9);
LABEL_25:

  *a4 = v11;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt2Array.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Int2 = RIOPxrVtValueGetInt2();

      if (Int2)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[8 * v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt3Array.getter@<X0>(uint64_t (*a2)(id, __int128 *)@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    *&v22 = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_5:
  v19 = a3;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v21 = v11;
    v12 = v10;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26670F670](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v22 = 0uLL;
      a3 = a2(v13, &v22);

      if (a3)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        v11 = v21;
        goto LABEL_25;
      }
    }

    v20 = v22;
    v15 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v19(0, *(v21 + 16) + 1, 1, v21);
    }

    a3 = *(v15 + 16);
    v16 = *(v15 + 24);
    v17 = v15;
    if (a3 >= v16 >> 1)
    {
      v17 = v19(v16 > 1, a3 + 1, 1, v15);
    }

    *(v17 + 16) = a3 + 1;
    v11 = v17;
    *(v17 + 16 * a3 + 32) = v20;
  }

  while (v10 != v9);
LABEL_25:

  *a4 = v11;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asHalfArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Float = RIOPxrVtValueGetFloat();

      if (Float)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[4 * v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asHalf2Array.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_25:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_24:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (RIOPxrVtValueGetHalf2())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_26;
      }
    }

    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = 2;
    *(v12 + 36) = 0;
    *(v12 + 32) = 0;

    if (*(v12 + 16) < 2uLL)
    {
      __break(1u);
    }

    *(v12 + 36) = 0;
    v16 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    }

    v14 = v8[2];
    v13 = v8[3];
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    v8[2] = v14 + 1;
    v8[v14 + 4] = v12;
    v3 = v16;
  }

  while (v7 != v6);
LABEL_26:

  *a2 = v8;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asTexCoord2hArray.getter@<X0>(uint64_t *a2@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26670F670](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!RIOPxrVtValueGetHalf2())
      {
        __break(1u);
      }

      v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v10 + 16) = 2;
      *(v10 + 32) = 0;
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v11[2] = 4;
      v11[4] = 0;
      v11[5] = 0;
      v12 = *(v10 + 16);
      if (!v12)
      {
        goto LABEL_23;
      }

      *(v11 + 8) = *(v10 + 32);
      if (v12 == 1)
      {
        goto LABEL_24;
      }

      v13 = v11;
      v14 = *(v10 + 36);

      if (v13[2] < 2uLL)
      {
        goto LABEL_25;
      }

      *(v13 + 9) = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      }

      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
      }

      v6[2] = v16 + 1;
      v6[v16 + 4] = v13;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_28:

  *a2 = v6;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asHalf3Array.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_25:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_24:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (RIOPxrVtValueGetHalf3())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_26;
      }
    }

    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = 4;
    *(v12 + 32) = 0uLL;

    if (*(v12 + 16) < 3uLL)
    {
      __break(1u);
    }

    *(v12 + 40) = 0;
    v16 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    }

    v14 = v8[2];
    v13 = v8[3];
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    v8[2] = v14 + 1;
    v8[v14 + 4] = v12;
    v3 = v16;
  }

  while (v7 != v6);
LABEL_26:

  *a2 = v8;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor3hArray.getter@<X0>(unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v22[0] = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v18 = a2;
    v7 = 0;
    v20 = v5 & 0xC000000000000001;
    a2 = v5 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x277D84F90];
    v9 = v5;
    while (1)
    {
      if (v20)
      {
        v10 = MEMORY[0x26670F670](v7, v5);
      }

      else
      {
        if (v7 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v22[0] = 0;
      v22[1] = 0;
      if (!RIOPxrVtValueGetHalf3())
      {
        __break(1u);
      }

      v21 = *v22;
      v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v12[2] = 4;
      v12[5] = 0;
      v12[4] = v21;
      *(v12 + 10) = DWORD2(v21);
      _s9RealityIO9TexCoord3VyACyxGs5SIMD3VyxGcfCAA4HalfV_Tt1B5Tm(v12, v22);

      v13 = v22[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = v18(0, *(v8 + 16) + 1, 1, v8);
      }

      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        v8 = v18(v14 > 1, v15 + 1, 1, v8);
      }

      *(v8 + 16) = v15 + 1;
      *(v8 + 8 * v15 + 32) = v13;
      ++v7;
      v16 = v5 == i;
      v5 = v9;
      if (v16)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_23:

  *a3 = v8;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asHalf4Array.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_25:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_24:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (RIOPxrVtValueGetHalf4())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_26;
      }
    }

    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = 4;
    *(v12 + 32) = 0uLL;
    *(v12 + 40) = 0;

    if (*(v12 + 16) < 4uLL)
    {
      __break(1u);
    }

    *(v12 + 44) = 0 >> 96;
    v16 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    }

    v14 = v8[2];
    v13 = v8[3];
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    v8[2] = v14 + 1;
    v8[v14 + 4] = v12;
    v3 = v16;
  }

  while (v7 != v6);
LABEL_26:

  *a2 = v8;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor4hArray.getter@<X0>(uint64_t *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v20[0] = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v18 = v3 & 0xC000000000000001;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x277D84F90];
    v8 = v3;
    while (1)
    {
      if (v18)
      {
        v9 = MEMORY[0x26670F670](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v20[0] = 0;
      v20[1] = 0;
      if (!RIOPxrVtValueGetHalf4())
      {
        __break(1u);
      }

      v19 = *v20;
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v11 + 16) = 4;
      *(v11 + 32) = v19;
      _s9RealityIO6Color4VyACyxGs5SIMD4VyxGcfCAA4HalfV_Tt1B5(v11, v20);

      v12 = v20[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
      }

      v7[2] = v14 + 1;
      v7[v14 + 4] = v12;
      ++v5;
      v15 = v3 == i;
      v3 = v8;
      if (v15)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:

  *a2 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asFloatArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Float = RIOPxrVtValueGetFloat();

      if (Float)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[4 * v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asFloat2Array.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Float2 = RIOPxrVtValueGetFloat2();

      if (Float2)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[8 * v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asTexCoord2fArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26670F670](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetFloat2() & 1) == 0)
      {
        __break(1u);
      }

      *&v10 = 0;
      v15 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[16 * v12 + 32] = v15;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_22:

  *a2 = v6;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor3fArray.getter@<X0>(uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v15 = a2;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      a2 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetFloat3() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = v15(0, *(v8 + 16) + 1, 1, v8);
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v8 = v15(v11 > 1, v12 + 1, 1, v8);
      }

      v13 = 0uLL;
      HIDWORD(v13) = 0;
      *(v8 + 16) = v12 + 1;
      *(v8 + 16 * v12 + 32) = v13;
      ++v7;
      if (a2 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_22:

  *a3 = v8;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asFloat3Array.getter@<X0>(uint64_t (*a2)(id, __int128 *)@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    *&v22 = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_5:
  v19 = a3;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v21 = v11;
    v12 = v10;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26670F670](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v22 = 0uLL;
      a3 = a2(v13, &v22);

      if (a3)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        v11 = v21;
        goto LABEL_25;
      }
    }

    v20 = v22;
    v15 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v19(0, *(v21 + 16) + 1, 1, v21);
    }

    a3 = *(v15 + 16);
    v16 = *(v15 + 24);
    v17 = v15;
    if (a3 >= v16 >> 1)
    {
      v17 = v19(v16 > 1, a3 + 1, 1, v15);
    }

    *(v17 + 16) = a3 + 1;
    v11 = v17;
    *(v17 + 16 * a3 + 32) = v20;
  }

  while (v10 != v9);
LABEL_25:

  *a4 = v11;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor4fArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26670F670](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetFloat4() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      *&v6[16 * v11 + 32] = 0uLL;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_22:

  *a2 = v6;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asDoubleArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Double = RIOPxrVtValueGetDouble();

      if (Double)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[8 * v13 + 32] = 0;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asDouble2Array.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Double2 = RIOPxrVtValueGetDouble2();

      if (Double2)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[16 * v13 + 32] = 0uLL;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}