uint64_t sub_100249548(uint64_t a1)
{
  v2 = sub_1002789FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002495C8(void *a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v16[3] = a3;
  v10 = sub_10005DC58(a4, a5);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v16 - v12;
  sub_100029B34(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = a2;
  v20 = 0;
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_100165E30(&qword_10058E320, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
  v14 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v19 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v11 + 8))(v13, v10);
}

Swift::Int sub_10024982C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  Hasher.init(_seed:)();
  a4(v9, v6, v7);
  return Hasher._finalize()();
}

CoreP2P::NANAttribute::ElementContainer::VHTCapabilities_optional __swiftcall NANAttribute.ElementContainer.VHTCapabilities.init(rawValue:type:length:)(Swift::OpaquePointer rawValue, Swift::UInt8 type, Swift::UInt8 length)
{
  result.value.rawValue._rawValue = sub_10026FFCC(rawValue._rawValue, type, length, "VHTCapabilities must be at least %hhu bytes (Size: %ld bytes)", vars0, vars8);
  *&result.value.type = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_10024994C(uint64_t a1)
{
  v2 = sub_100278A50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249988(uint64_t a1)
{
  v2 = sub_100278A50();

  return CodingKey.debugDescription.getter(a1, v2);
}

CoreP2P::NANAttribute::ElementContainer::VHTOperation_optional __swiftcall NANAttribute.ElementContainer.VHTOperation.init(rawValue:type:length:)(Swift::OpaquePointer rawValue, Swift::UInt8 type, Swift::UInt8 length)
{
  result.value.rawValue._rawValue = sub_1002701BC(rawValue._rawValue, type, length, "VHTOperation must be at least %hhu bytes (Size: %ld bytes)", vars0, vars8);
  *&result.value.type = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_100249ADC(uint64_t a1)
{
  v2 = sub_100278AA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249B18(uint64_t a1)
{
  v2 = sub_100278AA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

CoreP2P::NANAttribute::ElementContainer::VendorSpecific_optional __swiftcall NANAttribute.ElementContainer.VendorSpecific.init(rawValue:type:length:)(Swift::OpaquePointer rawValue, Swift::UInt8 type, Swift::UInt8 length)
{
  result.value.rawValue._rawValue = sub_1002701BC(rawValue._rawValue, type, length, "VendorSpecific must be at least %hhu bytes (Size: %ld bytes)", vars0, vars8);
  *&result.value.type = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_100249C6C(uint64_t a1)
{
  v2 = sub_100278AF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249CA8(uint64_t a1)
{
  v2 = sub_100278AF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

CoreP2P::NANAttribute::ElementContainer::ElementIDExtension_optional __swiftcall NANAttribute.ElementContainer.ElementIDExtension.init(rawValue:type:length:)(Swift::OpaquePointer rawValue, Swift::UInt8 type, Swift::UInt8 length)
{
  result.value.rawValue._rawValue = sub_1002701BC(rawValue._rawValue, type, length, "ElementIDExtension must be at least %hhu bytes (Size: %ld bytes)", vars0, vars8);
  *&result.value.type = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_100249E04(uint64_t a1)
{
  v2 = sub_100278B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249E40(uint64_t a1)
{
  v2 = sub_100278B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100249EE0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *(a2 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }

  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIBYTE(a3));
}

Swift::Int sub_100249F4C(uint64_t a1, __int16 a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(HIBYTE(a2));
  return Hasher._finalize()();
}

uint64_t sub_10024A0AC@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  result = sub_10026CA00(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9;
  }

  return result;
}

uint64_t NANAttribute.ElementContainer.htCap.setter(uint64_t a1, __int16 a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.htinfo.setter(uint64_t a1, __int16 a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.vhtCap.setter(uint64_t a1, __int16 a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.vhtOp.setter(uint64_t a1, __int16 a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.vendorSpec.setter(uint64_t a1, __int16 a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.elementIDExt.setter(uint64_t a1, __int16 a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

__n128 NANAttribute.ElementContainer.init(rawValue:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_10027039C(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10024A408()
{
  v1 = *v0;
  v2 = 0x73444970616DLL;
  v3 = 0x49746E656D656C65;
  if (v1 != 6)
  {
    v3 = 0x65756C6156776172;
  }

  v4 = 0x704F746876;
  if (v1 != 4)
  {
    v4 = 0x7053726F646E6576;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F666E697468;
  if (v1 != 2)
  {
    v5 = 0x706143746876;
  }

  if (*v0)
  {
    v2 = 0x7061437468;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10024A4FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100283C38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10024A524(uint64_t a1)
{
  v2 = sub_100278BA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024A560(uint64_t a1)
{
  v2 = sub_100278BA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ElementContainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592378, &qword_10049F910);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100029B34(a1, a1[3]);
  sub_100278BA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOWORD(v10) = *v3;
  BYTE2(v10) = *(v3 + 2);
  v12 = 0;
  sub_1002780DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 8);
    v11 = *(v3 + 16);
    v12 = 1;
    sub_100278BF4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    v12 = 2;
    sub_100278C48();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 40);
    v11 = *(v3 + 48);
    v12 = 3;
    sub_100278C9C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 56);
    v11 = *(v3 + 64);
    v12 = 4;
    sub_100278CF0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 72);
    v11 = *(v3 + 80);
    v12 = 5;
    sub_100278D44();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    v12 = 6;
    sub_100278D98();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 104);
    v12 = 7;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_100165E30(&qword_10058E320, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NANAttribute.ElementContainer.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    if ((v2 & 0x100) != 0)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2 * v2;
    }
  }

  Hasher._combine(_:)(v1);
  v3 = *(v0 + 1);
  if (v3)
  {
    v4 = v0[8];
    Hasher._combine(_:)(1u);
    v5 = *(v3 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = (v3 + 32);
      do
      {
        v7 = *v6++;
        Hasher._combine(_:)(v7);
        --v5;
      }

      while (v5);
    }

    v8 = v4 >> 8;
    Hasher._combine(_:)(v4);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  Hasher._combine(_:)(v8);
  v9 = *(v0 + 3);
  if (v9)
  {
    v10 = v0[16];
    Hasher._combine(_:)(1u);
    v11 = *(v9 + 16);
    Hasher._combine(_:)(v11);
    if (v11)
    {
      v12 = (v9 + 32);
      do
      {
        v13 = *v12++;
        Hasher._combine(_:)(v13);
        --v11;
      }

      while (v11);
    }

    v14 = v10 >> 8;
    Hasher._combine(_:)(v10);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  Hasher._combine(_:)(v14);
  v15 = *(v0 + 5);
  if (v15)
  {
    v16 = v0[24];
    Hasher._combine(_:)(1u);
    v17 = *(v15 + 16);
    Hasher._combine(_:)(v17);
    if (v17)
    {
      v18 = (v15 + 32);
      do
      {
        v19 = *v18++;
        Hasher._combine(_:)(v19);
        --v17;
      }

      while (v17);
    }

    v20 = v16 >> 8;
    Hasher._combine(_:)(v16);
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  Hasher._combine(_:)(v20);
  v21 = *(v0 + 7);
  if (v21)
  {
    v22 = v0[32];
    Hasher._combine(_:)(1u);
    v23 = *(v21 + 16);
    Hasher._combine(_:)(v23);
    if (v23)
    {
      v24 = (v21 + 32);
      do
      {
        v25 = *v24++;
        Hasher._combine(_:)(v25);
        --v23;
      }

      while (v23);
    }

    v26 = v22 >> 8;
    Hasher._combine(_:)(v22);
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  Hasher._combine(_:)(v26);
  v27 = *(v0 + 9);
  if (v27)
  {
    v28 = v0[40];
    Hasher._combine(_:)(1u);
    v29 = *(v27 + 16);
    Hasher._combine(_:)(v29);
    if (v29)
    {
      v30 = (v27 + 32);
      do
      {
        v31 = *v30++;
        Hasher._combine(_:)(v31);
        --v29;
      }

      while (v29);
    }

    v32 = v28 >> 8;
    Hasher._combine(_:)(v28);
  }

  else
  {
    LOBYTE(v32) = 0;
  }

  Hasher._combine(_:)(v32);
  v33 = *(v0 + 11);
  if (v33)
  {
    v34 = v0[48];
    Hasher._combine(_:)(1u);
    v35 = *(v33 + 16);
    Hasher._combine(_:)(v35);
    if (v35)
    {
      v36 = (v33 + 32);
      do
      {
        v37 = *v36++;
        Hasher._combine(_:)(v37);
        --v35;
      }

      while (v35);
    }

    v38 = v34 >> 8;
    Hasher._combine(_:)(v34);
  }

  else
  {
    LOBYTE(v38) = 0;
  }

  Hasher._combine(_:)(v38);
  v39 = *(v0 + 13);
  v40 = *(v39 + 16);
  Hasher._combine(_:)(v40);
  if (v40)
  {
    v41 = (v39 + 32);
    do
    {
      v42 = *v41++;
      Hasher._combine(_:)(v42);
      --v40;
    }

    while (v40);
  }
}

Swift::Int NANAttribute.ElementContainer.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAttribute.ElementContainer.hash(into:)();
  return Hasher._finalize()();
}

__n128 NANAttribute.ElementContainer.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10026CC64(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

Swift::Int sub_10024AC3C(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANAttribute.ElementContainer.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10024AC90(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return _s7CoreP2P12NANAttributeO16ElementContainerV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14) & 1;
}

uint64_t NANAttribute.ExtendedWLANInfrastructure.operatingChannelInformation.setter(uint64_t result)
{
  *(v1 + 13) = result;
  *(v1 + 15) = BYTE2(result);
  return result;
}

uint64_t NANAttribute.ExtendedWLANInfrastructure.init(network:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  Channel.operatingClass.getter(a4 & 0xFFFFFFFFFFFFLL);

  if ((v4 & 0xFFFFFF00) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t NANAttribute.ExtendedWLANInfrastructure.encode(to:)(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v16[0] = a2;
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  v16[5] = v9;
  sub_100031694(v14, v15);
  sub_10008A490();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v13)
  {
    v16[0] = BYTE6(a2);
    v16[1] = HIBYTE(a2);
    *&v16[2] = a3;
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v16[0] = BYTE4(a3);
    sub_100031694(v14, v15);
    sub_100277B78();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    *v16 = *(&a3 + 5);
    v16[2] = HIBYTE(a3);
    sub_100031694(v14, v15);
    sub_100278DEC();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    *v16 = a4;
    sub_100031694(v14, v15);
    sub_100278E40();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v14);
}

unint64_t sub_10024AFE0()
{
  v1 = *v0;
  v2 = 1701605234;
  v3 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024B084@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100283EC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10024B0AC(uint64_t a1)
{
  v2 = sub_100285AD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024B0E8(uint64_t a1)
{
  v2 = sub_100285AD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void NANAttribute.ExtendedWLANInfrastructure.hash(into:)(int a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v19 = a4;
  v4 = a3;
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  v11 = HIBYTE(a2);
  v12 = a3 >> 8;
  v13 = a3 >> 16;
  v14 = a3 >> 24;
  v15 = HIDWORD(a3);
  v16 = a3 >> 40;
  v17 = HIWORD(a3);
  v18 = HIBYTE(a3);
  v20 = HIWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
}

Swift::Int NANAttribute.ExtendedWLANInfrastructure.hashValue.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v20 = a3;
  v3 = a2;
  v4 = a1;
  v5 = a1 >> 8;
  v6 = a1 >> 16;
  v7 = a1 >> 24;
  v8 = HIDWORD(a1);
  v9 = a1 >> 40;
  v10 = HIWORD(a1);
  v11 = HIBYTE(a1);
  v13 = a2 >> 8;
  v14 = a2 >> 16;
  v15 = a2 >> 24;
  v16 = HIDWORD(a2);
  v17 = a2 >> 40;
  v18 = HIWORD(a2);
  v19 = HIBYTE(a2);
  v21 = HIWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(v21);
  return Hasher._finalize()();
}

uint64_t NANAttribute.ExtendedWLANInfrastructure.init(from:)(void *a1)
{
  result = sub_10026ED54(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_10024B420(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  NANAttribute.ExtendedWLANInfrastructure.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_10024B478@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10026ED54(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t NANAttribute.ExtendedP2POperation.operatingChannelInformation.setter(uint64_t result)
{
  *(v1 + 7) = result;
  *(v1 + 9) = BYTE2(result);
  return result;
}

unint64_t sub_10024B59C()
{
  v1 = 1701605234;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x657264644163616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024B61C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10028407C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10024B644(uint64_t a1)
{
  v2 = sub_100278E94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024B680(uint64_t a1)
{
  v2 = sub_100278E94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ExtendedP2POperation.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_1005923C8, &qword_10049F918);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  sub_100029B34(a1, a1[3]);
  sub_100278E94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = a2;
  v16 = 0;
  sub_100277C20();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    LOBYTE(v13) = BYTE1(a2);
    BYTE1(v13) = BYTE2(a2);
    BYTE2(v13) = BYTE3(a2);
    HIBYTE(v13) = BYTE4(a2);
    v14 = BYTE5(a2);
    v15 = BYTE6(a2);
    v16 = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = HIBYTE(a2);
    *(&v13 + 1) = a3;
    v16 = 2;
    sub_100278DEC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOWORD(v13) = WORD1(a3);
    HIWORD(v13) = WORD2(a3);
    v16 = 3;
    sub_100278E40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void NANAttribute.ExtendedP2POperation.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  v11 = a3 >> 8;
  v12 = a3 >> 16;
  v13 = HIDWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
}

Swift::Int NANAttribute.ExtendedP2POperation.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  v12 = a2 >> 8;
  v13 = a2 >> 16;
  v14 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  return Hasher._finalize()();
}

uint64_t NANAttribute.ExtendedP2POperation.init(from:)(void *a1)
{
  result = sub_10026B094(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

Swift::Int sub_10024BB3C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v11 = *(v0 + 9);
  v12 = *(v0 + 10);
  v13 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

void sub_10024BC5C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
}

Swift::Int sub_10024BD38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v12 = *(v1 + 9);
  v13 = *(v1 + 10);
  v14 = *(v1 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  return Hasher._finalize()();
}

uint64_t sub_10024BE54@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10026B094(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 12) = WORD2(v5);
  }

  return result;
}

uint64_t NANAttribute.ExtendedIBSS.operatingChannelInformation.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 14) = BYTE2(result);
  return result;
}

unint64_t sub_10024BF4C()
{
  v1 = 0x4953534273736269;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x657264644163616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024BFD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002841FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10024C000(uint64_t a1)
{
  v2 = sub_100278EE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024C03C(uint64_t a1)
{
  v2 = sub_100278EE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ExtendedIBSS.encode(to:)(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v17) = a4;
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v18 = a3;
  v19 = a2 >> 24;
  v20 = HIDWORD(a2);
  v21 = a2 >> 40;
  v8 = sub_10005DC58(&qword_1005923D8, &qword_10049F920);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v17 - v10;
  sub_100029B34(a1, a1[3]);
  sub_100278EE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24[0] = a2;
  v24[1] = v6;
  v24[2] = v7;
  v24[3] = v19;
  v24[4] = v20;
  v24[5] = v21;
  v23 = 0;
  sub_10008A490();
  v12 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v14 = HIDWORD(v17);
  v15 = v9;
  v24[0] = BYTE6(a2);
  v24[1] = HIBYTE(a2);
  v16 = HIDWORD(v18);
  *&v24[2] = v18;
  v23 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v24[0] = v16;
  v24[1] = BYTE1(v16);
  v24[2] = BYTE2(v16);
  v23 = 2;
  sub_100278DEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  *v24 = v14;
  v23 = 3;
  sub_100278E40();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v15 + 8))(v11, v8);
}

void NANAttribute.ExtendedIBSS.hash(into:)(int a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v18 = a4;
  v4 = a3;
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  v11 = HIBYTE(a2);
  v12 = a3 >> 8;
  v13 = a3 >> 16;
  v14 = a3 >> 24;
  v15 = HIDWORD(a3);
  v16 = a3 >> 40;
  v17 = HIWORD(a3);
  v19 = HIWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19);
}

Swift::Int NANAttribute.ExtendedIBSS.hashValue.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v19 = a3;
  v3 = a2;
  v4 = a1;
  v5 = a1 >> 8;
  v6 = a1 >> 16;
  v7 = a1 >> 24;
  v8 = HIDWORD(a1);
  v9 = a1 >> 40;
  v10 = HIWORD(a1);
  v11 = HIBYTE(a1);
  v13 = a2 >> 8;
  v14 = a2 >> 16;
  v15 = a2 >> 24;
  v16 = HIDWORD(a2);
  v17 = a2 >> 40;
  v18 = HIWORD(a2);
  v20 = HIWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  return Hasher._finalize()();
}

uint64_t NANAttribute.ExtendedIBSS.init(from:)(void *a1)
{
  result = sub_10026BA2C(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFFFFFFFFLL;
  }

  return result;
}

void sub_10024C65C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = *(v0 + 11);
  v12 = *(v0 + 12);
  v13 = *(v0 + 13);
  v14 = *(v0 + 14);
  v15 = *(v0 + 16);
  v16 = *(v0 + 18);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
}

Swift::Int sub_10024C780(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v12 = *(v1 + 9);
  v13 = *(v1 + 10);
  v14 = *(v1 + 11);
  v15 = *(v1 + 12);
  v16 = *(v1 + 13);
  v17 = *(v1 + 14);
  v18 = *(v1 + 16);
  v19 = *(v1 + 18);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19);
  return Hasher._finalize()();
}

uint64_t sub_10024C8F4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10026BA2C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 10) = BYTE2(v5);
    *(a1 + 11) = BYTE3(v5);
    *(a1 + 12) = BYTE4(v5);
    *(a1 + 13) = BYTE5(v5);
    *(a1 + 14) = BYTE6(v5);
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t NANAttribute.ExtendedMesh.operatingChannelInformation.setter(uint64_t result)
{
  *(v1 + 6) = result;
  *(v1 + 8) = BYTE2(result);
  return result;
}

uint64_t NANAttribute.ExtendedMesh.meshID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_10024CAB8()
{
  v1 = 0x657264644163616DLL;
  v2 = 0x44496873656DLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024CB3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284384(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10024CB64(uint64_t a1)
{
  v2 = sub_100278F3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024CBA0(uint64_t a1)
{
  v2 = sub_100278F3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ExtendedMesh.encode(to:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v7 = a2 >> 8;
  v8 = a2 >> 16;
  v21 = a3;
  v22 = a2 >> 24;
  v23 = HIDWORD(a2);
  v24 = a2 >> 40;
  v9 = sub_10005DC58(&qword_1005923E8, &qword_10049F928);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v18 - v11;
  sub_100029B34(a1, a1[3]);
  sub_100278F3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = a2;
  BYTE1(v26) = v7;
  BYTE2(v26) = v8;
  BYTE3(v26) = v22;
  BYTE4(v26) = v23;
  BYTE5(v26) = v24;
  v28 = 0;
  sub_10008A490();
  v13 = v25;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v13)
  {
    v15 = v19;
    v14 = v20;
    LOBYTE(v26) = BYTE6(a2);
    BYTE1(v26) = HIBYTE(a2);
    v16 = v21;
    BYTE2(v26) = v21;
    v28 = 1;
    sub_100278DEC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOWORD(v26) = WORD1(v16);
    WORD1(v26) = WORD2(v16);
    v28 = 2;
    sub_100278E40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = v15;
    v27 = v14;
    v28 = 3;
    sub_10000AB0C(v15, v14);
    sub_100230328();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v26, v27);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t NANAttribute.ExtendedMesh.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v8 = a2 >> 24;
  v9 = HIDWORD(a2);
  v10 = a2 >> 40;
  v11 = HIWORD(a2);
  v12 = HIBYTE(a2);
  v13 = a3 >> 16;
  v15 = HIDWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v15);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.ExtendedMesh.hashValue.getter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  v9 = HIDWORD(a1);
  v10 = a1 >> 40;
  v11 = HIWORD(a1);
  v12 = HIBYTE(a1);
  v14 = a2 >> 16;
  v15 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NANAttribute.ExtendedMesh.init(from:)(void *a1)
{
  result = sub_10026BCD8(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFF00FFLL;
  }

  return result;
}

Swift::Int sub_10024D0A8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024D1C8(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = *(v1 + 10);
  v12 = *(v1 + 12);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);

  return Data.hash(into:)();
}

Swift::Int sub_10024D2B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v12 = *(v1 + 10);
  v13 = *(v1 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024D3D4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10026BCD8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 10) = v6;
    *(a1 + 12) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

uint64_t sub_10024D4D4()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x746E4565676E6172;
  v4 = 0x746E4565676E6172;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6469737362;
  if (v1 != 1)
  {
    v5 = 0x746E4565676E6172;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10024D5A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284500(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10024D5D0(uint64_t a1)
{
  v2 = sub_100278F90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024D60C(uint64_t a1)
{
  v2 = sub_100278F90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.FineTimingMeasurementRangeReport.Entry.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = HIDWORD(a2);
  v7 = sub_10005DC58(&qword_1005923F8, &qword_10049F930);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12[-v9];
  sub_100029B34(a1, a1[3]);
  sub_100278F90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13 = v5;
    v14 = v4;
    v12[24] = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[15] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[14] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[13] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[12] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void NANAttribute.FineTimingMeasurementRangeReport.Entry.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIDWORD(a2);
  v5 = a2 >> 40;
  v6 = HIWORD(a2);
  v7 = HIBYTE(a2);
  v8 = a3 >> 8;
  v9 = a3 >> 16;
  v10 = a3 >> 24;
  v11 = HIDWORD(a3);
  v12 = a3 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
}

Swift::Int NANAttribute.FineTimingMeasurementRangeReport.Entry.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = a1 >> 40;
  v6 = HIWORD(a1);
  v7 = HIBYTE(a1);
  v8 = a2 >> 8;
  v9 = a2 >> 16;
  v10 = a2 >> 24;
  v12 = HIDWORD(a2);
  v13 = a2 >> 40;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

unint64_t NANAttribute.FineTimingMeasurementRangeReport.Entry.init(from:)(void *a1)
{
  result = sub_10026F378(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

Swift::Int sub_10024DAA0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = *(v0 + 11);
  v11 = *(v0 + 12);
  v12 = *(v0 + 13);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  return Hasher._finalize()();
}

void sub_10024DBAC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  v9 = *(v0 + 12);
  v10 = *(v0 + 13);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
}

Swift::Int sub_10024DC7C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v9 = *(v1 + 10);
  v10 = *(v1 + 11);
  v12 = *(v1 + 12);
  v13 = *(v1 + 13);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

unint64_t sub_10024DD84@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10026F378(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 10) = BYTE2(v5);
    *(a1 + 11) = BYTE3(v5);
    *(a1 + 12) = BYTE4(v5);
    *(a1 + 13) = BYTE5(v5);
  }

  return result;
}

uint64_t sub_10024DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10024DF04(uint64_t a1)
{
  v2 = sub_100278FE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024DF40(uint64_t a1)
{
  v2 = sub_100278FE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.FineTimingMeasurementRangeReport.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100592408, &qword_10049F938);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  sub_100029B34(a1, a1[3]);
  sub_100278FE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10005DC58(&qword_100592418, &qword_10049F940);
  sub_100279038();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10024E12C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v8, v8[3]);
  v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v6 = sub_100237864(v5 << 8, v8);
  sub_100002A00(v8);
  result = sub_100002A00(a1);
  *a2 = v6;
  return result;
}

void *NANAttribute.FineTimingMeasurementRangeReport.init(from:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  sub_100031694(v5, v5[3]);
  v2 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v3 = sub_100237864(v2 << 8, v5);
  sub_100002A00(v5);
  sub_100002A00(a1);
  return v3;
}

uint64_t sub_10024E334(uint64_t a1, unsigned __int8 (*a2)(void, uint64_t, uint64_t))
{
  v2 = a2(0, 1, a1);
  if (v2 == 1)
  {
    return 1;
  }

  if (!v2)
  {
    return 0;
  }

  sub_10000B02C();
  swift_allocError();
  *v4 = xmmword_10047CE70;
  *(v4 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10024E424(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = a3(a2, 2, a1);
  if (result > 3u)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = xmmword_10047CE70;
    *(v4 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t NANAttribute.CipherSuiteInformation.Capabilities.gtksaReplayCounters.getter(char a1)
{
  v2 = sub_100038CD4(1, 2uLL, a1);
  if ((v2 - 1) >= 2)
  {
    result = 2;
    if (v2 && v2 != 3)
    {
      sub_10000B02C();
      swift_allocError();
      *v5 = xmmword_10047CE70;
      *(v5 + 16) = 2;
      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    v3 = sub_100038CD4(3, 1uLL, a1);
    if (v3 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NANAttribute.CipherSuiteInformation.Capabilities.broadcastIntegrityProtocol.getter(char a1)
{
  v2 = sub_100038CD4(1, 2uLL, a1);
  result = 2;
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      result = sub_100038CD4(4, 1uLL, a1);
      if (result >= 2u)
      {
        sub_10000B02C();
        swift_allocError();
        *v4 = xmmword_10047CE70;
        *(v4 + 16) = 2;
        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
LABEL_7:
        sub_10000B02C();
        swift_allocError();
        *v5 = xmmword_10047CE70;
        *(v5 + 16) = 2;
        swift_willThrow();
        result = swift_unexpectedError();
        __break(1u);
      }
    }

    else if (v2 != 3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_10024E7E8()
{
  if (*v0)
  {
    return 0x496873696C627570;
  }

  else
  {
    return 0x7553726568706963;
  }
}

uint64_t sub_10024E830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7553726568706963 && a2 == 0xEB00000000657469;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496873696C627570 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10024E918(uint64_t a1)
{
  v2 = sub_100279110();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024E954(uint64_t a1)
{
  v2 = sub_100279110();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.CipherSuiteInformation.CipherSuite.encode(to:)(void *a1, __int16 a2)
{
  v3 = a2;
  v5 = sub_10005DC58(&qword_100592430, &qword_10049F948);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_100279110();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = v3;
  v10[14] = 0;
  sub_100279164();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NANAttribute.CipherSuiteInformation.CipherSuite.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2 + 1);
  Hasher._combine(_:)(v2);
}

Swift::Int NANAttribute.CipherSuiteInformation.CipherSuite.hashValue.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10024EBD0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10024EC30()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0 + 1);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10024EC74(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_10024ED18()
{
  if (*v0)
  {
    return 0x7553726568706963;
  }

  else
  {
    return 0x696C696261706163;
  }
}

uint64_t sub_10024ED5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7553726568706963 && a2 == 0xEC00000073657469)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10024EE3C(uint64_t a1)
{
  v2 = sub_1002791B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024EE78(uint64_t a1)
{
  v2 = sub_1002791B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.CipherSuiteInformation.__derived_struct_equals(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return sub_1000BE1B8(a2, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t NANAttribute.CipherSuiteInformation.encode(to:)(void *a1, char a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_100592448, &qword_10049F950);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v12 - v9;
  sub_100029B34(a1, a1[3]);
  sub_1002791B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10027920C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_10005DC58(&qword_100592460, &qword_10049F958);
    sub_100279260();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void NANAttribute.CipherSuiteInformation.hash(into:)(int a1, Swift::UInt8 a2, uint64_t a3)
{
  Hasher._combine(_:)(a2);
  v4 = *(a3 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a3 + 33);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      Hasher._combine(_:)(v6 + 1);
      Hasher._combine(_:)(v7);
      --v4;
    }

    while (v4);
  }
}

Swift::Int NANAttribute.CipherSuiteInformation.hashValue.getter(Swift::UInt8 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 33);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      Hasher._combine(_:)(v6 + 1);
      Hasher._combine(_:)(v7);
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10024F1AC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  Hasher.init(_seed:)();
  NANAttribute.CipherSuiteInformation.hash(into:)(v5, v3, v2);
  return Hasher._finalize()();
}

uint64_t sub_10024F224@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10024F290(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (*a1 == *a2)
  {
    return (a5)(*(a1 + 1), *(a2 + 1), a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t NANAttribute.SecurityContextInformation.SecurityContextIdentifier.hash(into:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.SecurityContextInformation.SecurityContextIdentifier.hashValue.getter(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10024F4B4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024F530(uint64_t a1)
{
  v2 = v1[1];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);

  return Data.hash(into:)();
}

Swift::Int sub_10024F598(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024F610@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100271D64(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

void *NANAttribute.SecurityContextInformation.SecurityContextIdentifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100029B34(a1, a1[3]);
  result = dispatch thunk of Encoder.unkeyedContainer()();
  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v8 == 2)
  {
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_17;
    }

    v11 = HIDWORD(a3) - a3;
LABEL_10:
    result = sub_10000AB0C(a3, a4);
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >> 16)
      {
        __break(1u);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_13:
  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v4)
  {
    sub_100031694(v12, v13);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v12, v13);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v12, v13);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  sub_1000124C8(a3, a4);
  return sub_100002A00(v12);
}

uint64_t sub_10024F8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001004BD8D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10024F93C(uint64_t a1)
{
  v2 = sub_100279338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024F978(uint64_t a1)
{
  v2 = sub_100279338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.SecurityContextInformation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100592478, &qword_10049F960);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  sub_100029B34(a1, a1[3]);
  sub_100279338();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10005DC58(&qword_100592488, &qword_10049F968);
  sub_10027938C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_10024FB7C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10026F04C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10024FDC4()
{
  if (*v0)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x6556726568706963;
  }
}

uint64_t sub_10024FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6556726568706963 && a2 == 0xED00006E6F697372;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xEB0000000079654BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10024FEFC(uint64_t a1)
{
  v2 = sub_100279464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024FF38(uint64_t a1)
{
  v2 = sub_100279464();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static NANIdentityKey.== infix(_:_:)()
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v0 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v2, v3);
  sub_1000124C8(v2, v3);
  sub_1000124C8(v2, v3);
  return v0;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_1005924A0, &qword_10049F970);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100279464();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  sub_1002794B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    type metadata accessor for NANIdentityKey(0);
    sub_10027784C(&qword_1005924B8, type metadata accessor for NANIdentityKey, protocol conformance descriptor for NANIdentityKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(0);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  return sub_1000124C8(v2, v3);
}

Swift::Int NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v1, v2);
  return Hasher._finalize()();
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  type metadata accessor for NANIdentityKey(0);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10005DC58(&qword_1005924C0, &qword_10049F978);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin();
  v8 = &v15 - v7;
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  sub_100279464();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v10;
    v11 = v17;
    v20 = 0;
    sub_10027952C();
    v12 = v18;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = 1;
    sub_10027784C(&qword_1005924D0, type metadata accessor for NANIdentityKey, protocol conformance descriptor for NANIdentityKey);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 8))(v8, v12);
    v13 = v15;
    sub_100262DC8(v5, v15, type metadata accessor for NANIdentityKey);
    sub_100262DC8(v13, v16, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
  }

  return sub_100002A00(a1);
}

Swift::Int sub_1002505F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_1002507B8()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x616D74694279656BLL;
  }
}

uint64_t sub_1002507FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x616D74694279656BLL && a2 == 0xE900000000000070;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004BD8F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1002508E8(uint64_t a1)
{
  v2 = sub_100279580();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100250924(uint64_t a1)
{
  v2 = sub_100279580();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.encode(to:)(void *a1, unint64_t a2)
{
  v3 = a2;
  v5 = sub_10005DC58(&qword_1005924D8, &qword_10049F980);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_100279580();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3;
  v10[13] = 0;
  sub_1002795D4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[12] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.hash(into:)(int a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100250BC0()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100250C20()
{
  v1 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100250C60(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100250CBC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10026DD40(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = HIDWORD(result);
  }

  return result;
}

uint64_t sub_100250D44()
{
  v1 = 5132393;
  if (*v0 != 1)
  {
    v1 = 1263814505;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444979656BLL;
  }
}

uint64_t sub_100250D8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002846FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100250DB4(uint64_t a1)
{
  v2 = sub_100279628();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100250DF0(uint64_t a1)
{
  v2 = sub_100279628();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO07IGTKKeyJ0V5keyID3iPN4iGTKAMs6UInt16V_10Foundation0J0V9CryptoKit09SymmetricE0VtcfC_0@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v10 = type metadata accessor for SymmetricKey();
  (*(*(v10 - 8) + 8))(a4, v10);
  result = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v12;
  return result;
}

uint64_t sub_100250FD8()
{
  v1 = 5132393;
  if (*v0 != 1)
  {
    v1 = 0x4B54474962;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444979656BLL;
  }
}

uint64_t sub_100251024@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284810(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10025104C(uint64_t a1)
{
  v2 = sub_10027967C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100251088(uint64_t a1)
{
  v2 = sub_10027967C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO07IGTKKeyJ0V23__derived_struct_equalsySbAM_AMtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || !_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[3];
  v7 = a2[4];

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v5, v6, v7);
}

uint64_t sub_100251178(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = sub_10005DC58(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v15 - v11;
  sub_100029B34(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  v13 = v15[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v19 = *(v7 + 8);
    v17 = *(v7 + 8);
    v20 = 1;
    sub_100142478(&v19, v16);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v17, *(&v17 + 1));
    v17 = *(v7 + 24);
    v18 = v17;
    v20 = 2;
    sub_100142478(&v18, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v17, *(&v17 + 1));
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO07IGTKKeyJ0V4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO07IGTKKeyJ0V9hashValueSivg_0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

double sub_100251464@<D0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t *a3@<X1>, uint64_t *a4@<X2>, uint64_t (*a5)(void)@<X3>)
{
  sub_10026DAD0(a2, a3, a4, a5, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v10;
  }

  return result;
}

Swift::Int sub_1002514AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025152C(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_10025159C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

double sub_10025165C@<D0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(void)@<X5>)
{
  sub_10026DAD0(a2, a3, a4, a5, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v10;
  }

  return result;
}

BOOL sub_1002516CC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if (!_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v4, v5);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.encode(to:)(void *a1, __n128 a2)
{
  v3 = v2;
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1002774DC(v3, v8, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v10 = *v8;
    v11 = *(v8 + 1);
    v12 = *(v8 + 2);
    v14 = *(v8 + 3);
    v13 = *(v8 + 4);
    v17[0] = v10;
    v19 = v11;
    v20 = v12;
    v21 = v14;
    v22 = v13;
    if (EnumCaseMultiPayload == 2)
    {
      sub_100031694(v23, v24);
      sub_100279724();
    }

    else
    {
      sub_100031694(v23, v24);
      sub_1002796D0();
    }

    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v11, v12);
    sub_1000124C8(v14, v13);
  }

  else if (EnumCaseMultiPayload)
  {
    v15 = *(v8 + 1);
    v17[0] = *v8;
    v18 = v15;
    sub_100031694(v23, v24);
    sub_100279778();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  else
  {
    sub_100262DC8(v8, v6, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    sub_100031694(v23, v24);
    sub_10027784C(&qword_100592528, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData, protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100277544(v6, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
  }

  return sub_100002A00(v23);
}

void NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0);
  __chkstk_darwin();
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002774DC(v3, v7, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v11 = *(v7 + 1);
    v12 = *(v7 + 2);
    v13 = *(v7 + 3);
    v14 = *(v7 + 4);
    v15 = *v7;
    if (EnumCaseMultiPayload == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    Hasher._combine(_:)(v16);
    Hasher._combine(_:)(v15);
    Data.hash(into:)();
    Data.hash(into:)();
    sub_1000124C8(v11, v12);
    sub_1000124C8(v13, v14);
  }

  else if (EnumCaseMultiPayload)
  {
    v17 = *(v7 + 1);
    v18 = *v7;
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v18);
    Hasher._combine(_:)(v17);
  }

  else
  {
    sub_100262DC8(v7, v5, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v9 = v19[2];
    v10 = v19[3];
    Data.hash(into:)();
    sub_1000124C8(v9, v10);
    sub_100277544(v5, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
  }
}

unsigned __int8 *sub_100251D30@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 36)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 37)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

Swift::Int sub_100251D7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x252409u >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100251E0C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x252409u >> (8 * v2));
  return Hasher._finalize()();
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v28 - v5;
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v41 = a1;
  sub_100029B34(a1, v12);
  v13 = v33;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v13)
  {
    v28 = v6;
    v29 = v4;
    v30 = v8;
    v31 = v9;
    v33 = v11;
    sub_100031694(v39, v40);
    sub_1000317F0();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v14 = v34;
    v15 = HIBYTE(v34);
    v16 = v35;
    v17 = v33;
    *v33 = v34;
    v17[1] = v15;
    v18 = v16;
    v17[2] = v16;
    sub_100031694(v39, v40);
    sub_100279834();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v19 = v34;
    v17[3] = v34;
    v20 = v14 | (v15 << 8) | (v18 << 16);
    if (sub_1000319F0(0x9A6F50u, v20))
    {
      if (v19)
      {
        sub_100031694(v39, v40);
        if (v19 == 1)
        {
          type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0);
          sub_10027784C(&qword_100592548, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData, protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
          v21 = v30;
          UnkeyedDecodingContainer.inferredDecode<A>()();
          v23 = v31;
          v22 = v32;
        }

        else
        {
          sub_1002798DC();
          UnkeyedDecodingContainer.inferredDecode<A>()();
          v23 = v31;
          v22 = v32;
          v27 = v36;
          v21 = v28;
          *v28 = v34;
          *(v21 + 4) = v27;
        }

        swift_storeEnumTagMultiPayload();
        v17 = v33;
        sub_100262DC8(v21, &v33[*(v23 + 24)], type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
      }

      else
      {
        sub_100031694(v39, v40);
        sub_100279888();
        UnkeyedDecodingContainer.inferredDecode<A>()();
        v26 = v29;
        *v29 = v34;
        *(v26 + 8) = v37;
        *(v26 + 24) = v38;
        swift_storeEnumTagMultiPayload();
        sub_100262DC8(v26, &v17[*(v31 + 24)], type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
        v22 = v32;
      }

      sub_100002A00(v39);
      sub_100262DC8(v17, v22, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    }

    else
    {
      sub_1000319F0(0xAC0F00u, v20);
      sub_10000B02C();
      swift_allocError();
      *v24 = xmmword_10047CE70;
      *(v24 + 16) = 2;
      swift_willThrow();
      sub_100002A00(v39);
    }
  }

  return sub_100002A00(v41);
}

uint64_t sub_10025248C()
{
  v1 = 0x6570795461746164;
  if (*v0 != 1)
  {
    v1 = 0x6174614479656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6911343;
  }
}

uint64_t sub_1002524E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284974(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100252508(uint64_t a1)
{
  v2 = sub_100279930();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100252544(uint64_t a1)
{
  v2 = sub_100279930();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592550, &unk_10049F998);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11[-v7];
  sub_100029B34(a1, a1[3]);
  sub_100279930();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 2);
  v12 = *v3;
  v13 = v9;
  v11[12] = 0;
  sub_1001F5AF0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11[11] = *(v3 + 3);
    v11[10] = 1;
    sub_100279984();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
    v11[9] = 2;
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
    sub_10027784C(&qword_100592568, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData, protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100480F30;
  *(v5 + 32) = v3;
  *(v5 + 34) = v4;
  v6 = sub_10002D874(v5);
  v8 = v7;

  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  Hasher._combine(_:)(0x252409u >> (8 * *(v1 + 3)));
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.hash(into:)(a1, v9);
}

Swift::Int NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100480F30;
  *(v3 + 32) = v1;
  *(v3 + 34) = v2;
  v4 = sub_10002D874(v3);
  v6 = v5;

  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  Hasher._combine(_:)(0x252409u >> (8 * *(v0 + 3)));
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.hash(into:)(v9, v7);
  return Hasher._finalize()();
}

double NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100272538(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.encode(to:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
    return sub_100002A00(v12);
  }

  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v17 = v1[1];
  v11 = v1[1];
  sub_100031694(v12, v13);
  sub_100142478(&v17, v10);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v11, *(&v11 + 1));
  v16 = v1[2];
  v11 = v1[2];
  sub_100031694(v12, v13);
  sub_100142478(&v16, v10);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v11, *(&v11 + 1));
  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v15 = v1[4];
  v11 = v1[4];
  sub_100031694(v12, v13);
  sub_100142478(&v15, v10);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  result = sub_1000124C8(v11, *(&v11 + 1));
  v14 = v1[5];
  v4 = v14;
  v5 = *(&v14 + 1) >> 62;
  if ((*(&v14 + 1) >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_14:
      sub_100031694(v12, v13);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v11 = v14;
      sub_100031694(v12, v13);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v11, *(&v11 + 1));
      return sub_100002A00(v12);
    }

    v4 = *(v14 + 16);
    v6 = *(v14 + 24);
    v7 = v6 - v4;
    if (!__OFSUB__(v6, v4))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_14;
  }

  v8 = __OFSUB__(HIDWORD(v4), v4);
  v9 = HIDWORD(v4) - v4;
  if (v8)
  {
    goto LABEL_17;
  }

  v7 = v9;
LABEL_11:
  result = sub_100142478(&v14, &v11);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7 >> 16)
    {
      __break(1u);
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

double NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.init(keyDescriptorElements:keyDescriptorEncyptionKey:)@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100276834(a2, a3, v9);
  if (!v3)
  {
    v6 = v9[3];
    a1[2] = v9[2];
    a1[3] = v6;
    v7 = v9[5];
    a1[4] = v9[4];
    a1[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    a1[1] = v8;
  }

  return result;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(*(v1 + 2));
  Hasher._combine(_:)(*(v1 + 4));
  Hasher._combine(_:)(*(v1 + 8));
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(*(v1 + 48));
  Hasher._combine(_:)(*(v1 + 56));
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 8));
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + 48));
  Hasher._combine(_:)(*(v0 + 56));
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100252F84()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 6);
  v8 = *(v0 + 7);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v8);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100253094(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if (*v1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v1 + 2);
  v7 = *(v1 + 4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_100253188(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 6);
  v9 = *(v1 + 7);
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  Hasher.init(_seed:)();
  if (v2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v9);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1002532AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V23__derived_struct_equalsySbAG_AGtFZ_0(v9, v10);
}

uint64_t sub_10025331C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x496873696C627570;
  }
}

uint64_t sub_100253360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496873696C627570 && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004BD910 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10025344C(uint64_t a1)
{
  v2 = sub_100279A10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100253488(uint64_t a1)
{
  v2 = sub_100279A10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.SharedKeyDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592570, &qword_10049F9A8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  sub_100029B34(a1, a1[3]);
  sub_100279A10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 56);
    v16 = *(v3 + 40);
    v17 = v10;
    v11 = *(v3 + 88);
    v18 = *(v3 + 72);
    v19 = v11;
    v12 = *(v3 + 24);
    v14 = *(v3 + 8);
    v15 = v12;
    v20 = 1;
    sub_100143F0C(v3, v13);
    sub_100279A64();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[5] = v19;
    v13[0] = v14;
    v13[1] = v15;
    sub_100143EB8(v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NANAttribute.SharedKeyDescriptor.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  if (*(v1 + 8))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v1 + 10);
  v7 = *(v1 + 12);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int NANAttribute.SharedKeyDescriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if (*(v0 + 8))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(v0 + 10);
  v6 = *(v0 + 12);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

__n128 NANAttribute.SharedKeyDescriptor.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10026DEFC(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

Swift::Int sub_100253944()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v3 = *v0;
  v4 = *(v0 + 10);
  v5 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if (v1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100253A64(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 56);
  v9 = *(v1 + 64);
  v5 = *(v1 + 10);
  v6 = *(v1 + 12);
  Hasher._combine(_:)(*v1);
  if (v2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v9);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_100253B64(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v4 = *v1;
  v5 = *(v1 + 10);
  v6 = *(v1 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  if (v2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100253CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13) & 1;
}

unint64_t sub_100253E0C()
{
  v1 = *v0;
  v2 = 0x444967736D6ELL;
  v3 = 0x6C6F72746E6F63;
  v4 = 0x6E6F73616572;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100253EAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284A8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100253ED4(uint64_t a1)
{
  v2 = sub_100279AB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100253F10(uint64_t a1)
{
  v2 = sub_100279AB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.MulticastScheduleChange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 && a3 == a7 && BYTE2(a3) == BYTE2(a7))
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a4, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t NANAttribute.MulticastScheduleChange.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v16 = a5;
  v17 = a3;
  v8 = sub_10005DC58(&qword_100592588, &qword_10049F9B0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - v10;
  sub_100029B34(a1, a1[3]);
  sub_100279AB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v12 = a4;
    v13 = v16;
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOWORD(v18) = v12;
    v19 = 2;
    sub_100279B0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = BYTE2(v12);
    v19 = 3;
    sub_1002782D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v13;
    v19 = 4;
    sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
    sub_100278684();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

void NANAttribute.MulticastScheduleChange.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt64 a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  v9 = HIWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v9);

  NANAttribute.PublicAvailability.hash(into:)(a1, a5);
}

Swift::Int NANAttribute.MulticastScheduleChange.hashValue.getter(Swift::UInt64 a1, Swift::UInt64 a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v8 = HIWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v8);
  NANAttribute.PublicAvailability.hash(into:)(v10, a4);
  return Hasher._finalize()();
}

uint64_t NANAttribute.MulticastScheduleChange.init(from:)(void *a1)
{
  result = sub_10026E918(a1);
  if (v1)
  {
    return v3 & 0xFFFFFF;
  }

  return result;
}

Swift::Int sub_100254314()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 18);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  NANAttribute.PublicAvailability.hash(into:)(v7, v3);
  return Hasher._finalize()();
}

void sub_1002543A8(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);

  NANAttribute.PublicAvailability.hash(into:)(a1, v4);
}

Swift::Int sub_100254420(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  NANAttribute.PublicAvailability.hash(into:)(v8, v4);
  return Hasher._finalize()();
}

uint64_t sub_1002544B0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10026E918(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 18) = BYTE2(v6);
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_100254518(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 18) == *(a2 + 18))
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100254574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000021 && 0x80000001004BD970 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100254608(uint64_t a1)
{
  v2 = sub_100279B60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100254644(uint64_t a1)
{
  v2 = sub_100279B60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.PublicAvailability.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005925A0, &qword_10049F9B8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  sub_100029B34(a1, a1[3]);
  sub_100279B60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
  sub_100278684();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_1002547F8(uint64_t a1, void (*a2)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100254878(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v7, v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002548E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

void *sub_100254934@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10026D54C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_1002549B0(uint64_t a1, uint64_t a2, Swift::UInt8 a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100254A28(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt8 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

uint64_t NANAttribute.PairingIdentityResolution.init(cipherVersion:nonce:tag:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_100275AC0(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

void *NANAttribute.PairingIdentityResolution.init(from:)(void *a1)
{
  result = sub_100271F90(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100254B74()
{
  v1 = 0x65636E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 6775156;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6556726568706963;
  }
}

uint64_t sub_100254BD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284C40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100254BF8(uint64_t a1)
{
  v2 = sub_100279BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100254C34(uint64_t a1)
{
  v2 = sub_100279BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static NANAttribute.PairingIdentityResolution.__derived_struct_equals(_:_:)(_BOOL8 a1, unint64_t a2, _BOOL8 a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, a5, a6))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
}

uint64_t NANAttribute.PairingIdentityResolution.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v9 = sub_10005DC58(&qword_1005925B0, &qword_10049F9C0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - v11;
  sub_100029B34(a1, a1[3]);
  sub_100279BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  sub_1002794B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v14 = v16;
    v13 = v17;
    v18 = a2;
    v19 = a3;
    v20 = 1;
    sub_10000AB0C(a2, a3);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v18, v19);
    v18 = v14;
    v19 = v13;
    v20 = 2;
    sub_10000AB0C(v14, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v18, v19);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t NANAttribute.PairingIdentityResolution.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher._combine(_:)(0);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int NANAttribute.PairingIdentityResolution.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100254FDC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100255058(uint64_t a1)
{
  Hasher._combine(_:)(0);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_1002550C8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100255140@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100271F90(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

BOOL sub_100255190(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v4, v5);
}

__int16 *NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.unsafeMutableAddressor()
{
  if (qword_10058AB58 != -1)
  {
    swift_once();
  }

  return &static NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods;
}

uint64_t static NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.getter()
{
  if (qword_10058AB58 != -1)
  {
    swift_once();
  }

  return static NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods;
}

CoreP2P::NANAttribute::PairingBootstrapping::Method_optional __swiftcall NANAttribute.PairingBootstrapping.Method.validAdvertisedMethod(from:)(CoreP2P::NANAttribute::PairingBootstrapping::Method from)
{
  if (v1 > 0x7Fu)
  {
    if (v1 == 128)
    {
      if ((from.rawValue & 8) != 0)
      {
        v2 = 0;
        v3 = 8;
        return (v3 | (v2 << 16));
      }
    }

    else if (v1 == 256)
    {
      if ((from.rawValue & 0x10) != 0)
      {
        v2 = 0;
        v3 = 16;
        return (v3 | (v2 << 16));
      }
    }

    else if (v1 == 0x8000 && (from.rawValue & 0x8000) != 0)
    {
      v2 = 0;
      v3 = 0x8000;
      return (v3 | (v2 << 16));
    }

LABEL_19:
    v3 = 0;
    v2 = 1;
    return (v3 | (v2 << 16));
  }

  if (v1 == 1)
  {
    if (from.rawValue)
    {
      v2 = 0;
      v3 = 1;
      return (v3 | (v2 << 16));
    }

    goto LABEL_19;
  }

  if (v1 == 32)
  {
    if ((from.rawValue & 2) != 0)
    {
      v2 = 0;
      v3 = 2;
      return (v3 | (v2 << 16));
    }

    goto LABEL_19;
  }

  if (v1 != 64 || (from.rawValue & 4) == 0)
  {
    goto LABEL_19;
  }

  v2 = 0;
  v3 = 4;
  return (v3 | (v2 << 16));
}

BOOL static NANAttribute.PairingBootstrapping.Comeback.__derived_struct_equals(_:_:)(uint64_t a1, char a2, _BOOL8 a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8)
{
  if ((a2 & 1) == 0)
  {
    if ((a6 & 1) != 0 || a1 != a5)
    {
      return 0;
    }

    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
  }

  if (a6)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
  }

  return 0;
}

uint64_t NANAttribute.PairingBootstrapping.Comeback.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  return Data.hash(into:)();
}

Swift::Int NANAttribute.PairingBootstrapping.Comeback.hashValue.getter(Swift::UInt64 a1, char a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10025571C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002557AC(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v1;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  return Data.hash(into:)();
}

Swift::Int sub_100255830(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1002558BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v6, *(a2 + 16), *(a2 + 24));
}

uint64_t NANAttribute.PairingBootstrapping.type.getter()
{
  if ((*(v0 + 1) & 0xFu) >= 3)
  {
    return 3;
  }

  else
  {
    return *(v0 + 1) & 0xF;
  }
}

uint64_t NANAttribute.PairingBootstrapping.comeback.getter()
{
  v1 = v0[1];
  sub_1001AD708(v1, v0[2], v0[3], v0[4]);
  return v1;
}

uint64_t NANAttribute.PairingBootstrapping.comeback.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000449CC(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return result;
}

double NANAttribute.PairingBootstrapping.init(dialogToken:type:status:reason:comeback:method:)@<D0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, __int16 a10)
{
  v17 = a2 & 0xF | (16 * a3);
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  LOBYTE(v21) = a1;
  BYTE1(v21) = v17;
  BYTE2(v21) = a4;
  *(&v21 + 1) = a5;
  *v22 = a6;
  *&v22[8] = a7;
  *&v22[16] = a8;
  *&v22[24] = a10;
  v23[0] = a1;
  v23[1] = v17;
  v23[2] = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  sub_10012A628(&v21, &v20);
  sub_1001440B0(v23);
  v18 = *v22;
  *a9 = v21;
  a9[1] = v18;
  result = *&v22[10];
  *(a9 + 26) = *&v22[10];
  return result;
}

double static NANAttribute.PairingBootstrapping.retryRequest(dialogToken:comebackCookie:method:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, _OWORD *a5@<X8>)
{
  sub_10000AB0C(a2, a3);
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  v13[0] = a1;
  strcpy(&v13[1], "!");
  *&v13[8] = xmmword_10049F6F0;
  *&v13[24] = a2;
  *&v13[32] = a3;
  *&v13[40] = a4;
  v14 = a1;
  v15 = 33;
  v16 = xmmword_10049F6F0;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_10012A628(v13, &v12);
  sub_1001440B0(&v14);
  v10 = *&v13[16];
  *a5 = *v13;
  a5[1] = v10;
  result = *&v13[26];
  *(a5 + 26) = *&v13[26];
  return result;
}

double sub_100255B54@<D0>(char a1@<W0>, __int16 a2@<W1>, unsigned __int8 a3@<W2>, _OWORD *a4@<X8>)
{
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  LOBYTE(v11) = a1;
  *(&v11 + 1) = a3;
  *(&v11 + 1) = 0;
  *v12 = 0uLL;
  *&v12[16] = 0xF000000000000000;
  *&v12[24] = a2;
  v13[0] = a1;
  v13[1] = a3;
  v13[2] = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xF000000000000000;
  v18 = a2;
  sub_10012A628(&v11, &v10);
  sub_1001440B0(v13);
  v8 = *v12;
  *a4 = v11;
  a4[1] = v8;
  result = *&v12[10];
  *(a4 + 26) = *&v12[10];
  return result;
}

double static NANAttribute.PairingBootstrapping.rejectedResponse(dialogToken:method:reason:)@<D0>(char a1@<W0>, __int16 a2@<W1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  LOBYTE(v11) = a1;
  BYTE1(v11) = 18;
  BYTE2(v11) = a3;
  *(&v11 + 1) = 0;
  *v12 = 0uLL;
  *&v12[16] = 0xF000000000000000;
  *&v12[24] = a2;
  v13[0] = a1;
  v13[1] = 18;
  v13[2] = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xF000000000000000;
  v18 = a2;
  sub_10012A628(&v11, &v10);
  sub_1001440B0(v13);
  v8 = *v12;
  *a4 = v11;
  a4[1] = v8;
  result = *&v12[10];
  *(a4 + 26) = *&v12[10];
  return result;
}

double static NANAttribute.PairingBootstrapping.advertising(methods:)@<D0>(__int16 a1@<W0>, _OWORD *a2@<X8>)
{
  if (qword_10058AB58 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = static NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods & a1;
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  LOWORD(v8) = 0;
  BYTE2(v8) = 0;
  *(&v8 + 1) = 0;
  *v9 = 0uLL;
  *&v9[16] = 0xF000000000000000;
  *&v9[24] = v3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0xF000000000000000;
  v16 = v3;
  sub_10012A628(&v8, &v7);
  sub_1001440B0(&v10);
  v4 = *v9;
  *a2 = v8;
  a2[1] = v4;
  result = *&v9[10];
  *(a2 + 26) = *&v9[10];
  return result;
}

void NANAttribute.PairingBootstrapping.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 2));
  if (*(v1 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    Hasher._combine(_:)(1u);
    if (v3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v2);
    }

    Data.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + 40));
}

Swift::Int NANAttribute.PairingBootstrapping.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 2));
  if (*(v0 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 16);
    Hasher._combine(_:)(1u);
    if (v2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v1);
    }

    Data.hash(into:)();
  }

  Hasher._combine(_:)(*(v0 + 40));
  return Hasher._finalize()();
}

Swift::Int sub_100255F40(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANAttribute.PairingBootstrapping.hash(into:)(v2);
  return Hasher._finalize()();
}

double NANAttribute.PairingBootstrapping.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100272138(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 10);
    *(a1 + 26) = *(v7 + 10);
  }

  return result;
}

uint64_t NANAttribute.PairingBootstrapping.encode(to:)(void *a1)
{
  v3 = v1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
    return sub_100002A00(v12);
  }

  LOBYTE(v11[0]) = *(v1 + 1);
  sub_100031694(v12, v13);
  sub_10005DC58(&qword_1005925C0, &qword_10049F9C8);
  sub_10000CADC(&qword_1005925C8, &qword_1005925C0, &qword_10049F9C8, byte_100492EA8);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  LOBYTE(v11[0]) = *(v1 + 2);
  sub_100031694(v12, v13);
  sub_1002782D4();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v5 = *(v1 + 32);
  if (v5 >> 60 == 15)
  {
LABEL_3:
    v11[0] = *(v3 + 40);
    sub_100031694(v12, v13);
    sub_100279C08();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    return sub_100002A00(v12);
  }

  v6 = *(v1 + 24);
  if (*(v1 + 16))
  {
    result = sub_10012A628(v1, v11);
  }

  else
  {
    if (*(v1 + 8) >> 16)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_100031694(v12, v13);
    sub_10012A628(v1, v11);
    result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
LABEL_20:
      sub_100031694(v12, v13);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v12, v13);
      sub_10012A628(v3, v11);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v6, v5);
      sub_1001440B0(v3);
      goto LABEL_3;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    v10 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v7)
  {
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(v6), v6))
  {
    v10 = HIDWORD(v6) - v6;
LABEL_17:
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 > 0xFF)
      {
        __break(1u);
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_100256334(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s7CoreP2P12NANAttributeO20PairingBootstrappingV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7);
}

uint64_t NANAttribute.VendorSpecific.oui.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result);
  return result;
}

uint64_t sub_1002563A0()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 6911343;
  }
}

uint64_t sub_1002563CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6911343 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1002564A8(uint64_t a1)
{
  v2 = sub_100279C5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002564E4(uint64_t a1)
{
  v2 = sub_100279C5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static NANAttribute.VendorSpecific.__derived_struct_equals(_:_:)(int a1, _BOOL8 a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (!sub_1000319F0(a1 & 0xFFFFFF, a4 & 0xFFFFFF))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
}

uint64_t NANAttribute.VendorSpecific.encode(to:)(void *a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v15 = a3;
  v4 = a2;
  v6 = a2 >> 8;
  v7 = HIWORD(a2);
  v8 = sub_10005DC58(&qword_1005925D8, &unk_10049F9D0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_100029B34(a1, a1[3]);
  sub_100279C5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = v4;
  BYTE1(v18) = v6;
  BYTE2(v18) = v7;
  v20 = 0;
  sub_1001F5AF0();
  v12 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    v18 = v15;
    v19 = v16;
    v20 = 1;
    sub_10000AB0C(v15, v16);
    sub_100230328();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v18, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t NANAttribute.VendorSpecific.hash(into:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a2 >> 8;
  v6 = HIWORD(a2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100480F30;
  *(v7 + 32) = v4;
  *(v7 + 33) = v5;
  *(v7 + 34) = v6;
  v8 = sub_10002D874(v7);
  v10 = v9;

  Data.hash(into:)();
  sub_1000124C8(v8, v10);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.VendorSpecific.hashValue.getter(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100480F30;
  *(v6 + 32) = v3;
  *(v6 + 33) = v4;
  *(v6 + 34) = v5;
  v7 = sub_10002D874(v6);
  v9 = v8;

  Data.hash(into:)();
  sub_1000124C8(v7, v9);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100256928()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100480F30;
  *(v3 + 32) = v1;
  *(v3 + 34) = v2;
  v4 = sub_10002D874(v3);
  v6 = v5;

  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002569F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480F30;
  *(v4 + 32) = v2;
  *(v4 + 34) = v3;
  v5 = sub_10002D874(v4);
  v7 = v6;

  Data.hash(into:)();
  sub_1000124C8(v5, v7);

  return Data.hash(into:)();
}

Swift::Int sub_100256AB4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480F30;
  *(v4 + 32) = v2;
  *(v4 + 34) = v3;
  v5 = sub_10002D874(v4);
  v7 = v6;

  Data.hash(into:)();
  sub_1000124C8(v5, v7);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100256B7C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10026C2AC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_100256BE4(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (!sub_1000319F0(*a1 | (*(a1 + 2) << 16), *a2 | (*(a2 + 2) << 16)))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v4, v5);
}

uint64_t (*NANAttribute.CustomDeviceInformation.CustomAttributes.flags.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_100256CB0;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.datapathSubscribeID.setter(uint64_t result)
{
  *(v1 + 1) = result;
  *(v1 + 2) = BYTE1(result) & 1;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.publisherAuthenticationToken.getter()
{
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 28);
  v2 = *v1;
  sub_10005D67C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.publisherAuthenticationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 28);
  result = sub_100017554(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encryptedSignature.getter()
{
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 32);
  v2 = *v1;
  sub_10005D67C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encryptedSignature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 32);
  result = sub_100017554(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encryptedExtraServiceSpecificInfo.getter()
{
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 36);
  v2 = *v1;
  sub_10005D67C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encryptedExtraServiceSpecificInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 36);
  result = sub_100017554(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

double NANAttribute.CustomDeviceInformation.CustomAttributes.keepAliveDatapathIdentifiers.getter()
{
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);

  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.keepAliveDatapathIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

double NANAttribute.CustomDeviceInformation.CustomAttributes.multicastLinkConditionResponse.getter()
{
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);

  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastLinkConditionResponse.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

double NANAttribute.CustomDeviceInformation.CustomAttributes.multicastTxStatsInformation.getter()
{
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);

  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastTxStatsInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 56));

  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastBlobData.getter()
{
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 60);
  v2 = *v1;
  sub_10005D67C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastBlobData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 60);
  result = sub_100017554(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

void *NANAttribute.CustomDeviceInformation.CustomAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v220 = a2;
  v218 = type metadata accessor for DispatchTimeInterval();
  v222 = *(v218 - 8);
  __chkstk_darwin();
  v217 = (&v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v216 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v208 = &v182 - v8;
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v207 = &v182 - v9;
  v228 = sub_10005DC58(&qword_10058BBE8, &qword_100481660);
  v230 = *(v228 - 8);
  __chkstk_darwin();
  v231 = &v182 - v10;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v215 = &v182 - v11;
  v12 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v211 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v204 = &v182 - v15;
  v16 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v17 = __chkstk_darwin();
  v19 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = 0;
  v19[2] = 1;
  v20 = v16[8];
  v221 = v13;
  v22 = v13[7];
  v21 = v13 + 7;
  v202 = v22;
  v203 = v20;
  v212 = v12;
  (v22)(&v19[v20], 1, 1, v12, v17);
  v23 = &v19[v16[9]];
  v232 = xmmword_100483C50;
  *v23 = xmmword_100483C50;
  v225 = &v19[v16[10]];
  v226 = v23;
  *v225 = xmmword_100483C50;
  v219 = &v19[v16[11]];
  *v219 = xmmword_100483C50;
  v24 = v16[12];
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v213 = v26 + 56;
  v214 = v24;
  v227 = v27;
  v27(&v19[v24], 1, 1, v25);
  v229 = v16[13];
  *&v19[v229] = _swiftEmptyArrayStorage;
  v28 = v16[14];
  v205 = *(v6 + 56);
  v206 = v28;
  v209 = v6 + 56;
  v210 = v5;
  v205(&v19[v28], 1, 1, v5);
  v29 = v16[15];
  *&v19[v29] = 0;
  v30 = &v19[v16[16]];
  *v30 = 0;
  *(v30 + 1) = 0;
  *(v30 + 2) = 0;
  v31 = v16[17];
  v233 = v19;
  v32 = &v19[v31];
  *&v19[v31] = v232;
  v33 = a1[3];
  *&v232 = a1;
  sub_100029B34(a1, v33);
  v34 = v234;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v34)
  {
    goto LABEL_4;
  }

  v223 = v25;
  v224 = v32;
  v195 = v30;
  v196 = v29;
  v194 = v21;
  sub_10005DC58(&qword_10058CF78, &qword_100484198);
  sub_100031694(v243, v243[3]);
  sub_1000D2B58();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v234 = 0;
  result = v239[0];
  v200 = *(v239[0] + 16);
  if (!v200)
  {
LABEL_128:

    v177 = v220;
    sub_100002A00(v243);
    v178 = v233;
    sub_1002774DC(v233, v177, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    sub_100002A00(v232);
    return sub_100277544(v178, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  }

  v36 = 0;
  v191 = 0;
  v192 = 0;
  v201 = v239[0] + 32;
  v188 = enum case for DispatchTimeInterval.seconds(_:);
  v37 = v223;
  v186 = (v222 + 32);
  v187 = (v222 + 104);
  v38 = v231;
  v198 = (v230 + 8);
  v185 = (v221 + 4);
  v39 = _swiftEmptyArrayStorage;
  v221 = v239[0];
  v40 = v224;
  while (1)
  {
    if (v36 >= result[2])
    {
      __break(1u);
LABEL_143:
      __break(1u);
      return result;
    }

    v46 = (v201 + 24 * v36);
    v47 = *(v46 + 1);
    v48 = *(v46 + 2);
    v49 = *v46;
    v230 = v48;
    if (v49 > 5)
    {
      break;
    }

    if (v49 <= 2)
    {
      if (!v49)
      {
        v66 = type metadata accessor for BinaryDecoder();
        v67 = swift_allocObject();
        v67[5] = &_swiftEmptyDictionarySingleton;
        v67[2] = v47;
        v67[3] = v48;
        v68 = v48 >> 62;
        if ((v48 >> 62) > 1)
        {
          v69 = 0;
          if (v68 == 2)
          {
            v69 = *(v47 + 16);
          }
        }

        else
        {
          v69 = v47;
          if (!v68)
          {
            v69 = 0;
          }
        }

        v67[4] = v69;
        swift_beginAccess();
        v67[5] = &_swiftEmptyDictionarySingleton;
        v241 = v66;
        v242 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v239[0] = v67;
        sub_10000AB0C(v47, v48);
        sub_10000AB0C(v47, v48);

        v119 = v234;
        v120 = UInt8.init(from:)();
        v234 = v119;
        if (v119)
        {

          sub_1000124C8(v47, v48);

          goto LABEL_3;
        }

        v121 = v120;

        sub_1000124C8(v47, v48);
        *v233 = v121;
        v45 = v39;
        goto LABEL_106;
      }

      if (v49 == 1)
      {
        v83 = type metadata accessor for BinaryDecoder();
        v84 = swift_allocObject();
        v85 = v84;
        v84[5] = &_swiftEmptyDictionarySingleton;
        v84[2] = v47;
        v84[3] = v48;
        v86 = v48 >> 62;
        if ((v48 >> 62) > 1)
        {
          v87 = 0;
          if (v86 == 2)
          {
            v87 = *(v47 + 16);
          }
        }

        else
        {
          v87 = v47;
          if (!v86)
          {
            v87 = 0;
          }
        }

        v84[4] = v87;
        swift_beginAccess();
        *(v85 + 40) = &_swiftEmptyDictionarySingleton;
        v241 = &type metadata for BinaryDecoder.UnkeyedContainer;
        v242 = sub_1000325F0();
        v239[0] = v85;
        v126 = *sub_100031694(v239, &type metadata for BinaryDecoder.UnkeyedContainer);
        v237 = v83;
        v238 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v236[0] = v126;
        v127 = v230;
        sub_10000AB0C(v47, v230);
        sub_10000AB0C(v47, v127);

        v128 = v234;
        v129 = UInt8.init(from:)();

        v234 = v128;
        if (v128)
        {

          v179 = v47;
          v180 = v127;
          goto LABEL_136;
        }

        sub_1000124C8(v47, v127);
        sub_100002A00(v239);
        v130 = v233;
        v233[1] = v129;
        v130[2] = 0;
        goto LABEL_77;
      }

      type metadata accessor for BinaryDecoder();
      v50 = swift_allocObject();
      v51 = 0;
      v50[5] = &_swiftEmptyDictionarySingleton;
      v50[2] = v47;
      v50[3] = v48;
      v193 = v50;
      v52 = v48 >> 62;
      if ((v48 >> 62) > 1)
      {
        if (v52 == 2)
        {
          v51 = *(v47 + 16);
        }
      }

      else if (v52)
      {
        v51 = v47;
      }

      v197 = v47;
      v101 = v193;
      *(v193 + 32) = v51;
      swift_beginAccess();
      *(v101 + 40) = &_swiftEmptyDictionarySingleton;
      v241 = &type metadata for BinaryDecoder.UnkeyedContainer;
      v242 = sub_1000325F0();
      v239[0] = v101;
      result = sub_100031694(v239, &type metadata for BinaryDecoder.UnkeyedContainer);
      v102 = *result;
      v104 = *(*result + 24);
      v103 = *(*result + 32);
      v105 = *(*result + 16);
      v106 = v104 >> 62;
      v199 = v39;
      if ((v104 >> 62) > 1)
      {
        if (v106 != 2)
        {
          if (!v103)
          {
LABEL_138:
            sub_10000B02C();
            swift_allocError();
            *v181 = 0;
            *(v181 + 8) = 0;
            *(v181 + 16) = 2;
            swift_willThrow();
            sub_10000AB0C(v197, v48);

LABEL_141:
            sub_100002A00(v239);
            goto LABEL_3;
          }

          v160 = 0;
          goto LABEL_118;
        }

        v107 = *(v105 + 24);
      }

      else if (v106)
      {
        v107 = v105 >> 32;
      }

      else
      {
        v107 = BYTE6(v104);
      }

      if (v103 == v107)
      {
        goto LABEL_138;
      }

      if (v106 == 2)
      {
        v160 = *(v105 + 24);
      }

      else if (v106 == 1)
      {
        v160 = v105 >> 32;
      }

      else
      {
        v160 = BYTE6(v104);
      }

LABEL_118:
      if (v160 < v103)
      {
        goto LABEL_143;
      }

      v161 = v102;
      v162 = v197;
      v163 = v230;
      sub_10000AB0C(v197, v230);
      sub_10000AB0C(v162, v163);

      v164 = Data._Representation.subscript.getter();
      v166 = v161;
      v167 = *(v161 + 16);
      v168 = *(v161 + 24);
      v169 = v168 >> 62;
      if ((v168 >> 62) > 1)
      {
        v38 = v231;
        v170 = v212;
        v171 = v199;
        if (v169 == 2)
        {
          v172 = *(v167 + 24);
        }

        else
        {
          v172 = 0;
        }
      }

      else
      {
        v38 = v231;
        v170 = v212;
        v171 = v199;
        if (v169)
        {
          v172 = v167 >> 32;
        }

        else
        {
          v172 = BYTE6(v168);
        }
      }

      v173 = v230;
      *(v166 + 32) = v172;
      v236[0] = v164;
      v236[1] = v165;
      v174 = v211;
      v175 = v234;
      P256.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
      v234 = v175;
      if (v175)
      {

        sub_1000124C8(v197, v173);
        goto LABEL_141;
      }

      sub_1000124C8(v197, v173);
      v176 = v204;
      (*v185)(v204, v174, v170);
      v202(v176, 0, 1, v170);
      sub_100002A00(v239);
      sub_1000B1B78(v176, &v233[v203], &unk_100595C40, &qword_100499070);
      v45 = v171;
      goto LABEL_106;
    }

    if (v49 == 3)
    {
      v41 = *v226;
      v42 = v226[1];
      sub_10000AB0C(v47, v48);
      v43 = v41;
      v44 = v226;
    }

    else
    {
      if (v49 != 4)
      {
        v57 = v36;
        v58 = v38;
        v59 = v219;
        v60 = *v219;
        v61 = *(v219 + 1);
        sub_10000AB0C(v47, v48);
        v62 = v60;
        v37 = v223;
        sub_100017554(v62, v61);
        v40 = v224;
        result = v221;
        *v59 = v47;
        v59[1] = v48;
        v38 = v58;
        v36 = v57;
        goto LABEL_9;
      }

      v93 = *v225;
      v42 = *(v225 + 1);
      sub_10000AB0C(v47, v48);
      v43 = v93;
      v44 = v225;
    }

    sub_100017554(v43, v42);
    result = v221;
    *v44 = v47;
    v44[1] = v48;
    v37 = v223;
    v40 = v224;
LABEL_9:
    v45 = v39;
LABEL_10:
    ++v36;
    v39 = v45;
    if (v36 == v200)
    {
      goto LABEL_128;
    }
  }

  v53 = v227;
  if (v49 > 8)
  {
    switch(v49)
    {
      case 9:
        sub_10000AB0C(v47, v48);
        sub_10000AB0C(v47, v48);
        v75 = v47;
        v76 = v48;
        v77 = sub_100033AA8(_swiftEmptyArrayStorage);
        v78 = type metadata accessor for BinaryDecoder();
        v79 = swift_allocObject();
        v79[5] = &_swiftEmptyDictionarySingleton;
        v79[2] = v75;
        v79[3] = v76;
        v80 = v76 >> 62;
        if ((v76 >> 62) > 1)
        {
          v81 = v75;
          v82 = 0;
          if (v80 == 2)
          {
            v82 = *(v75 + 16);
          }
        }

        else
        {
          v81 = v75;
          v82 = v75;
          if (!v80)
          {
            v82 = 0;
          }
        }

        v79[4] = v82;
        swift_beginAccess();
        v79[5] = v77;
        v241 = &type metadata for BinaryDecoder.UnkeyedContainer;
        v242 = sub_1000325F0();
        v239[0] = v79;
        v122 = *sub_100031694(v239, &type metadata for BinaryDecoder.UnkeyedContainer);
        v237 = v78;
        v238 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v236[0] = v122;

        v123 = v234;
        v124 = sub_100226288(v236);
        v234 = v123;
        if (v123)
        {

          v179 = v81;
          goto LABEL_133;
        }

        v125 = v124;

        sub_1000124C8(v81, v230);
        sub_100002A00(v239);

        *&v233[v196] = v125;
        v191 = v125;
LABEL_77:
        v45 = v39;
        goto LABEL_105;
      case 10:
        sub_10000AB0C(v47, v48);
        sub_10000AB0C(v47, v48);
        v94 = v47;
        v95 = v48;
        v96 = sub_100033AA8(_swiftEmptyArrayStorage);
        v97 = type metadata accessor for BinaryDecoder();
        v98 = swift_allocObject();
        v98[5] = &_swiftEmptyDictionarySingleton;
        v98[2] = v94;
        v98[3] = v95;
        v99 = v95 >> 62;
        v197 = v94;
        if ((v95 >> 62) > 1)
        {
          v100 = 0;
          if (v99 == 2)
          {
            v100 = *(v197 + 16);
          }
        }

        else
        {
          v100 = v94;
          if (!v99)
          {
            v100 = 0;
          }
        }

        v98[4] = v100;
        swift_beginAccess();
        v98[5] = v96;
        v241 = &type metadata for BinaryDecoder.UnkeyedContainer;
        v242 = sub_1000325F0();
        v239[0] = v98;
        v151 = *sub_100031694(v239, &type metadata for BinaryDecoder.UnkeyedContainer);
        v237 = v97;
        v238 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v236[0] = v151;

        v152 = v234;
        v153 = sub_100225EE0(v236);
        v234 = v152;
        if (v152)
        {

          v179 = v197;
LABEL_133:
          v180 = v230;
LABEL_136:
          sub_1000124C8(v179, v180);
          sub_100002A00(v239);
          goto LABEL_3;
        }

        v156 = v153;
        v157 = v154;
        v158 = v155;

        sub_1000124C8(v197, v230);
        sub_100002A00(v239);

        v159 = v195;
        *v195 = v156;
        *(v159 + 1) = v157;
        v192 = v156;
        v45 = v39;
        *(v159 + 2) = v158;
        goto LABEL_105;
      case 11:
        v63 = *v40;
        v64 = v40[1];
        sub_10000AB0C(v47, v48);
        v65 = v63;
        v37 = v223;
        sub_100017554(v65, v64);
        v40 = v224;
        result = v221;
        *v224 = v47;
        v40[1] = v48;
        break;
    }

    goto LABEL_9;
  }

  if (v49 == 6)
  {
    sub_10000AB0C(v47, v48);
    sub_10000AB0C(v47, v48);
    v70 = v234;
    sub_1002A5C4C(v47, v48, v239);
    v234 = v70;
    if (v70)
    {

      sub_1000124C8(v47, v48);
      sub_1000124C8(v47, v48);
      goto LABEL_3;
    }

    sub_1000124C8(v47, v48);
    v71 = v36;
    v72 = v38;
    v73 = v215;
    UUID.init(uuid:)();
    sub_1000124C8(v47, v48);
    v53(v73, 0, 1, v37);
    v74 = v73;
    v38 = v72;
    v36 = v71;
    sub_1000B1B78(v74, &v233[v214], &qword_10058F4D0, &qword_100491AB0);
    v45 = v39;
    result = v221;
    goto LABEL_107;
  }

  v199 = v39;
  if (v49 != 7)
  {
    type metadata accessor for BinaryDecoder();
    v54 = swift_allocObject();
    v55 = 0;
    v54[5] = &_swiftEmptyDictionarySingleton;
    v54[2] = v47;
    v54[3] = v48;
    v56 = v48 >> 62;
    if ((v48 >> 62) > 1)
    {
      if (v56 == 2)
      {
        v55 = *(v47 + 16);
      }
    }

    else if (v56)
    {
      v55 = v47;
    }

    v54[4] = v55;
    swift_beginAccess();
    v54[5] = &_swiftEmptyDictionarySingleton;
    v241 = &type metadata for BinaryDecoder.UnkeyedContainer;
    v108 = sub_1000325F0();
    v242 = v108;
    v239[0] = v54;
    v109 = *sub_100031694(v239, &type metadata for BinaryDecoder.UnkeyedContainer);
    v237 = &type metadata for BinaryDecoder.UnkeyedContainer;
    v238 = v108;
    v236[0] = v109;
    sub_100031694(v236, &type metadata for BinaryDecoder.UnkeyedContainer);
    v110 = v230;
    sub_10000AB0C(v47, v230);

    v197 = v47;
    sub_10000AB0C(v47, v110);

    v111 = v234;
    v112 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v111)
    {
      sub_100002A00(v236);

      sub_1000124C8(v197, v230);
      goto LABEL_141;
    }

    v113 = v217;
    v114 = v218;
    *v217 = v112;
    (*v187)(v113, v188, v114);
    v115 = v216;
    (*v186)(v216, v113, v114);
    sub_100031694(v236, v237);
    sub_10021F820();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v234 = 0;
    v116 = v210;
    *(v115 + *(v210 + 20)) = v235;
    sub_100002A00(v236);
    v117 = v208;
    sub_1002774DC(v115, v208, type metadata accessor for NANInternetSharingStatistics.Requester);

    sub_100277544(v115, type metadata accessor for NANInternetSharingStatistics.Requester);

    sub_1000124C8(v197, v230);
    v118 = v207;
    sub_100262DC8(v117, v207, type metadata accessor for NANInternetSharingStatistics.Requester);
    v205(v118, 0, 1, v116);
    sub_100002A00(v239);
    sub_1000B1B78(v118, &v233[v206], &unk_100596870, &unk_1004B0F60);
    v45 = v199;
LABEL_105:
    v38 = v231;
LABEL_106:
    result = v221;
    v37 = v223;
LABEL_107:
    v40 = v224;
    goto LABEL_10;
  }

  v184 = v36;
  v88 = v38;
  sub_10000AB0C(v47, v48);
  v89 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v90 = swift_allocObject();
  v91 = 0;
  v90[5] = &_swiftEmptyDictionarySingleton;
  v90[2] = v47;
  v90[3] = v48;
  v92 = v48 >> 62;
  if ((v48 >> 62) > 1)
  {
    if (v92 == 2)
    {
      v91 = *(v47 + 16);
    }
  }

  else if (v92)
  {
    v91 = v47;
  }

  v90[4] = v91;
  swift_beginAccess();
  v90[5] = v89;
  v132 = v90[2];
  v131 = v90[3];
  v197 = v47;
  sub_10000AB0C(v47, v48);
  v133 = v131 >> 62;
  v189 = v132 >> 32;
  v190 = v132;
  v45 = _swiftEmptyArrayStorage;
  v193 = BYTE6(v131);
  while (2)
  {
    v134 = v229;
LABEL_82:
    v135 = v90[4];
    if (v133 <= 1)
    {
      v136 = v193;
      v137 = v230;
      if (v133)
      {
        v136 = v189;
      }

      goto LABEL_87;
    }

    v137 = v230;
    if (v133 == 2)
    {
      v136 = *(v190 + 24);
LABEL_87:
      if (v135 >= v136)
      {
        goto LABEL_108;
      }
    }

    else if ((v135 & 0x8000000000000000) == 0)
    {
LABEL_108:

      sub_1000124C8(v197, v137);

      *&v233[v134] = v45;
      result = v221;
      v37 = v223;
      v40 = v224;
      v38 = v88;
      v36 = v184;
      goto LABEL_10;
    }

    v239[0] = v90;

    sub_10005DC58(&qword_1005925E8, &qword_10049F9E0);
    sub_10000CADC(&qword_1005925F0, &qword_1005925E8, &qword_10049F9E0, byte_10048926C);
    KeyedDecodingContainer.init<A>(_:)();
    LOBYTE(v239[0]) = 0;
    v138 = v228;
    v139 = v234;
    v140 = KeyedDecodingContainer.decode(_:forKey:)();
    if (!v139)
    {
      v141 = v140;
      LOBYTE(v236[0]) = 1;
      sub_10003804C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*v198)(v88, v138);
      v2.i32[0] = v239[0];
      v143 = BYTE4(v239[0]);
      LODWORD(v234) = BYTE5(v239[0]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1001160AC(0, *(v45 + 2) + 1, 1, v45);
      }

      v144 = v141;
      v146 = *(v45 + 2);
      v145 = *(v45 + 3);
      v147 = v146 + 1;
      if (v146 >= v145 >> 1)
      {
        v183 = v146 + 1;
        v150 = sub_1001160AC((v145 > 1), v146 + 1, 1, v45);
        v147 = v183;
        v45 = v150;
        v144 = v141;
      }

      v148 = vmovl_u8(v2).u64[0];
      *(v45 + 2) = v147;
      v149 = &v45[8 * v146 - v146];
      *(v149 + 32) = v144;
      *(v149 + 33) = vuzp1_s8(v148, v148).u32[0];
      *(v149 + 37) = v143;
      *(v149 + 38) = v234;
      v234 = 0;
      v88 = v231;
      continue;
    }

    break;
  }

  (*v198)(v88, v138);
  v234 = 0;
  v236[0] = v139;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  v142 = swift_dynamicCast();
  v134 = v229;
  if (!v142)
  {
    goto LABEL_130;
  }

  if (v240 == 2)
  {
    if ((v239[0] & 1) == 0)
    {
      goto LABEL_130;
    }

    v88 = v231;
    goto LABEL_82;
  }

  sub_1000B2594(v239[0], v239[1], v240);
LABEL_130:

  sub_1000124C8(v197, v230);
LABEL_3:
  sub_100002A00(v243);
LABEL_4:
  sub_100002A00(v232);
  return sub_100277544(v233, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void NANAttribute.CustomDeviceInformation.CustomAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v80 = &v79 - v5;
  v82 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v79 = *(v82 - 8);
  __chkstk_darwin();
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v84 = &v79 - v7;
  v8 = type metadata accessor for UUID();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin();
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = (&v79 - v10);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v12 = &v79 - v11;
  v13 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v88 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v17 = *v3;
  if (*v3)
  {
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100480F40;
    *(v18 + 32) = v17;
    v19 = sub_10002D874(v18);
    v21 = v20;

    sub_100259C00(0, v19, v21, v16);
    if (v2)
    {
      sub_1000124C8(v19, v21);

      return;
    }

    sub_1000124C8(v19, v21);
  }

  if (*(v3 + 2))
  {
    v22 = v16;
    v23 = v2;
    goto LABEL_9;
  }

  v24 = *(v3 + 1);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100480F40;
  *(v25 + 32) = v24;
  v26 = sub_10002D874(v25);
  v28 = v27;

  v22 = v16;
  sub_100259C00(1, v26, v28, v16);
  v23 = v2;
  v29 = v26;
  if (!v2)
  {
    sub_1000124C8(v26, v28);
LABEL_9:
    v30 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    sub_100012400(v3 + v30[6], v12, &unk_100595C40, &qword_100499070);
    v31 = v88;
    if (v88[6](v12, 1, v13) == 1)
    {
      sub_100016290(v12, &unk_100595C40, &qword_100499070);
    }

    else
    {
      (*(v31 + 32))(v15, v12, v13);
      v32 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
      v28 = v33;
      sub_100259C00(2, v32, v33, v22);
      if (v23)
      {
        (*(v31 + 8))(v15, v13);
LABEL_13:
        v29 = v32;
        goto LABEL_14;
      }

      (*(v31 + 8))(v15, v13);
      sub_1000124C8(v32, v28);
    }

    v34 = v3 + v30[7];
    v35 = *(v34 + 1);
    v36 = v87;
    if (v35 >> 60 != 15)
    {
      v37 = *v34;
      sub_10000AB0C(*v34, *(v34 + 1));
      sub_100259C00(3, v37, v35, v22);
      if (v23)
      {
        goto LABEL_25;
      }

      sub_100017554(v37, v35);
    }

    v38 = v3 + v30[8];
    v35 = *(v38 + 1);
    if (v35 >> 60 != 15)
    {
      v37 = *v38;
      sub_10000AB0C(*v38, *(v38 + 1));
      sub_100259C00(4, v37, v35, v22);
      if (v23)
      {
        goto LABEL_25;
      }

      sub_100017554(v37, v35);
    }

    v39 = v3 + v30[9];
    v35 = *(v39 + 1);
    if (v35 >> 60 == 15)
    {
      v88 = v22;
LABEL_28:
      v40 = v84;
      sub_100012400(v3 + v30[10], v84, &qword_10058F4D0, &qword_100491AB0);
      v41 = v85;
      v42 = v86;
      if ((*(v85 + 48))(v40, 1, v86) == 1)
      {
        sub_100016290(v40, &qword_10058F4D0, &qword_100491AB0);
        v43 = v88;
        goto LABEL_33;
      }

      (*(v41 + 32))(v36, v40, v42);
      v44 = v83;
      (*(v41 + 16))(v83, v36, v42);
      v45 = v41;
      v89[0] = UUID.uuid.getter();
      v89[1] = v46;
      v32 = sub_10004F3B0(v89, &v90);
      v28 = v47;
      v48 = *(v45 + 8);
      v48(v44, v42);
      v43 = v88;
      sub_100259C00(6, v32, v28, v88);
      if (!v23)
      {
        v48(v87, v42);
        sub_1000124C8(v32, v28);
LABEL_33:
        if ((*(v3 + v30[11]))[2])
        {
          v49 = v30;
          v50 = sub_100033AA8(_swiftEmptyArrayStorage);
          v51 = type metadata accessor for BinaryEncoder();
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_100480A90;
          *(v52 + 32) = v50;
          v91 = v51;
          v92 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
          v89[0] = v52;
          sub_100279CB0();

          Array<A>.encode(to:)();
          if (v23)
          {
            goto LABEL_47;
          }

          sub_100002A00(v89);
          swift_beginAccess();
          v53 = *(v52 + 16);
          v54 = *(v52 + 24);
          sub_10000AB0C(v53, v54);

          sub_100259C00(7, v53, v54, v43);
          sub_1000124C8(v53, v54);
          v30 = v49;
        }

        v55 = v80;
        sub_100012400(v3 + v30[12], v80, &unk_100596870, &unk_1004B0F60);
        if ((*(v79 + 48))(v55, 1, v82) == 1)
        {
          sub_100016290(v55, &unk_100596870, &unk_1004B0F60);
LABEL_39:
          v56 = *(v3 + v30[13]);
          if (v56)
          {
            v57 = v30;
            v58 = sub_100033AA8(_swiftEmptyArrayStorage);
            v59 = type metadata accessor for BinaryEncoder();
            v60 = swift_allocObject();
            *(v60 + 16) = xmmword_100480A90;
            *(v60 + 32) = v58;
            v91 = v59;
            v92 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
            v89[0] = v60;

            NANMulticastLinkCondition.encode(to:)(v89, v56);
            if (v23)
            {
              goto LABEL_47;
            }

            sub_100002A00(v89);
            swift_beginAccess();
            v61 = *(v60 + 16);
            v62 = *(v60 + 24);
            sub_10000AB0C(v61, v62);

            sub_100259C00(9, v61, v62, v43);
            sub_1000124C8(v61, v62);
            v63 = 0;
            v30 = v57;
          }

          else
          {
            v63 = v23;
          }

          v67 = (v3 + v30[14]);
          v68 = *v67;
          if (*v67)
          {
            v87 = v30;
            v88 = v3;
            v70 = v67[1];
            v69 = v67[2];
            v71 = sub_100033AA8(_swiftEmptyArrayStorage);
            v72 = type metadata accessor for BinaryEncoder();
            v73 = swift_allocObject();
            *(v73 + 16) = xmmword_100480A90;
            *(v73 + 32) = v71;
            v91 = v72;
            v92 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
            v89[0] = v73;

            NANMulticastTxStats.encode(to:)(v89, v68, v70, v69);
            if (v63)
            {
              goto LABEL_47;
            }

            sub_100002A00(v89);
            swift_beginAccess();
            v74 = *(v73 + 16);
            v75 = *(v73 + 24);
            sub_10000AB0C(v74, v75);

            sub_100259C00(10, v74, v75, v43);
            sub_1000124C8(v74, v75);
            v30 = v87;
            v3 = v88;
          }

          v76 = v3 + v30[15];
          v35 = *(v76 + 1);
          if (v35 >> 60 == 15)
          {
            goto LABEL_26;
          }

          v37 = *v76;
          sub_10000AB0C(*v76, *(v76 + 1));
          sub_100259C00(11, v37, v35, v43);
          goto LABEL_25;
        }

        sub_100262DC8(v55, v81, type metadata accessor for NANInternetSharingStatistics.Requester);
        v64 = sub_100033AA8(_swiftEmptyArrayStorage);
        type metadata accessor for BinaryEncoder();
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_100480A90;
        *(v65 + 32) = v64;
        v91 = &type metadata for BinaryEncoder.UnkeyedContainer;
        v92 = sub_1000D12E4();
        v89[0] = v65;

        v66 = DispatchTimeInterval.rawSeconds.getter();
        if (v66 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v66 <= 0x7FFFFFFF)
        {
          sub_100031694(v89, &type metadata for BinaryEncoder.UnkeyedContainer);
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          if (v23)
          {
            sub_100277544(v81, type metadata accessor for NANInternetSharingStatistics.Requester);
LABEL_47:

            sub_100002A00(v89);
            goto LABEL_26;
          }

          sub_100031694(v89, v91);
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          sub_100002A00(v89);
          swift_beginAccess();
          v77 = *(v65 + 16);
          v78 = *(v65 + 24);
          sub_10000AB0C(v77, v78);

          sub_100259C00(8, v77, v78, v43);
          sub_100277544(v81, type metadata accessor for NANInternetSharingStatistics.Requester);
          sub_1000124C8(v77, v78);
          goto LABEL_39;
        }

        __break(1u);
      }

      v48(v87, v42);
      goto LABEL_13;
    }

    v37 = *v39;
    sub_10000AB0C(*v39, *(v39 + 1));
    sub_100259C00(5, v37, v35, v22);
    if (!v23)
    {
      v88 = v22;
      sub_100017554(v37, v35);
      goto LABEL_28;
    }

LABEL_25:
    sub_100017554(v37, v35);
    goto LABEL_26;
  }

LABEL_14:
  sub_1000124C8(v29, v28);
LABEL_26:
}

uint64_t sub_100259C00(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
      return v12;
    }

LABEL_8:
    swift_beginAccess();
    sub_100031694(a4 + 16, *(a4 + 40));
    sub_10000AB0C(a2, a3);
    sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
    sub_10000CADC(&qword_100592250, &qword_10058CF90, &qword_1004841A0, protocol conformance descriptor for TypeLengthValue<A, B>);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    swift_endAccess();
    return sub_1000124C8(a2, a3);
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v5;
LABEL_7:
  if (v5 < 0xFFFF)
  {
    goto LABEL_8;
  }

  sub_10000B02C();
  swift_allocError();
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 2;
  return swift_willThrow();
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v85 = a1;
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin();
  v84 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v81 = &v72 - v5;
  v6 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v79 = *(v6 - 8);
  __chkstk_darwin();
  v73 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v9 = &v72 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v72 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v14 = &v72 - v13;
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v16 = &v72 - v15;
  v17 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v80 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002774DC(v2, v80, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v19 = *v2;
  v75 = v14;
  if (v19)
  {
    LODWORD(v103) = v19;
    v20 = &type metadata for NANAttribute.CustomDeviceInformation.Flags;
    v21 = 0xE500000000000000;
    v22 = 0x7367616C66;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
  }

  v101 = v22;
  v102 = v21;
  v106 = v20;
  if (v2[2])
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
  }

  else
  {
    v24 = 0x80000001004BD670;
    LOBYTE(v109) = v2[1];
    v25 = &type metadata for UInt8;
    v23 = 0xD000000000000013;
  }

  v76 = v11;
  v77 = v10;
  v78 = v9;
  v107 = v23;
  v108 = v24;
  v112 = v25;
  v113 = 0x7974697275636573;
  v114 = 0xE800000000000000;
  sub_100012400(&v2[v17[6]], v16, &unk_100595C40, &qword_100499070);
  v26 = type metadata accessor for P256.KeyAgreement.PublicKey();
  result = (*(*(v26 - 8) + 48))(v16, 1, v26);
  v28 = 0uLL;
  if (result != 1)
  {
    result = sub_100016290(v16, &unk_100595C40, &qword_100499070);
    v28 = xmmword_10049F700;
  }

  v29 = 0;
  v94 = v28;
  v30 = 0x80000001004BD650;
  if (*&v2[v17[7] + 8] >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0xD000000000000014;
  }

  if (*&v2[v17[7] + 8] >> 60 == 15)
  {
    v30 = 0;
  }

  v95 = v31;
  v96 = v30;
  v32 = 0x80000001004BD630;
  if (*&v2[v17[8] + 8] >> 60 == 15)
  {
    v33 = 0;
  }

  else
  {
    v33 = 0xD000000000000013;
  }

  if (*&v2[v17[8] + 8] >> 60 == 15)
  {
    v32 = 0;
  }

  v97 = v33;
  v98 = v32;
  v34 = vdup_n_s32(*&v2[v17[9] + 8] >> 60 == 15);
  v35.i64[0] = v34.u32[0];
  v35.i64[1] = v34.u32[1];
  v99 = vandq_s8(vcgezq_s64(vshlq_n_s64(v35, 0x3FuLL)), xmmword_10049F710);
  v36 = _swiftEmptyArrayStorage;
LABEL_20:
  v37 = 4;
  if (v29 > 4)
  {
    v37 = v29;
  }

  v38 = v37 + 1;
  v39 = 16 * v29 + 40;
  while (v29 != 4)
  {
    if (v38 == ++v29)
    {
      __break(1u);
      return result;
    }

    v40 = v39 + 16;
    v41 = *&v93[v39];
    v39 += 16;
    if (v41)
    {
      v74 = v2;
      v42 = v17;
      v43 = *(&v91 + v40 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      v44 = v6;
      if ((result & 1) == 0)
      {
        result = sub_100115F7C(0, *(v36 + 2) + 1, 1, v36);
        v36 = result;
      }

      v46 = *(v36 + 2);
      v45 = *(v36 + 3);
      if (v46 >= v45 >> 1)
      {
        result = sub_100115F7C((v45 > 1), v46 + 1, 1, v36);
        v36 = result;
      }

      *(v36 + 2) = v46 + 1;
      v47 = &v36[16 * v46];
      *(v47 + 4) = v43;
      *(v47 + 5) = v41;
      v6 = v44;
      v17 = v42;
      v2 = v74;
      goto LABEL_20;
    }
  }

  sub_10005DC58(&unk_100599FD0, &qword_100482530);
  swift_arrayDestroy();
  *&v90 = v36;
  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0, &protocol conformance descriptor for [A]);
  v48 = BidirectionalCollection<>.joined(separator:)();
  v50 = v49;

  v117 = &type metadata for String;
  v115 = v48;
  v116 = v50;
  v51 = v75;
  sub_100012400(&v2[v17[10]], v75, &qword_10058F4D0, &qword_100491AB0);
  v53 = v76;
  v52 = v77;
  if ((*(v76 + 48))(v51, 1, v77) == 1)
  {
    v119 = 0u;
    v120 = 0u;
    v118 = 0u;
  }

  else
  {
    v54 = v72;
    (*(v53 + 32))(v72, v51, v52);
    strcpy(&v118, "keepAliveUUID");
    HIWORD(v118) = -4864;
    v55 = UUID.uuidString.getter();
    *(&v120 + 1) = &type metadata for String;
    *&v119 = v55;
    *(&v119 + 1) = v56;
    (*(v53 + 8))(v54, v52);
  }

  v57 = v78;
  v58 = *&v2[v17[11]];
  if (*(v58 + 16))
  {
    v121 = 0xD00000000000001CLL;
    v122 = 0x80000001004BD5F0;
    v59 = sub_10005DC58(&qword_100592600, &qword_10049F9E8);
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v121 = 0;
    v122 = 0;
    v125 = 0;
    v124 = 0;
  }

  v123 = v58;
  v126 = v59;
  sub_100012400(&v2[v17[12]], v57, &unk_100596870, &unk_1004B0F60);
  if ((*(v79 + 48))(v57, 1, v6) == 1)
  {
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
  }

  else
  {
    v60 = v57;
    v61 = v73;
    sub_100262DC8(v60, v73, type metadata accessor for NANInternetSharingStatistics.Requester);
    *&v127 = 0xD000000000000019;
    *(&v127 + 1) = 0x80000001004BD610;
    *(&v129 + 1) = v6;
    v62 = sub_1000297D4(&v128);
    sub_100262DC8(v61, v62, type metadata accessor for NANInternetSharingStatistics.Requester);
  }

  v63 = _swiftEmptyArrayStorage;
  for (i = 32; i != 320; i += 48)
  {
    sub_100012400(&v100[i], &v90, &qword_100592608, &unk_10049F9F0);
    v86[0] = v90;
    v86[1] = v91;
    v86[2] = v92;
    if (*(&v90 + 1))
    {
      v87 = v90;
      v88 = v91;
      v89 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_100117CCC(0, v63[2] + 1, 1, v63);
      }

      v66 = v63[2];
      v65 = v63[3];
      if (v66 >= v65 >> 1)
      {
        v63 = sub_100117CCC((v65 > 1), v66 + 1, 1, v63);
      }

      v63[2] = v66 + 1;
      v67 = &v63[6 * v66];
      v68 = v87;
      v69 = v89;
      v67[3] = v88;
      v67[4] = v69;
      v67[2] = v68;
    }

    else
    {
      sub_100016290(v86, &qword_100592608, &unk_10049F9F0);
    }
  }

  sub_10005DC58(&qword_100592608, &unk_10049F9F0);
  swift_arrayDestroy();
  v70 = sub_1001F83AC(v63);

  *&v90 = v70;
  v71 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v71 - 8) + 56))(v81, 1, 1, v71);
  (*(v82 + 104))(v84, enum case for Mirror.AncestorRepresentation.generated(_:), v83);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

void NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin();
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v34 = &v31 - v6;
  v7 = type metadata accessor for UUID();
  v33 = *(v7 - 8);
  __chkstk_darwin();
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v16 = &v31 - v15;
  Hasher._combine(_:)(*v1);
  if (v1[2])
  {
    v17 = 0;
  }

  else
  {
    v17 = v1[1];
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v17);
  v18 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  sub_100012400(&v1[v18[6]], v16, &unk_100595C40, &qword_100499070);
  if ((*(v12 + 48))(v16, 1, v11) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v12 + 32))(v14, v16, v11);
    Hasher._combine(_:)(1u);
    v19 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v21 = v20;
    Data.hash(into:)();
    sub_1000124C8(v19, v21);
    (*(v12 + 8))(v14, v11);
  }

  if (*&v2[v18[7] + 8] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*&v2[v18[8] + 8] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*&v2[v18[9] + 8] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  sub_100012400(&v2[v18[10]], v10, &qword_10058F4D0, &qword_100491AB0);
  v22 = v33;
  if ((*(v33 + 48))(v10, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = v31;
    (*(v22 + 32))(v31, v10, v7);
    Hasher._combine(_:)(1u);
    sub_10027784C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v22 + 8))(v23, v7);
  }

  sub_1000E05E0(a1, *&v2[v18[11]]);
  v24 = v34;
  sub_100012400(&v2[v18[12]], v34, &unk_100596870, &unk_1004B0F60);
  if ((*(v35 + 48))(v24, 1, v36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v25 = v32;
    sub_100262DC8(v24, v32, type metadata accessor for NANInternetSharingStatistics.Requester);
    Hasher._combine(_:)(1u);
    NANInternetSharingStatistics.Requester.hash(into:)();
    sub_100277544(v25, type metadata accessor for NANInternetSharingStatistics.Requester);
  }

  v26 = *&v2[v18[13]];
  if (v26)
  {
    Hasher._combine(_:)(1u);
    _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(a1, v26);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v27 = &v2[v18[14]];
  v28 = *v27;
  if (*v27)
  {
    v30 = v27[1];
    v29 = v27[2];
    Hasher._combine(_:)(1u);
    sub_1000D05AC(a1, v28);
    Hasher._combine(_:)(v30);
    Hasher._combine(_:)(v29);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*&v2[v18[15] + 8] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }
}

uint64_t sub_10025B028@<X0>(Swift::UInt8 *a1@<X0>, CoreP2P::NANAttribute::CustomDeviceInformation::PlatformType_optional *a2@<X8>)
{
  result = _s7CoreP2P12NANAttributeO23CustomDeviceInformationV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t sub_10025B054@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10026E6BC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.Flags.description.getter(char a1)
{
  if (a1)
  {
    v2 = sub_100115F7C(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100115F7C((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    strcpy(v5 + 32, "No SDB Support");
    v5[47] = -18;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100115F7C(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100115F7C((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000018;
    *(v8 + 5) = 0x80000001004BD6E0;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100115F7C(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_100115F7C((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0xD000000000000021;
  *(v11 + 5) = 0x80000001004BD6B0;
  if ((a1 & 8) == 0)
  {
LABEL_9:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_21:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100115F7C(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100115F7C((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0xD00000000000001FLL;
  *(v14 + 5) = 0x80000001004BD690;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100115F7C(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100115F7C((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x6570795472656550;
    *(v17 + 5) = 0xE800000000000000;
  }

LABEL_31:
  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0, &protocol conformance descriptor for [A]);
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 91;
}

uint64_t NANAttribute.CustomDeviceInformation.Flags.customMirror.getter(int a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v11 = a1;
  v10 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10025B71C(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v11 = *v1;
  v10 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL static NANAttribute.CustomDeviceInformation.Version.< infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 2;
  v3 = a2 >> 2;
  v4 = (a1 & 3u) < (a2 & 3u);
  if (v2 != v3)
  {
    v4 = 0;
  }

  return v2 < v3 || v4;
}

uint64_t NANAttribute.CustomDeviceInformation.Version.description.getter()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x5B6E6F6973726556;
}

uint64_t sub_10025BA5C(uint64_t a1)
{
  v2 = sub_100279D04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10025BA98(uint64_t a1)
{
  v2 = sub_100279D04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.CustomDeviceInformation.Version.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_10005DC58(&qword_100592610, &qword_10049FA00);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100279D04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void *NANAttribute.CustomDeviceInformation.Version.init(from:)(void *a1)
{
  v3 = sub_10005DC58(&qword_100592620, &qword_10049FA08);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_100279D04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002A00(a1);
  return v7;
}

BOOL sub_10025BD58(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 2;
  v5 = (v2 & 3) < (v3 & 3);
  if (v4 != v3 >> 2)
  {
    v5 = 0;
  }

  return v4 < v3 >> 2 || v5;
}

BOOL sub_10025BD8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 2;
  if (v3 >> 2 < v2 >> 2)
  {
    return 0;
  }

  v6 = (v3 & 3) >= (v2 & 3);
  return v3 >> 2 != v4 || v6;
}

BOOL sub_10025BDCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 2;
  if (v2 >> 2 < v3 >> 2)
  {
    return 0;
  }

  v6 = (v2 & 3) >= (v3 & 3);
  return v4 != v3 >> 2 || v6;
}

BOOL sub_10025BE0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 2;
  v5 = (v3 & 3) < (v2 & 3);
  if (v3 >> 2 != v4)
  {
    v5 = 0;
  }

  return v3 >> 2 < v4 || v5;
}

uint64_t sub_10025BE40@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_100592620, &qword_10049FA08);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100029B34(a1, a1[3]);
  sub_100279D04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100002A00(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_10025BFA0(void *a1)
{
  v2 = sub_10005DC58(&qword_100592610, &qword_10049FA00);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100029B34(a1, a1[3]);
  sub_100279D04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t NANAttribute.CustomDeviceInformation.init(version:platformType:flags:customAttributes:)@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 4) = a3;
  v7 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  return sub_100262DC8(a4, a5 + *(v7 + 28), type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

unint64_t sub_10025C224()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x7367616C66;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6D726F6674616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10025C2A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284D5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10025C2D0(uint64_t a1)
{
  v2 = sub_100279D78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10025C30C(uint64_t a1)
{
  v2 = sub_100279D78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.CustomDeviceInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592628, &qword_10049FA10);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_100279D78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v14 = 0;
  sub_100279DCC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v3[1];
    v12 = 1;
    sub_100279E20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 1);
    v10[7] = 2;
    sub_100279E74();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for NANAttribute.CustomDeviceInformation(0);
    v10[6] = 3;
    type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    sub_10027784C(&qword_100592650, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes, protocol conformance descriptor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NANAttribute.CustomDeviceInformation.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 4));
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(a1);
}

Swift::Int NANAttribute.CustomDeviceInformation.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 4));
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t NANAttribute.CustomDeviceInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10005DC58(&qword_100592658, &qword_10049FA18);
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  sub_100029B34(a1, v13);
  sub_100279D78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = v10;
    v21 = v4;
    v14 = v23;
    v15 = v6;
    v31 = 0;
    sub_100279EC8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v12 = v32;
    v29 = 1;
    sub_100279F1C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v14;
    v12[1] = v30;
    v27 = 2;
    sub_100279F70();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v12 + 1) = v28;
    v26 = 3;
    sub_10027784C(&qword_10058CFB8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes, protocol conformance descriptor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v18 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v9, v18);
    sub_100262DC8(v15, &v12[*(v20 + 28)], type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    sub_100262DC8(v12, v22, type metadata accessor for NANAttribute.CustomDeviceInformation);
  }

  return sub_100002A00(v25);
}

Swift::Int sub_10025CA0C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 4));
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(v2);
  return Hasher._finalize()();
}

void sub_10025CA88(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 4));
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(a1);
}

Swift::Int sub_10025CAE4(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 4));
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t NANAttribute.AttributeType.customMirror.getter(char a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v13 = a1;
  v12 = _swiftEmptyArrayStorage;
  v8 = enum case for Mirror.DisplayStyle.enum(_:);
  v9 = type metadata accessor for Mirror.DisplayStyle();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10025CDF8@<X0>(Swift::UInt8 *a1@<X0>, CoreP2P::NANAttribute::AttributeType_optional *a2@<X8>)
{
  result = _s7CoreP2P12NANAttributeO13AttributeTypeO8rawValueAESgs5UInt8V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

Swift::Int sub_10025CEEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1004ABDA2[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10025CF74(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1004ABDA2[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10025CFC0(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v13 = *v1;
  v12 = _swiftEmptyArrayStorage;
  v8 = enum case for Mirror.DisplayStyle.enum(_:);
  v9 = type metadata accessor for Mirror.DisplayStyle();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t NANAttribute.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v477 = a2;
  v476 = type metadata accessor for NANAttribute(0);
  __chkstk_darwin();
  v436 = &v430 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v471 = (&v430 - v4);
  __chkstk_darwin();
  v470 = (&v430 - v5);
  __chkstk_darwin();
  v468 = (&v430 - v6);
  __chkstk_darwin();
  v469 = (&v430 - v7);
  __chkstk_darwin();
  v478 = &v430 - v8;
  __chkstk_darwin();
  v464 = (&v430 - v9);
  __chkstk_darwin();
  v463 = &v430 - v10;
  __chkstk_darwin();
  v462 = (&v430 - v11);
  __chkstk_darwin();
  v461 = &v430 - v12;
  __chkstk_darwin();
  v459 = (&v430 - v13);
  __chkstk_darwin();
  v458 = &v430 - v14;
  __chkstk_darwin();
  v466 = (&v430 - v15);
  __chkstk_darwin();
  v467 = (&v430 - v16);
  __chkstk_darwin();
  v460 = (&v430 - v17);
  __chkstk_darwin();
  v465 = (&v430 - v18);
  __chkstk_darwin();
  v434 = &v430 - v19;
  __chkstk_darwin();
  v435 = (&v430 - v20);
  __chkstk_darwin();
  v457 = (&v430 - v21);
  __chkstk_darwin();
  v455 = &v430 - v22;
  __chkstk_darwin();
  v454 = &v430 - v23;
  __chkstk_darwin();
  v452 = &v430 - v24;
  __chkstk_darwin();
  v456 = (&v430 - v25);
  __chkstk_darwin();
  v450 = &v430 - v26;
  __chkstk_darwin();
  v449 = &v430 - v27;
  __chkstk_darwin();
  v453 = (&v430 - v28);
  __chkstk_darwin();
  v451 = (&v430 - v29);
  __chkstk_darwin();
  v447 = &v430 - v30;
  __chkstk_darwin();
  v445 = &v430 - v31;
  __chkstk_darwin();
  v444 = (&v430 - v32);
  __chkstk_darwin();
  v446 = &v430 - v33;
  __chkstk_darwin();
  v442 = (&v430 - v34);
  __chkstk_darwin();
  v448 = (&v430 - v35);
  __chkstk_darwin();
  v443 = (&v430 - v36);
  __chkstk_darwin();
  v441 = (&v430 - v37);
  __chkstk_darwin();
  v439 = &v430 - v38;
  __chkstk_darwin();
  v440 = (&v430 - v39);
  __chkstk_darwin();
  v438 = (&v430 - v40);
  __chkstk_darwin();
  v437 = (&v430 - v41);
  __chkstk_darwin();
  v475 = &v430 - v42;
  __chkstk_darwin();
  v474 = &v430 - v43;
  __chkstk_darwin();
  v472 = &v430 - v44;
  __chkstk_darwin();
  v473 = &v430 - v45;
  __chkstk_darwin();
  v47 = &v430 - v46;
  __chkstk_darwin();
  v49 = &v430 - v48;
  __chkstk_darwin();
  v51 = &v430 - v50;
  __chkstk_darwin();
  v53 = &v430 - v52;
  sub_100029B34(a1, a1[3]);
  v54 = v511;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v54)
  {
    v55 = a1;
    return sub_100002A00(v55);
  }

  v430 = v51;
  v431 = v47;
  v432 = v49;
  v433 = v53;
  v56 = v478;
  v511 = a1;
  sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
  sub_100031694(v483, v483[3]);
  sub_10000CADC(&qword_10058CF88, &qword_10058CF90, &qword_1004841A0, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v59 = *(&v507 + 1);
  v58 = *v508;
  v60 = _s7CoreP2P12NANAttributeO13AttributeTypeO8rawValueAESgs5UInt8V_tcfC_0(v507);
  v61 = v477;
  switch(v60)
  {
    case 1:
      v215 = sub_100033AA8(_swiftEmptyArrayStorage);
      v216 = v59;
      v217 = type metadata accessor for BinaryDecoder();
      v218 = swift_allocObject();
      v219 = v58;
      v220 = v218;
      v221 = 0;
      v218[5] = &_swiftEmptyDictionarySingleton;
      v222 = v216;
      v218[2] = v216;
      v218[3] = v219;
      v223 = v219 >> 62;
      if ((v219 >> 62) > 1)
      {
        v71 = v432;
        if (v223 == 2)
        {
          v221 = *(v222 + 16);
        }
      }

      else
      {
        v71 = v432;
        if (v223)
        {
          v221 = v222;
        }
      }

      v218[4] = v221;
      swift_beginAccess();
      v220[5] = v215;
      *&v508[8] = v217;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v220;
      v407 = sub_10026FBF8(&v507);
      v426 = v511;
      *v71 = v407;
      v71[8] = v408;
      *(v71 + 3) = v409;
      goto LABEL_106;
    case 2:
      v185 = sub_100033AA8(_swiftEmptyArrayStorage);
      v186 = v59;
      v187 = type metadata accessor for BinaryDecoder();
      v188 = swift_allocObject();
      v189 = v58;
      v190 = v188;
      v191 = 0;
      v188[5] = &_swiftEmptyDictionarySingleton;
      v192 = v186;
      v188[2] = v186;
      v188[3] = v189;
      v193 = v189 >> 62;
      if ((v189 >> 62) > 1)
      {
        v71 = v431;
        if (v193 == 2)
        {
          v191 = *(v192 + 16);
        }
      }

      else
      {
        v71 = v431;
        if (v193)
        {
          v191 = v192;
        }
      }

      v188[4] = v191;
      swift_beginAccess();
      v190[5] = v185;
      *&v508[8] = v187;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v190;
      v401 = sub_10026C128(&v507);
      v426 = v511;
      *v71 = v401;
      goto LABEL_106;
    case 3:
      v201 = sub_100033AA8(_swiftEmptyArrayStorage);
      v202 = v59;
      v203 = type metadata accessor for BinaryDecoder();
      v204 = swift_allocObject();
      v205 = v58;
      v206 = v204;
      v207 = 0;
      v204[5] = &_swiftEmptyDictionarySingleton;
      v208 = v202;
      v204[2] = v202;
      v204[3] = v205;
      v209 = v205 >> 62;
      if ((v205 >> 62) > 1)
      {
        v56 = v473;
        if (v209 == 2)
        {
          v207 = *(v208 + 16);
        }
      }

      else
      {
        v56 = v473;
        if (v209)
        {
          v207 = v208;
        }
      }

      v204[4] = v207;
      swift_beginAccess();
      v206[5] = v201;
      v481 = v203;
      v482 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v480 = v206;
      sub_1002736B0(&v480, &v507);
      v402 = v509;
      v486 = *&v508[16];
      v487 = v509;
      v403 = v510;
      v488 = v510;
      v404 = *v508;
      v484 = v507;
      v405 = v507;
      v485 = *v508;
      *(v56 + 2) = *&v508[16];
      *(v56 + 3) = v402;
      *(v56 + 4) = v403;
      *v56 = v405;
      *(v56 + 1) = v404;
      goto LABEL_93;
    case 4:
      v147 = sub_100033AA8(_swiftEmptyArrayStorage);
      v148 = v59;
      v149 = type metadata accessor for BinaryDecoder();
      v150 = swift_allocObject();
      v151 = v58;
      v152 = v150;
      v153 = 0;
      v150[5] = &_swiftEmptyDictionarySingleton;
      v154 = v148;
      v150[2] = v148;
      v150[3] = v151;
      v155 = v151 >> 62;
      if ((v151 >> 62) > 1)
      {
        v71 = v472;
        if (v155 == 2)
        {
          v153 = *(v154 + 16);
        }
      }

      else
      {
        v71 = v472;
        if (v155)
        {
          v153 = v154;
        }
      }

      v150[4] = v153;
      swift_beginAccess();
      v152[5] = v147;
      *&v508[8] = v149;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v152;
      sub_100279FC4();
      dispatch thunk of Decodable.init(from:)();
      v426 = v511;
      *v71 = v479[0];
      goto LABEL_106;
    case 5:
      v252 = sub_100033AA8(_swiftEmptyArrayStorage);
      v253 = v59;
      v254 = type metadata accessor for BinaryDecoder();
      v255 = swift_allocObject();
      v256 = v58;
      v257 = v255;
      v258 = 0;
      v255[5] = &_swiftEmptyDictionarySingleton;
      v255[2] = v253;
      v255[3] = v256;
      v259 = v256 >> 62;
      if ((v256 >> 62) > 1)
      {
        v260 = v474;
        if (v259 == 2)
        {
          v258 = *(v253 + 16);
        }
      }

      else
      {
        v260 = v474;
        if (v259)
        {
          v258 = v253;
        }
      }

      v255[4] = v258;
      swift_beginAccess();
      v257[5] = v252;
      *&v508[8] = v254;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v257;
      sub_10026D6D0(&v507, &v489);
      v426 = v511;
      v410 = v490[0];
      *v260 = v489;
      v260[1] = v410;
      *(v260 + 25) = *(v490 + 9);
      swift_storeEnumTagMultiPayload();
      v411 = v260;
      goto LABEL_107;
    case 6:
      v280 = sub_100033AA8(_swiftEmptyArrayStorage);
      v281 = v59;
      v282 = type metadata accessor for BinaryDecoder();
      v283 = swift_allocObject();
      v284 = v58;
      v285 = v283;
      v286 = 0;
      v283[5] = &_swiftEmptyDictionarySingleton;
      v287 = v281;
      v283[2] = v281;
      v283[3] = v284;
      v288 = v284 >> 62;
      if ((v284 >> 62) > 1)
      {
        v71 = v475;
        if (v288 == 2)
        {
          v286 = *(v287 + 16);
        }
      }

      else
      {
        v71 = v475;
        if (v288)
        {
          v286 = v287;
        }
      }

      v283[4] = v286;
      swift_beginAccess();
      v285[5] = v280;
      *&v508[8] = v282;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v285;
      v412 = sub_10026B358(&v507);
      v426 = v511;
      *v71 = v412;
      v71[2] = BYTE2(v412);
      v71[3] = BYTE3(v412);
      v71[4] = BYTE4(v412);
      v71[5] = BYTE5(v412);
      v71[6] = BYTE6(v412);
      v71[8] = v413;
      v71[9] = v415;
      v71[10] = v414 & 1;
      *(v71 + 2) = v416;
      *(v71 + 3) = v417;
      goto LABEL_106;
    case 7:
      v210 = sub_100033AA8(_swiftEmptyArrayStorage);
      v211 = v58;
      v212 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v213 = BinaryDecoder.init(data:userInfo:)(v59, v211, v210);
      *&v508[8] = v212;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v213;
      sub_10026F628(&v507, v491);
      v214 = v491[1];
      v77 = v437;
      *v437 = v491[0];
      v77[1] = v214;
      *(v77 + 4) = v492;
      goto LABEL_79;
    case 8:
      v301 = sub_100033AA8(_swiftEmptyArrayStorage);
      v302 = v58;
      v303 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v304 = BinaryDecoder.init(data:userInfo:)(v59, v302, v301);
      *&v508[8] = v303;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v304;
      sub_10026F8B0(&v507, v493);
      v305 = v493[1];
      v77 = v438;
      *v438 = v493[0];
      v77[1] = v305;
      v77[2] = v493[2];
      goto LABEL_79;
    case 9:
      v167 = sub_100033AA8(_swiftEmptyArrayStorage);
      v168 = v58;
      v169 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v170 = BinaryDecoder.init(data:userInfo:)(v59, v168, v167);
      *&v508[8] = v169;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v170;
      v171 = sub_10026E78C(&v507);
      v77 = v440;
      *v440 = v171;
      *(v77 + 2) = BYTE2(v171) & 1;
      *(v77 + 1) = v172;
      *(v77 + 2) = v173;
      goto LABEL_79;
    case 10:
      v295 = sub_100033AA8(_swiftEmptyArrayStorage);
      v296 = v58;
      v297 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v298 = BinaryDecoder.init(data:userInfo:)(v59, v296, v295);
      *&v508[8] = v297;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v298;
      v299 = sub_10026E4D0(&v507);
      v77 = v439;
      *v439 = v299;
      *(v77 + 1) = v300;
      goto LABEL_79;
    case 11:
      v142 = sub_100033AA8(_swiftEmptyArrayStorage);
      v143 = v58;
      v144 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v145 = BinaryDecoder.init(data:userInfo:)(v59, v143, v142);
      *&v508[8] = v144;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v145;
      v146 = sub_1001B8D18(&v507);
      v77 = v441;
      *v441 = v146;
      goto LABEL_79;
    case 12:
      v160 = sub_100033AA8(_swiftEmptyArrayStorage);
      v161 = v58;
      v162 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v163 = BinaryDecoder.init(data:userInfo:)(v59, v161, v160);
      *&v508[8] = v162;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v163;
      v164 = sub_10026FDE0(&v507);
      v77 = v443;
      *v443 = v164;
      *(v77 + 2) = BYTE2(v164);
      *(v77 + 3) = BYTE3(v164);
      *(v77 + 4) = BYTE4(v164);
      *(v77 + 5) = BYTE5(v164);
      *(v77 + 1) = v165;
      *(v77 + 2) = v166;
      goto LABEL_79;
    case 13:
      v266 = sub_100033AA8(_swiftEmptyArrayStorage);
      v267 = v58;
      v268 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v269 = BinaryDecoder.init(data:userInfo:)(v59, v267, v266);
      *&v508[8] = v268;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v269;
      v270 = sub_10026C49C(&v507);
      v77 = v448;
      *v448 = v270;
      *(v77 + 2) = BYTE2(v270);
      *(v77 + 3) = BYTE3(v270);
      *(v77 + 4) = BYTE4(v270);
      *(v77 + 5) = BYTE5(v270);
      *(v77 + 1) = v271;
      *(v77 + 16) = v272;
      *(v77 + 17) = v273;
      *(v77 + 18) = v274;
      *(v77 + 19) = v275;
      *(v77 + 20) = v276;
      *(v77 + 21) = v277;
      *(v77 + 22) = v278;
      *(v77 + 23) = v279;
      goto LABEL_79;
    case 14:
      v126 = sub_100033AA8(_swiftEmptyArrayStorage);
      v127 = v58;
      v128 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v129 = BinaryDecoder.init(data:userInfo:)(v59, v127, v126);
      v481 = v128;
      v482 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v480 = v129;
      sub_100271900(&v480, &v507);
      v130 = *v508;
      v493[3] = v507;
      v493[4] = *v508;
      v131 = *&v508[16];
      v494 = *&v508[16];
      v77 = v442;
      *v442 = v507;
      v77[1] = v130;
      *(v77 + 4) = v131;
      goto LABEL_79;
    case 15:
      v194 = sub_100033AA8(_swiftEmptyArrayStorage);
      v195 = v58;
      v196 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v197 = BinaryDecoder.init(data:userInfo:)(v59, v195, v194);
      *&v508[8] = v196;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v197;
      v198 = sub_10026C6C0(&v507);
      LOBYTE(v480) = BYTE1(v198) & 1;
      v77 = v446;
      *v446 = v198;
      *(v77 + 1) = BYTE1(v198) & 1;
      *(v77 + 1) = WORD1(v198);
      *(v77 + 4) = BYTE4(v198);
      *(v77 + 5) = BYTE5(v198);
      *(v77 + 6) = BYTE6(v198);
      *(v77 + 4) = v199;
      *(v77 + 10) = v200;
      goto LABEL_79;
    case 16:
      v115 = sub_100033AA8(_swiftEmptyArrayStorage);
      v116 = v58;
      v117 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v118 = BinaryDecoder.init(data:userInfo:)(v59, v116, v115);
      v481 = v117;
      v482 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v480 = v118;
      sub_1002712F8(&v480, &v507);
      v119 = *v508;
      v495 = v507;
      v496 = *v508;
      v120 = *&v508[16];
      v497 = *&v508[16];
      v77 = v444;
      *v444 = v507;
      v77[1] = v119;
      v77[2] = v120;
      goto LABEL_79;
    case 17:
      v233 = sub_100033AA8(_swiftEmptyArrayStorage);
      v234 = v58;
      v235 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v236 = BinaryDecoder.init(data:userInfo:)(v59, v234, v233);
      *&v508[8] = v235;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v236;
      v178 = sub_100148B4C(&v507);
      v180 = 17;
      v77 = v445;
      goto LABEL_78;
    case 18:
      v289 = sub_100033AA8(_swiftEmptyArrayStorage);
      v290 = v58;
      v291 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v292 = BinaryDecoder.init(data:userInfo:)(v59, v290, v289);
      *&v508[8] = v291;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v292;
      v293 = sub_10026B818(&v507);
      v77 = v447;
      *v447 = v293;
      *(v77 + 1) = HIWORD(v293);
      *(v77 + 1) = v294;
      goto LABEL_79;
    case 19:
      v347 = sub_100033AA8(_swiftEmptyArrayStorage);
      v348 = v58;
      v349 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v350 = BinaryDecoder.init(data:userInfo:)(v59, v348, v347);
      *&v508[8] = v349;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v350;
      v351 = sub_10026B5D0(&v507);
      v77 = v451;
      *v451 = v351;
      *(v77 + 2) = BYTE2(v351);
      *(v77 + 3) = BYTE3(v351);
      *(v77 + 4) = BYTE4(v351);
      *(v77 + 5) = BYTE5(v351);
      *(v77 + 6) = BYTE6(v351);
      *(v77 + 1) = v352;
      goto LABEL_79;
    case 20:
      v244 = sub_100033AA8(_swiftEmptyArrayStorage);
      v245 = v58;
      v246 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v247 = BinaryDecoder.init(data:userInfo:)(v59, v245, v244);
      *&v508[8] = v246;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v247;
      v248 = NANAttribute.DeviceLink.init(from:)(&v507);
      LOBYTE(v480) = BYTE5(v248) & 1;
      LOBYTE(v479[0]) = v249 & 1;
      v77 = v453;
      *v453 = v248;
      *(v77 + 2) = BYTE2(v248);
      *(v77 + 3) = BYTE3(v248);
      *(v77 + 4) = BYTE4(v248);
      *(v77 + 5) = v480;
      *(v77 + 1) = v250;
      *(v77 + 16) = v249 & 1;
      *(v77 + 3) = v251;
      goto LABEL_79;
    case 21:
      v261 = sub_100033AA8(_swiftEmptyArrayStorage);
      v262 = v58;
      v263 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v264 = BinaryDecoder.init(data:userInfo:)(v59, v262, v261);
      *&v508[8] = v263;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v264;
      v265 = sub_10026BF80(&v507);
      v77 = v449;
      *v449 = v265;
      *(v77 + 1) = HIWORD(v265);
      goto LABEL_79;
    case 22:
      v338 = sub_100033AA8(_swiftEmptyArrayStorage);
      v339 = v58;
      v340 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v341 = BinaryDecoder.init(data:userInfo:)(v59, v339, v338);
      *&v508[8] = v340;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v341;
      v178 = sub_100148B4C(&v507);
      v180 = 22;
      v77 = v450;
      goto LABEL_78;
    case 23:
      v358 = sub_100033AA8(_swiftEmptyArrayStorage);
      v359 = v58;
      v360 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v361 = BinaryDecoder.init(data:userInfo:)(v59, v359, v358);
      *&v508[8] = v360;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v361;
      v362 = NANAttribute.UnalignedSchedule.init(from:)(&v507);
      *&v480 = v363;
      *(&v480 + 1) = v364;
      v365 = *(&v480 + 4);
      LOBYTE(v480) = BYTE3(v363);
      v77 = v456;
      *v456 = v362;
      *(v77 + 1) = HIDWORD(v362);
      *(v77 + 2) = v366;
      *(v77 + 3) = v367;
      *(v77 + 8) = v363;
      *(v77 + 18) = BYTE2(v363);
      *(v77 + 19) = BYTE3(v363);
      *(v77 + 20) = v365;
      *(v77 + 14) = WORD2(v364);
      goto LABEL_79;
    case 24:
      v181 = sub_100033AA8(_swiftEmptyArrayStorage);
      v182 = v58;
      v183 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v184 = BinaryDecoder.init(data:userInfo:)(v59, v182, v181);
      *&v508[8] = v183;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v184;
      v178 = sub_100148B4C(&v507);
      v180 = 24;
      v77 = v452;
      goto LABEL_78;
    case 25:
      v174 = sub_100033AA8(_swiftEmptyArrayStorage);
      v175 = v58;
      v176 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v177 = BinaryDecoder.init(data:userInfo:)(v59, v175, v174);
      *&v508[8] = v176;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v177;
      v178 = sub_100148B4C(&v507);
      v180 = 25;
      v77 = v454;
      goto LABEL_78;
    case 26:
      v395 = sub_100033AA8(_swiftEmptyArrayStorage);
      v396 = v58;
      v397 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v398 = BinaryDecoder.init(data:userInfo:)(v59, v396, v395);
      *&v508[8] = v397;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v398;
      v399 = NANAttribute.RangingInformation.init(from:)(&v507);
      v77 = v455;
      *v455 = v399;
      *(v77 + 1) = WORD1(v399);
      *(v77 + 4) = BYTE4(v399) & 1;
      goto LABEL_79;
    case 27:
      v102 = sub_100033AA8(_swiftEmptyArrayStorage);
      v103 = v58;
      v104 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v105 = BinaryDecoder.init(data:userInfo:)(v59, v103, v102);
      *&v508[8] = v104;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v105;
      v106 = NANAttribute.RangingSetup.init(from:)(&v507);
      v77 = v457;
      *v457 = v106;
      *(v77 + 8) = v107 & 1;
      *(v77 + 2) = v108;
      goto LABEL_79;
    case 28:
      v368 = sub_100033AA8(_swiftEmptyArrayStorage);
      type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v369 = v58;
      v370 = BinaryDecoder.init(data:userInfo:)(v59, v58, v368);
      *&v508[8] = &type metadata for BinaryDecoder.UnkeyedContainer;
      *&v508[16] = sub_1000325F0();
      *&v507 = v370;
      sub_100031694(&v507, &type metadata for BinaryDecoder.UnkeyedContainer);
      v478 = v369;
      sub_10000AB0C(v59, v369);

      v371 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v425 = sub_100237864(v371 << 8, &v507);
      v426 = v511;
      sub_100002A00(&v507);

      sub_1000124C8(v59, v478);
      v427 = v435;
      *v435 = v425;
      swift_storeEnumTagMultiPayload();
      v428 = v427;
      v429 = v433;
      sub_100262DC8(v428, v433, type metadata accessor for NANAttribute);
      goto LABEL_110;
    case 29:
      sub_10000AB0C(v59, v58);
      v473 = _swiftEmptyArrayStorage;
      v372 = sub_100033AA8(_swiftEmptyArrayStorage);
      v373 = v58;
      v374 = v59;
      v375 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v471 = v374;
      v478 = v373;
      v376 = BinaryDecoder.init(data:userInfo:)(v374, v373, v372);
      *&v508[8] = &type metadata for BinaryDecoder.UnkeyedContainer;
      *&v508[16] = sub_1000325F0();
      *&v507 = v376;
      v377 = sub_100031694(&v507, &type metadata for BinaryDecoder.UnkeyedContainer);
      v378 = *v377;
      v379 = *(*v377 + 24);
      v380 = v379 >> 62;
      v475 = *(*v377 + 16);
      v474 = v475 >> 32;
      v381 = BYTE6(v379);
      v472 = v376;

      break;
    case 30:
      v306 = sub_100033AA8(_swiftEmptyArrayStorage);
      v307 = v58;
      v308 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v309 = BinaryDecoder.init(data:userInfo:)(v59, v307, v306);
      *&v508[8] = v308;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v309;
      v310 = sub_10026ED54(&v507);
      v77 = v465;
      *v465 = v310;
      *(v77 + 8) = v311;
      *(v77 + 9) = v312;
      *(v77 + 10) = v313;
      *(v77 + 11) = v314;
      *(v77 + 12) = v315;
      *(v77 + 13) = v316;
      *(v77 + 14) = v317;
      *(v77 + 15) = v318;
      *(v77 + 8) = v319;
      *(v77 + 9) = v320;
      goto LABEL_79;
    case 31:
      v224 = sub_100033AA8(_swiftEmptyArrayStorage);
      v225 = v58;
      v226 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v227 = BinaryDecoder.init(data:userInfo:)(v59, v225, v224);
      *&v508[8] = v226;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v227;
      v228 = sub_10026B094(&v507);
      v77 = v460;
      *v460 = v228;
      *(v77 + 8) = v229;
      *(v77 + 9) = v230;
      *(v77 + 5) = v231;
      *(v77 + 6) = v232;
      goto LABEL_79;
    case 32:
      v321 = sub_100033AA8(_swiftEmptyArrayStorage);
      v322 = v58;
      v323 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v324 = BinaryDecoder.init(data:userInfo:)(v59, v322, v321);
      *&v508[8] = v323;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v324;
      v325 = sub_10026BA2C(&v507);
      v77 = v467;
      *v467 = v325;
      *(v77 + 8) = v326;
      *(v77 + 9) = v327;
      *(v77 + 10) = v328;
      *(v77 + 11) = v329;
      *(v77 + 12) = v330;
      *(v77 + 13) = v331;
      *(v77 + 14) = v332;
      *(v77 + 8) = v333;
      *(v77 + 9) = v334;
      goto LABEL_79;
    case 33:
      v132 = sub_100033AA8(_swiftEmptyArrayStorage);
      v133 = v58;
      v134 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v135 = BinaryDecoder.init(data:userInfo:)(v59, v133, v132);
      *&v508[8] = v134;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v135;
      v136 = sub_10026BCD8(&v507);
      v77 = v466;
      *v466 = v136;
      *(v77 + 8) = v137;
      *(v77 + 5) = v138;
      *(v77 + 6) = v139;
      *(v77 + 2) = v140;
      *(v77 + 3) = v141;
      goto LABEL_79;
    case 34:
      v109 = sub_100033AA8(_swiftEmptyArrayStorage);
      v110 = v58;
      v111 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v112 = BinaryDecoder.init(data:userInfo:)(v59, v110, v109);
      *&v508[8] = v111;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v112;
      v113 = sub_10026E2E4(&v507);
      v77 = v458;
      *v458 = v113;
      *(v77 + 1) = v114;
      goto LABEL_79;
    case 35:
      v90 = sub_100033AA8(_swiftEmptyArrayStorage);
      v91 = v58;
      v92 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v93 = BinaryDecoder.init(data:userInfo:)(v59, v91, v90);
      *&v508[8] = v92;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v93;
      v94 = sub_10026F04C(&v507);
      v77 = v459;
      *v459 = v94;
      goto LABEL_79;
    case 36:
      v95 = sub_100033AA8(_swiftEmptyArrayStorage);
      v96 = v58;
      v97 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v98 = BinaryDecoder.init(data:userInfo:)(v59, v96, v95);
      *&v508[8] = v97;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v98;
      sub_10026DEFC(&v507, v499);
      v99 = v499[5];
      v77 = v461;
      *(v461 + 4) = v499[4];
      v77[5] = v99;
      *(v77 + 12) = v500;
      v100 = v499[1];
      *v77 = v499[0];
      v77[1] = v100;
      v101 = v499[3];
      v77[2] = v499[2];
      v77[3] = v101;
      goto LABEL_79;
    case 37:
      v81 = sub_100033AA8(_swiftEmptyArrayStorage);
      v82 = v58;
      v83 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v84 = BinaryDecoder.init(data:userInfo:)(v59, v82, v81);
      *&v508[8] = v83;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v84;
      v85 = sub_10026E918(&v507);
      v77 = v462;
      *v462 = v85;
      *(v77 + 1) = v86;
      *(v77 + 8) = v87;
      *(v77 + 18) = v88;
      *(v77 + 3) = v89;
      goto LABEL_79;
    case 38:
      v390 = sub_100033AA8(_swiftEmptyArrayStorage);
      v391 = v58;
      v392 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v393 = BinaryDecoder.init(data:userInfo:)(v59, v391, v390);
      *&v508[8] = v392;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v393;
      v178 = sub_100148B4C(&v507);
      v180 = 38;
      v77 = v463;
LABEL_78:
      *v77 = v180;
      *(v77 + 1) = v178;
      *(v77 + 2) = v179;
      goto LABEL_79;
    case 39:
      v342 = sub_100033AA8(_swiftEmptyArrayStorage);
      v343 = v58;
      v344 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v345 = BinaryDecoder.init(data:userInfo:)(v59, v343, v342);
      *&v508[8] = v344;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v345;
      v346 = sub_10026D54C(&v507);
      v77 = v464;
      *v464 = v346;
      goto LABEL_79;
    case 40:
      v156 = sub_100033AA8(_swiftEmptyArrayStorage);
      v157 = v58;
      v158 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v159 = BinaryDecoder.init(data:userInfo:)(v59, v157, v156);
      *&v508[8] = v158;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v159;
      *v56 = sub_10026C128(&v507);
LABEL_93:
      swift_storeEnumTagMultiPayload();
      v394 = v56;
      goto LABEL_80;
    case 41:
      v237 = sub_100033AA8(_swiftEmptyArrayStorage);
      v238 = v58;
      v239 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v240 = BinaryDecoder.init(data:userInfo:)(v59, v238, v237);
      v481 = v239;
      v482 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v480 = v240;
      sub_10027446C(&v480, &v507);
      v241 = *v508;
      v501 = v507;
      v502 = *v508;
      v242 = *&v508[16];
      v243 = v509;
      v503 = *&v508[16];
      v504 = v509;
      v77 = v469;
      *v469 = v507;
      v77[1] = v241;
      v77[2] = v242;
      v77[3] = v243;
      goto LABEL_79;
    case 42:
      v353 = sub_100033AA8(_swiftEmptyArrayStorage);
      v354 = v58;
      v355 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v356 = BinaryDecoder.init(data:userInfo:)(v59, v354, v353);
      *&v508[8] = v355;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v356;
      v357 = sub_10026EBAC(&v507);
      v77 = v468;
      *v468 = v357;
      goto LABEL_79;
    case 43:
      v72 = sub_100033AA8(_swiftEmptyArrayStorage);
      v73 = v58;
      v74 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v75 = BinaryDecoder.init(data:userInfo:)(v59, v73, v72);
      *&v508[8] = v74;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v75;
      v76 = sub_100271F90(&v507);
      v77 = v470;
      *v470 = v76;
      *(v77 + 1) = v78;
      *(v77 + 2) = v79;
      *(v77 + 3) = v80;
      goto LABEL_79;
    case 44:
      v121 = sub_100033AA8(_swiftEmptyArrayStorage);
      v122 = v58;
      v123 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v124 = BinaryDecoder.init(data:userInfo:)(v59, v122, v121);
      v481 = v123;
      v482 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v480 = v124;
      sub_100272138(&v480, &v507);
      *(v506 + 10) = *&v508[10];
      v505 = v507;
      v506[0] = *v508;
      v125 = *v508;
      v77 = v471;
      *v471 = v507;
      v77[1] = v125;
      *(v77 + 26) = *(v506 + 10);
LABEL_79:
      swift_storeEnumTagMultiPayload();
      v394 = v77;
LABEL_80:
      v429 = v433;
      sub_100262DC8(v394, v433, type metadata accessor for NANAttribute);
      v426 = v511;
      goto LABEL_81;
    case 45:
      sub_10000AB0C(v59, v58);
      v335 = sub_100033AA8(_swiftEmptyArrayStorage);
      type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v336 = v58;
      v337 = BinaryDecoder.init(data:userInfo:)(v59, v58, v335);
      *&v508[8] = &type metadata for BinaryDecoder.UnkeyedContainer;
      *&v508[16] = sub_1000325F0();
      *&v507 = v337;
      sub_100031694(&v507, &type metadata for BinaryDecoder.UnkeyedContainer);
      sub_1000317F0();

      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      LODWORD(v478) = v480;
      LODWORD(v475) = BYTE1(v480);
      v418 = BYTE2(v480);
      sub_100031694(&v507, *&v508[8]);
      sub_1002323F0();
      UnkeyedDecodingContainer.inferredDecode<A>()();

      sub_1000124C8(v59, v336);
      v422 = v480;
      v423 = v436;
      *v436 = v478;
      v423[1] = v475;
      v423[2] = v418;
      *(v423 + 8) = v422;
      goto LABEL_109;
    case 46:
      sub_10000B02C();
      swift_allocError();
      *v400 = xmmword_10047CE70;
      *(v400 + 16) = 2;
      swift_willThrow();
      sub_1000124C8(v59, v58);
      sub_100002A00(v483);
      v55 = v511;
      return sub_100002A00(v55);
    default:
      v62 = sub_100033AA8(_swiftEmptyArrayStorage);
      v63 = v59;
      v64 = type metadata accessor for BinaryDecoder();
      v65 = swift_allocObject();
      v66 = v58;
      v67 = v65;
      v68 = 0;
      v65[5] = &_swiftEmptyDictionarySingleton;
      v69 = v63;
      v65[2] = v63;
      v65[3] = v66;
      v70 = v66 >> 62;
      if ((v66 >> 62) > 1)
      {
        v71 = v430;
        if (v70 == 2)
        {
          v68 = *(v69 + 16);
        }
      }

      else
      {
        v71 = v430;
        if (v70)
        {
          v68 = v69;
        }
      }

      v65[4] = v68;
      swift_beginAccess();
      v67[5] = v62;
      *&v508[8] = v64;
      *&v508[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v507 = v67;
      v406 = sub_10003D970(&v507);
      v426 = v511;
      *v71 = v406;
LABEL_106:
      swift_storeEnumTagMultiPayload();
      v411 = v71;
LABEL_107:
      v429 = v433;
      sub_100262DC8(v411, v433, type metadata accessor for NANAttribute);
      goto LABEL_81;
  }

  while (1)
  {
    v382 = *(v378 + 32);
    if (v380 > 1)
    {
      break;
    }

    v383 = v381;
    if (v380)
    {
      v383 = v474;
    }

LABEL_69:
    if (v382 >= v383)
    {
      goto LABEL_108;
    }

LABEL_72:
    v481 = v375;
    v482 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
    *&v480 = v378;

    v384 = UInt8.init(from:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v473 = sub_100115F68(0, *(v473 + 2) + 1, 1, v473);
    }

    v386 = *(v473 + 2);
    v385 = *(v473 + 3);
    v387 = (v386 + 1);
    if (v386 >= v385 >> 1)
    {
      v469 = *(v473 + 2);
      v470 = (v386 + 1);
      v389 = sub_100115F68((v385 > 1), v386 + 1, 1, v473);
      v386 = v469;
      v387 = v470;
      v473 = v389;
    }

    v388 = v473;
    *(v473 + 2) = v387;
    v388[v386 + 32] = v384;
  }

  if (v380 == 2)
  {
    v383 = *(v475 + 24);
    goto LABEL_69;
  }

  if (v382 < 0)
  {
    goto LABEL_72;
  }

LABEL_108:
  sub_10027039C(v473, v498);

  sub_1000124C8(v471, v478);
  v419 = v498[5];
  v423 = v434;
  *(v434 + 4) = v498[4];
  *(v423 + 5) = v419;
  *(v423 + 6) = v498[6];
  v420 = v498[1];
  *v423 = v498[0];
  *(v423 + 1) = v420;
  v421 = v498[3];
  *(v423 + 2) = v498[2];
  *(v423 + 3) = v421;
LABEL_109:
  swift_storeEnumTagMultiPayload();
  v424 = v423;
  v429 = v433;
  sub_100262DC8(v424, v433, type metadata accessor for NANAttribute);
  sub_100002A00(&v507);
  v426 = v511;
LABEL_110:
  v61 = v477;
LABEL_81:
  sub_100002A00(v483);
  sub_100262DC8(v429, v61, type metadata accessor for NANAttribute);
  v55 = v426;
  return sub_100002A00(v55);
}

void NANAttribute.encode(to:)(void *a1)
{
  v196 = a1;
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  v192 = &v181 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_10005DC58(&qword_100592210, &unk_10049F880);
  v185 = *(v191 - 8);
  __chkstk_darwin();
  v190 = &v181 - v3;
  v189 = sub_10005DC58(&qword_1005925A0, &qword_10049F9B8);
  v184 = *(v189 - 8);
  __chkstk_darwin();
  v188 = &v181 - v4;
  v187 = sub_10005DC58(&qword_100592478, &qword_10049F960);
  v183 = *(v187 - 8);
  __chkstk_darwin();
  v186 = &v181 - v5;
  v6 = sub_10005DC58(&qword_100592408, &qword_10049F938);
  v182 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v181 - v7;
  v9 = sub_10005DC58(&qword_1005920B0, &qword_10049F7F8);
  v193 = *(v9 - 8);
  v194 = v9;
  __chkstk_darwin();
  v11 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v181 - v12;
  type metadata accessor for NANAttribute(0);
  __chkstk_darwin();
  v15 = (&v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100033AA8(_swiftEmptyArrayStorage);
  v197 = type metadata accessor for BinaryEncoder();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100480A90;
  v195 = v17 + 16;
  v199 = v17;
  *(v17 + 32) = v16;
  v18 = v1;
  sub_1002774DC(v1, v15, type metadata accessor for NANAttribute);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v84 = *v15;
      v85 = *(v15 + 8);
      v86 = *(v15 + 3);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v21 = v198;
      NANAttribute.Cluster.encode(to:)(v205, v84, v85 | (v86 << 32));
      goto LABEL_86;
    case 2u:
      v181 = v1;
      v70 = *v15;
      v20 = v199;
      v205[0] = v199;
      swift_retain_n();
      sub_10005DC58(&qword_100592698, &qword_10049FA28);
      sub_10000CADC(&qword_1005926A0, &qword_100592698, &qword_10049FA28, byte_10049852C);
      KeyedEncodingContainer.init<A>(_:)();
      v205[0] = v70;
      sub_10005DC58(&qword_1005920C0, &unk_10049F800);
      sub_1002776A0();
      v71 = v194;
      v72 = v198;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v72)
      {
        (*(v193 + 8))(v13, v71);
        goto LABEL_44;
      }

      (*(v193 + 8))(v13, v71);
      goto LABEL_102;
    case 3u:
      v181 = v1;
      v79 = *(v15 + 3);
      v208[2] = *(v15 + 2);
      v208[3] = v79;
      v208[4] = *(v15 + 4);
      v80 = *(v15 + 1);
      v208[0] = *v15;
      v208[1] = v80;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v81 = v198;
      NANAttribute.ServiceDescriptor.encode(to:)(v205);
      if (v81)
      {
        sub_100197EB4(v208);
        goto LABEL_128;
      }

      sub_100197EB4(v208);
      goto LABEL_114;
    case 4u:
      v181 = v1;
      LOWORD(v201) = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;
      sub_10027A27C();

      v49 = v198;
      dispatch thunk of Encodable.encode(to:)();
      if (!v49)
      {
        goto LABEL_114;
      }

      goto LABEL_128;
    case 5u:
      v181 = v1;
      v96 = *(v15 + 1);
      v209 = *v15;
      v210[0] = v96;
      *(v210 + 9) = *(v15 + 25);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v97 = v198;
      NANAttribute.WLANInfrastructure.encode(to:)(v205);
      if (v97)
      {
        sub_10027A24C(&v209);
        goto LABEL_128;
      }

      sub_10027A24C(&v209);
      goto LABEL_114;
    case 6u:
      v109 = *(v15 + 1);
      v201 = *v15;
      v202 = v109;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;
      v110 = v202;
      v111 = v201 | (BYTE4(v201) << 32) | (BYTE5(v201) << 40) | (BYTE6(v201) << 48);
      v112 = WORD4(v201);
      if (BYTE10(v201))
      {
        v113 = 0x10000;
      }

      else
      {
        v113 = 0;
      }

      v114 = v198;
      NANAttribute.P2POperation.encode(to:)(v205, v111, v112 | v113, v110, *(&v110 + 1));
      if (v114)
      {
        sub_10027A21C(&v201);
        goto LABEL_128;
      }

      v181 = v1;
      sub_10027A21C(&v201);
      goto LABEL_114;
    case 7u:
      v181 = v1;
      v82 = *(v15 + 1);
      v211[0] = *v15;
      v211[1] = v82;
      v212 = *(v15 + 4);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v83 = v198;
      NANAttribute.IBSS.encode(to:)(v205);
      if (v83)
      {
        sub_10027A1EC(v211);
        goto LABEL_128;
      }

      sub_10027A1EC(v211);
      goto LABEL_114;
    case 8u:
      v181 = v1;
      v121 = *(v15 + 1);
      v213[0] = *v15;
      v213[1] = v121;
      v213[2] = *(v15 + 2);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v122 = v198;
      NANAttribute.Mesh.encode(to:)(v205);
      if (v122)
      {
        sub_10027A1BC(v213);
        goto LABEL_128;
      }

      sub_10027A1BC(v213);
      goto LABEL_114;
    case 9u:
      v57 = *(v15 + 2);
      v58 = *(v15 + 1);
      v59 = *(v15 + 2);
      v60 = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;
      if (v57)
      {
        v61 = 0x10000;
      }

      else
      {
        v61 = 0;
      }

      v62 = v60 | v61;
      v63 = v198;
      NANAttribute.FurtherServiceDiscovery.encode(to:)(v205, v62, v58, v59);
      goto LABEL_48;
    case 0xAu:
      v119 = *(v15 + 1);
      v120 = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v47 = v198;
      NANAttribute.FurtherAvailabilityMap.encode(to:)(v205, v120, v119);
      goto LABEL_76;
    case 0xBu:
      v48 = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v21 = v198;
      CountryCode.encode(to:)(v205, v48);
      goto LABEL_86;
    case 0xCu:
      v201 = *v15;
      *&v202 = *(v15 + 2);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;
      v53 = *(&v201 + 1);
      v52 = v202;
      v54 = v201 | (BYTE4(v201) << 32) | (BYTE5(v201) << 40);

      v55 = v53;
      v56 = v198;
      NANAttribute.Ranging.encode(to:)(v205, v54, v55, v52);
      if (v56)
      {
        sub_10027A18C(&v201);
        goto LABEL_128;
      }

      v181 = v18;
      sub_10027A18C(&v201);
      goto LABEL_114;
    case 0xDu:
      v104 = *v15;
      v105 = *(v15 + 4);
      v106 = *(v15 + 5);
      v107 = *(v15 + 1);
      v108 = *(v15 + 2);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v21 = v198;
      NANAttribute.ClusterDiscovery.encode(to:)(v205, v104 | (v105 << 32) | (v106 << 40), v107, v108);
      goto LABEL_86;
    case 0xEu:
      v181 = v1;
      v40 = *(v15 + 1);
      v214[0] = *v15;
      v214[1] = v40;
      v215 = *(v15 + 4);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v41 = v198;
      NANAttribute.ServiceDescriptorExtension.encode(to:)(v205);
      if (v41)
      {
        sub_100277A14(v214);
        goto LABEL_128;
      }

      sub_100277A14(v214);
      goto LABEL_114;
    case 0xFu:
      v194 = *v15;
      v73 = *(v15 + 1);
      v193 = v15[1];
      v74 = *(v15 + 4);
      v75 = *(v15 + 5);
      v76 = *(v15 + 6);
      v77 = v15[4];
      v78 = *(v15 + 10);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      LOBYTE(v201) = v73 & 1;
      v21 = v198;
      NANAttribute.DeviceCapability.encode(to:)(v205, v194 | (v193 << 16) | (v74 << 32) | (v75 << 40) | (v76 << 48) | ((v73 & 1) << 8), v77 | (v78 << 16));
      goto LABEL_86;
    case 0x10u:
      v181 = v1;
      v38 = *(v15 + 1);
      v216[0] = *v15;
      v216[1] = v38;
      v216[2] = *(v15 + 2);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v39 = v198;
      NANAttribute.Datapath.encode(to:)(v205);
      if (v39)
      {
        sub_10027A15C(v216);
        goto LABEL_128;
      }

      sub_10027A15C(v216);
      goto LABEL_114;
    case 0x11u:
      v89 = *v15;
      v90 = *(v15 + 1);
      v91 = v15[1];
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v47 = v198;
      NANAttribute.Availability.encode(to:)(v205, v89 | (v91 << 16), v90);
      goto LABEL_76;
    case 0x12u:
      v201 = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;
      v115 = *(&v201 + 1);
      v116 = v201 | (BYTE4(v201) << 32) | (BYTE5(v201) << 40) | (BYTE6(v201) << 48);

      v117 = v115;
      v118 = v198;
      NANAttribute.DataCluster.encode(to:)(v205, v116, v117);
      if (v118)
      {
        sub_10027A12C(&v201);
        goto LABEL_128;
      }

      v181 = v18;
      sub_10027A12C(&v201);
      goto LABEL_114;
    case 0x13u:
      v134 = *(v15 + 1);
      v201 = *v15;
      v202 = v134;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;
      v135 = BYTE4(v201);
      v136 = BYTE5(v201);
      v137 = *(&v201 + 1);
      v138 = v202;
      v139 = *(&v202 + 1);
      v140 = v201;

      LOBYTE(v203) = v136;
      v200 = v138;
      v141 = v137;
      v142 = v198;
      NANAttribute.DeviceLink.encode(to:)(v205, v140 | (v135 << 32) | (v136 << 40), v141, v138, v139);
      if (v142)
      {
        sub_10027A0FC(&v201);
        goto LABEL_128;
      }

      v181 = v18;
      sub_10027A0FC(&v201);
      goto LABEL_114;
    case 0x14u:
      v94 = *v15;
      v95 = v15[1];
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v21 = v198;
      NANAttribute.DeviceLinkQoS.encode(to:)(v205, v94 | (v95 << 16));
      goto LABEL_86;
    case 0x15u:
      v194 = *(v15 + 1);
      v98 = v15[8];
      v99 = *(v15 + 18);
      v100 = *(v15 + 19);
      v101 = *(v15 + 10);
      LODWORD(v193) = v15[14];
      v102 = *v15;
      v103 = *(v15 + 1);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      LOWORD(v201) = v98;
      BYTE2(v201) = v99;
      BYTE3(v201) = v100 & 1;
      *(&v201 + 4) = v101;
      WORD6(v201) = v193;
      v21 = v198;
      NANAttribute.UnalignedSchedule.encode(to:)(v205, v102 | (v103 << 32), v194, v201, *(&v201 + 1));
      goto LABEL_86;
    case 0x16u:
      v129 = *v15;
      v130 = v15[1];
      v131 = *(v15 + 4);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      LOBYTE(v201) = v131;
      v21 = v198;
      NANAttribute.RangingInformation.encode(to:)(v205, v129 | (v130 << 16) | (v131 << 32));
      goto LABEL_86;
    case 0x17u:
      v146 = *(v15 + 8);
      v147 = *(v15 + 2);
      v148 = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v47 = v198;
      NANAttribute.RangingSetup.encode(to:)(v205, v148, v146, v147);
      goto LABEL_76;
    case 0x18u:
      v181 = v1;
      v68 = *v15;
      v20 = v199;
      v205[0] = v199;
      swift_retain_n();
      sub_10005DC58(&qword_1005926C8, &qword_10049FA40);
      sub_10000CADC(&qword_1005926D0, &qword_1005926C8, &qword_10049FA40, byte_10049852C);
      KeyedEncodingContainer.init<A>(_:)();
      v205[0] = v68;
      sub_10005DC58(&qword_100592418, &qword_10049F940);
      sub_100279038();
      v69 = v198;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v69)
      {
        (*(v182 + 8))(v8, v6);
        goto LABEL_44;
      }

      (*(v182 + 8))(v8, v6);
      goto LABEL_102;
    case 0x19u:
      v181 = v1;
      v64 = *(v15 + 5);
      v217[4] = *(v15 + 4);
      v217[5] = v64;
      v217[6] = *(v15 + 6);
      v65 = *(v15 + 1);
      v217[0] = *v15;
      v217[1] = v65;
      v66 = *(v15 + 3);
      v217[2] = *(v15 + 2);
      v217[3] = v66;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v67 = v198;
      NANAttribute.ElementContainer.encode(to:)(v205);
      if (v67)
      {
        sub_10027A0CC(v217);
        goto LABEL_128;
      }

      sub_10027A0CC(v217);
      goto LABEL_114;
    case 0x1Au:
      v168 = *v15;
      v169 = *(v15 + 1);
      v170 = *(v15 + 4);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v21 = v198;
      NANAttribute.ExtendedWLANInfrastructure.encode(to:)(v205, v168, v169, v170);
      goto LABEL_86;
    case 0x1Bu:
      v33 = *v15;
      v34 = v15[6];
      v35 = *(v15 + 2);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v21 = v198;
      NANAttribute.ExtendedP2POperation.encode(to:)(v205, v33, v35 | (v34 << 32));
      goto LABEL_86;
    case 0x1Cu:
      v149 = *v15;
      v150 = *(v15 + 2);
      v151 = *(v15 + 12);
      v152 = *(v15 + 13);
      v153 = *(v15 + 14);
      v154 = *(v15 + 4);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v205[0] = v199;
      v155 = v150 | (v151 << 32) | (v152 << 40) | (v153 << 48);
      v20 = v199;

      v156 = v155;
      v21 = v198;
      NANAttribute.ExtendedIBSS.encode(to:)(v205, v149, v156, v154);
      goto LABEL_86;
    case 0x1Du:
      v157 = *(v15 + 1);
      v201 = *v15;
      v202 = v157;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;
      v158 = v201;
      v159 = v202;
      v160 = BYTE8(v201) | (WORD5(v201) << 16) | (WORD6(v201) << 32);

      v161 = v158;
      v162 = v198;
      NANAttribute.ExtendedMesh.encode(to:)(v205, v161, v160, v159, *(&v159 + 1));
      if (v162)
      {
        sub_10027A09C(&v201);
        goto LABEL_128;
      }

      v181 = v1;
      sub_10027A09C(&v201);
      goto LABEL_114;
    case 0x1Eu:
      v123 = *(v15 + 1);
      v124 = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v47 = v198;
      NANAttribute.CipherSuiteInformation.encode(to:)(v205, v124, v123);
      goto LABEL_76;
    case 0x1Fu:
      v181 = v1;
      v87 = *v15;
      v20 = v199;
      v205[0] = v199;
      swift_retain_n();
      sub_10005DC58(&qword_1005926B8, &qword_10049FA38);
      sub_10000CADC(&qword_1005926C0, &qword_1005926B8, &qword_10049FA38, byte_10049852C);
      v23 = v186;
      KeyedEncodingContainer.init<A>(_:)();
      v205[0] = v87;
      sub_10005DC58(&qword_100592488, &qword_10049F968);
      sub_10027938C();
      v24 = v187;
      v88 = v198;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v88)
      {
        v26 = v183;
        goto LABEL_43;
      }

      v171 = v183;
      goto LABEL_101;
    case 0x20u:
      v181 = v1;
      v125 = *(v15 + 5);
      v218[4] = *(v15 + 4);
      v218[5] = v125;
      v219 = *(v15 + 12);
      v126 = *(v15 + 1);
      v218[0] = *v15;
      v218[1] = v126;
      v127 = *(v15 + 3);
      v218[2] = *(v15 + 2);
      v218[3] = v127;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v128 = v198;
      NANAttribute.SharedKeyDescriptor.encode(to:)(v205);
      if (v128)
      {
        sub_100143F68(v218);
        goto LABEL_128;
      }

      sub_100143F68(v218);
      goto LABEL_114;
    case 0x21u:
      v42 = *v15;
      v43 = *(v15 + 1);
      v44 = v15[8];
      v45 = *(v15 + 18);
      v46 = *(v15 + 3);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v47 = v198;
      NANAttribute.MulticastScheduleChange.encode(to:)(v205, v42, v43, v44 | (v45 << 16), v46);
LABEL_76:
      if (v47)
      {

        goto LABEL_129;
      }

      v181 = v18;

      goto LABEL_114;
    case 0x22u:
      v181 = v1;
      v36 = *v15;
      v20 = v199;
      v205[0] = v199;
      swift_retain_n();
      sub_10005DC58(&qword_1005926A8, &qword_10049FA30);
      sub_10000CADC(&qword_1005926B0, &qword_1005926A8, &qword_10049FA30, byte_10049852C);
      v23 = v188;
      KeyedEncodingContainer.init<A>(_:)();
      v205[0] = v36;
      sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
      sub_100278684();
      v24 = v189;
      v37 = v198;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v37)
      {
        v26 = v184;
        goto LABEL_43;
      }

      v171 = v184;
      goto LABEL_101;
    case 0x23u:
      v181 = v1;
      v27 = *v15;
      v20 = v199;
      v205[0] = v199;
      swift_retain_n();
      sub_10005DC58(&qword_100592698, &qword_10049FA28);
      sub_10000CADC(&qword_1005926A0, &qword_100592698, &qword_10049FA28, byte_10049852C);
      KeyedEncodingContainer.init<A>(_:)();
      v205[0] = v27;
      sub_10005DC58(&qword_1005920C0, &unk_10049F800);
      sub_1002776A0();
      v28 = v194;
      v29 = v198;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v29)
      {
        (*(v193 + 8))(v11, v28);

        goto LABEL_45;
      }

      (*(v193 + 8))(v11, v28);

      goto LABEL_115;
    case 0x24u:
      v181 = v1;
      v30 = *(v15 + 1);
      v220[0] = *v15;
      v220[1] = v30;
      v31 = *(v15 + 3);
      v220[2] = *(v15 + 2);
      v220[3] = v31;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v32 = v198;
      NANAttribute.DatapathExtension.encode(to:)(v205);
      if (v32)
      {
        sub_10027A06C(v220);
        goto LABEL_128;
      }

      sub_10027A06C(v220);
      goto LABEL_114;
    case 0x25u:
      v181 = v1;
      v22 = *v15;
      v20 = v199;
      v205[0] = v199;
      swift_retain_n();
      sub_10005DC58(&qword_100592688, &qword_10049FA20);
      sub_10000CADC(&qword_100592690, &qword_100592688, &qword_10049FA20, byte_10049852C);
      v23 = v190;
      KeyedEncodingContainer.init<A>(_:)();
      v205[0] = v22;
      sub_10005DC58(&qword_10058D358, &unk_100486960);
      sub_100165E30(&qword_10058E320, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
      v24 = v191;
      v25 = v198;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v25)
      {
        v171 = v185;
LABEL_101:
        (*(v171 + 8))(v23, v24);
LABEL_102:

        goto LABEL_115;
      }

      v26 = v185;
LABEL_43:
      (*(v26 + 8))(v23, v24);
LABEL_44:

LABEL_45:

      return;
    case 0x26u:
      v164 = *v15;
      v163 = *(v15 + 1);
      v58 = *(v15 + 2);
      v59 = *(v15 + 3);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v165 = v198;
      NANAttribute.PairingIdentityResolution.encode(to:)(v205, v164, v163, v58, v59);
      if (v165)
      {
        sub_1000124C8(v164, v163);
LABEL_84:
        v166 = v58;
        v167 = v59;
        goto LABEL_127;
      }

      v181 = v18;
      sub_1000124C8(v164, v163);
LABEL_113:
      sub_1000124C8(v58, v59);
      goto LABEL_114;
    case 0x27u:
      v181 = v1;
      v132 = *(v15 + 1);
      v221 = *v15;
      v222[0] = v132;
      *(v222 + 10) = *(v15 + 13);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v133 = v198;
      NANAttribute.PairingBootstrapping.encode(to:)(v205);
      if (v133)
      {
        sub_1001440B0(&v221);
        goto LABEL_128;
      }

      sub_1001440B0(&v221);
      goto LABEL_114;
    case 0x28u:
      v181 = v1;
      v50 = v192;
      sub_100262DC8(v15, v192, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v206 = &type metadata for BinaryEncoder.UnkeyedContainer;
      v207 = sub_1000D12E4();
      v20 = v199;
      v205[0] = v199;
      sub_100031694(v205, &type metadata for BinaryEncoder.UnkeyedContainer);

      v51 = v198;
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (v51)
      {

        sub_100277544(v50, type metadata accessor for NANAttribute.CustomDeviceInformation);
        goto LABEL_129;
      }

      sub_100031694(v205, v206);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v205, v206);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100002A00(v205);
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v205[0] = v20;

      NANAttribute.CustomDeviceInformation.encode(to:)(v205);
      sub_100277544(v50, type metadata accessor for NANAttribute.CustomDeviceInformation);
LABEL_114:
      sub_100002A00(v205);
      goto LABEL_115;
    case 0x29u:
      v92 = *(v15 + 2);
      v58 = *(v15 + 1);
      v59 = *(v15 + 2);
      v93 = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v63 = v198;
      NANAttribute.VendorSpecific.encode(to:)(v205, v93 | (v92 << 16), v58, v59);
LABEL_48:
      if (v63)
      {
        goto LABEL_84;
      }

      v181 = v18;
      goto LABEL_113;
    case 0x2Au:
      v181 = v1;
      v143 = *(v15 + 1);
      v144 = *(v15 + 2);
      v145 = v198;
      v20 = v199;
      sub_10023A868(v143, v144);
      if (v145)
      {

        sub_1000124C8(v143, v144);
        return;
      }

      sub_1000124C8(v143, v144);
LABEL_115:
      sub_100029B34(v196, v196[3]);
      dispatch thunk of Encoder.unkeyedContainer()();
      LOBYTE(v201) = NANAttribute.attributeType.getter();
      sub_100031694(v205, v206);
      sub_10027A018();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      swift_beginAccess();
      v172 = *(v20 + 16);
      v173 = *(v20 + 24) >> 62;
      if (v173 > 1)
      {
        if (v173 != 2)
        {
          goto LABEL_126;
        }

        v175 = v172 + 16;
        v172 = *(v172 + 16);
        v174 = *(v175 + 8);
        v176 = v174 - v172;
        if (!__OFSUB__(v174, v172))
        {
          goto LABEL_124;
        }

        __break(1u);
LABEL_122:
        v177 = __OFSUB__(HIDWORD(v172), v172);
        v178 = HIDWORD(v172) - v172;
        if (v177)
        {
          goto LABEL_132;
        }

        v176 = v178;
LABEL_124:
        if ((v176 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!(v176 >> 16))
        {
          goto LABEL_126;
        }

        __break(1u);
LABEL_132:
        __break(1u);
        return;
      }

      if (v173)
      {
        goto LABEL_122;
      }

LABEL_126:
      sub_100031694(v205, v206);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v180 = *(v20 + 24);
      v203 = *(v20 + 16);
      v179 = v203;
      v204 = v180;
      sub_100031694(v205, v206);
      sub_10000AB0C(v179, v180);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v166 = v203;
      v167 = v204;
LABEL_127:
      sub_1000124C8(v166, v167);
LABEL_128:

LABEL_129:
      sub_100002A00(v205);
      return;
    default:
      v19 = *v15;
      v206 = v197;
      v207 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v20 = v199;
      v205[0] = v199;

      v21 = v198;
      NANAttribute.MasterIndication.encode(to:)(v205, v19);
LABEL_86:
      if (v21)
      {
        goto LABEL_128;
      }

      v181 = v18;
      goto LABEL_114;
  }
}