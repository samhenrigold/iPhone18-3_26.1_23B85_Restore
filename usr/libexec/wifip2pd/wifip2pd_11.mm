uint64_t sub_1000D860C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = sub_100038D34(0, 1uLL, *v0);
  if ((v2 & 1) == 0)
  {
    v9 = v4;
    if (v4 == 1)
    {
      v10 = sub_1000D40C8(4, 4uLL, v3, v4);
      if (v10 > 15)
      {
        goto LABEL_27;
      }

      v11 = sub_100286B98(0, 0, 1uLL);
      v12 = sub_100286B80(v10, 4, 4uLL);
      v9 = v11 | v3 & 2u;
      v3 = v9 | v12;
      *v0 = v9 | v12;
    }

    else if (v4)
    {
      goto LABEL_32;
    }

    v13 = *(v1 + 16);
    result = sub_1000D40C8(4, 4uLL, v3, v9);
    if (result == v13)
    {
      return result;
    }

    v17 = sub_100038D34(0, 1uLL, v3);
    if (v17 == 1)
    {
      if (v13 <= 0xF)
      {
        v16 = 1;
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    if (!v17)
    {
      if (v13 <= 0xF)
      {
        v16 = 0;
        goto LABEL_24;
      }

      goto LABEL_31;
    }

LABEL_32:
    sub_10000B02C();
    swift_allocError();
    *v19 = xmmword_10047CE70;
    *(v19 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v5 = v4;
  if (!v4)
  {
    v6 = sub_1000D40C8(4, 4uLL, v3, v4);
    if (v6 <= 15)
    {
      v7 = sub_100286B98(1u, 0, 1uLL);
      v8 = sub_100286B80(v6, 4, 4uLL);
      v5 = v7 | v3 & 2u;
      v3 = v5 | v8;
      *v0 = v5 | v8;
      goto LABEL_9;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 != 1)
  {
    goto LABEL_32;
  }

LABEL_9:
  v13 = *(v1 + 16);
  result = sub_1000D40C8(4, 4uLL, v3, v5);
  if (result == v13)
  {
    return result;
  }

  v15 = sub_100038D34(0, 1uLL, v3);
  if (v15 != 1)
  {
    if (!v15)
    {
      if (v13 <= 0xF)
      {
        v16 = 0;
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (v13 > 0xF)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);

    __break(1u);

    __break(1u);

    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_32;
  }

  v16 = 1;
LABEL_24:
  v18 = sub_100286B98(v16, 0, 1uLL);
  result = sub_100286B80(v13, 4, 4uLL);
  *v0 = v18 | v3 & 2 | result;
  return result;
}

uint64_t NANAvailabilityEntry.BandChannelEntries.entries.setter(uint64_t a1, char a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2 & 1;

  return sub_1000D860C();
}

uint64_t sub_1000D8A28(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1000D860C();
  }

  return result;
}

Swift::Void __swiftcall NANAvailabilityEntry.BandChannelEntries.add(channel:)(CoreP2P::NANBitmap::Channel channel)
{
  if (*(v1 + 16) == 1)
  {
    is_nil = channel.auxiliaryChannelBitmap.is_nil;
    v3 = *(v1 + 8);
    value = channel.auxiliaryChannelBitmap.value;
    primaryChannelBitmap = channel.primaryChannelBitmap;
    v6 = *&channel.operatingClass >> 16;
    operatingClass = channel.operatingClass;
    sub_10005DC58(&qword_100598800, &qword_1004842A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100480F40;
    *(inited + 32) = operatingClass;
    *(inited + 34) = v6;
    *(inited + 36) = primaryChannelBitmap;
    *(inited + 38) = value;
    *(inited + 40) = is_nil;

    sub_1002352B4(inited);

    *(v1 + 8) = v3;
    *(v1 + 16) = 1;
    sub_1000D860C();
  }
}

void NANAvailabilityEntry.BandChannelEntries.hash(into:)(uint64_t a1, Swift::UInt8 a2, uint64_t a3, char a4)
{
  Hasher._combine(_:)(a2);
  if (a4)
  {

    sub_1000DF50C(a1, a3);
  }

  else
  {
    v7 = *(a3 + 16);
    Hasher._combine(_:)(v7);
    if (v7)
    {
      v8 = (a3 + 32);
      do
      {
        v9 = *v8++;
        Hasher._combine(_:)(v9);
        --v7;
      }

      while (v7);
    }
  }
}

Swift::Int NANAvailabilityEntry.BandChannelEntries.hashValue.getter(Swift::UInt8 a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a3)
  {
    sub_1000DF50C(v10, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    Hasher._combine(_:)(v6);
    if (v6)
    {
      v7 = (a2 + 32);
      do
      {
        v8 = *v7++;
        Hasher._combine(_:)(v8);
        --v6;
      }

      while (v6);
    }
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000D8C8C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *v1;
  Hasher.init(_seed:)();
  NANAvailabilityEntry.BandChannelEntries.hash(into:)(v6, v4, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_1000D8CE8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E1F60(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t NANAvailabilityEntry.BandChannelEntries.encode(to:)(void *a1, char a2, uint64_t a3, char a4)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  LOBYTE(v11) = a2;
  sub_100031694(v9, v10);
  sub_1000E2618();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    v11 = a3;
    sub_100031694(v9, v10);
    if (a4)
    {
      sub_10005DC58(&qword_10058D000, &qword_1004842A8);
      sub_1000E266C();
    }

    else
    {
      sub_10005DC58(&qword_10058D018, &qword_1004842B0);
      sub_1000E2744();
    }

    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v9);
}

uint64_t NANAvailabilityEntry.timeBitmap.getter()
{
  v1 = v0[1];
  sub_10005D4F4(v1, v0[2], v0[3]);
  return v1;
}

uint64_t NANAvailabilityEntry.timeBitmap.setter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_10002F75C(*(v3 + 1), *(v3 + 2), *(v3 + 3));
  *(v3 + 1) = a1;
  *(v3 + 2) = a2;
  *(v3 + 3) = a3;
  v8 = *v3;
  if (a3 >> 60 == 15)
  {
    if ((*v3 & 0x1000) == 0)
    {
      return result;
    }

    v9 = v8 & 0xEFFF;
  }

  else
  {
    if ((*v3 & 0x1000) != 0)
    {
      return result;
    }

    v9 = v8 | 0x1000;
  }

  *v3 = v9;
  return result;
}

__int16 **sub_1000D8FB4(__int16 **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = **result;
    if (*(*result + 3) >> 60 == 15)
    {
      if ((**result & 0x1000) != 0)
      {
        *v2 = v3 & 0xEFFF;
      }
    }

    else if ((**result & 0x1000) == 0)
    {
      *v2 = v3 | 0x1000;
    }
  }

  return result;
}

uint64_t NANAvailabilityEntry.bandChannelEntries.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NANAvailabilityEntry.bandChannelEntries.setter(char a1, uint64_t a2, char a3)
{

  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3 & 1;
  return result;
}

uint64_t NANAvailabilityEntry.init(control:timeBitmap:bandChannelEntries:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_10005D4F4(a2, a3, a4);
  sub_10002F75C(0, 0, 0xF000000000000000);
  if (a4 >> 60 == 15)
  {
    v16 = a1 & 0xEFFF;
  }

  else
  {
    sub_10002F75C(a2, a3, a4);
    v16 = a1 | 0x1000;
  }

  sub_10005D4F4(a2, a3, a4);

  sub_10002F75C(a2, a3, a4);

  *a8 = v16;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

uint64_t static NANAvailabilityEntry.potentialEntry(on:with:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100286B98(1u, 0, 1uLL);
  v9 = sub_100286B80(1, 4, 4uLL);
  sub_10005DC58(&qword_100598800, &qword_1004842A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100480F40;
  *(v10 + 32) = a1;
  *(v10 + 34) = WORD1(a1);
  *(v10 + 36) = BYTE4(a1);
  *(v10 + 38) = HIWORD(a1);
  *(v10 + 40) = a2 & 1;
  sub_10002F75C(0, 0, 0xF000000000000000);
  sub_10005D4F4(0, 0, 0xF000000000000000);

  sub_10002F75C(0, 0, 0xF000000000000000);

  *a4 = (8 * a3) | 2;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xF000000000000000;
  *(a4 + 32) = v9 | v8;
  *(a4 + 40) = v10;
  *(a4 + 48) = 1;
  return result;
}

uint64_t static NANAvailabilityEntry.committedEntry(on:for:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int16 a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_100286B98(1u, 0, 1uLL);
  v13 = a3;
  v14 = sub_100286B80(1, 4, 4uLL) | v12;
  sub_10005DC58(&qword_100598800, &qword_1004842A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100480F40;
  *(v15 + 32) = a1;
  *(v15 + 34) = WORD1(a1);
  *(v15 + 36) = BYTE4(a1);
  *(v15 + 38) = HIWORD(a1);
  *(v15 + 40) = a2 & 1;
  sub_10000AB0C(a4, a5);
  sub_10002F75C(0, 0, 0xF000000000000000);
  sub_10005D4F4(v13, a4, a5);

  sub_10002F75C(v13, a4, a5);

  *a6 = 4097;
  *(a6 + 8) = v13;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  *(a6 + 32) = v14;
  *(a6 + 40) = v15;
  *(a6 + 48) = 1;
  return result;
}

void NANAvailabilityEntry.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  if (*(v2 + 24) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
    Data.hash(into:)();
  }

  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  Hasher._combine(_:)(*(v2 + 32));
  if (v6)
  {

    sub_1000DF50C(a1, v5);
  }

  else
  {
    v7 = *(v5 + 16);
    Hasher._combine(_:)(v7);
    if (v7)
    {
      v8 = (v5 + 32);
      do
      {
        v9 = *v8++;
        Hasher._combine(_:)(v9);
        --v7;
      }

      while (v7);
    }
  }
}

Swift::Int NANAvailabilityEntry.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAvailabilityEntry.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D9570(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANAvailabilityEntry.hash(into:)(v2);
  return Hasher._finalize()();
}

double NANAvailabilityEntry.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000E1DFC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

void NANAvailabilityEntry.encode(to:)(void *a1)
{
  v3 = v1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v4 = sub_100033AA8(_swiftEmptyArrayStorage);
  v5 = type metadata accessor for BinaryEncoder();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100480A90;
  *(v6 + 32) = v4;
  v21 = v5;
  v7 = sub_1000E281C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v22 = v7;
  v20[0] = v6;
  sub_1000E2864();

  dispatch thunk of Encodable.encode(to:)();
  if (v2)
  {

    sub_100002A00(v20);
LABEL_4:
    sub_100002A00(v23);
    return;
  }

  sub_100002A00(v20);
  v21 = v5;
  v22 = v7;
  v20[0] = v6;

  sub_10005DC58(&qword_10058D038, &unk_1004842B8);
  sub_1000E28B8();
  Optional<A>.encode(to:)();
  sub_100002A00(v20);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 32);
  v21 = v5;
  v22 = v7;
  v20[0] = v6;

  NANAvailabilityEntry.BandChannelEntries.encode(to:)(v20, v10, v8, v9);
  sub_100002A00(v20);
  swift_beginAccess();
  v11 = *(v6 + 16);
  v12 = *(v6 + 24) >> 62;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
LABEL_16:
      sub_100031694(v23, v24);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v18 = *(v6 + 16);
      v19 = *(v6 + 24);
      sub_100031694(v23, v24);
      sub_10000AB0C(v18, v19);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v18, v19);

      goto LABEL_4;
    }

    v14 = v11 + 16;
    v11 = *(v11 + 16);
    v13 = *(v14 + 8);
    v15 = v13 - v11;
    if (!__OFSUB__(v13, v11))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v12)
  {
    goto LABEL_16;
  }

  v16 = __OFSUB__(HIDWORD(v11), v11);
  v17 = HIDWORD(v11) - v11;
  if (v16)
  {
    goto LABEL_19;
  }

  v15 = v17;
LABEL_14:
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v15 >> 16))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

BOOL sub_1000D9914(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7CoreP2P20NANAvailabilityEntryV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t NANAttribute.Availability.description.getter(int a1, unint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_1000C0464(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = (a2 + 80);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 16);
      v10 = *(v5 - 1);
      v11 = *v5;
      LOWORD(v30) = *(v5 - 24);
      v31 = v6;
      v32 = v7;
      v33 = v8;
      v34 = v9;
      v35 = v10;
      v36 = v11;
      sub_10005D4F4(v6, v7, v8);

      sub_1000D9C38(&v30, a1 & 0xFFFF00FF, a2, v37);
      sub_10002F75C(v31, v32, v33);

      v12 = v37[0];
      v13 = v37[1];
      v38 = v3;
      v15 = v3[2];
      v14 = v3[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000C0464((v14 > 1), v15 + 1, 1);
        v3 = v38;
      }

      v3[2] = v15 + 1;
      v16 = &v3[2 * v15];
      v16[4] = v12;
      v16[5] = v13;
      v5 += 56;
      --v2;
    }

    while (v2);
  }

  v30 = v3;
  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0, &protocol conformance descriptor for [A]);
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v30 = 91;
  v31 = 0xE100000000000000;
  v20 = sub_1000D3E1C(0, 4uLL, SHIWORD(a1));
  if ((v20 & 0xF) == 1)
  {
    v21 = 0xE900000000000079;
    v22 = 0x7261646E6F636573;
  }

  else if ((v20 & 0xF) != 0)
  {
    LOBYTE(v37[0]) = v20 & 0xF;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v23;
  }

  else
  {
    v21 = 0xE700000000000000;
    v22 = 0x7972616D697270;
  }

  v24 = v21;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 8250;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = v17;
  v26._object = v19;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 93;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  return v30;
}

void sub_1000D9C38(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v55 = a4;
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 40);
  v15 = *a1 & 7;
  if (v15 != 2)
  {
    v16 = v15 != 1 || *(a1 + 48) == 0;
    if (!v16 && *(v14 + 16) == 1)
    {
      v17 = *(a1 + 8);
      v53 = *(a1 + 16);
      v54 = v17;
      v18 = *(a1 + 24);
      v19 = NANBitmap.Channel.channel.getter(*(v14 + 32) | (*(v14 + 34) << 16) | (*(v14 + 36) << 32) | (*(v14 + 38) << 48), v10);
      if ((v19 & 0xFF00000000) != 0x300000000 && v18 >> 60 != 15)
      {
        v21 = v19;
        v56 = 60;
        v57 = 0xE100000000000000;
        v23 = v53;
        v22 = v54;
        sub_10005D4F4(v54, v53, v18);
        v24._countAndFlagsBits = Channel.description.getter(v21 & 0xFFFFFFFFFFFFLL);
        String.append(_:)(v24);

        v25._countAndFlagsBits = 8250;
        v25._object = 0xE200000000000000;
        String.append(_:)(v25);
        v26._countAndFlagsBits = NANBitmap.Time.description.getter(v22, v23, v18);
        String.append(_:)(v26);

        v27._countAndFlagsBits = 62;
        v27._object = 0xE100000000000000;
        String.append(_:)(v27);
        sub_10002F75C(v22, v23, v18);
LABEL_25:
        v43 = v56;
        v45 = v57;
        goto LABEL_26;
      }
    }

LABEL_23:
    LOBYTE(v56) = a2;
    WORD1(v56) = HIWORD(a2);
    v58 = &type metadata for NANAttribute.Availability;
    v57 = a3;

    Mirror.init(reflecting:)();
    v43 = Mirror.description.getter();
    v45 = v44;
    (*(v9 + 8))(v12, v8);
LABEL_26:
    v51 = v55;
    *v55 = v43;
    v51[1] = v45;
    return;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_23;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  v28._countAndFlagsBits = 60;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v30 = sub_1000D3CF8(3, 2uLL, v13, v29);
  if (!v4)
  {
    LOBYTE(v59) = v30;
    _print_unlocked<A, B>(_:_:)();
    v31._countAndFlagsBits = 8250;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32 = *(v14 + 16);
    v33 = _swiftEmptyArrayStorage;
    if (v32)
    {
      v59 = _swiftEmptyArrayStorage;
      sub_1000C0464(0, v32, 0);
      v33 = v59;
      v35 = v14 + 40;
      do
      {
        v14 = v14 & 0xFF000000FF00 | *(v35 - 8) | (*(v35 - 6) << 16) | (*(v35 - 4) << 32) | (*(v35 - 2) << 48);
        v36 = NANBitmap.Channel.channel.getter(v14, v34);
        if ((v36 & 0xFF00000000) == 0x300000000)
        {
          v37 = 0xE100000000000000;
          v38 = 48;
        }

        else
        {
          v38 = Channel.description.getter(v36 & 0xFFFFFFFFFFFFLL);
        }

        v59 = v33;
        v40 = v33[2];
        v39 = v33[3];
        if (v40 >= v39 >> 1)
        {
          v54 = v38;
          v42 = v37;
          sub_1000C0464((v39 > 1), v40 + 1, 1);
          v38 = v54;
          v37 = v42;
          v33 = v59;
        }

        v33[2] = v40 + 1;
        v41 = &v33[2 * v40];
        v41[4] = v38;
        v41[5] = v37;
        v35 += 10;
        --v32;
      }

      while (v32);
    }

    v59 = v33;
    sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0, &protocol conformance descriptor for [A]);
    v46 = BidirectionalCollection<>.joined(separator:)();
    v48 = v47;

    v49._countAndFlagsBits = v46;
    v49._object = v48;
    String.append(_:)(v49);

    v50._countAndFlagsBits = 62;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    goto LABEL_25;
  }

  swift_unexpectedError();
  __break(1u);
}

char *static Array<A>.potentialAvailability(using:supportsSimultaneousDualBand:for:)(char a1, char *a2, uint64_t a3)
{
  v6 = a1;
  v7 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v8 = *(a3 + 16);
  if (v8)
  {
    v3 = a3;
    v7 = sub_1000DD660(v8, 0);
    v4 = sub_1000DDC6C(&v31, (v7 + 32), v8, v3);
    v9 = v31;
    v6 = v32;
    v10 = v33;

    sub_1000E290C(v9);
    if (v4 != v8)
    {
      __break(1u);
      goto LABEL_28;
    }

    v6 = a1;
  }

  v31 = v7;
  v7 = 0;
  sub_1000DDEB8(&v31);
  v12 = *(v31 + 2);
  if (v12)
  {
    v13 = v31 + 38;
    do
    {
      v17 = *(v13 - 2);
      v18 = *v13;
      v19 = sub_100019B9C(*(v13 - 6) | (v17 << 32) | (*(v13 - 1) << 40));
      if ((v20 & 0x100) == 0)
      {
        v21 = v19 & 0xFFFF00FFFFFF00FFLL;
        if ((a2 & 1) != 0 && v17)
        {
          v4 = v21 | v4 & 0xFF000000FF00;
          v14 = v20 & 1;
          v15 = &v34;
          v16 = v4;
        }

        else
        {
          v3 = v21 | v3 & 0xFF000000FF00;
          v14 = v20 & 1;
          v15 = &v35;
          v16 = v3;
        }

        sub_1000DA388(v16, v14, v18, v15);
      }

      v13 += 8;
      --v12;
    }

    while (v12);

    v8 = v35;
    if (v35[2])
    {
LABEL_14:
      v10 = sub_100286BB0(0, 0, 4uLL) | 0x20;
      a2 = sub_100116F70(0, 1, 1, _swiftEmptyArrayStorage);
      v4 = *(a2 + 2);
      v11 = *(a2 + 3);
      v3 = v4 + 1;
      if (v4 < v11 >> 1)
      {
LABEL_15:
        *(a2 + 2) = v3;
        v22 = &a2[16 * v4];
        v22[32] = v6;
        *(v22 + 17) = v10;
        *(v22 + 5) = v8;
        goto LABEL_18;
      }

LABEL_28:
      a2 = sub_100116F70((v11 > 1), v3, 1, a2);
      goto LABEL_15;
    }
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_14;
    }
  }

  a2 = _swiftEmptyArrayStorage;
LABEL_18:
  v23 = v34;
  if (!v34[2])
  {

    return a2;
  }

  v24 = sub_100286BB0(1u, 0, 4uLL);
  if (!v7)
  {
    v25 = v24 | 0x20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a2 = sub_100116F70(0, *(a2 + 2) + 1, 1, a2);
    }

    v27 = *(a2 + 2);
    v26 = *(a2 + 3);
    if (v27 >= v26 >> 1)
    {
      a2 = sub_100116F70((v26 > 1), v27 + 1, 1, a2);
    }

    *(a2 + 2) = v27 + 1;
    v28 = &a2[16 * v27];
    v28[32] = v6;
    *(v28 + 17) = v25;
    *(v28 + 5) = v23;
    return a2;
  }

  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000DA388(uint64_t a1, char a2, unint64_t a3, uint64_t *a4)
{
  v7 = 0;
  v8 = *a4;
  v9 = *(*a4 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    v28 = *(*a4 + 16);
LABEL_3:
    v24 = v11;
    v12 = 56 * v10 + 80;
    v13 = v10;
    while (1)
    {
      if (v13 >= v9)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_36;
      }

      if (v13 >= *(v8 + 16))
      {
        goto LABEL_37;
      }

      result = sub_1000D3F78(3, 2uLL, *(v8 + v12 - 48), v8 + v12);
      if (result > 1)
      {
        if (result == 2)
        {
          if (a3 == 2)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (result != 3)
          {
LABEL_41:
            sub_10000B02C();
            swift_allocError();
            *v23 = xmmword_10047CE70;
            *(v23 + 16) = 2;
            swift_willThrow();
            goto LABEL_42;
          }

          if (a3 == 3)
          {
LABEL_19:
            if (v13 >= *(v8 + 16))
            {
              goto LABEL_38;
            }

            v4 = a3;
            v5 = *(v8 + v12 - 40);
            result = sub_1000D40C8(4, 4uLL, *(v8 + v12 - 16), v8 + v12);
            if (result < 16)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1000C2B64(v8);
                v8 = result;
              }

              if (v13 >= *(v8 + 16))
              {
                __break(1u);

                __break(1u);
LABEL_42:
                swift_unexpectedError();
                __break(1u);
                sub_10005D4F4(v5, v8, a3);

                result = swift_unexpectedError();
                __break(1u);
                return result;
              }

              if (*(v8 + v12) == 1)
              {
                v5 = v8;
                v15 = (v8 + v12);
                v16 = *(v15 - 1);
                sub_10005DC58(&qword_100598800, &qword_1004842A0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_100480F40;
                *(inited + 32) = a1;
                *(inited + 34) = WORD1(a1);
                *(inited + 36) = BYTE4(a1);
                *(inited + 38) = HIWORD(a1);
                *(inited + 40) = a2 & 1;

                v18 = inited;
                a3 = v4;
                sub_1002352B4(v18);
                *(v15 - 1) = v16;
                *v15 = 1;

                result = sub_1000D860C();
              }

              v11 = 0;
              v9 = v28;
              *a4 = v8;
              if (v10 == v28)
              {
                return result;
              }

              goto LABEL_3;
            }

            v9 = v28;
          }
        }
      }

      else if (result)
      {
        if (result != 1)
        {
          goto LABEL_41;
        }

        if (a3 == 1)
        {
          goto LABEL_19;
        }
      }

      else if (!a3)
      {
        goto LABEL_19;
      }

      ++v13;
      v12 += 56;
      if (v10 == v9)
      {
        if ((v24 & 1) == 0)
        {
          return result;
        }

        break;
      }
    }
  }

  LOBYTE(v9) = sub_100286B98(1u, 0, 1uLL);
  LOBYTE(v4) = sub_100286B80(1, 4, 4uLL);
  LOWORD(v13) = 2;
  sub_10005DC58(&qword_100598800, &qword_1004842A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100480F40;
  *(v7 + 32) = a1;
  *(v7 + 34) = WORD1(a1);
  *(v7 + 36) = BYTE4(a1);
  *(v7 + 38) = HIWORD(a1);
  *(v7 + 40) = a2 & 1;
  sub_10002F75C(0, 0, 0xF000000000000000);
  sub_10005D4F4(0, 0, 0xF000000000000000);

  sub_10002F75C(0, 0, 0xF000000000000000);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_39:
    result = sub_100116E4C(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v19 = v13 & 0xF807 | (8 * a3);
  v21 = *(v8 + 16);
  v20 = *(v8 + 24);
  if (v21 >= v20 >> 1)
  {
    result = sub_100116E4C((v20 > 1), v21 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v21 + 1;
  v22 = v8 + 56 * v21;
  *(v22 + 32) = v19;
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0xF000000000000000;
  *(v22 + 64) = v4 | v9;
  *(v22 + 72) = v7;
  *(v22 + 80) = 1;
  *a4 = v8;
  return result;
}

void *static Array<A>.committedAvailability(using:supportsSimultaneousDualBand:for:)(char a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = sub_1000DD6E4(*(a3 + 16), 0);
    v3 = sub_1000DDD7C(v49, v8 + 32, v6, a3);
    v4 = v49[0];
    v5 = v49[1];

    sub_1000E290C(v4);
    if (v3 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_5:
  v49[0] = v8;
  sub_1000DE014(v49);
  v9 = v49[0];
  v44 = *(v49[0] + 2);
  if (v44)
  {
    v10 = 0;
    v11 = v49[0] + 63;
    v39 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    v43 = v49[0];
    while (1)
    {
      v12 = *(v9 + 2);
      if (v10 >= v12)
      {
        __break(1u);
LABEL_36:
        v8 = sub_100116F70((v12 > 1), v6, 1, v8);
LABEL_26:
        *(v8 + 16) = v6;
        v31 = (v8 + 16 * v9);
        *(v31 + 32) = a1;
        *(v31 + 17) = v3;
        v31[5] = v5;
        if (*(v4 + 16))
        {
          goto LABEL_27;
        }

LABEL_33:

        return v8;
      }

      v13 = *(v11 - 27);
      v46 = *(v11 - 23);
      v48 = v10;
      v45 = *(v11 - 15);
      v14 = *(v11 - 7);
      v15 = *(v11 - 6);
      v6 = *(v11 - 5);
      v5 = *(v11 - 4);
      v4 = *(v11 - 3);
      v8 = *(v11 - 2);
      v16 = *(v11 - 1);
      v3 = *v11;
      v17 = sub_100019B9C((v13 << 32) | (*(v11 - 26) << 40) | *(v11 - 31));
      if ((v18 & 0x100) == 0)
      {
        break;
      }

      v9 = v43;
LABEL_8:
      v10 = v48 + 1;
      v11 += 32;
      if (v44 == v48 + 1)
      {
        goto LABEL_24;
      }
    }

    v41 = v17;
    v42 = v18;
    v19 = TimeBitmap.nanBitmap.getter(v46, v45, (v14 | (v15 << 8) | (v6 << 16) | (v5 << 24) | (v4 << 32) | (v8 << 40) | (v16 << 48) | (v3 << 56)));
    v47 = v20;
    v22 = v21;
    v23 = sub_100286B98(1u, 0, 1uLL);
    if ((a2 & 1) != 0 && v13)
    {
      v8 = v23;
      v24 = sub_100286B80(1, 4, 4uLL);
      v5 = v41;
      v25 = v19;
      sub_10005DC58(&qword_100598800, &qword_1004842A0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_100480F40;
      *(v3 + 32) = v41;
      *(v3 + 34) = WORD1(v41);
      *(v3 + 36) = BYTE4(v41);
      *(v3 + 38) = HIWORD(v41);
      *(v3 + 40) = v42 & 1;
      sub_10002F75C(0, 0, 0xF000000000000000);
      sub_10005D4F4(v25, v47, v22);

      sub_10002F75C(v25, v47, v22);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_100116E4C(0, *(v40 + 2) + 1, 1, v40);
      }

      v9 = v43;
      v26 = v40;
      v4 = *(v40 + 2);
      v27 = *(v40 + 3);
      v6 = v4 + 1;
      if (v4 >= v27 >> 1)
      {
        v28 = sub_100116E4C((v27 > 1), v4 + 1, 1, v40);
        v40 = v28;
LABEL_21:
        *(v28 + 2) = v6;
        v30 = &v28[56 * v4];
        *(v30 + 16) = 4097;
        *(v30 + 5) = v25;
        *(v30 + 6) = v47;
        *(v30 + 7) = v22;
        v30[64] = v24 | v8;
        *(v30 + 9) = v3;
        v30[80] = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v8 = v23;
      v24 = sub_100286B80(1, 4, 4uLL);
      v5 = v41;
      v25 = v19;
      sub_10005DC58(&qword_100598800, &qword_1004842A0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_100480F40;
      *(v3 + 32) = v41;
      *(v3 + 34) = WORD1(v41);
      *(v3 + 36) = BYTE4(v41);
      *(v3 + 38) = HIWORD(v41);
      *(v3 + 40) = v42 & 1;
      sub_10002F75C(0, 0, 0xF000000000000000);
      sub_10005D4F4(v25, v47, v22);

      sub_10002F75C(v25, v47, v22);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100116E4C(0, *(v39 + 2) + 1, 1, v39);
      }

      v9 = v43;
      v26 = v39;
      v4 = *(v39 + 2);
      v29 = *(v39 + 3);
      v6 = v4 + 1;
      if (v4 >= v29 >> 1)
      {
        v28 = sub_100116E4C((v29 > 1), v4 + 1, 1, v39);
        v39 = v28;
        goto LABEL_21;
      }
    }

    v28 = v26;
    goto LABEL_21;
  }

  v39 = _swiftEmptyArrayStorage;
  v40 = _swiftEmptyArrayStorage;
LABEL_24:

  v5 = v39;
  if (*(v39 + 2))
  {
    v4 = v40;
    LOWORD(v3) = sub_100286BB0(0, 0, 4uLL) | 0x10;
    v8 = sub_100116F70(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v8 + 16);
    v12 = *(v8 + 24);
    v6 = (v9 + 1);
    if (v9 >= v12 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  v8 = _swiftEmptyArrayStorage;
  v4 = v40;
  if (!*(v40 + 2))
  {
    goto LABEL_33;
  }

LABEL_27:
  v32 = sub_100286BB0(1u, 0, 4uLL) | 0x10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100116F70(0, *(v8 + 16) + 1, 1, v8);
  }

  v34 = *(v8 + 16);
  v33 = *(v8 + 24);
  if (v34 >= v33 >> 1)
  {
    v8 = sub_100116F70((v33 > 1), v34 + 1, 1, v8);
  }

  *(v8 + 16) = v34 + 1;
  v35 = (v8 + 16 * v34);
  *(v35 + 32) = a1;
  *(v35 + 17) = v32;
  v35[5] = v4;
  return v8;
}

uint64_t NANScheduleEntry.timeBitmap.setter(__int16 a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000124C8(*(v3 + 16), *(v3 + 24));
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t sub_1000DAF04()
{
  if (*v0)
  {
    return 0x6D746942656D6974;
  }

  else
  {
    return 0x444970616DLL;
  }
}

uint64_t sub_1000DAF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444970616DLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D746942656D6974 && a2 == 0xEA00000000007061)
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

uint64_t sub_1000DB020(uint64_t a1)
{
  v2 = sub_1000E2914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DB05C(uint64_t a1)
{
  v2 = sub_1000E2914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANScheduleEntry.encode(to:)(void *a1, char a2, int a3, uint64_t a4, unint64_t a5)
{
  v14 = a5;
  v18 = a3;
  v9 = sub_10005DC58(&qword_10058D048, &qword_1004842C8);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v14 - v11;
  sub_100029B34(a1, a1[3]);
  sub_1000E2914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = a2;
  v19 = 0;
  sub_1000E2968();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v15 = v18;
    v16 = a4;
    v17 = v14;
    v19 = 1;
    sub_10000AB0C(a4, v14);
    sub_1000E28B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v16, v17);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t NANScheduleEntry.hash(into:)(uint64_t a1, Swift::UInt8 a2, Swift::UInt16 a3, uint64_t a4, uint64_t a5)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);

  return Data.hash(into:)();
}

Swift::Int NANScheduleEntry.hashValue.getter(Swift::UInt8 a1, Swift::UInt16 a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000DB3AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DB428(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);

  return Data.hash(into:)();
}

Swift::Int sub_1000DB490(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DB508@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E0AD0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t NANMapIDs.init(rawValue:)(unsigned int a1)
{
  v1 = a1 & 1;
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = (a1 >> 1) & 0xF;
  }

  return v2 & 0xFFFF00FF | (v1 << 8);
}

void *NANMapIDs.init(decoder:)(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100029B34(v8, v8[3]);
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v6 = v4 & 1;
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = (v4 >> 1) & 0xF;
    }

    sub_100002A00(v8);
    sub_100002A00(a1);
    return (v7 & 0xFFFF00FF | (v6 << 8));
  }

  return v3;
}

uint64_t NANMapIDs.encode(to:)(void *a1, int a2)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002A00(v3);
}

uint64_t NANMapIDs.rawValue.getter(int a1)
{
  if ((a1 & 0x100) != 0)
  {
    return 1;
  }

  else
  {
    return (2 * a1);
  }
}

unsigned __int8 *sub_1000DB764@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = (v2 >> 1) & 0xF;
  v4 = v2 & 1;
  if (v4)
  {
    LOWORD(v3) = 0;
  }

  *a2 = v3 | (v4 << 8);
  *(a2 + 2) = 0;
  return result;
}

void sub_1000DB784(char *a1@<X8>)
{
  if (v1[1])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * *v1;
  }

  *a1 = v2;
}

Swift::Int sub_1000DB7A0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * v1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000DB7F4()
{
  if (v0[1])
  {
    v1 = 1;
  }

  else
  {
    v1 = 2 * *v0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000DB830(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * v2;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_1000DB8E0(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002A00(v2);
}

uint64_t sub_1000DB988(_BYTE *a1, _BYTE *a2)
{
  if (a1[1])
  {
    v2 = a2[1];
  }

  else
  {
    v2 = (((*a1 ^ *a2) & 0x7F) == 0) & ~a2[1];
  }

  return v2 & 1;
}

uint64_t NANMapID.init(decoder:)(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100029B34(v5, v5[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 0xF;
    sub_100002A00(v5);
  }

  sub_100002A00(a1);
  return v3;
}

uint64_t NANMapID.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7972616D697270;
  }

  if (a1 == 1)
  {
    return 0x7261646E6F636573;
  }

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000DBBC8()
{
  if (*v0 == 1)
  {
    return 0x7261646E6F636573;
  }

  if (*v0)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return 0x7972616D697270;
}

unint64_t sub_1000DBC84()
{
  v1 = 0x4E6C656E6E616863;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1000DBCF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E4C5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000DBD18(uint64_t a1)
{
  v2 = sub_1000E29BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DBD54(uint64_t a1)
{
  v2 = sub_1000E29BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NonNANOperatingChannelInformation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058D060, &qword_1004842D0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  sub_100029B34(a1, a1[3]);
  sub_1000E29BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void NonNANOperatingChannelInformation.hash(into:)(int a1, unsigned int a2)
{
  v2 = a2 >> 8;
  v3 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int NonNANOperatingChannelInformation.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000DC018()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000DC088()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1000DC0D4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_1000DC140@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E0F70(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
  }

  return result;
}

unint64_t sub_1000DC1E0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t sub_1000DC21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000022 && 0x80000001004B90D0 == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004B9100 == a2)
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

uint64_t sub_1000DC2FC(uint64_t a1)
{
  v2 = sub_1000E2A10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC338(uint64_t a1)
{
  v2 = sub_1000E2A10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NonNANBeaconInformation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058D070, &qword_1004842D8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  sub_100029B34(a1, a1[3]);
  sub_1000E2A10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void NonNANBeaconInformation.hash(into:)(int a1, unsigned int a2)
{
  v2 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int NonNANBeaconInformation.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000DC5AC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000DC60C()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000DC64C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1000DC6A8@<X0>(_DWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E0DC8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t IEEE80211InformationElement.HighThroughputCapability.mcs.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DeprecatedNANAvailability.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100286B98(v7, 0, 4uLL);
  if (!v4)
  {
    sub_100286B98(BYTE1(v7), 4, 2uLL);
    sub_100286B80(HIWORD(v7) & 1, 6, 1uLL);
    sub_100031694(v9, v10);
    sub_1000E2A64();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v9, v10);
    sub_10000AB0C(a3, a4);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(a3, a4);
  }

  return sub_100002A00(v9);
}

uint64_t DeprecatedNANAvailability.hash(into:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = BYTE2(a2);
  v5 = a2 >> 8;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v4 & 1);

  return Data.hash(into:)();
}

Swift::Int DeprecatedNANAvailability.hashValue.getter(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 >> 8;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000DCB14()
{
  v1 = v0[2];
  v2 = *v0;
  v3 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DCBA0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[1];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);

  return Data.hash(into:)();
}

Swift::Int sub_1000DCC14(uint64_t a1)
{
  v2 = v1[2];
  v3 = *v1;
  v4 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DCC9C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E1840(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result) & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000DCCDC(void *a1)
{
  if (*(v1 + 2))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return DeprecatedNANAvailability.encode(to:)(a1, *v1 | v2, *(v1 + 1), *(v1 + 2));
}

uint64_t sub_1000DCD7C()
{
  v1 = 0x6C6F72746E6F63;
  v2 = 0x4E6C656E6E616863;
  if (*v0 != 2)
  {
    v2 = 0x6962616C69617661;
  }

  if (*v0)
  {
    v1 = 0x6E6974617265706FLL;
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

uint64_t sub_1000DCE1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E4D8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000DCE44(uint64_t a1)
{
  v2 = sub_1000E2AB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCE80(uint64_t a1)
{
  v2 = sub_1000E2AB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeprecatedNANAvailabilityEntry.encode(to:)(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_10005DC58(&qword_10058D088, &qword_1004842E0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - v10;
  sub_100029B34(a1, a1[3]);
  sub_1000E2AB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = a2;
  v19 = 0;
  sub_1000E2B0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v12 = a3;
    v13 = v16;
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v12;
    v18 = v13;
    v19 = 3;
    sub_10000AB0C(v12, v13);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v17, v18);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t DeprecatedNANAvailabilityEntry.hash(into:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 8;
  v5 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);

  return Data.hash(into:)();
}

Swift::Int DeprecatedNANAvailabilityEntry.hashValue.getter(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000DD228()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DD2B4(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);

  return Data.hash(into:)();
}

Swift::Int sub_1000DD328(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DD3B0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E15D8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1000DD454()
{
  result = qword_10058CFE0;
  if (!qword_10058CFE0)
  {
    result = swift_getWitnessTable(byte_1004868FC, &type metadata for NANBitmap.Channel.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CFE0);
  }

  return result;
}

void *sub_1000DD4A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1000DD564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000DD660(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_10058CD00, &qword_100483018);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1000DD6E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_10058CCF8, &qword_100483010);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_1000DD768(void *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = &_swiftEmptyArrayStorage[4];
  do
  {
    if (v2 < -8)
    {
LABEL_3:
      LOBYTE(v6) = 0;
      goto LABEL_4;
    }

    while ((v2 & 0x8000000000000000) == 0)
    {
      if (v2 == 8)
      {
        goto LABEL_3;
      }

      v6 = 1 << v2;
      if (((1 << v2) & v1) != 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      ++v2;
    }

    if (v2 == -8)
    {
      goto LABEL_3;
    }

    if ((~v1 << (-v2 & 7)))
    {
      goto LABEL_24;
    }

    v6 = 1u >> -v2;
LABEL_4:
    if (!v3)
    {
      v7 = v4[3];
      if (((v7 >> 1) + 0x4000000000000000) >= 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_10005DC58(&qword_10058CD18, &qword_100483030);
        v10 = swift_allocObject();
        v11 = 2 * j__malloc_size(v10) - 64;
        v10[2] = v9;
        v10[3] = v11;
        v12 = (v10 + 4);
        v13 = v4[3] >> 1;
        if (v4[2])
        {
          if (v10 != v4 || v12 >= v4 + v13 + 32)
          {
            memmove(v10 + 4, v4 + 4, v13);
          }

          v4[2] = 0;
        }

        v5 = (v12 + v13);
        v3 = (v11 >> 1) - v13;

        v4 = v10;
        goto LABEL_18;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

LABEL_18:
    v15 = __OFSUB__(v3--, 1);
    if (v15)
    {
      __break(1u);
      goto LABEL_33;
    }

    *v5++ = v6;
  }

  while (v2++ < 7);
  v17 = v4[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v15 = __OFSUB__(v18, v3);
    v19 = v18 - v3;
    if (v15)
    {
      goto LABEL_34;
    }

    v4[2] = v19;
  }

  return v4;
}

unint64_t *sub_1000DD900(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    v6 = a4;
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4 == a5)
    {
      a3 = 0;
      v6 = a5;
LABEL_8:
      *result = a4;
      result[1] = a5;
      result[2] = a6;
      result[3] = v6;
      return a3;
    }

    v7 = 0;
    v8 = a4;
    while (1)
    {
      v9 = a6;
      v6 = v8 + 16;
      if (v8 >= 0xFFFFFFFFFFFFFFF0)
      {
        break;
      }

      *(a2 + v7) = (*(&v9 + (v8 >> 7)) >> (((a4 >> 4) + v7) & 7)) & 1;
      if (a3 - 1 == v7)
      {
        goto LABEL_8;
      }

      ++v7;
      v8 += 16;
      if (v6 == a5)
      {
        v6 = a5;
        a3 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000DDA28(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v37 = a6;
  v38 = a7;
  v36 = *(a5(0) - 8);
  __chkstk_darwin();
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v31 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a3;
    v18 = 0;
    v32 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[7];
      v25 = v35;
      v26 = *(v36 + 72);
      sub_1000E500C(v24 + v26 * (v23 | (v18 << 6)), v35, v37);
      v27 = v25;
      v28 = v38;
      sub_1000E5074(v27, v13, v38);
      sub_1000E5074(v13, a2, v28);
      if (v20 == v34)
      {
        a4 = a1;
        a1 = v33;
        goto LABEL_23;
      }

      a2 += v26;
      v29 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v29)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v30 = v18 + 1;
    }

    else
    {
      v30 = v19;
    }

    v18 = v30 - 1;
    a1 = v33;
LABEL_23:
    v15 = v32;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1000DDC6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(a4 + 48) + 8 * v14;
      v16 = *v15;
      LOWORD(v15) = *(v15 + 4);
      LOBYTE(v14) = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = v16;
      *(a2 + 4) = v15;
      *(a2 + 6) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 8;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1000DDD7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = *(a4 + 48) + 8 * v15;
      v17 = *v16;
      LOWORD(v16) = *(v16 + 4);
      v18 = *(a4 + 56) + 24 * v15;
      *&v21[2] = *v18;
      *&v21[18] = *(v18 + 16);
      *a2 = v17;
      *(a2 + 4) = v16;
      *(a2 + 6) = *v21;
      *(a2 + 16) = *&v21[10];
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 32;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int sub_1000DDEB8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10016AD90(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v4;
        v12 = v9;
        do
        {
          v13 = *(v11 + 2);
          if (v13 >= *v11)
          {
            break;
          }

          v14 = *(v11 + 6);
          v15 = v11[14];
          *(v11 + 1) = *v11;
          *v11 = v13;
          *(v11 + 2) = v14;
          v11[6] = v15;
          v11 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v4 += 8;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10005DC58(&qword_10058D3A8, &unk_1004869A0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v17[0] = v8 + 4;
    v17[1] = v7;
    sub_1000DE170(v17, v18, v19, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1000DE014(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10016ADA4(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 32;
          if (*v12 >= *(v12 - 8))
          {
            break;
          }

          v14 = *(v12 + 1);
          v19 = *v12;
          v20 = v14;
          v15 = *(v12 - 1);
          *v12 = *v13;
          *(v12 + 1) = v15;
          v12 -= 32;
          v16 = v20;
          *v13 = v19;
          *(v13 + 1) = v16;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10005DC58(&qword_10058D3A0, &unk_100486990);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v19 = v7 + 4;
    *(&v19 + 1) = v6;
    sub_1000DE728(&v19, v18, v21, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000DE170(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_10016AD7C(v8);
      v8 = result;
    }

    v83 = v8 + 2;
    v84 = v8[2];
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v8[2 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1000DECA4((*a3 + 8 * *v85), (*a3 + 8 * *v87), (*a3 + 8 * v88), v5);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_117;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_118;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_119;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v90 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14 >= *(v14 - 2);
        ++v16;
        v14 += 2;
        if ((((v10 < v13) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 8 * v7 - 8;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = *(v22 + v11);
            v25 = *(v22 + v11 + 4);
            v26 = *(v22 + v11 + 5);
            v27 = *(v22 + v11 + 6);
            if (v11 != v18 || v23 >= v22 + v18 + 8)
            {
              *v23 = *(v22 + v18);
            }

            v21 = v22 + v18;
            *v21 = v24;
            *(v21 + 4) = v25;
            *(v21 + 5) = v26;
            *(v21 + 6) = v27;
          }

          ++v20;
          v18 -= 8;
          v11 += 8;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v37 = v8[3];
    v38 = v5 + 1;
    if (v5 >= v37 >> 1)
    {
      result = sub_10011707C((v37 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v38;
    v39 = v8 + 4;
    v40 = &v8[2 * v5 + 4];
    *v40 = v9;
    v40[1] = v7;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v41 = v8[4];
          v42 = v8[5];
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_60:
          if (v44)
          {
            goto LABEL_107;
          }

          v57 = &v8[2 * v38];
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = &v39[2 * v5];
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_114;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v5 = v38 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v38 < 2)
        {
          goto LABEL_115;
        }

        v67 = &v8[2 * v38];
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_75:
        if (v62)
        {
          goto LABEL_111;
        }

        v70 = &v39[2 * v5];
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v38)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v78 = &v39[2 * v5 - 2];
        v79 = *v78;
        v80 = &v39[2 * v5];
        v81 = v80[1];
        sub_1000DECA4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = v8[2];
        if (v5 >= v82)
        {
          goto LABEL_104;
        }

        v38 = v82 - 1;
        result = memmove(&v39[2 * v5], v80 + 2, 16 * (v82 - 1 - v5));
        v8[2] = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = &v39[2 * v38];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_105;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_106;
      }

      v52 = &v8[2 * v38];
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_108;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = &v39[2 * v5];
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_116;
        }

        if (v43 < v77)
        {
          v5 = v38 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v90;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = v9 - v7;
  v30 = *a3 + 8 * v7;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *v31;
    if (*v31 >= *(v31 - 8))
    {
LABEL_32:
      ++v7;
      --v29;
      v30 += 8;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v31 + 4);
    v35 = *(v31 + 6);
    *v31 = *(v31 - 8);
    *(v31 - 8) = v33;
    *(v31 - 4) = v34;
    *(v31 - 2) = v35;
    v31 -= 8;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1000DE728(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10016AD7C(v8);
      v8 = result;
    }

    v85 = v8 + 2;
    v86 = v8[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000DEEA0((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v15 = *v12;
      v14 = v12 + 16;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 8;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 32 * v7 - 32;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v28 + v11);
            v24 = (v28 + v20);
            v26 = *v23;
            v25 = v23[1];
            v27 = v24[1];
            *v23 = *v24;
            v23[1] = v27;
            *v24 = v26;
            v24[1] = v25;
          }

          ++v22;
          v20 -= 32;
          v11 += 32;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v39 = v8[3];
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_10011707C((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v40;
    v41 = v8 + 4;
    v42 = &v8[2 * v5 + 4];
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = v8[4];
          v44 = v8[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v8[2 * v40];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v41[2 * v5];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v8[2 * v40];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v41[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v41[2 * v5 - 2];
        v81 = *v80;
        v82 = &v41[2 * v5];
        v83 = v82[1];
        sub_1000DEEA0((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v8[2];
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove(&v41[2 * v5], v82 + 2, 16 * (v84 - 1 - v5));
        v8[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v41[2 * v40];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v8[2 * v40];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v41[2 * v5];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 32);
    if (*v33 >= *(v33 - 32))
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v36 = *v33;
    v35 = *(v33 + 16);
    v37 = *(v33 - 16);
    *v33 = *v34;
    *(v33 + 16) = v37;
    v33 -= 32;
    *v34 = v36;
    v34[1] = v35;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1000DECA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v13)
  {
    v14 = 8 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 8 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 8;
    v5 -= 8;
    v20 = v15;
    do
    {
      v21 = v5 + 8;
      v22 = *(v20 - 2);
      v20 -= 8;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 8, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 8;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

uint64_t sub_1000DEEA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 8);
      v19 -= 32;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

void NANAttribute.PublicAvailability.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v4 - 8);
      Hasher._combine(_:)(*(v4 - 24));
      Hasher._combine(_:)(v7);
      sub_10000AB0C(v5, v6);
      Data.hash(into:)();
      sub_1000124C8(v5, v6);
      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

void sub_1000DF138(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 93);
    do
    {
      v5 = *(v4 - 60);
      v6 = *(v4 - 57);
      v7 = *(v4 - 53);
      v8 = *(v4 - 44);
      v16 = *(v4 - 37);
      v17 = *(v4 - 28);
      v23 = *(v4 - 12);
      v25 = *(v4 - 9);
      v26 = *(v4 - 5);
      v9 = *(v4 - 61);
      v10 = *(v4 - 49);
      v11 = *(v4 - 45);
      v12 = *(v4 - 33);
      v14 = *(v4 - 41);
      v15 = *(v4 - 29);
      v18 = *(v4 - 17);
      v19 = *(v4 - 25);
      v20 = *(v4 - 16);
      v21 = *(v4 - 21);
      v22 = *(v4 - 13);
      v24 = *(v4 - 1);
      v13 = *v4;
      v4 += 64;
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v13);
      --v3;
    }

    while (v3);
  }
}

void sub_1000DF2D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 6);
      v6 = *(v4 + 8);
      v12 = *(v4 + 10);
      v13 = *(v4 + 12);
      v7 = *(v4 + 1);
      v8 = *(v4 + 2);
      v9 = *(v4 + 3);
      v10 = *(v4 + 4);
      v11 = *(v4 + 5);
      Hasher._combine(_:)(*v4);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      if ((v5 & 0xFF00) == 0x2200)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(word_1004869EA[v5]);
        Hasher._combine(_:)(word_100486A58[v5 >> 8]);
      }

      if ((v6 & 0xFF00) == 0x2200)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(word_1004869EA[v6]);
        Hasher._combine(_:)(word_100486A58[v6 >> 8]);
      }

      if ((v12 & 0xFF00) == 0x2200)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(word_1004869EA[v12]);
        Hasher._combine(_:)(word_100486A58[v12 >> 8]);
      }

      if ((v13 & 0xFF00) == 0x2200)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(word_1004869EA[v13]);
        Hasher._combine(_:)(word_100486A58[v13 >> 8]);
      }

      v4 += 14;
      --v3;
    }

    while (v3);
  }
}

void sub_1000DF4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(*&v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1000DF50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v4 - 3);
      v8 = *(v4 - 4);
      Hasher._combine(_:)(*(v4 - 8));
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      if (v6 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v5);
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }
}

void InfraScanStartEvent.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 37);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      Hasher._combine(_:)(*(v4 - 5));
      Hasher._combine(_:)(0x801004u >> (8 * v6));
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v5 = 0;
        }

        else
        {
          if (v7 != 3)
          {
LABEL_16:
            Hasher._combine(_:)(2uLL);
            Hasher._combine(_:)(v7 & 1);
            goto LABEL_5;
          }

          v5 = 1;
        }
      }

      else
      {
        switch(v7)
        {
          case 4:
            v5 = 3;
            break;
          case 5:
            v5 = 4;
            break;
          case 6:
            v5 = 5;
            break;
          default:
            goto LABEL_16;
        }
      }

      Hasher._combine(_:)(v5);
LABEL_5:
      v4 += 8;
      --v3;
    }

    while (v3);
  }
}

void ChannelSequence.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    for (i = (a2 + 32); ; i += 2)
    {
      v6 = *i | (*(i + 2) << 32);
      if ((v6 & 0xFF00000000) == 0x300000000)
      {
        break;
      }

      v8 = v6 >> 40;
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(0x801004u >> ((v6 >> 29) & 0xF8));
      if ((v6 >> 40) <= 3)
      {
        if (v8 == 2)
        {
          v5 = 0;
        }

        else
        {
          if (v8 != 3)
          {
LABEL_19:
            Hasher._combine(_:)(2uLL);
            v7 = BYTE5(v6) & 1;
            goto LABEL_8;
          }

          v5 = 1;
        }
      }

      else
      {
        switch(v8)
        {
          case 4:
            v5 = 3;
            break;
          case 5:
            v5 = 4;
            break;
          case 6:
            v5 = 5;
            break;
          default:
            goto LABEL_19;
        }
      }

      Hasher._combine(_:)(v5);
LABEL_5:
      if (!--v3)
      {
        return;
      }
    }

    v7 = 0;
LABEL_8:
    Hasher._combine(_:)(v7);
    goto LABEL_5;
  }
}

void sub_1000DF7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 38);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      Hasher._combine(_:)(*(v4 - 6));
      Hasher._combine(_:)(0x801004u >> (8 * v6));
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v5 = 0;
        }

        else
        {
          if (v7 != 3)
          {
LABEL_16:
            Hasher._combine(_:)(2uLL);
            Hasher._combine(_:)(v7 & 1);
            goto LABEL_5;
          }

          v5 = 1;
        }
      }

      else
      {
        switch(v7)
        {
          case 4:
            v5 = 3;
            break;
          case 5:
            v5 = 4;
            break;
          case 6:
            v5 = 5;
            break;
          default:
            goto LABEL_16;
        }
      }

      Hasher._combine(_:)(v5);
LABEL_5:
      v4 += 8;
      Hasher._combine(_:)(v8);
      --v3;
    }

    while (v3);
  }
}

void _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v59 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  Hasher._combine(_:)(v6);
  v68 = v6;
  if (v6)
  {
    v7 = 0;
    v67 = a2 + 32;
    v66 = xmmword_100484210;
    v65 = xmmword_100484220;
    v64 = xmmword_100484230;
    v63 = xmmword_100484240;
    v60 = xmmword_100480F30;
    while (1)
    {
      v9 = (v67 + (v7 << 6));
      v10 = v9[1];
      v79 = *v9;
      v80 = v10;
      *v81 = v9[2];
      *&v81[9] = *(v9 + 41);
      v11 = v79;
      v12 = vdupq_n_s64(v79);
      v13 = vshlq_u64(v12, v66);
      v14 = v13.i8[8];
      v15 = vshlq_u64(v12, v65);
      v16 = *(&v80 + 1);
      v17 = *v81;
      v18 = v81[2];
      if (v81[24] > 5u)
      {
        break;
      }

      if (v81[24] > 2u)
      {
        if (v81[24] == 3)
        {
          Hasher._combine(_:)(3uLL);
          Hasher._combine(_:)(v11);
          v34 = *(&v80 + 1);
          v35 = *v81;
          sub_10000AB0C(*(&v79 + 1), v80);
          sub_10000AB0C(v34, v35);
          Data.hash(into:)();
          goto LABEL_5;
        }

        if (v81[24] == 4)
        {
          v26 = *(&v79 + 1) >> 16;
          v27 = WORD3(v79);
          v28 = (v13.u8[8] << 16) | (v15.i32[2] << 24) | v79;
          v29 = v13.u8[0] | (v15.i16[0] << 8);
          v30 = WORD4(v79);
          Hasher._combine(_:)(4uLL);
          Hasher._combine(_:)(v28);
          Hasher._combine(_:)(v29);
          Hasher._combine(_:)(v27);
          Hasher._combine(_:)(v30);
          Hasher._combine(_:)(v26);
          goto LABEL_7;
        }

        v8 = 6;
        goto LABEL_4;
      }

      if (!v81[24])
      {
        v71 = v79;
        v72 = v13.i8[8];
        v73 = *(&v79 + 1);
        v74 = v80;
        v75 = WORD4(v80);
        v76 = *v81 | (v81[2] << 16) | ((*&v81[3] | (v81[7] << 32)) << 24);
        v77 = v81[8];
        Hasher._combine(_:)(0);

        IEEE80211InformationElement.RSNCapability.hash(into:)(a1);
        goto LABEL_6;
      }

      if (v81[24] == 1)
      {
        v19.i64[0] = 255;
        v19.i64[1] = 255;
        v20 = vandq_s8(v13, v19);
        v19.i64[0] = 65280;
        v19.i64[1] = 65280;
        v21 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(vshlq_n_s64(v15, 8uLL), v19), v20), v63), vandq_s8(v12, v64));
        v22 = vorrq_s8(v21, vdupq_laneq_s64(v21, 1)).u64[0];
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(*(v22 + 16));
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = (v22 + 32);
          do
          {
            v25 = *v24++;
            Hasher._combine(_:)(v25);
            --v23;
          }

          while (v23);
        }

        goto LABEL_7;
      }

      v45 = v13.i8[0];
      v46 = v13.u8[8] | (v15.i16[4] << 8);
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v46);
      Hasher._combine(_:)(v45);
      sub_10000AB0C(*(&v79 + 1), v80);
LABEL_5:
      Data.hash(into:)();
LABEL_6:
      sub_1000C2E24(&v79);
LABEL_7:
      if (++v7 == v68)
      {
        return;
      }
    }

    if (v81[24] > 8u)
    {
      if (v81[24] == 9)
      {
        v62 = v80;
        Hasher._combine(_:)(0xAuLL);
        sub_10005DC58(&qword_10058B3C0, &qword_100481920);
        v36 = swift_allocObject();
        *(v36 + 16) = v60;
        *(v36 + 32) = v11;
        *(v36 + 34) = v14;
        v37 = sub_10005DC58(&qword_10058D358, &unk_100486960);
        v78[3] = v37;
        v78[4] = sub_10000CADC(&qword_10059B0E0, &qword_10058D358, &unk_100486960, &protocol conformance descriptor for <A> [A]);
        v78[0] = v36;
        v38 = sub_100029B34(v78, v37);
        v39 = *v38;
        v40 = *(*v38 + 16);
        if (v40)
        {
          if (v40 <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v70 = v40;
            memcpy(__dst, (v39 + 32), v40);
            v43 = *__dst;
            v44 = v58 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v70 << 16)) << 32);
            sub_10000AB0C(*(&v79 + 1), v80);
            v58 = v44;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();
            sub_10000AB0C(*(&v79 + 1), v80);
            v41 = __DataStorage.init(bytes:length:)();
            v42 = v41;
            if (v40 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v43 = swift_allocObject();
              *(v43 + 16) = 0;
              *(v43 + 24) = v40;
              v44 = v42 | 0x8000000000000000;
            }

            else
            {
              v43 = v40 << 32;
              v44 = v41 | 0x4000000000000000;
            }
          }
        }

        else
        {
          sub_10000AB0C(*(&v79 + 1), v80);
          v43 = 0;
          v44 = 0xC000000000000000;
        }

        sub_100002A00(v78);
        Data.hash(into:)();
        sub_1000124C8(v43, v44);
        goto LABEL_5;
      }

      if (v81[24] != 10)
      {
        Hasher._combine(_:)(5uLL);
        goto LABEL_7;
      }

      v8 = 11;
    }

    else
    {
      if (v81[24] == 6)
      {
        v62 = v80;
        v31 = WORD4(v79);
        v61 = *&v81[16];
        Hasher._combine(_:)(7uLL);
        Hasher._combine(_:)(v11);
        if (v16 >> 60 == 15)
        {
          Hasher._combine(_:)(0);
          v32 = *&v81[8];
          v33 = *&v81[16];
          sub_10005D4F4(*(&v79 + 1), v80, *(&v80 + 1));
          sub_10005D67C(v32, v33);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v31);
          v55 = *&v81[8];
          v56 = *&v81[16];
          sub_10005D4F4(*(&v79 + 1), v80, *(&v80 + 1));
          sub_10005D67C(v55, v56);
          Data.hash(into:)();
        }

        if (v17 == 2)
        {
          Hasher._combine(_:)(0);
          if ((v18 & 1) == 0)
          {
            goto LABEL_43;
          }

LABEL_45:
          LOBYTE(v57) = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)((v17 & 1) + 19);
          if (v18)
          {
            goto LABEL_45;
          }

LABEL_43:
          v57 = v17 >> 8;
          Hasher._combine(_:)(1u);
        }

        Hasher._combine(_:)(v57);
        if (v61 >> 60 == 15)
        {
          Hasher._combine(_:)(0);
          goto LABEL_6;
        }

        Hasher._combine(_:)(1u);
        goto LABEL_5;
      }

      if (v81[24] != 7)
      {
        v47.i64[0] = 255;
        v47.i64[1] = 255;
        v48 = vandq_s8(v13, v47);
        v47.i64[0] = 65280;
        v47.i64[1] = 65280;
        v49 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(vshlq_n_s64(v15, 8uLL), v47), v48), v63), vandq_s8(v12, v64));
        v50 = vorrq_s8(v49, vdupq_laneq_s64(v49, 1)).u64[0];
        Hasher._combine(_:)(9uLL);
        Hasher._combine(_:)(*(v50 + 16));
        v51 = *(v50 + 16);
        if (!v51)
        {
          goto LABEL_7;
        }

        v52 = v59;
        v53 = v50 + ((*(v59 + 80) + 32) & ~*(v59 + 80));

        v54 = *(v52 + 72);
        do
        {
          sub_1000E500C(v53, v5, type metadata accessor for NANAttribute);
          NANAttribute.hash(into:)(a1);
          sub_1000E4FB0(v5);
          v53 += v54;
          --v51;
        }

        while (v51);
        goto LABEL_6;
      }

      v8 = 8;
    }

LABEL_4:
    Hasher._combine(_:)(v8);
    sub_10000AB0C(v79, *(&v79 + 1));
    goto LABEL_5;
  }
}

void NANAttribute.SecurityContextInformation.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      v7 = *(v4 + 1);
      Hasher._combine(_:)(*v4);
      Hasher._combine(_:)(v7);
      sub_10000AB0C(v5, v6);
      Data.hash(into:)();
      sub_1000124C8(v5, v6);
      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

void NANAttribute.FineTimingMeasurementRangeReport.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 45);
    do
    {
      v5 = *(v4 - 13);
      v6 = *(v4 - 9);
      v7 = *(v4 - 8);
      v8 = *(v4 - 7);
      v9 = *(v4 - 6);
      v10 = *(v4 - 5);
      v11 = *(v4 - 4);
      v12 = *(v4 - 3);
      v14 = *(v4 - 2);
      v15 = *(v4 - 1);
      v13 = *v4;
      v4 += 16;
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v13);
      --v3;
    }

    while (v3);
  }
}

void sub_1000E0374(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  v21 = v3;
  if (v3)
  {
    v4 = 0;
    v20 = a2 + 32;
    do
    {
      v5 = v20 + 56 * v4;
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      v9 = *(v5 + 32);
      v10 = *(v5 + 40);
      v11 = *(v5 + 48);
      Hasher._combine(_:)(*v5);
      v23 = v6;
      if (v8 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
        sub_10005D4F4(v6, v7, v8);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v6);
        sub_10005D4F4(v6, v7, v8);

        Data.hash(into:)();
      }

      v22 = v7;
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(*(v10 + 16));
      v12 = *(v10 + 16);
      if (v11)
      {
        if (v12)
        {
          v13 = (v10 + 40);
          do
          {
            v14 = *(v13 - 1);
            v15 = *v13;
            v16 = *(v13 - 3);
            v17 = *(v13 - 4);
            Hasher._combine(_:)(*(v13 - 8));
            Hasher._combine(_:)(v16);
            Hasher._combine(_:)(v17);
            if (v15 == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              Hasher._combine(_:)(v14);
            }

            v13 += 10;
            --v12;
          }

          while (v12);
        }
      }

      else if (v12)
      {
        v18 = (v10 + 32);
        do
        {
          v19 = *v18++;
          Hasher._combine(_:)(v19);
          --v12;
        }

        while (v12);
      }

      sub_10002F75C(v23, v22, v8);

      ++v4;
    }

    while (v4 != v21);
  }
}

void sub_1000E0538(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      v7 = *(v4 + 1);
      v8 = *(v4 + 2);
      Hasher._combine(_:)(*v4);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      sub_10000AB0C(v5, v6);
      Data.hash(into:)();
      sub_1000124C8(v5, v6);
      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

void sub_1000E05E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 38);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      v4 += 7;
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      --v3;
    }

    while (v3);
  }
}

void sub_1000E0690(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v6 = *(v4 - 5);
      v5 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *v4;
      Hasher._combine(_:)(*(v4 - 48) + 1);
      sub_10000AB0C(v6, v5);
      sub_10005D67C(v7, v8);

      Data.hash(into:)();
      if (v8 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
        if (!v9)
        {
LABEL_9:
          Hasher._combine(_:)(0);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_4:
      sub_1000124C8(v6, v5);
      sub_100017554(v7, v8);

      v4 += 7;
      --v3;
    }

    while (v3);
  }
}

BOOL sub_1000E07BC(char a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    if (a6)
    {
      return 0;
    }

    v6 = *(a2 + 16);
    if (v6 != *(a5 + 16))
    {
      return 0;
    }

    if (v6 && a2 != a5)
    {
      v8 = (a2 + 32);
      v9 = (a5 + 32);
      result = 1;
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return (a6 & 1) != 0 && (sub_1000BCA40(a2, a5) & 1) != 0;
}

BOOL _s7CoreP2P20NANAvailabilityEntryV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v21 = v2;
  v22 = v3;
  v19 = *(a1 + 4);
  v4 = *(a1 + 3);
  v20 = v4;
  v17 = *(a2 + 4);
  v5 = *(a2 + 3);
  v18 = v5;
  v6 = v19;
  v7 = v17;
  if (v4 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      if (v19 == v17)
      {
        v8 = a2;
        v9 = a1;
        sub_100012400(&v19, v16, &qword_10058D038, &unk_1004842B8);
        sub_100012400(&v17, v16, &qword_10058D038, &unk_1004842B8);
        v15 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v6 + 1), v4, *(&v7 + 1), v5);
        sub_10002F75C(v7, *(&v7 + 1), v5);
        sub_10002F75C(v6, *(&v6 + 1), v4);
        if (v15)
        {
          return sub_1000E07BC(*(v9 + 32), *(v9 + 5), *(v9 + 48), *(v8 + 32), *(v8 + 5), *(v8 + 48));
        }

        return 0;
      }

      sub_100012400(&v19, v16, &qword_10058D038, &unk_1004842B8);
      sub_100012400(&v17, v16, &qword_10058D038, &unk_1004842B8);
      sub_10002F75C(v7, *(&v7 + 1), v5);
      v13 = *(&v6 + 1);
      v12 = v6;
      v14 = v4;
LABEL_9:
      sub_10002F75C(v12, v13, v14);
      return 0;
    }

LABEL_8:
    sub_100012400(&v19, v16, &qword_10058D038, &unk_1004842B8);
    sub_100012400(&v17, v16, &qword_10058D038, &unk_1004842B8);
    sub_10002F75C(v6, *(&v6 + 1), v4);
    v13 = *(&v7 + 1);
    v12 = v7;
    v14 = v5;
    goto LABEL_9;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_8;
  }

  v8 = a2;
  v9 = a1;
  sub_100012400(&v19, v16, &qword_10058D038, &unk_1004842B8);
  sub_100012400(&v17, v16, &qword_10058D038, &unk_1004842B8);
  sub_10002F75C(v6, *(&v6 + 1), v4);
  return sub_1000E07BC(*(v9 + 32), *(v9 + 5), *(v9 + 48), *(v8 + 32), *(v8 + 5), *(v8 + 48));
}

unint64_t _s7CoreP2P20NANAvailabilityEntryV15UsagePreferenceO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000E0AD0(void *a1)
{
  v2 = sub_10005DC58(&qword_10058D388, &qword_100486988);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - v4;
  sub_100029B34(a1, a1[3]);
  sub_1000E2914();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_1000E5184();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v8;
  v9 = 1;
  sub_1000E51D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100002A00(a1);
  return v6;
}

uint64_t sub_1000E0CB4(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100029B34(v7, v7[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100002A00(v7);
    v4 = (v3 & 7) == 7 || (v3 & 7) == 0;
    if (v4 || (~v3 & 5) == 0)
    {
      sub_10000B02C();
      swift_allocError();
      *v5 = xmmword_10047CE70;
      *(v5 + 16) = 2;
      swift_willThrow();
    }
  }

  sub_100002A00(a1);
  return v3;
}

uint64_t sub_1000E0DC8(void *a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_10058D378, &qword_100486978);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_100029B34(a1, a1[3]);
  sub_1000E2A10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v11[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[14] = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100002A00(a1);
    return v8 | (v9 << 16);
  }

  return v2;
}

uint64_t sub_1000E0F70(void *a1)
{
  v3 = sub_10005DC58(&qword_10058D380, &qword_100486980);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - v5;
  sub_100029B34(a1, a1[3]);
  sub_1000E29BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v14 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return (v8 << 8) | (v9 << 16) | v7;
}

unint64_t sub_1000E1140(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v14, v15);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v3 = v13;
  sub_100031694(v14, v15);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v13;
  sub_100031694(v14, v15);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v13;
  sub_100029B34(a1, a1[3]);
  v7 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A848 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = sub_100037644(v8, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
  if (!*(v7 + 16) || (v10 = sub_10007CF6C(v9), (v11 & 1) == 0))
  {

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  sub_100002B30(*(v7 + 56) + 32 * v10, &v13);

  if ((swift_dynamicCast() & 1) == 0 || v16 != 1)
  {
    goto LABEL_12;
  }

  sub_100031694(v14, v15);
  sub_10005DC58(&qword_10058D410, &qword_1004869E0);
  sub_1000E5444();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v12 = v13 << 48;
LABEL_13:
  sub_100002A00(v14);
  sub_100002A00(a1);
  return v3 | (v4 << 16) | (v6 << 32) | v12;
}

uint64_t sub_1000E1404(void *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v6, v7);
    sub_1000E53F0();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v3 = v5;
    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    sub_100031694(v6, v7);
    sub_10000CADC(&qword_10058D408, &qword_10058CC70, &unk_100484290, "})\n");
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    sub_100002A00(v6);
  }

  sub_100002A00(a1);
  return v3;
}

unint64_t sub_1000E1584()
{
  result = qword_10058CFE8;
  if (!qword_10058CFE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time.Control, &type metadata for NANBitmap.Time.Control, v0, v1);
    atomic_store(result, &qword_10058CFE8);
  }

  return result;
}

uint64_t sub_1000E15D8(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v20, v21);
  sub_1000E50DC();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v3 = v23;
  sub_100031694(v20, v21);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v23;
  sub_100031694(v20, v21);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v23;
  v6 = NANIntervalDuration.deprecatedAvailabilityMapSize.getter(v3);
  v7 = v21;
  v8 = v22;
  sub_100031694(v20, v21);
  v9 = UnkeyedDecodingContainer.decodeData(with:)(v6, v7, v8);
  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_12;
    }

    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
LABEL_10:
    v14 = v10;
    v13 = v9;
    if (v16 >= v15)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    v14 = v10;
    v13 = v9;
    goto LABEL_13;
  }

  if (v12)
  {
    v15 = v9;
    v16 = v9 >> 32;
    goto LABEL_10;
  }

  v13 = v9;
  v14 = v10;
LABEL_13:
  v17 = Data.subdata(in:)();
  v19 = v18;
  sub_1000124C8(v13, v14);
  sub_100002A00(v20);
  sub_10000AB0C(v17, v19);
  sub_100002A00(a1);
  sub_1000124C8(v17, v19);
  return v3 | (v4 << 8) | (v5 << 16);
}

uint64_t sub_1000E1840(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v25, v26);
  sub_1000E5130();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v3 = v28;
  v4 = sub_100038D34(0, 4uLL, v28);
  v5 = sub_100038D34(4, 2uLL, v3);
  v6 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v5);
  if (v6 == 4)
  {
    sub_10000B02C();
    swift_allocError();
    *v7 = xmmword_10047CE70;
    *(v7 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v25);
    return sub_100002A00(a1);
  }

  v8 = v6;
  v9 = (sub_1000D40C8(6, 1uLL, v3, v6) != 0) << 16;
  v10 = NANIntervalDuration.deprecatedAvailabilityMapSize.getter(v8);
  v11 = v26;
  v12 = v27;
  sub_100031694(v25, v26);
  v13 = UnkeyedDecodingContainer.decodeData(with:)(v10, v11, v12);
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_14;
    }

    v19 = v13;
    v13 = *(v13 + 16);
    v17 = v19;
    v20 = v19[3];
LABEL_12:
    v18 = v14;
    if (v20 >= v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v18 = v14;
    v17 = v13;
    goto LABEL_15;
  }

  if (v16)
  {
    v21 = v13;
    v13 = v13;
    v17 = v21;
    v20 = v21 >> 32;
    goto LABEL_12;
  }

  v17 = v13;
  v18 = v14;
LABEL_15:
  v22 = Data.subdata(in:)();
  v24 = v23;
  sub_1000124C8(v17, v18);
  sub_100002A00(v25);
  sub_10000AB0C(v22, v24);
  sub_100002A00(a1);
  sub_1000124C8(v22, v24);
  return v9 | v4 & 0xF | (v8 << 8);
}

uint64_t sub_1000E1AF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000AB0C(a1, a2);
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v8 = swift_allocObject();
  v9 = 0;
  v8[5] = &_swiftEmptyDictionarySingleton;
  v8[2] = a1;
  v8[3] = a2;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v9 = *(a1 + 16);
    }
  }

  else if (v10)
  {
    v9 = a1;
  }

  v8[4] = v9;
  swift_beginAccess();
  v8[5] = v7;
  v22 = &type metadata for BinaryDecoder.UnkeyedContainer;
  v23 = sub_1000325F0();
  v21[0] = v8;
  sub_100031694(v21, &type metadata for BinaryDecoder.UnkeyedContainer);
  sub_1000E522C();

  UnkeyedDecodingContainer.inferredDecode<A>()();
  if (v3)
  {
    goto LABEL_12;
  }

  if ((~v18 & 5) == 0)
  {
    sub_10000B02C();
    swift_allocError();
    *v11 = xmmword_10047CE70;
    *(v11 + 16) = 2;
    swift_willThrow();
LABEL_12:
    sub_1000124C8(a1, a2);

    sub_100002A00(v21);
    return sub_10002F75C(0, 0, 0xF000000000000000);
  }

  if ((v18 & 0x1000) != 0)
  {
    sub_100031694(v21, v22);
    sub_1000E51D8();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v16 = v18;
    v17 = a3;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    sub_10002F75C(0, 0, 0xF000000000000000);
  }

  else
  {
    v16 = v18;
    v17 = a3;
    v12 = 0;
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  v24 = v23;
  sub_100031694(v21, v22);
  sub_1000E5280();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_1000124C8(a1, a2);

  sub_100002A00(v21);
  sub_10005D4F4(v12, v13, v14);

  sub_10002F75C(v12, v13, v14);

  *v17 = v16;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  *(v17 + 48) = v20;
  return result;
}

uint64_t sub_1000E1DFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_10005DC58(&qword_10058D3B0, &unk_1004869B0);
  sub_100031694(v9, v9[3]);
  sub_10000CADC(&qword_10058D3B8, &qword_10058D3B0, &unk_1004869B0, "})\n");
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_1000E1AF4(v7, v8, v10);
  sub_100002A00(v9);
  result = sub_100002A00(a1);
  v6 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_1000E1F60(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    goto LABEL_3;
  }

  v8 = sub_100031694(v25, v25[3]);
  sub_1000E52D4();
  v9 = v8;
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v2 = v23[0];
  v12 = sub_1000D40C8(4, 4uLL, v23[0], v10);
  v13 = sub_100038D34(0, 1uLL, v2);
  if (!v13)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      sub_1000D2CB8(0, v12, v25);
LABEL_22:
      sub_100002A00(v25);
      sub_100002A00(a1);
      return v2;
    }

    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v26 = 0;
  if (v13 != 1)
  {
    sub_10000B02C();
    swift_allocError();
    *v19 = xmmword_10047CE70;
    *(v19 + 16) = 2;
    swift_willThrow();
    goto LABEL_27;
  }

  sub_100029B34(a1, a1[3]);
  v9 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A848 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v14 = sub_100037644(v4, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
  v15 = *(v9 + 16);
  v21 = v14;
  if (v15 && (v16 = sub_10007CF6C(v14), (v17 & 1) != 0))
  {
    sub_100002B30(*(v9 + 56) + 32 * v16, v24);
  }

  else
  {

    memset(v24, 0, sizeof(v24));
  }

  sub_10002B154(a1, v23);
  sub_10005DC58(&qword_10058D3D8, &unk_10049EDB0);
  type metadata accessor for BinaryDecoder();
  if (swift_dynamicCast())
  {
    (*(v5 + 16))(v7, v21, v4);
    v22[3] = &type metadata for Bool;
    LOBYTE(v22[0]) = (v2 & 2) != 0;
    swift_beginAccess();
    v20 = v12;
    sub_100072BFC(v22, v7);
    v12 = v20;
    swift_endAccess();
  }

  v18 = v26;
  if ((v12 & 0x8000000000000000) == 0)
  {
    sub_1000D2E40(0, v12, v25);
    if (!v18)
    {
      sub_10002B154(a1, v23);
      if (swift_dynamicCast())
      {
        (*(v5 + 16))(v7, v21, v4);
        sub_100012400(v24, v22, &qword_10058BA80, &qword_1004818C0);
        swift_beginAccess();
        sub_100072BFC(v22, v7);
        swift_endAccess();
      }

      sub_100016290(v24, &qword_10058BA80, &qword_1004818C0);
      goto LABEL_22;
    }

    sub_100016290(v24, &qword_10058BA80, &qword_1004818C0);
    sub_100002A00(v25);
LABEL_3:
    sub_100002A00(a1);
    return v2;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_27:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1000E245C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6974617265706FLL && a2 == 0xEE007373616C4367;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426C656E6E616863 && a2 == 0xED000070616D7469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004B9050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B9070 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1000E25DC(unint64_t result)
{
  v2 = *(v1 + 16);
  *(v1 + 16 + (result >> 7)) = *(&v2 + (result >> 7)) | (1 << ((result >> 4) & 7));
  return result;
}

unint64_t sub_1000E2618()
{
  result = qword_10058CFF8;
  if (!qword_10058CFF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries.Control, &type metadata for NANAvailabilityEntry.BandChannelEntries.Control, v0, v1);
    atomic_store(result, &qword_10058CFF8);
  }

  return result;
}

unint64_t sub_1000E266C()
{
  result = qword_10058D008;
  if (!qword_10058D008)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D000, &qword_1004842A8);
    v4[0] = sub_1000E26F0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_10058D008);
  }

  return result;
}

unint64_t sub_1000E26F0()
{
  result = qword_10058D010;
  if (!qword_10058D010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Channel, &type metadata for NANBitmap.Channel, v0, v1);
    atomic_store(result, &qword_10058D010);
  }

  return result;
}

unint64_t sub_1000E2744()
{
  result = qword_10058D020;
  if (!qword_10058D020)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D018, &qword_1004842B0);
    v4[0] = sub_1000E27C8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_10058D020);
  }

  return result;
}

unint64_t sub_1000E27C8()
{
  result = qword_10058D028;
  if (!qword_10058D028)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Band, &type metadata for NANBitmap.Band, v0, v1);
    atomic_store(result, &qword_10058D028);
  }

  return result;
}

uint64_t sub_1000E281C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E2864()
{
  result = qword_10058D030;
  if (!qword_10058D030)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.Control, &type metadata for NANAvailabilityEntry.Control, v0, v1);
    atomic_store(result, &qword_10058D030);
  }

  return result;
}

unint64_t sub_1000E28B8()
{
  result = qword_10058D040;
  if (!qword_10058D040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time, &type metadata for NANBitmap.Time, v0, v1);
    atomic_store(result, &qword_10058D040);
  }

  return result;
}

unint64_t sub_1000E2914()
{
  result = qword_10058D050;
  if (!qword_10058D050)
  {
    result = swift_getWitnessTable(byte_1004868AC, &type metadata for NANScheduleEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D050);
  }

  return result;
}

unint64_t sub_1000E2968()
{
  result = qword_10058D058;
  if (!qword_10058D058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMapID, &type metadata for NANMapID, v0, v1);
    atomic_store(result, &qword_10058D058);
  }

  return result;
}

unint64_t sub_1000E29BC()
{
  result = qword_10058D068;
  if (!qword_10058D068)
  {
    result = swift_getWitnessTable(asc_10048685C, &type metadata for NonNANOperatingChannelInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D068);
  }

  return result;
}

unint64_t sub_1000E2A10()
{
  result = qword_10058D078;
  if (!qword_10058D078)
  {
    result = swift_getWitnessTable(byte_10048680C, &type metadata for NonNANBeaconInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D078);
  }

  return result;
}

unint64_t sub_1000E2A64()
{
  result = qword_10058D080;
  if (!qword_10058D080)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for DeprecatedNANAvailability.AvailabilityControl, v0, v1);
    atomic_store(result, &qword_10058D080);
  }

  return result;
}

unint64_t sub_1000E2AB8()
{
  result = qword_10058D090;
  if (!qword_10058D090)
  {
    result = swift_getWitnessTable(byte_100486794, &type metadata for DeprecatedNANAvailabilityEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D090);
  }

  return result;
}

unint64_t sub_1000E2B0C()
{
  result = qword_10058D098;
  if (!qword_10058D098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANIntervalDuration, &type metadata for NANIntervalDuration, v0, v1);
    atomic_store(result, &qword_10058D098);
  }

  return result;
}

unint64_t sub_1000E2B64()
{
  result = qword_10058D0A0;
  if (!qword_10058D0A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Band, &type metadata for NANBitmap.Band, v0, v1);
    atomic_store(result, &qword_10058D0A0);
  }

  return result;
}

unint64_t sub_1000E2BBC()
{
  result = qword_10058D0A8;
  if (!qword_10058D0A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Band, &type metadata for NANBitmap.Band, v0, v1);
    atomic_store(result, &qword_10058D0A8);
  }

  return result;
}

unint64_t sub_1000E2C10()
{
  result = qword_10058D0B0;
  if (!qword_10058D0B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Band, &type metadata for NANBitmap.Band, v0, v1);
    atomic_store(result, &qword_10058D0B0);
  }

  return result;
}

unint64_t sub_1000E2C68()
{
  result = qword_10058D0B8;
  if (!qword_10058D0B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Band.Iterator, &type metadata for NANBitmap.Band.Iterator, v0, v1);
    atomic_store(result, &qword_10058D0B8);
  }

  return result;
}

unint64_t sub_1000E2CC0()
{
  result = qword_10058D0C0;
  if (!qword_10058D0C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Band, &type metadata for NANBitmap.Band, v0, v1);
    atomic_store(result, &qword_10058D0C0);
  }

  return result;
}

unint64_t sub_1000E2D18()
{
  result = qword_10058D0C8;
  if (!qword_10058D0C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Channel, &type metadata for NANBitmap.Channel, v0, v1);
    atomic_store(result, &qword_10058D0C8);
  }

  return result;
}

unint64_t sub_1000E2D70()
{
  result = qword_10058D0D0;
  if (!qword_10058D0D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time.Control, &type metadata for NANBitmap.Time.Control, v0, v1);
    atomic_store(result, &qword_10058D0D0);
  }

  return result;
}

unint64_t sub_1000E2DC8()
{
  result = qword_10058D0D8;
  if (!qword_10058D0D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time.Control, &type metadata for NANBitmap.Time.Control, v0, v1);
    atomic_store(result, &qword_10058D0D8);
  }

  return result;
}

unint64_t sub_1000E2E1C()
{
  result = qword_10058D0E0;
  if (!qword_10058D0E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time.Control, &type metadata for NANBitmap.Time.Control, v0, v1);
    atomic_store(result, &qword_10058D0E0);
  }

  return result;
}

unint64_t sub_1000E2E74()
{
  result = qword_10058D0E8;
  if (!qword_10058D0E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time.Control, &type metadata for NANBitmap.Time.Control, v0, v1);
    atomic_store(result, &qword_10058D0E8);
  }

  return result;
}

unint64_t sub_1000E2ECC()
{
  result = qword_10058D0F0;
  if (!qword_10058D0F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time, &type metadata for NANBitmap.Time, v0, v1);
    atomic_store(result, &qword_10058D0F0);
  }

  return result;
}

unint64_t sub_1000E2F24()
{
  result = qword_10058D0F8;
  if (!qword_10058D0F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap.Slot, &type metadata for TimeBitmap.Slot, v0, v1);
    atomic_store(result, &qword_10058D0F8);
  }

  return result;
}

unint64_t sub_1000E2F7C()
{
  result = qword_10058D100;
  if (!qword_10058D100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap.SlotsView, &type metadata for TimeBitmap.SlotsView, v0, v1);
    atomic_store(result, &qword_10058D100);
  }

  return result;
}

unint64_t sub_1000E2FD4()
{
  result = qword_10058D108;
  if (!qword_10058D108)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D110, &qword_1004849C0);
    v4[0] = sub_1000E3058();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> DefaultIndices<A>, v3, v4);
    atomic_store(result, &qword_10058D108);
  }

  return result;
}

unint64_t sub_1000E3058()
{
  result = qword_10058D118;
  if (!qword_10058D118)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap.SlotsView, &type metadata for TimeBitmap.SlotsView, v0, v1);
    atomic_store(result, &qword_10058D118);
  }

  return result;
}

unint64_t sub_1000E30B0()
{
  result = qword_10058D120;
  if (!qword_10058D120)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D128, &qword_1004849C8);
    v4[0] = sub_1000E3058();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v3, v4);
    atomic_store(result, &qword_10058D120);
  }

  return result;
}

unint64_t sub_1000E3138()
{
  result = qword_10058D130;
  if (!qword_10058D130)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap.SlotsView, &type metadata for TimeBitmap.SlotsView, v0, v1);
    atomic_store(result, &qword_10058D130);
  }

  return result;
}

unint64_t sub_1000E3190()
{
  result = qword_10058D138;
  if (!qword_10058D138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap.SlotsView, &type metadata for TimeBitmap.SlotsView, v0, v1);
    atomic_store(result, &qword_10058D138);
  }

  return result;
}

unint64_t sub_1000E31E8()
{
  result = qword_10058D140;
  if (!qword_10058D140)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D110, &qword_1004849C0);
    v4[0] = sub_1000E2F7C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> DefaultIndices<A>, v3, v4);
    atomic_store(result, &qword_10058D140);
  }

  return result;
}

unint64_t sub_1000E3270()
{
  result = qword_10058D148;
  if (!qword_10058D148)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D128, &qword_1004849C8);
    v4[0] = sub_1000E2F7C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v3, v4);
    atomic_store(result, &qword_10058D148);
  }

  return result;
}

unint64_t sub_1000E32F8()
{
  result = qword_10058D150;
  if (!qword_10058D150)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap.SlotsView, &type metadata for TimeBitmap.SlotsView, v0, v1);
    atomic_store(result, &qword_10058D150);
  }

  return result;
}

unint64_t sub_1000E334C()
{
  result = qword_10058D158;
  if (!qword_10058D158)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANTimeUnit, &type metadata for NANTimeUnit, v0, v1);
    atomic_store(result, &qword_10058D158);
  }

  return result;
}

unint64_t sub_1000E3470()
{
  result = qword_10058D180;
  if (!qword_10058D180)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap, &type metadata for TimeBitmap, v0, v1);
    atomic_store(result, &qword_10058D180);
  }

  return result;
}

unint64_t sub_1000E34C8()
{
  result = qword_10058D188;
  if (!qword_10058D188)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap, &type metadata for TimeBitmap, v0, v1);
    atomic_store(result, &qword_10058D188);
  }

  return result;
}

unint64_t sub_1000E3520()
{
  result = qword_10058D190;
  if (!qword_10058D190)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D198, &qword_100484C78);
    v4[0] = sub_1000E35A4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> DefaultIndices<A>, v3, v4);
    atomic_store(result, &qword_10058D190);
  }

  return result;
}

unint64_t sub_1000E35A4()
{
  result = qword_10058D1A0;
  if (!qword_10058D1A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap, &type metadata for TimeBitmap, v0, v1);
    atomic_store(result, &qword_10058D1A0);
  }

  return result;
}

unint64_t sub_1000E35FC()
{
  result = qword_10058D1A8;
  if (!qword_10058D1A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D1B0, &qword_100484C80);
    v4[0] = sub_1000E35A4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v3, v4);
    atomic_store(result, &qword_10058D1A8);
  }

  return result;
}

unint64_t sub_1000E3684()
{
  result = qword_10058D1B8;
  if (!qword_10058D1B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap, &type metadata for TimeBitmap, v0, v1);
    atomic_store(result, &qword_10058D1B8);
  }

  return result;
}

unint64_t sub_1000E36DC()
{
  result = qword_10058D1C0;
  if (!qword_10058D1C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D198, &qword_100484C78);
    v4[0] = sub_1000E34C8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> DefaultIndices<A>, v3, v4);
    atomic_store(result, &qword_10058D1C0);
  }

  return result;
}

unint64_t sub_1000E3764()
{
  result = qword_10058D1C8;
  if (!qword_10058D1C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D1B0, &qword_100484C80);
    v4[0] = sub_1000E34C8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v3, v4);
    atomic_store(result, &qword_10058D1C8);
  }

  return result;
}

unint64_t sub_1000E37EC()
{
  result = qword_10058D1D0;
  if (!qword_10058D1D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimeBitmap, &type metadata for TimeBitmap, v0, v1);
    atomic_store(result, &qword_10058D1D0);
  }

  return result;
}

unint64_t sub_1000E3950()
{
  result = qword_10058D208;
  if (!qword_10058D208)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.UsagePreference, &type metadata for NANAvailabilityEntry.UsagePreference, v0, v1);
    atomic_store(result, &qword_10058D208);
  }

  return result;
}

unint64_t sub_1000E39A8()
{
  result = qword_10058D210;
  if (!qword_10058D210)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.Control, &type metadata for NANAvailabilityEntry.Control, v0, v1);
    atomic_store(result, &qword_10058D210);
  }

  return result;
}

unint64_t sub_1000E3A00()
{
  result = qword_10058D218;
  if (!qword_10058D218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.Control, &type metadata for NANAvailabilityEntry.Control, v0, v1);
    atomic_store(result, &qword_10058D218);
  }

  return result;
}

unint64_t sub_1000E3A54()
{
  result = qword_10058D220;
  if (!qword_10058D220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.Control, &type metadata for NANAvailabilityEntry.Control, v0, v1);
    atomic_store(result, &qword_10058D220);
  }

  return result;
}

unint64_t sub_1000E3AAC()
{
  result = qword_10058D228;
  if (!qword_10058D228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.Control, &type metadata for NANAvailabilityEntry.Control, v0, v1);
    atomic_store(result, &qword_10058D228);
  }

  return result;
}

unint64_t sub_1000E3B04()
{
  result = qword_10058D230;
  if (!qword_10058D230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries.Control.EntriesType, &type metadata for NANAvailabilityEntry.BandChannelEntries.Control.EntriesType, v0, v1);
    atomic_store(result, &qword_10058D230);
  }

  return result;
}

unint64_t sub_1000E3B5C()
{
  result = qword_10058D238;
  if (!qword_10058D238)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries.Control, &type metadata for NANAvailabilityEntry.BandChannelEntries.Control, v0, v1);
    atomic_store(result, &qword_10058D238);
  }

  return result;
}

unint64_t sub_1000E3BB4()
{
  result = qword_10058D240;
  if (!qword_10058D240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries.Control, &type metadata for NANAvailabilityEntry.BandChannelEntries.Control, v0, v1);
    atomic_store(result, &qword_10058D240);
  }

  return result;
}

unint64_t sub_1000E3C08()
{
  result = qword_10058D248;
  if (!qword_10058D248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries.Control, &type metadata for NANAvailabilityEntry.BandChannelEntries.Control, v0, v1);
    atomic_store(result, &qword_10058D248);
  }

  return result;
}

unint64_t sub_1000E3C60()
{
  result = qword_10058D250;
  if (!qword_10058D250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries.Control, &type metadata for NANAvailabilityEntry.BandChannelEntries.Control, v0, v1);
    atomic_store(result, &qword_10058D250);
  }

  return result;
}

unint64_t sub_1000E3CB8()
{
  result = qword_10058D258;
  if (!qword_10058D258)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries, &type metadata for NANAvailabilityEntry.BandChannelEntries, v0, v1);
    atomic_store(result, &qword_10058D258);
  }

  return result;
}

unint64_t sub_1000E3D10()
{
  result = qword_10058D260;
  if (!qword_10058D260)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry, &type metadata for NANAvailabilityEntry, v0, v1);
    atomic_store(result, &qword_10058D260);
  }

  return result;
}

unint64_t sub_1000E3D68()
{
  result = qword_10058D268;
  if (!qword_10058D268)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANScheduleEntry, &type metadata for NANScheduleEntry, v0, v1);
    atomic_store(result, &qword_10058D268);
  }

  return result;
}

unint64_t sub_1000E3DC0()
{
  result = qword_10058D270;
  if (!qword_10058D270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMapIDs, &type metadata for NANMapIDs, v0, v1);
    atomic_store(result, &qword_10058D270);
  }

  return result;
}

unint64_t sub_1000E3E18()
{
  result = qword_10058D278;
  if (!qword_10058D278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMapID, &type metadata for NANMapID, v0, v1);
    atomic_store(result, &qword_10058D278);
  }

  return result;
}

unint64_t sub_1000E3E70()
{
  result = qword_10058D280;
  if (!qword_10058D280)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NonNANOperatingChannelInformation, &type metadata for NonNANOperatingChannelInformation, v0, v1);
    atomic_store(result, &qword_10058D280);
  }

  return result;
}

unint64_t sub_1000E3EC8()
{
  result = qword_10058D288;
  if (!qword_10058D288)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NonNANBeaconInformation, &type metadata for NonNANBeaconInformation, v0, v1);
    atomic_store(result, &qword_10058D288);
  }

  return result;
}

unint64_t sub_1000E3F20()
{
  result = qword_10058D290;
  if (!qword_10058D290)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeprecatedNANAvailability, &type metadata for DeprecatedNANAvailability, v0, v1);
    atomic_store(result, &qword_10058D290);
  }

  return result;
}

unint64_t sub_1000E3F78()
{
  result = qword_10058D298;
  if (!qword_10058D298)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeprecatedNANAvailabilityEntry, &type metadata for DeprecatedNANAvailabilityEntry, v0, v1);
    atomic_store(result, &qword_10058D298);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NANBitmap.Channel(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANBitmap.Channel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NANBitmap.Channel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000E406C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000E40C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1000E4160(uint64_t a1)
{
  v1 = *(a1 + 16) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000E4194(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000E41B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000E41F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000E427C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000E42C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000E4388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000E43DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000E4430(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000E4474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for NANBloomFilter.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E45DC()
{
  result = qword_10058D2A0;
  if (!qword_10058D2A0)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for NANBitmap.Channel.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D2A0);
  }

  return result;
}

unint64_t sub_1000E4634()
{
  result = qword_10058D2A8;
  if (!qword_10058D2A8)
  {
    result = swift_getWitnessTable(byte_10048634C, &type metadata for NANScheduleEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D2A8);
  }

  return result;
}

unint64_t sub_1000E468C()
{
  result = qword_10058D2B0;
  if (!qword_10058D2B0)
  {
    result = swift_getWitnessTable(byte_100486404, &type metadata for NonNANOperatingChannelInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D2B0);
  }

  return result;
}

unint64_t sub_1000E46E4()
{
  result = qword_10058D2B8;
  if (!qword_10058D2B8)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for NonNANBeaconInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D2B8);
  }

  return result;
}

unint64_t sub_1000E4738()
{
  result = qword_10058D2C0;
  if (!qword_10058D2C0)
  {
    result = swift_getWitnessTable(byte_100486514, &type metadata for DeprecatedNANAvailability.AvailabilityControl, v0, v1);
    atomic_store(result, &qword_10058D2C0);
  }

  return result;
}

unint64_t sub_1000E4790()
{
  result = qword_10058D2C8;
  if (!qword_10058D2C8)
  {
    result = swift_getWitnessTable(byte_1004864E4, &type metadata for DeprecatedNANAvailability.AvailabilityControl, v0, v1);
    atomic_store(result, &qword_10058D2C8);
  }

  return result;
}

unint64_t sub_1000E47E8()
{
  result = qword_10058D2D0;
  if (!qword_10058D2D0)
  {
    result = swift_getWitnessTable(asc_10048653C, &type metadata for DeprecatedNANAvailability.AvailabilityControl, v0, v1);
    atomic_store(result, &qword_10058D2D0);
  }

  return result;
}

unint64_t sub_1000E4840()
{
  result = qword_10058D2D8;
  if (!qword_10058D2D8)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for DeprecatedNANAvailability.AvailabilityControl, v0, v1);
    atomic_store(result, &qword_10058D2D8);
  }

  return result;
}

unint64_t sub_1000E4898()
{
  result = qword_10058D2E0;
  if (!qword_10058D2E0)
  {
    result = swift_getWitnessTable(byte_10048676C, &type metadata for DeprecatedNANAvailabilityEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D2E0);
  }

  return result;
}

unint64_t sub_1000E48F0()
{
  result = qword_10058D2E8;
  if (!qword_10058D2E8)
  {
    result = swift_getWitnessTable(byte_1004866DC, &type metadata for DeprecatedNANAvailabilityEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D2E8);
  }

  return result;
}

unint64_t sub_1000E4948()
{
  result = qword_10058D2F0;
  if (!qword_10058D2F0)
  {
    result = swift_getWitnessTable(asc_100486704, &type metadata for DeprecatedNANAvailabilityEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D2F0);
  }

  return result;
}

unint64_t sub_1000E49A0()
{
  result = qword_10058D2F8;
  if (!qword_10058D2F8)
  {
    result = swift_getWitnessTable(asc_10048642C, &type metadata for NonNANBeaconInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D2F8);
  }

  return result;
}

unint64_t sub_1000E49F8()
{
  result = qword_10058D300;
  if (!qword_10058D300)
  {
    result = swift_getWitnessTable(byte_100486454, &type metadata for NonNANBeaconInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D300);
  }

  return result;
}

unint64_t sub_1000E4A50()
{
  result = qword_10058D308;
  if (!qword_10058D308)
  {
    result = swift_getWitnessTable(byte_100486374, &type metadata for NonNANOperatingChannelInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D308);
  }

  return result;
}

unint64_t sub_1000E4AA8()
{
  result = qword_10058D310;
  if (!qword_10058D310)
  {
    result = swift_getWitnessTable(byte_10048639C, &type metadata for NonNANOperatingChannelInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D310);
  }

  return result;
}

unint64_t sub_1000E4B00()
{
  result = qword_10058D318;
  if (!qword_10058D318)
  {
    result = swift_getWitnessTable(asc_1004862BC, &type metadata for NANScheduleEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D318);
  }

  return result;
}

unint64_t sub_1000E4B58()
{
  result = qword_10058D320;
  if (!qword_10058D320)
  {
    result = swift_getWitnessTable(asc_1004862E4, &type metadata for NANScheduleEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D320);
  }

  return result;
}

unint64_t sub_1000E4BB0()
{
  result = qword_10058D328;
  if (!qword_10058D328)
  {
    result = swift_getWitnessTable(byte_100486204, &type metadata for NANBitmap.Channel.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D328);
  }

  return result;
}

unint64_t sub_1000E4C08()
{
  result = qword_10058D330;
  if (!qword_10058D330)
  {
    result = swift_getWitnessTable(byte_10048622C, &type metadata for NANBitmap.Channel.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058D330);
  }

  return result;
}

uint64_t sub_1000E4C5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001004B9090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xED00007265626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B90B0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000E4D8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6974617265706FLL && a2 == 0xEE007373616C4367 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xED00007265626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEF70614D7974696CLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1000E4F08()
{
  result = qword_10058D338;
  if (!qword_10058D338)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMapID, &type metadata for NANMapID, v0, v1);
    atomic_store(result, &qword_10058D338);
  }

  return result;
}

unint64_t sub_1000E4F5C()
{
  result = qword_10058D340;
  if (!qword_10058D340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMapIDs, &type metadata for NANMapIDs, v0, v1);
    atomic_store(result, &qword_10058D340);
  }

  return result;
}

uint64_t sub_1000E4FB0(uint64_t a1)
{
  v2 = type metadata accessor for NANAttribute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E500C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E5074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000E50DC()
{
  result = qword_10058D368;
  if (!qword_10058D368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANIntervalDuration, &type metadata for NANIntervalDuration, v0, v1);
    atomic_store(result, &qword_10058D368);
  }

  return result;
}

unint64_t sub_1000E5130()
{
  result = qword_10058D370;
  if (!qword_10058D370)
  {
    result = swift_getWitnessTable(asc_10048663C, &type metadata for DeprecatedNANAvailability.AvailabilityControl, v0, v1);
    atomic_store(result, &qword_10058D370);
  }

  return result;
}

unint64_t sub_1000E5184()
{
  result = qword_10058D390;
  if (!qword_10058D390)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMapID, &type metadata for NANMapID, v0, v1);
    atomic_store(result, &qword_10058D390);
  }

  return result;
}

unint64_t sub_1000E51D8()
{
  result = qword_10058D398;
  if (!qword_10058D398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time, &type metadata for NANBitmap.Time, v0, v1);
    atomic_store(result, &qword_10058D398);
  }

  return result;
}

unint64_t sub_1000E522C()
{
  result = qword_10058D3C0;
  if (!qword_10058D3C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.Control, &type metadata for NANAvailabilityEntry.Control, v0, v1);
    atomic_store(result, &qword_10058D3C0);
  }

  return result;
}

unint64_t sub_1000E5280()
{
  result = qword_10058D3C8;
  if (!qword_10058D3C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries, &type metadata for NANAvailabilityEntry.BandChannelEntries, v0, v1);
    atomic_store(result, &qword_10058D3C8);
  }

  return result;
}

unint64_t sub_1000E52D4()
{
  result = qword_10058D3D0;
  if (!qword_10058D3D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry.BandChannelEntries.Control, &type metadata for NANAvailabilityEntry.BandChannelEntries.Control, v0, v1);
    atomic_store(result, &qword_10058D3D0);
  }

  return result;
}

unint64_t sub_1000E5328()
{
  result = qword_10058D3E0;
  if (!qword_10058D3E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Band, &type metadata for NANBitmap.Band, v0, v1);
    atomic_store(result, &qword_10058D3E0);
  }

  return result;
}

unint64_t sub_1000E537C()
{
  result = qword_10058D3E8;
  if (!qword_10058D3E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Channel, &type metadata for NANBitmap.Channel, v0, v1);
    atomic_store(result, &qword_10058D3E8);
  }

  return result;
}

unint64_t sub_1000E53F0()
{
  result = qword_10058D400;
  if (!qword_10058D400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBitmap.Time.Control, &type metadata for NANBitmap.Time.Control, v0, v1);
    atomic_store(result, &qword_10058D400);
  }

  return result;
}

unint64_t sub_1000E5444()
{
  result = qword_10058D418;
  if (!qword_10058D418)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10005DD04(&qword_10058D410, &qword_1004869E0);
    v4[0] = &protocol witness table for UInt16;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_10058D418);
  }

  return result;
}

BOOL sub_1000E55E0(uint64_t a1, uint64_t a2)
{

  return sub_10005146C(a1, a2);
}

BOOL static TimeBitmap.SlotsView.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static TimeBitmap.__derived_struct_equals(_:_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000E5728@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*(result + 32))
  {
    v3 = *(result + 24);
    if (v3 == 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v2 = 0;
      v6 = -1;
    }

    else
    {
      v5 = *(result + 8);
      v4 = *(result + 16);
      v7 = a2;
      result = sub_10011AF54(*result, v5, v4, v3);
      a2 = v7;
      v6 = 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    if ((v2 & &_mh_execute_header) != 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if ((v2 & &_mh_execute_header) != 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = v2;
    }
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v6;
  return result;
}

unint64_t static DeviceDriver<>.parse(event:)(uint64_t a1)
{
  __chkstk_darwin();
  v672.i64[0] = v1;
  *&v671 = v2;
  *&v670 = v3;
  v673 = v4;
  v674 = v5;
  v7 = v6;
  v655 = type metadata accessor for DNSRecords.SRV(0);
  __chkstk_darwin();
  v653 = &v636 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v654 = &v636 - v9;
  sub_10005DC58(&qword_10058C7E0, &unk_100486B30);
  __chkstk_darwin();
  v659 = &v636 - v10;
  v11 = type metadata accessor for AWDLActionFrame.Header(0);
  v657 = *(v11 - 8);
  v658 = v11;
  __chkstk_darwin();
  v656 = &v636 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058C7E8, &unk_100481FF0);
  __chkstk_darwin();
  v663 = &v636 - v13;
  v14 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v661 = *(v14 - 8);
  v662 = v14;
  __chkstk_darwin();
  v660 = &v636 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v667 = *(v16 - 8);
  *&v668 = v16;
  __chkstk_darwin();
  *&v669 = &v636 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v665 = &v636 - v18;
  __chkstk_darwin();
  v664 = &v636 - v19;
  __chkstk_darwin();
  v21 = &v636 - v20;
  __chkstk_darwin();
  v23 = &v636 - v22;
  __chkstk_darwin();
  v25 = &v636 - v24;
  __chkstk_darwin();
  v27 = &v636 - v26;
  __chkstk_darwin();
  v29 = &v636 - v28;
  __chkstk_darwin();
  v31 = &v636 - v30;
  __chkstk_darwin();
  __chkstk_darwin();
  v33 = &v636 - v32;
  __chkstk_darwin();
  v45 = &v636 - v44;
  result = _swiftEmptyArrayStorage;
  v666 = v7;
  v47 = v7 - 1;
  v48 = v936;
  switch(v47)
  {
    case 0uLL:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v49 = *(type metadata accessor for DriverEvent(0) - 8);
      v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v52 = v51 + v50;
      *v52 = 0u;
      *(v52 + 16) = 0u;
      *(v52 + 25) = 0u;
      goto LABEL_113;
    case 1uLL:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v269 = *(type metadata accessor for DriverEvent(0) - 8);
      v270 = (*(v269 + 80) + 32) & ~*(v269 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v52 = v51 + v270;
      v271 = 2;
      goto LABEL_112;
    case 2uLL:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v331 = *(type metadata accessor for DriverEvent(0) - 8);
      v332 = (*(v331 + 80) + 32) & ~*(v331 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v52 = v51 + v332;
      v271 = 3;
      goto LABEL_112;
    case 8uLL:
      type metadata accessor for apple80211_join_status(0);
      v324 = v323;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v324, v931);
      memcpy(v932, v931, 0x1D5uLL);
      if (sub_1000B2340(v932) == 1)
      {
        goto LABEL_215;
      }

      memcpy(v940, v932, 0x1D4uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v325 = *(type metadata accessor for DriverEvent(0) - 8);
      v326 = (*(v325 + 80) + 32) & ~*(v325 + 80);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100480F40;
      v327 = &v25[v326];
      *v327 = sub_100113168();
      *(v327 + 1) = v329;
      *(v327 + 2) = v330;
      *(v327 + 3) = v328;
      v327[41] = 4;
      goto LABEL_136;
    case 0xAuLL:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v380 = *(type metadata accessor for DriverEvent(0) - 8);
      v381 = (*(v380 + 80) + 32) & ~*(v380 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v52 = v51 + v381;
      v271 = 1;
LABEL_112:
      *v52 = v271;
      *(v52 + 24) = 0u;
      *(v52 + 8) = 0u;
      *(v52 + 40) = 0;
LABEL_113:
      *(v52 + 41) = 10;
      goto LABEL_130;
    case 0x2DuLL:
    case 0x40uLL:
    case 0xC2uLL:
    case 0xEAuLL:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      type metadata accessor for DriverEvent(0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_129;
    case 0x2EuLL:
      type metadata accessor for apple80211_peer_presence_indication(0);
      v212 = v211;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v212, v932);
      if (BYTE4(v932[4]))
      {
        goto LABEL_215;
      }

      if (DWORD2(v932[0]) != 1)
      {
        goto LABEL_220;
      }

      v213.i32[0] = v932[0];
      v672 = vmovl_u8(v213);
      v214 = BYTE4(v932[0]);
      v215 = BYTE5(v932[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v216 = *(type metadata accessor for DriverEvent(0) - 8);
      v217 = (*(v216 + 80) + 32) & ~*(v216 + 80);
      v218 = swift_allocObject();
      *(v218 + 16) = xmmword_100480F40;
      v219 = v218 + v217;
      *v219 = vuzp1_s8(*v672.i8, *v672.i8).u32[0];
      *(v219 + 4) = v214;
      *(v219 + 5) = v215;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_100;
    case 0x2FuLL:
      v55 = v674;
      v220 = v674 >> 62;
      if ((v674 >> 62) <= 1)
      {
        v56 = v673;
        if (!v220)
        {
          v83 = v668;
          if ((v674 & 0xFF000000000000) >= 0x48000000000001)
          {
            v221 = 72;
            goto LABEL_243;
          }

LABEL_213:
          sub_10000AB0C(v56, v674);
          goto LABEL_216;
        }

        v221 = v673 + 72;
        v550 = v673 >> 32;
        v83 = v668;
        goto LABEL_210;
      }

      v56 = v673;
      if (v220 == 2)
      {
        v549 = *(v673 + 16);
        v221 = v549 + 72;
        v83 = v668;
        if (__OFADD__(v549, 72))
        {
          goto LABEL_266;
        }

        v550 = *(v673 + 24);
LABEL_210:
        if (v221 >= v550)
        {
          goto LABEL_213;
        }

        if (v220 == 2)
        {
          v567 = *(v56 + 16);
        }

        else
        {
          v567 = v56;
        }

        if (v221 >= v567)
        {
LABEL_243:
          sub_10000AB0C(v56, v674);
          v590 = Data._Representation.subscript.getter();
          v592 = v591;
          sub_100030E20(v590, v591, v931);
          sub_1000124C8(v590, v592);
          v932[2] = v931[2];
          v932[3] = v931[3];
          *&v932[4] = v931[4].i64[0];
          v932[0] = v931[0];
          v932[1] = v931[1];
          v593 = v659;
          sub_100112D70(v659);
          if ((*(v657 + 48))(v593, 1, v658) == 1)
          {
            sub_100016290(v593, &qword_10058C7E0, &unk_100486B30);
            goto LABEL_216;
          }

          result = sub_100038FEC(v593, v656, type metadata accessor for AWDLActionFrame.Header);
          if (v220)
          {
            if (v220 == 2)
            {
              v598 = *(v56 + 16);
              v599 = __OFADD__(v598, v221);
              v221 += v598;
              if (!v599)
              {
                v600 = *(v56 + 24);
LABEL_258:
                if (v221 < v600)
                {
                  v603 = v55;
                  v604 = sub_100033A48(v221, v56, v55);
                  v606 = v605;
                  v607 = sub_100033AA8(_swiftEmptyArrayStorage);
                  v608 = type metadata accessor for BinaryDecoder();
                  swift_allocObject();
                  v609 = BinaryDecoder.init(data:userInfo:)(v604, v606, v607);
                  v931[1].i64[1] = v608;
                  v931[2].i64[0] = sub_10011AB40(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
                  v931[0].i64[0] = v609;
                  sub_10000AB0C(v604, v606);

                  LOBYTE(v607) = sub_10003132C(v931);
                  v611 = v610;
                  v613 = v612;
                  v615 = v614;

                  sub_1000124C8(v604, v606);
                  sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
                  v616 = *(type metadata accessor for DriverEvent(0) - 8);
                  v617 = (*(v616 + 80) + 32) & ~*(v616 + 80);
                  v618 = swift_allocObject();
                  *(v618 + 16) = xmmword_100480F40;
                  v619 = v618 + v617;
                  v620 = *(sub_10005DC58(&qword_10058C7C8, &unk_100481FE0) + 48);
                  *v619 = v607;
                  *(v619 + 8) = v611;
                  *(v619 + 16) = v613;
                  *(v619 + 24) = v615;
                  v621 = v656;
                  sub_100119FA0(v656, v618 + v617 + v620, type metadata accessor for AWDLActionFrame.Header);
                  type metadata accessor for DriverEvent.AWDL(0);
                  swift_storeEnumTagMultiPayload();
                  swift_storeEnumTagMultiPayload();
                  sub_1000124C8(v673, v603);
                  sub_10003B8D4(v621, type metadata accessor for AWDLActionFrame.Header);
                  return v618;
                }

                sub_10003B8D4(v656, type metadata accessor for AWDLActionFrame.Header);
                goto LABEL_216;
              }

              __break(1u);
            }

            else
            {
              v599 = __OFADD__(v221, v56);
              v221 += v56;
              if (!v599)
              {
                v600 = v56 >> 32;
                goto LABEL_258;
              }
            }

            __break(1u);
LABEL_270:
            __break(1u);
            return result;
          }

          v600 = BYTE6(v55);
          goto LABEL_258;
        }

        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        swift_once();
LABEL_200:
        LODWORD(v552) = static Channel.nanPrimary;
        LOBYTE(v553) = byte_10059B634;
        LOBYTE(v554) = byte_10059B635;
LABEL_230:
        v932[0] = *(v936 + 4);
        v932[1] = *(&v936[1] + 4);
        v932[2] = *(&v936[2] + 4);
        BYTE8(v932[3]) = v48;
        *&v932[3] = *(&v936[3] + 4);
        *&v932[4] = v671;
        DWORD2(v932[4]) = v552;
        BYTE12(v932[4]) = v553;
        BYTE13(v932[4]) = v554;
        *&v932[5] = v672.i64[0];
        *(&v932[5] + 1) = v56 | (v83 << 32);
        sub_1000B24C8(v932);
        memcpy(&v25[v220], v932, 0x16AuLL);
        swift_storeEnumTagMultiPayload();
        sub_100016290(v931, &unk_10058C820, &qword_100482060);
        v362 = v673;
        v363 = v674;
LABEL_137:
        sub_1000124C8(v362, v363);
        return v25;
      }

      sub_10000AB0C(v673, v674);
LABEL_215:
      v83 = v668;
LABEL_216:
      v79 = v669;
LABEL_217:
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v56, v55);
      v568 = Logger.logObject.getter();
      v569 = static os_log_type_t.error.getter();
      sub_1000124C8(v56, v55);
      if (os_log_type_enabled(v568, v569))
      {
        v570 = swift_slowAlloc();
        v571 = swift_slowAlloc();
        *&v940[0] = v571;
        *v570 = 134218242;
        *(v570 + 4) = v666;
        *(v570 + 12) = 2080;
        v572 = Data.hexString.getter(v56, v55);
        v574 = v83;
        v575 = v56;
        v576 = v55;
        v577 = sub_100002320(v572, v573, v940);

        *(v570 + 14) = v577;
        v55 = v576;
        v56 = v575;
        _os_log_impl(&_mh_execute_header, v568, v569, "Failed to parse event[%ld]: %s", v570, 0x16u);
        sub_100002A00(v571);

        (*(v667 + 8))(v669, v574);
      }

      else
      {

        (*(v667 + 8))(v79, v83);
      }

LABEL_220:
      v578 = v56;
      v579 = v55;
LABEL_221:
      sub_1000124C8(v578, v579);
      return _swiftEmptyArrayStorage;
    case 0x30uLL:
      type metadata accessor for apple80211_chip_reset(0);
      v305 = v304;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v305, v932);
      if (BYTE4(v932[0]))
      {
        goto LABEL_215;
      }

      v306 = v932[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v307 = *(type metadata accessor for DriverEvent(0) - 8);
      v308 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_100480F40;
      *(v71 + v308) = v306 == 1;
      goto LABEL_190;
    case 0x36uLL:
      v272 = v43;
      type metadata accessor for apple80211_driver_availability(0);
      v274 = v273;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v274, v931);
      v932[12] = v931[12];
      v932[13] = v931[13];
      v932[14] = v931[14];
      *(&v932[14] + 9) = *(&v931[14] + 9);
      v932[8] = v931[8];
      v932[9] = v931[9];
      v932[10] = v931[10];
      v932[11] = v931[11];
      v932[4] = v931[4];
      v932[5] = v931[5];
      v932[6] = v931[6];
      v932[7] = v931[7];
      v932[0] = v931[0];
      v932[1] = v931[1];
      v932[2] = v931[2];
      v932[3] = v931[3];
      if (sub_1000B235C(v932) == 1)
      {
        goto LABEL_215;
      }

      v275 = v55;
      v276 = v932[1];
      v277 = v668;
      if (!DWORD2(v932[0]) || LODWORD(v932[1]) != -528345085)
      {
        Logger.init(subsystem:category:)();
        v581 = Logger.logObject.getter();
        v582 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v581, v582))
        {
          v583 = swift_slowAlloc();
          v584 = swift_slowAlloc();
          v931[0].i64[0] = v584;
          *v583 = 136315394;
          *(v583 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v931[0].i64);
          *(v583 + 12) = 1024;
          *(v583 + 14) = v276;
          _os_log_impl(&_mh_execute_header, v581, v582, "nan_event: %s APPLE80211_M_DRIVER_AVAILABLE with powerOn false %d", v583, 0x12u);
          sub_100002A00(v584);
        }

        (*(v667 + 8))(v272, v277);
        v578 = v56;
        v579 = v275;
        goto LABEL_221;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v278 = *(type metadata accessor for DriverEvent(0) - 8);
      v279 = (*(v278 + 80) + 32) & ~*(v278 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_100480F40;
      *(v71 + v279) = 4;
      swift_storeEnumTagMultiPayload();
      v280 = v56;
      v281 = v275;
LABEL_225:
      sub_1000124C8(v280, v281);
      return v71;
    case 0x3AuLL:
    case 0xDFuLL:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      type metadata accessor for DriverEvent(0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      goto LABEL_130;
    case 0x41uLL:
      type metadata accessor for apple80211_assoc_ready(0);
      v154 = v153;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v154, v931);
      if (v931[1].i8[8])
      {
        goto LABEL_215;
      }

      v155 = v931[1].i64[0];
      v156 = v931[0].i64[1];
      v157 = v931[0].i64[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v158 = *(type metadata accessor for DriverEvent(0) - 8);
      v159 = v55;
      v160 = (*(v158 + 80) + 32) & ~*(v158 + 80);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_100480F40;
      v161 = v144 + v160;
      sub_100113290(v157, v156, v155, v932);
      v162 = BYTE8(v932[2]);
      *v161 = LOWORD(v932[0]);
      *(v161 + 8) = *(v932 + 8);
      *(v161 + 24) = *(&v932[1] + 8);
      *(v161 + 40) = v162;
      *(v161 + 41) = 5;
      goto LABEL_58;
    case 0x42uLL:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v408 = *(type metadata accessor for DriverEvent(0) - 8);
      v409 = (*(v408 + 80) + 32) & ~*(v408 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      *(v51 + v409) = 1;
      goto LABEL_128;
    case 0x43uLL:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v309 = *(type metadata accessor for DriverEvent(0) - 8);
      v310 = (*(v309 + 80) + 32) & ~*(v309 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      *(v51 + v310) = 0;
LABEL_128:
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_129:
      swift_storeEnumTagMultiPayload();
LABEL_130:
      swift_storeEnumTagMultiPayload();
      return v51;
    case 0x49uLL:
      type metadata accessor for apple80211_message_auth(0);
      v312 = v311;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v312, v932);
      if (BYTE8(v932[6]))
      {
        goto LABEL_215;
      }

      v313 = WORD2(v932[0]);
      v314 = v932[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v315 = *(type metadata accessor for DriverEvent(0) - 8);
      v316 = (*(v315 + 80) + 32) & ~*(v315 + 80);
      v218 = swift_allocObject();
      *(v218 + 16) = xmmword_100480F40;
      v317 = v218 + v316;
      v318 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v314 & 0x1FF);
      if (v318 == 55)
      {
        v319 = 1;
      }

      else
      {
        v319 = v318;
      }

      v320 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v313 & 0x1FF);
      if (v320 == 34)
      {
        v321 = 1;
      }

      else
      {
        v321 = v320;
      }

      *v317 = v319 | (v321 << 8);
      *(v317 + 8) = 0u;
      *(v317 + 24) = 0u;
      v322 = 1792;
      goto LABEL_124;
    case 0x4DuLL:
      type metadata accessor for apple80211_message_assoc(0);
      v394 = v393;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v394, v932);
      if (BYTE8(v932[0]))
      {
        goto LABEL_215;
      }

      v395 = WORD2(v932[0]);
      v396 = v932[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v397 = *(type metadata accessor for DriverEvent(0) - 8);
      v398 = (*(v397 + 80) + 32) & ~*(v397 + 80);
      v218 = swift_allocObject();
      *(v218 + 16) = xmmword_100480F40;
      v317 = v218 + v398;
      v399 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v396 & 0x1FF);
      if (v399 == 55)
      {
        v400 = 1;
      }

      else
      {
        v400 = v399;
      }

      v401 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v395 & 0x1FF);
      if (v401 == 34)
      {
        v402 = 1;
      }

      else
      {
        v402 = v401;
      }

      *v317 = v400 | (v402 << 8);
      *(v317 + 8) = 0u;
      *(v317 + 24) = 0u;
      v322 = 1536;
LABEL_124:
      *(v317 + 40) = v322;
      goto LABEL_184;
    case 0x51uLL:
      type metadata accessor for apple80211_channel(0);
      v365 = v364;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v365, v932);
      if (BYTE12(v932[0]))
      {
        goto LABEL_215;
      }

      v366 = DWORD2(v932[0]);
      v367 = DWORD1(v932[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v368 = *(type metadata accessor for DriverEvent(0) - 8);
      v369 = (*(v368 + 80) + 32) & ~*(v368 + 80);
      v218 = swift_allocObject();
      *(v218 + 16) = xmmword_100480F40;
      v370 = v218 + v369;
      *v370 = sub_100032064(v367, v366) & 0xFFFFFFFFFFFFLL;
      *(v370 + 8) = 0u;
      *(v370 + 24) = 0u;
      *(v370 + 40) = 2048;
      goto LABEL_184;
    case 0x5EuLL:
      v55 = v674;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v425 = Logger.logObject.getter();
      v426 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v425, v426))
      {
        v427 = swift_slowAlloc();
        v428 = swift_slowAlloc();
        *&v932[0] = v428;
        *v427 = 136315138;
        *(v427 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v425, v426, "nan_event: %s APPLE80211_M_NAN_DEVICE_ROLE_CHANGED", v427, 0xCu);
        sub_100002A00(v428);
      }

      v83 = v668;
      (*(v667 + 8))(v33, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_device_role_changed_event_data(0);
      v56 = v673;
      sub_100112214(v673, v55, v429, v931);
      if (v931[0].i8[12])
      {
        goto LABEL_217;
      }

      v430 = v931[0].u8[8];
      v431 = v931[0].i64[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v432 = *(type metadata accessor for DriverEvent(0) - 8);
      v433 = (*(v432 + 80) + 32) & ~*(v432 + 80);
      v434 = swift_allocObject();
      *(v434 + 16) = xmmword_100480F40;
      if (v431 == 1)
      {
        v87 = v434;
        v435 = 3;
      }

      else
      {
        v87 = v434;
        if (v431 == 3)
        {
          v435 = HIDWORD(v431) == 1;
        }

        else if (v431 == 2)
        {
          v435 = 4;
        }

        else
        {
          v435 = 0;
        }
      }

      LOBYTE(v932[0]) = v435;
      *(&v932[0] + 1) = v430;
      sub_1000B2580(v932);
      memcpy((v87 + v433), v932, 0x16AuLL);
      goto LABEL_239;
    case 0x60uLL:
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v222 = Logger.logObject.getter();
      v223 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v222, v223))
      {
        v224 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        *&v932[0] = v225;
        *v224 = 136315138;
        *(v224 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v222, v223, "nan_event: %s APPLE80211_M_NAN_CLUSTER_CHANGED", v224, 0xCu);
        sub_100002A00(v225);
      }

      v83 = v668;
      (*(v667 + 8))(v45, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_cluster_changed_event_data(0);
      sub_100112214(v56, v55, v226, v931);
      if (v931[0].i8[6])
      {
        goto LABEL_217;
      }

      v227 = v931[0].i8[0];
      v228 = v55;
      v229 = v931[0].u32[0] | (v931[0].u16[2] << 32);
      v230 = v931[0].u16[2] >> 8;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v231 = *(type metadata accessor for DriverEvent(0) - 8);
      v232 = (*(v231 + 80) + 32) & ~*(v231 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      LOBYTE(v932[0]) = v227;
      v233.i64[0] = 0xFFFFFFFFFFFFLL;
      v233.i64[1] = 0xFFFFFFFFFFFFLL;
      v234 = vandq_s8(vdupq_n_s64(v229), v233);
      v235 = vshlq_u64(v234, xmmword_1004817A0);
      *v234.i8 = vmovn_s64(vshlq_u64(v234, xmmword_100481790));
      *v235.i8 = vmovn_s64(v235);
      v235.i16[1] = v235.i16[2];
      v235.i16[2] = v234.i16[0];
      v235.i16[3] = v234.i16[2];
      *(v932 + 1) = vmovn_s16(v235).u32[0];
      BYTE5(v932[0]) = v230;
      sub_1000B258C(v932);
      memcpy((v87 + v232), v932, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v139 = v56;
      v181 = v228;
      goto LABEL_240;
    case 0x61uLL:
      KeyPath = swift_getKeyPath();
      v418 = swift_getKeyPath();
      v420 = v673;
      v419 = v674;
      sub_10000AB0C(v673, v674);
      v421 = sub_100119D78();
      v422 = sub_100119DCC();
      sub_100111708(KeyPath, v418, v420, v419, &type metadata for IEEE80211Frame, v421, v940, v422);

      v931[0] = v940[0];
      v931[1] = v940[1];
      v931[2] = v940[2];
      v931[3] = v940[3];
      v931[4] = v940[4];
      *(&v931[4] + 9) = *(&v940[4] + 9);
      v423 = DWORD2(v940[0]);
      v424 = HIDWORD(v940[0]);
      v83 = DWORD1(v940[1]);
      v56 = DWORD2(v940[1]);
      *(&v936[2] + 12) = *(&v940[4] + 8);
      v936[1] = *(&v940[2] + 12);
      v936[2] = *(&v940[3] + 12);
      v936[0] = *(&v940[1] + 12);
      LOBYTE(v48) = BYTE8(v940[5]);
      if (BYTE8(v940[5]) == 252)
      {
        v56 = v673;
        v55 = v674;
        goto LABEL_215;
      }

      *&v671 = SLODWORD(v940[0]);
      v672.i64[0] = LOBYTE(v940[1]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v551 = *(type metadata accessor for DriverEvent(0) - 8);
      v220 = (*(v551 + 80) + 32) & ~*(v551 + 80);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100480F40;
      v933[2] = v940[2];
      v933[3] = v940[3];
      v933[4] = v940[4];
      *(&v933[4] + 9) = *(&v940[4] + 9);
      v933[0] = v940[0];
      v933[1] = v940[1];
      sub_100012400(v933, v932, &qword_10058C818, &qword_100482058);
      v552 = sub_100032064(v423, v424);
      if ((v552 & 0xFF00000000) != 0x300000000)
      {
        v553 = HIDWORD(v552);
        v554 = v552 >> 40;
        goto LABEL_230;
      }

      if (qword_10058AAA8 != -1)
      {
        goto LABEL_267;
      }

      goto LABEL_200;
    case 0x62uLL:
      v56 = v673;
      v55 = v674;
      v98 = v38;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v932[0] = v102;
        *v101 = 136315138;
        *(v101 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v99, v100, "nan_event: %s APPLE80211_M_NAN_FOLLOW_UP_TX_COMPLETE", v101, 0xCu);
        sub_100002A00(v102);
      }

      v83 = v668;
      (*(v667 + 8))(v98, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_follow_up_tx_complete_event_data(0);
      sub_100112214(v56, v55, v103, v931);
      if (v931[1].i8[4])
      {
        goto LABEL_217;
      }

      v104 = v931[1].u32[0];
      v105 = v931[0].u64[1];
      v106 = v931[0].i16[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v107 = *(type metadata accessor for DriverEvent(0) - 8);
      v108 = v55;
      v109 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_100480F40;
      *&v932[0] = sub_100112548(v106, v105, v104);
      BYTE8(v932[0]) = v111;
      sub_1000B24D4(v932);
      memcpy((v110 + v109), v932, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v56, v108);
      return v110;
    case 0x63uLL:
      v194 = v34;
      v195 = swift_getKeyPath();
      v196 = swift_getKeyPath();
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      v197 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v198 = sub_100119E20();
      v199 = sub_100119DCC();
      sub_100111708(v195, v196, v56, v55, v197, v198, v931[0].i8, v199);

      if (!v931[2].i64[0])
      {
        goto LABEL_215;
      }

      v665 = v931[2].i64[0];
      v664 = v931[0].i64[1];
      v200 = v931[0].i64[0];
      v201 = HIBYTE(v931[0].i64[0]);
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v202 = swift_allocObject();
      *(v202 + 16) = xmmword_1004817D0;
      *(v202 + 56) = &type metadata for UInt8;
      *(v202 + 64) = &protocol witness table for UInt8;
      v666 = v200 >> 16;
      *(v202 + 32) = BYTE2(v200);
      *(v202 + 96) = &type metadata for UInt8;
      *(v202 + 104) = &protocol witness table for UInt8;
      *&v669 = v200 >> 24;
      *(v202 + 72) = BYTE3(v200);
      *(v202 + 136) = &type metadata for UInt8;
      *(v202 + 144) = &protocol witness table for UInt8;
      *&v670 = HIDWORD(v200);
      *(v202 + 112) = BYTE4(v200);
      *(v202 + 176) = &type metadata for UInt8;
      *(v202 + 184) = &protocol witness table for UInt8;
      *&v671 = v200 >> 40;
      *(v202 + 152) = BYTE5(v200);
      *(v202 + 216) = &type metadata for UInt8;
      *(v202 + 224) = &protocol witness table for UInt8;
      v672.i64[0] = HIWORD(v200);
      *(v202 + 192) = BYTE6(v200);
      *(v202 + 256) = &type metadata for UInt8;
      *(v202 + 264) = &protocol witness table for UInt8;
      *(v202 + 232) = v201;
      v203 = String.init(format:_:)();
      v205 = v204;
      Logger.init(subsystem:category:)();

      v206 = Logger.logObject.getter();
      v207 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v663 = HIBYTE(v200);
        *&v932[0] = v209;
        *v208 = 136315394;
        *(v208 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        *(v208 + 12) = 2080;
        v210 = sub_100002320(v203, v205, v932);

        *(v208 + 14) = v210;
        _os_log_impl(&_mh_execute_header, v206, v207, "nan_event: %s APPLE80211_M_NAN_DISCOVERY_RESULT_RECEIVED from %s", v208, 0x16u);
        swift_arrayDestroy();
        LOBYTE(v201) = v663;
      }

      else
      {
      }

      (*(v667 + 8))(v194, v668);
      v565 = v665;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v566 = *(type metadata accessor for DriverEvent(0) - 8);
      v471 = (*(v566 + 80) + 32) & ~*(v566 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      LOWORD(v932[0]) = v200;
      BYTE2(v932[0]) = v666;
      BYTE3(v932[0]) = v669;
      BYTE4(v932[0]) = v670;
      BYTE5(v932[0]) = v671;
      BYTE6(v932[0]) = v672.i8[0];
      BYTE7(v932[0]) = v201;
      *(&v932[0] + 1) = v664;
      *&v932[1] = v565;
      sub_1000B2574(v932);
      goto LABEL_206;
    case 0x65uLL:
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *&v932[0] = v126;
        *v125 = 136315138;
        *(v125 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v123, v124, "nan_event: %s APPLE80211_M_NAN_PUBLISH_REPLIED_PRIVATE", v125, 0xCu);
        sub_100002A00(v126);
      }

      (*(v667 + 8))(v31, v668);
      v127 = swift_getKeyPath();
      v128 = swift_getKeyPath();
      v129 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v130 = sub_100119E20();
      v131 = sub_100119DCC();
      sub_100111708(v127, v128, v56, v55, v129, v130, v931[0].i8, v131);

      v132 = v931[2].i64[0];
      if (!v931[2].i64[0])
      {
        goto LABEL_155;
      }

      v133 = v931[0].i8[0];
      v134 = v931[0].i64[0] >> 8;
      v672.i64[0] = v931[0].i8[8];
      v135 = v931[0].i64[0] >> 16;
      *&v668 = v931[0].i64[0] >> 24;
      *&v669 = HIDWORD(v931[0].i64[0]);
      *&v670 = v931[0].i64[0] >> 40;
      *&v671 = HIWORD(v931[0].i64[0]);
      v136 = HIBYTE(v931[0].i64[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v137 = *(type metadata accessor for DriverEvent(0) - 8);
      v138 = (*(v137 + 80) + 32) & ~*(v137 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      LOBYTE(v932[0]) = v133;
      BYTE1(v932[0]) = v136;
      BYTE2(v932[0]) = v134;
      BYTE3(v932[0]) = v135;
      BYTE4(v932[0]) = v668;
      BYTE5(v932[0]) = v669;
      BYTE6(v932[0]) = v670;
      BYTE7(v932[0]) = v671;
      *(&v932[0] + 1) = v672.i64[0];
      *&v932[1] = v132;
      sub_1000B2568(v932);
      memcpy((v87 + v138), v932, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v139 = v56;
      goto LABEL_208;
    case 0x67uLL:
      v56 = v673;
      v55 = v674;
      v282 = v40;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v283 = Logger.logObject.getter();
      v284 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v283, v284))
      {
        v285 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        *&v932[0] = v286;
        *v285 = 136315138;
        *(v285 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v283, v284, "nan_event: %s APPLE80211_M_NAN_PUBLISH_TERMINATED", v285, 0xCu);
        sub_100002A00(v286);
      }

      v83 = v668;
      (*(v667 + 8))(v282, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_publish_terminated_event_data(0);
      sub_100112214(v56, v55, v287, v931);
      if (v931[0].i8[2])
      {
        goto LABEL_217;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v288 = *(type metadata accessor for DriverEvent(0) - 8);
      v119 = (*(v288 + 80) + 32) & ~*(v288 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      sub_1001124DC();
      LOBYTE(v932[0]) = v289;
      *(&v932[0] + 1) = v290;
      LOBYTE(v932[1]) = v291;
      sub_1000B24EC(v932);
      goto LABEL_73;
    case 0x68uLL:
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      v112 = v665;
      Logger.init(subsystem:category:)();
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *&v932[0] = v116;
        *v115 = 136315138;
        *(v115 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v113, v114, "nan_event: %s APPLE80211_M_NAN_SUBSCRIBE_TERMINATED", v115, 0xCu);
        sub_100002A00(v116);
      }

      v83 = v668;
      (*(v667 + 8))(v112, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_subscribe_terminated_event_data(0);
      sub_100112214(v56, v55, v117, v931);
      if (v931[0].i8[2])
      {
        goto LABEL_217;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v118 = *(type metadata accessor for DriverEvent(0) - 8);
      v119 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      sub_1001124DC();
      LOBYTE(v932[0]) = v120;
      *(&v932[0] + 1) = v121;
      LOBYTE(v932[1]) = v122;
      sub_1000B24F8(v932);
LABEL_73:
      memcpy((v87 + v119), v932, 0x16AuLL);
      goto LABEL_239;
    case 0x69uLL:
      v56 = v673;
      v55 = v674;
      v454 = v39;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v455 = Logger.logObject.getter();
      v456 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v455, v456))
      {
        v457 = swift_slowAlloc();
        v458 = swift_slowAlloc();
        *&v932[0] = v458;
        *v457 = 136315138;
        *(v457 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v455, v456, "nan_event: %s APPLE80211_M_NAN_FOLLOW_UP_RECEIVED", v457, 0xCu);
        sub_100002A00(v458);
      }

      (*(v667 + 8))(v454, v668);
      v459 = swift_getKeyPath();
      v460 = swift_getKeyPath();
      v461 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v462 = sub_100119E20();
      v463 = sub_100119DCC();
      sub_100111708(v459, v460, v56, v55, v461, v462, v931[0].i8, v463);

      v464 = v931[2].i64[0];
      if (!v931[2].i64[0])
      {
        goto LABEL_155;
      }

      v465 = v931[0].i8[0];
      v466 = v931[0].i64[0] >> 8;
      v672.i64[0] = v931[0].i8[8];
      v467 = v931[0].i64[0] >> 16;
      v468 = v931[0].i64[0] >> 24;
      v469 = HIDWORD(v931[0].i64[0]);
      *&v669 = v931[0].i64[0] >> 40;
      *&v670 = HIWORD(v931[0].i64[0]);
      *&v671 = HIBYTE(v931[0].i64[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v470 = *(type metadata accessor for DriverEvent(0) - 8);
      v471 = (*(v470 + 80) + 32) & ~*(v470 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      LOBYTE(v932[0]) = v465;
      BYTE1(v932[0]) = v466;
      BYTE2(v932[0]) = v467;
      BYTE3(v932[0]) = v468;
      BYTE4(v932[0]) = v469;
      BYTE5(v932[0]) = v669;
      BYTE6(v932[0]) = v670;
      BYTE7(v932[0]) = v671;
      *(&v932[0] + 1) = v672.i64[0];
      *&v932[1] = v464;
      sub_1000B24E0(v932);
LABEL_206:
      memcpy((v87 + v471), v932, 0x16AuLL);
      goto LABEL_207;
    case 0x6FuLL:
      v56 = v673;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v436 = Logger.logObject.getter();
      v437 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v436, v437))
      {
        v438 = swift_slowAlloc();
        v439 = swift_slowAlloc();
        *&v932[0] = v439;
        *v438 = 136315138;
        *(v438 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v436, v437, "nan_event: %s APPLE80211_M_NAN_DP_REQ_RECVD", v438, 0xCu);
        sub_100002A00(v439);
      }

      v440 = v668;
      (*(v667 + 8))(v29);
      v441 = swift_getKeyPath();
      v442 = swift_getKeyPath();
      v443 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v444 = sub_100119E20();
      v445 = sub_100119DCC();
      v55 = v674;
      sub_100111708(v441, v442, v56, v674, v443, v444, v931[0].i8, v445);

      v446 = v931[1].i64[1];
      if (!v931[1].i64[1])
      {
        v79 = v669;
        v83 = v440;
        goto LABEL_217;
      }

      v447 = v931[0].i8[8];
      v448 = v931[0].i8[0];
      v449 = v931[0].i64[0] >> 8;
      v450 = v931[0].i64[0] >> 24;
      v451 = HIDWORD(v931[0].i64[0]);
      v664 = (v931[0].i64[0] >> 40);
      v665 = HIWORD(v931[0].i64[0]);
      v666 = HIBYTE(v931[0].i64[0]);
      v667 = v931[0].i64[1] >> 8;
      *&v668 = v931[0].i64[1] >> 16;
      *&v669 = v931[0].i64[1] >> 24;
      *&v670 = HIDWORD(v931[0].i64[1]);
      *&v671 = v931[0].i64[1] >> 40;
      v672.i64[0] = HIWORD(v931[0].i64[1]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v452 = *(type metadata accessor for DriverEvent(0) - 8);
      v453 = (*(v452 + 80) + 32) & ~*(v452 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      LOBYTE(v932[0]) = v448;
      BYTE1(v932[0]) = v449;
      BYTE2(v932[0]) = v450;
      BYTE3(v932[0]) = v451;
      BYTE4(v932[0]) = v664;
      BYTE5(v932[0]) = v665;
      BYTE6(v932[0]) = v666;
      BYTE7(v932[0]) = v447;
      BYTE8(v932[0]) = v667;
      BYTE9(v932[0]) = v668;
      BYTE10(v932[0]) = v669;
      BYTE11(v932[0]) = v670;
      BYTE12(v932[0]) = v671;
      BYTE13(v932[0]) = v672.i8[0];
      *&v932[1] = v446;
      sub_1000B255C(v932);
      memcpy((v87 + v453), v932, 0x16AuLL);
LABEL_207:
      swift_storeEnumTagMultiPayload();
      v139 = v673;
LABEL_208:
      v181 = v674;
LABEL_240:
      sub_1000124C8(v139, v181);
      return v87;
    case 0x70uLL:
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        *&v932[0] = v166;
        *v165 = 136315138;
        *(v165 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v163, v164, "nan_event: %s APPLE80211_M_NAN_DP_RSP_RECVD", v165, 0xCu);
        sub_100002A00(v166);
      }

      (*(v667 + 8))(v27, v668);
      v167 = swift_getKeyPath();
      v168 = swift_getKeyPath();
      v169 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v170 = sub_100119E20();
      v171 = sub_100119DCC();
      sub_100111708(v167, v168, v56, v55, v169, v170, v931[0].i8, v171);

      v172 = v931[1].i64[1];
      if (!v931[1].i64[1])
      {
        goto LABEL_155;
      }

      v173 = v931[1].i8[0];
      v174 = v931[1].i64[0] >> 8;
      v175 = v55;
      v176 = v931[1].i64[0] >> 16;
      v177 = v931[1].i64[0] >> 24;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v178 = *(type metadata accessor for DriverEvent(0) - 8);
      v179 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      v180 = vdupq_lane_s64(v931[0].i64[0], 0);
      LOBYTE(v932[0]) = v931[0].i8[0];
      *(v932 + 1) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v180, xmmword_1004817A0), vshlq_u64(v180, xmmword_100481790)), vuzp1q_s32(vshlq_u64(v180, xmmword_1004817C0), vshlq_u64(v931[0], xmmword_1004817B0))));
      BYTE9(v932[0]) = v931[0].i8[15];
      BYTE10(v932[0]) = v173;
      BYTE11(v932[0]) = v174;
      BYTE12(v932[0]) = v176;
      BYTE13(v932[0]) = v177;
      *(v932 + 14) = v931[0].i32[2];
      WORD1(v932[1]) = v931[0].i16[6];
      *(&v932[1] + 1) = v172;
      sub_1000B2550(v932);
      memcpy((v87 + v179), v932, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v139 = v673;
      v181 = v175;
      goto LABEL_240;
    case 0x71uLL:
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v236 = Logger.logObject.getter();
      v237 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        *&v932[0] = v239;
        *v238 = 136315138;
        *(v238 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v236, v237, "nan_event: %s APPLE80211_M_NAN_DP_CONFIRM_RECVD", v238, 0xCu);
        sub_100002A00(v239);
      }

      (*(v667 + 8))(v25, v668);
      v240 = swift_getKeyPath();
      v241 = swift_getKeyPath();
      v242 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v243 = sub_100119E20();
      v244 = sub_100119DCC();
      sub_100111708(v240, v241, v56, v55, v242, v243, v931[0].i8, v244);

      v245 = v931[1].i64[0];
      if (!v931[1].i64[0])
      {
LABEL_155:
        v79 = v669;
        v83 = v668;
        goto LABEL_217;
      }

      v246 = v931[0].i64[1];
      v247 = v931[0].i16[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v248 = *(type metadata accessor for DriverEvent(0) - 8);
      v159 = v55;
      v249 = (*(v248 + 80) + 32) & ~*(v248 + 80);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_100480F40;
      v250 = sub_100112384(v245, v247, v246);
      v252 = v251;
      v254 = v253;

      *&v932[0] = v250;
      *(&v932[0] + 1) = v252;
      *&v932[1] = v254;
      sub_1000B2544(v932);
      memcpy((v144 + v249), v932, 0x16AuLL);
LABEL_58:
      swift_storeEnumTagMultiPayload();
      v255 = v56;
      v256 = v159;
      goto LABEL_79;
    case 0x74uLL:
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v333 = Logger.logObject.getter();
      v334 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v333, v334))
      {
        v335 = swift_slowAlloc();
        v336 = swift_slowAlloc();
        *&v932[0] = v336;
        *v335 = 136315138;
        *(v335 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v333, v334, "nan_event: %s APPLE80211_M_NAN_DP_ESTABLISHED", v335, 0xCu);
        sub_100002A00(v336);
      }

      v337 = v23;
      v83 = v668;
      (*(v667 + 8))(v337, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_data_path_established_event_data(0);
      sub_100112214(v56, v55, v338, v931);
      memcpy(v932, v931, 0x821uLL);
      if (sub_1000B251C(v932) == 1)
      {
        goto LABEL_217;
      }

      memcpy(v940, v932, sizeof(v940));
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v339 = *(type metadata accessor for DriverEvent(0) - 8);
      v340 = (*(v339 + 80) + 32) & ~*(v339 + 80);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100480F40;
      *&v933[0] = sub_1001123DC();
      DWORD2(v933[0]) = v341;
      WORD6(v933[0]) = v342;
      sub_1000B2538(v933);
      goto LABEL_135;
    case 0x75uLL:
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v257 = Logger.logObject.getter();
      v258 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        v260 = swift_slowAlloc();
        *&v932[0] = v260;
        *v259 = 136315138;
        *(v259 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v257, v258, "nan_event: %s APPLE80211_M_NAN_DP_END", v259, 0xCu);
        sub_100002A00(v260);
      }

      v83 = v668;
      (*(v667 + 8))(v21, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_data_path_end_event_data(0);
      sub_100112214(v56, v55, v261, v931);
      if (v931[1].i8[12])
      {
        goto LABEL_217;
      }

      v262 = v931[0].i64[1];
      v263 = v931[0].i8[0];
      v264 = HIDWORD(v931[0].i64[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v265 = type metadata accessor for DriverEvent(0);
      v266 = (*(*(v265 - 8) + 80) + 32) & ~*(*(v265 - 8) + 80);
      v267 = swift_allocObject();
      *(v267 + 16) = xmmword_100480F40;
      v672.i64[0] = v267;
      *&v671 = v265;
      if (v264 > 0x16)
      {
        v268 = 3;
      }

      else
      {
        v268 = qword_100487580[v264];
      }

      *&v670 = v268;
      v580 = sub_10011465C(v264);
      LOBYTE(v932[0]) = v263;
      *(v932 + 1) = v262;
      BYTE3(v932[0]) = BYTE2(v262);
      BYTE4(v932[0]) = BYTE3(v262);
      BYTE5(v932[0]) = BYTE4(v262);
      WORD3(v932[0]) = BYTE5(v262);
      *(&v932[0] + 1) = v670;
      LOBYTE(v932[1]) = v580;
      sub_1000B2510(v932);
      v71 = v672.i64[0];
      memcpy((v672.i64[0] + v266), v932, 0x16AuLL);
      goto LABEL_224;
    case 0x79uLL:
      type metadata accessor for apple80211_nan_dw_start_event_data(0);
      v489 = v488;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v489, v932);
      if (BYTE8(v932[4]))
      {
        goto LABEL_215;
      }

      v672.i64[0] = WORD1(v932[4]);
      v490 = LOWORD(v932[4]);
      v491 = DWORD1(v932[3]);
      v492 = LODWORD(v932[3]);
      v493 = HIDWORD(v932[3]);
      v494 = DWORD2(v932[3]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v495 = *(type metadata accessor for DriverEvent(0) - 8);
      v496 = (*(v495 + 80) + 32) & ~*(v495 + 80);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100480F40;
      v497 = v491 | (v492 << 32);
      v498 = sub_10003B238(v490);
      if ((v498 & 0xFF00000000) == 0x300000000)
      {
        if (qword_10058AAA8 != -1)
        {
          swift_once();
        }

        LODWORD(v498) = static Channel.nanPrimary;
        LOBYTE(v499) = byte_10059B634;
        LOBYTE(v500) = byte_10059B635;
      }

      else
      {
        v499 = HIDWORD(v498);
        v500 = v498 >> 40;
      }

      v586 = v673;
      v585 = v674;
      *&v932[0] = v672.i64[0];
      *(&v932[0] + 1) = v497;
      *&v932[1] = v493 | (v494 << 32);
      DWORD2(v932[1]) = v498;
      BYTE12(v932[1]) = v499;
      BYTE13(v932[1]) = v500;
      sub_1000B2488(v932);
      memcpy(&v25[v496], v932, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v362 = v586;
      v363 = v585;
      goto LABEL_137;
    case 0x7BuLL:
      type metadata accessor for apple80211_nan_channel_boundary_event_data(0);
      v141 = v140;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v141, v931);
      memcpy(v932, v931, 0x301uLL);
      if (sub_1000B2318(v932) == 1)
      {
        goto LABEL_215;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v142 = *(type metadata accessor for DriverEvent(0) - 8);
      v143 = (*(v142 + 80) + 32) & ~*(v142 + 80);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_100480F40;
      v145 = sub_100032064(DWORD1(v932[0]), DWORD2(v932[0]));
      result = sub_100032064(v932[1], DWORD1(v932[1]));
      if ((result & 0xFF00000000) == 0x300000000)
      {
        goto LABEL_270;
      }

      v146 = result;
      v147 = HIDWORD(result);
      v148 = result >> 40;
      v149 = HIDWORD(v932[1]) | (DWORD2(v932[1]) << 32);
      memcpy(v931, &v932[7], 0x290uLL);
      v671 = v932[3];
      v672 = v932[2];
      v669 = v932[5];
      v670 = v932[4];
      v668 = v932[6];
      v150 = sub_100119AF8(v931);
      WORD2(v940[0]) = WORD2(v145);
      LODWORD(v940[0]) = v145;
      DWORD2(v940[0]) = v146;
      BYTE12(v940[0]) = v147;
      BYTE13(v940[0]) = v148;
      *(&v940[1] + 8) = v672;
      *(&v940[2] + 8) = v671;
      *(&v940[3] + 8) = v670;
      *(&v940[4] + 8) = v669;
      *(&v940[5] + 8) = v668;
      *&v940[1] = v149;
      *(&v940[6] + 1) = v150;
      *&v940[7] = v151;
      *(&v940[7] + 1) = v152;
      sub_1000B2334(v940);
      memcpy((v144 + v143), v940, 0x16AuLL);
      goto LABEL_78;
    case 0x7CuLL:
      type metadata accessor for apple80211_infra_scan_start_event_data(0);
      v404 = v403;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v404, v931);
      memcpy(v932, v931, 0x324uLL);
      if (sub_1000114C8(v932) == 1)
      {
        goto LABEL_215;
      }

      memcpy(v940, v932, 0x323uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v405 = *(type metadata accessor for DriverEvent(0) - 8);
      v406 = (*(v405 + 80) + 32) & ~*(v405 + 80);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100480F40;
      v407 = &v25[v406];
      *v407 = sub_1000114E4();
      *(v407 + 8) = 0u;
      *(v407 + 24) = 0u;
      *(v407 + 20) = 256;
      goto LABEL_136;
    case 0x7DuLL:
      type metadata accessor for apple80211_infra_scan_complete_event_data(0);
      v484 = v483;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v484, v932);
      if (BYTE2(v932[0]))
      {
        goto LABEL_215;
      }

      v485 = LOBYTE(v932[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v486 = *(type metadata accessor for DriverEvent(0) - 8);
      v487 = (*(v486 + 80) + 32) & ~*(v486 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_100480F40;
      v72 = v71 + v487;
      *v72 = v485;
      *(v72 + 8) = 0u;
      *(v72 + 24) = 0u;
      *(v72 + 40) = 0;
      v73 = 2;
      goto LABEL_161;
    case 0x7EuLL:
      type metadata accessor for apple80211_nan_infra_assoc_start_event_data(0);
      v81 = v80;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v81, v932);
      if (BYTE12(v932[0]))
      {
        goto LABEL_215;
      }

      v82 = sub_100032064(DWORD1(v932[0]), DWORD2(v932[0]));
      v83 = v668;
      v79 = v669;
      if ((v82 & 0xFF00000000) == 0x300000000)
      {
        goto LABEL_217;
      }

      v84 = v82;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v85 = *(type metadata accessor for DriverEvent(0) - 8);
      v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_100480F40;
      v88 = v87 + v86;
      *v88 = v84 & 0xFFFFFFFFFFFFLL;
      *(v88 + 24) = 0u;
      *(v88 + 8) = 0u;
      *(v88 + 40) = 0;
      *(v88 + 41) = 3;
LABEL_239:
      swift_storeEnumTagMultiPayload();
      v139 = v56;
      v181 = v55;
      goto LABEL_240;
    case 0x80uLL:
      v56 = v673;
      sub_10000AB0C(v673, v674);
      v350 = v664;
      Logger.init(subsystem:category:)();
      v351 = Logger.logObject.getter();
      v352 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v351, v352))
      {
        v353 = swift_slowAlloc();
        v354 = swift_slowAlloc();
        *&v932[0] = v354;
        *v353 = 136315138;
        *(v353 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v351, v352, "nan_event: %s APPLE80211_M_NAN_DP_HOST_ASSIST_REQUEST", v353, 0xCu);
        sub_100002A00(v354);
      }

      v83 = v668;
      (*(v667 + 8))(v350, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_dp_host_assist_event_data(0);
      v55 = v674;
      sub_100112214(v56, v674, v355, v931);
      if (v931[1].i8[4])
      {
        goto LABEL_217;
      }

      v356 = v931[0].u64[1];
      v357 = v931[0].i16[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v358 = *(type metadata accessor for DriverEvent(0) - 8);
      v359 = v55;
      v360 = (*(v358 + 80) + 32) & ~*(v358 + 80);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100480F40;
      *&v932[0] = sub_10011243C(v357, v356);
      *(&v932[0] + 1) = v361;
      sub_1000B2504(v932);
      memcpy(&v25[v360], v932, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v362 = v56;
      v363 = v359;
      goto LABEL_137;
    case 0x8DuLL:
      type metadata accessor for apple80211_awdl_low_latency_statistics_reduced(0);
      v75 = v74;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v75, v933);
      memcpy(v940, v933, 0x658uLL);
      memcpy(v931, v933, 0x658uLL);
      if (sub_1000B242C(v931) == 1)
      {
        v77 = v661;
        v76 = v662;
        v78 = v663;
        (*(v661 + 56))(v663, 1, 1, v662);
        v79 = v669;
      }

      else
      {
        memcpy(v932, v940, 0x658uLL);
        v78 = v663;
        sub_10011298C(v932, v663);
        v79 = v669;
        v77 = v661;
        v76 = v662;
      }

      v544 = (*(v77 + 48))(v78, 1, v76);
      v83 = v668;
      if (v544 == 1)
      {
        sub_100016290(v78, &qword_10058C7E8, &unk_100481FF0);
        goto LABEL_217;
      }

      v545 = v660;
      sub_100038FEC(v78, v660, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v546 = *(type metadata accessor for DriverEvent(0) - 8);
      v547 = (*(v546 + 80) + 32) & ~*(v546 + 80);
      v548 = swift_allocObject();
      *(v548 + 16) = xmmword_100480F40;
      sub_100119FA0(v545, v548 + v547, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v56, v55);
      sub_10003B8D4(v545, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      return v548;
    case 0x94uLL:
      type metadata accessor for apple80211_p2p_airplay_statistics(0);
      v54 = v53;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v54, v933);
      v940[10] = v933[10];
      v940[11] = v933[11];
      v940[12] = v933[12];
      v940[6] = v933[6];
      v940[7] = v933[7];
      v940[8] = v933[8];
      v940[9] = v933[9];
      v940[2] = v933[2];
      v940[3] = v933[3];
      v940[4] = v933[4];
      v940[5] = v933[5];
      v940[0] = v933[0];
      v940[1] = v933[1];
      v931[10] = v933[10];
      v931[11] = v933[11];
      v931[12] = v933[12];
      v931[6] = v933[6];
      v931[7] = v933[7];
      v931[8] = v933[8];
      v931[9] = v933[9];
      v931[2] = v933[2];
      v931[3] = v933[3];
      v931[4] = v933[4];
      v931[5] = v933[5];
      v931[0] = v933[0];
      v931[1] = v933[1];
      if (sub_1000B2410(v931) == 1)
      {
        goto LABEL_215;
      }

      v932[10] = v940[10];
      v932[11] = v940[11];
      v932[12] = v940[12];
      v932[6] = v940[6];
      v932[7] = v940[7];
      v932[8] = v940[8];
      v932[9] = v940[9];
      v932[2] = v940[2];
      v932[3] = v940[3];
      v932[4] = v940[4];
      v932[5] = v940[5];
      v932[0] = v940[0];
      v932[1] = v940[1];
      sub_100119410(v932, v936);
      v57 = v937;
      if (!v937)
      {
        goto LABEL_215;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v58 = *(type metadata accessor for DriverEvent(0) - 8);
      v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      v61 = v60 + v59;
      v62 = v936[4];
      *(v61 + 48) = v936[3];
      *(v61 + 64) = v62;
      v63 = v936[2];
      *(v61 + 16) = v936[1];
      *(v61 + 32) = v63;
      *v61 = v936[0];
      *(v61 + 80) = v57;
      *(v61 + 88) = v938;
      *(v61 + 104) = v939;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v64 = v56;
      v65 = v55;
      goto LABEL_158;
    case 0x9CuLL:
      type metadata accessor for apple80211_nan_low_latency_peer_statistics(0);
      v183 = v182;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v183, v931);
      memcpy(v932, v931, sizeof(v932));
      if (sub_1000B2448(v932) == 1)
      {
        goto LABEL_215;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      *&v671 = type metadata accessor for DriverEvent(0);
      *&v670 = (*(*(v671 - 8) + 80) + 32) & ~*(*(v671 - 8) + 80);
      v672.i64[0] = swift_allocObject();
      *(v672.i64[0] + 16) = xmmword_100480F40;
      LODWORD(v658) = v932[0];
      LODWORD(v657) = BYTE4(v932[0]);
      LODWORD(v656) = BYTE5(v932[0]);
      LODWORD(v655) = BYTE6(v932[0]);
      LODWORD(v661) = LOBYTE(v932[1]);
      LODWORD(v660) = BYTE1(v932[1]);
      LODWORD(v659) = BYTE2(v932[1]);
      LODWORD(v664) = BYTE4(v932[2]);
      LODWORD(v663) = BYTE5(v932[2]);
      LODWORD(v662) = BYTE6(v932[2]);
      LODWORD(v665) = v932[3];
      *&v669 = *(&v932[11] + 1);
      v667 = *&v932[16];
      *&v668 = *&v932[12];
      v666 = *(&v932[16] + 1);
      v912 = *&v932[18];
      v914 = *(&v932[19] + 1);
      v916 = *&v932[21];
      v918 = *(&v932[22] + 1);
      v920 = *&v932[24];
      v922 = *(&v932[25] + 1);
      v924 = *&v932[27];
      v653 = *(&v932[12] + 1);
      v654 = *(&v932[13] + 1);
      v913 = *(&v932[18] + 8);
      v915 = v932[20];
      v917 = *(&v932[21] + 8);
      v919 = v932[23];
      v921 = *(&v932[24] + 8);
      v923 = v932[26];
      v925 = *(&v932[27] + 8);
      v926 = *(&v932[28] + 1);
      v927 = v932[29];
      v929 = *(&v932[30] + 8);
      v911 = v932[17];
      v928 = *&v932[30];
      v930 = *(&v932[31] + 1);
      v651 = *(&v932[5] + 8);
      v652 = *(&v932[3] + 8);
      v647 = *(&v932[6] + 8);
      v648 = *(&v932[4] + 8);
      v649 = *(&v932[9] + 8);
      v650 = *(&v932[7] + 8);
      v645 = *(&v932[10] + 8);
      v646 = *(&v932[8] + 8);
      v184 = *(&v932[2] + 1);
      v185 = *(&v932[1] + 4);
      v186 = *(&v932[0] + 1);
      v642 = v932[2];
      v643 = HIDWORD(v932[1]);
      v644 = sub_100115324(&v911);
      v891 = v932[47];
      v893 = *(&v932[48] + 8);
      v892 = *&v932[48];
      v894 = *(&v932[49] + 1);
      v895 = v932[50];
      v897 = *(&v932[51] + 8);
      v896 = *&v932[51];
      v898 = *(&v932[52] + 1);
      v899 = v932[53];
      v901 = *(&v932[54] + 8);
      v900 = *&v932[54];
      v902 = *(&v932[55] + 1);
      v903 = v932[56];
      v905 = *(&v932[57] + 8);
      v904 = *&v932[57];
      v906 = *(&v932[58] + 1);
      v907 = v932[59];
      v909 = *(&v932[60] + 8);
      v908 = *&v932[60];
      v910 = *(&v932[61] + 1);
      v641 = sub_100115324(&v891);
      v871 = v932[62];
      v873 = *(&v932[63] + 8);
      v872 = *&v932[63];
      v874 = *(&v932[64] + 1);
      v875 = v932[65];
      v877 = *(&v932[66] + 8);
      v876 = *&v932[66];
      v878 = *(&v932[67] + 1);
      v879 = v932[68];
      v881 = *(&v932[69] + 8);
      v880 = *&v932[69];
      v882 = *(&v932[70] + 1);
      v883 = v932[71];
      v885 = *(&v932[72] + 8);
      v884 = *&v932[72];
      v886 = *(&v932[73] + 1);
      v887 = v932[74];
      v889 = *(&v932[75] + 8);
      v888 = *&v932[75];
      v890 = *(&v932[76] + 1);
      v640 = sub_100115324(&v871);
      v851 = v932[77];
      v853 = *(&v932[78] + 8);
      v852 = *&v932[78];
      v854 = *(&v932[79] + 1);
      v855 = v932[80];
      v857 = *(&v932[81] + 8);
      v856 = *&v932[81];
      v858 = *(&v932[82] + 1);
      v859 = v932[83];
      v861 = *(&v932[84] + 8);
      v860 = *&v932[84];
      v862 = *(&v932[85] + 1);
      v863 = v932[86];
      v865 = *(&v932[87] + 8);
      v864 = *&v932[87];
      v866 = *(&v932[88] + 1);
      v867 = v932[89];
      v869 = *(&v932[90] + 8);
      v868 = *&v932[90];
      v870 = *(&v932[91] + 1);
      v639 = sub_100115324(&v851);
      v831 = v932[92];
      v833 = *(&v932[93] + 8);
      v832 = *&v932[93];
      v834 = *(&v932[94] + 1);
      v835 = v932[95];
      v837 = *(&v932[96] + 8);
      v836 = *&v932[96];
      v838 = *(&v932[97] + 1);
      v839 = v932[98];
      v841 = *(&v932[99] + 8);
      v840 = *&v932[99];
      v842 = *(&v932[100] + 1);
      v843 = v932[101];
      v845 = *(&v932[102] + 8);
      v844 = *&v932[102];
      v846 = *(&v932[103] + 1);
      v847 = v932[104];
      v849 = *(&v932[105] + 8);
      v848 = *&v932[105];
      v850 = *(&v932[106] + 1);
      v638 = sub_100115324(&v831);
      v811 = *(&v932[156] + 8);
      v813 = v932[158];
      v812 = *(&v932[157] + 1);
      v814 = *&v932[159];
      v815 = *(&v932[159] + 8);
      v817 = v932[161];
      v816 = *(&v932[160] + 1);
      v818 = *&v932[162];
      v819 = *(&v932[162] + 8);
      v821 = v932[164];
      v820 = *(&v932[163] + 1);
      v822 = *&v932[165];
      v823 = *(&v932[165] + 8);
      v825 = v932[167];
      v824 = *(&v932[166] + 1);
      v826 = *&v932[168];
      v827 = *(&v932[168] + 8);
      v829 = v932[170];
      v828 = *(&v932[169] + 1);
      v830 = *&v932[171];
      v637 = sub_100115324(&v811);
      v799 = v932[107];
      v801 = *(&v932[108] + 8);
      v800 = *&v932[108];
      v802 = *(&v932[109] + 1);
      v803 = v932[110];
      v805 = *(&v932[111] + 8);
      v804 = *&v932[111];
      v806 = *(&v932[112] + 1);
      v807 = v932[113];
      v809 = *(&v932[114] + 8);
      v808 = *&v932[114];
      v810 = *(&v932[115] + 1);
      v636 = sub_1001154AC(&v799);
      v781 = v932[116];
      v783 = *(&v932[117] + 8);
      v782 = *&v932[117];
      v784 = *(&v932[118] + 1);
      v785 = v932[119];
      v787 = *(&v932[120] + 8);
      v786 = *&v932[120];
      v788 = *(&v932[121] + 1);
      v789 = v932[122];
      v791 = *(&v932[123] + 8);
      v790 = *&v932[123];
      v792 = *(&v932[124] + 1);
      v793 = v932[125];
      v795 = *(&v932[126] + 8);
      v794 = *&v932[126];
      v796 = *(&v932[127] + 1);
      v797 = v932[128];
      v798 = *&v932[129];
      v187 = sub_1001156EC(&v781);
      v763 = *(&v932[129] + 8);
      v765 = v932[131];
      v764 = *(&v932[130] + 1);
      v766 = *&v932[132];
      v767 = *(&v932[132] + 8);
      v769 = v932[134];
      v768 = *(&v932[133] + 1);
      v770 = *&v932[135];
      v771 = *(&v932[135] + 8);
      v773 = v932[137];
      v772 = *(&v932[136] + 1);
      v774 = *&v932[138];
      v775 = *(&v932[138] + 8);
      v777 = v932[140];
      v776 = *(&v932[139] + 1);
      v778 = *&v932[141];
      v779 = *(&v932[141] + 8);
      v780 = *(&v932[142] + 1);
      v188 = sub_1001156EC(&v763);
      v743 = v932[176];
      v745 = *(&v932[177] + 8);
      v744 = *&v932[177];
      v746 = *(&v932[178] + 1);
      v747 = v932[179];
      v749 = *(&v932[180] + 8);
      v748 = *&v932[180];
      v750 = *(&v932[181] + 1);
      v751 = v932[182];
      v753 = *(&v932[183] + 8);
      v752 = *&v932[183];
      v754 = *(&v932[184] + 1);
      v755 = v932[185];
      v757 = *(&v932[186] + 8);
      v756 = *&v932[186];
      v758 = *(&v932[187] + 1);
      v759 = v932[188];
      v761 = *(&v932[189] + 8);
      v760 = *&v932[189];
      v762 = *(&v932[190] + 1);
      v189 = sub_100115324(&v743);
      v723 = v932[191];
      v725 = *(&v932[192] + 8);
      v724 = *&v932[192];
      v726 = *(&v932[193] + 1);
      v727 = v932[194];
      v729 = *(&v932[195] + 8);
      v728 = *&v932[195];
      v730 = *(&v932[196] + 1);
      v731 = v932[197];
      v733 = *(&v932[198] + 8);
      v732 = *&v932[198];
      v734 = *(&v932[199] + 1);
      v735 = v932[200];
      v737 = *(&v932[201] + 8);
      v736 = *&v932[201];
      v738 = *(&v932[202] + 1);
      v739 = v932[203];
      v741 = *(&v932[204] + 8);
      v740 = *&v932[204];
      v742 = *(&v932[205] + 1);
      v190 = sub_100115324(&v723);
      v703 = v932[206];
      v705 = *(&v932[207] + 8);
      v704 = *&v932[207];
      v706 = *(&v932[208] + 1);
      v707 = v932[209];
      v709 = *(&v932[210] + 8);
      v708 = *&v932[210];
      v710 = *(&v932[211] + 1);
      v711 = v932[212];
      v713 = *(&v932[213] + 8);
      v712 = *&v932[213];
      v714 = *(&v932[214] + 1);
      v715 = v932[215];
      v717 = *(&v932[216] + 8);
      v716 = *&v932[216];
      v718 = *(&v932[217] + 1);
      v719 = v932[218];
      v721 = *(&v932[219] + 8);
      v720 = *&v932[219];
      v722 = *(&v932[220] + 1);
      v191 = sub_100115324(&v703);
      v683 = v932[221];
      v685 = *(&v932[222] + 8);
      v684 = *&v932[222];
      v686 = *(&v932[223] + 1);
      v687 = v932[224];
      v689 = *(&v932[225] + 8);
      v688 = *&v932[225];
      v690 = *(&v932[226] + 1);
      v691 = v932[227];
      v693 = *(&v932[228] + 8);
      v692 = *&v932[228];
      v694 = *(&v932[229] + 1);
      v695 = v932[230];
      v697 = *(&v932[231] + 8);
      v696 = *&v932[231];
      v698 = *(&v932[232] + 1);
      v699 = v932[233];
      v701 = *(&v932[234] + 8);
      v700 = *&v932[234];
      v702 = *(&v932[235] + 1);
      v192 = sub_100115324(&v683);
      v675 = v932[236];
      v676 = *&v932[237];
      v677 = *(&v932[237] + 8);
      v678 = *(&v932[238] + 1);
      v679 = v932[239];
      v680 = *&v932[240];
      v681 = *(&v932[240] + 8);
      v682 = *(&v932[241] + 1);
      v193 = sub_100115864(&v675);
      LODWORD(v940[0]) = v658;
      BYTE4(v940[0]) = v657;
      BYTE5(v940[0]) = v656;
      BYTE6(v940[0]) = v655;
      *(&v940[0] + 1) = v186;
      LOBYTE(v940[1]) = v661;
      BYTE1(v940[1]) = v660;
      WORD1(v940[1]) = v659;
      *(&v940[1] + 4) = v185;
      HIDWORD(v940[1]) = v643;
      LODWORD(v940[2]) = v642;
      BYTE4(v940[2]) = v664;
      BYTE5(v940[2]) = v663;
      BYTE6(v940[2]) = v662;
      *(&v940[2] + 1) = v184;
      LODWORD(v940[3]) = v665;
      *(&v940[4] + 8) = v648;
      *(&v940[3] + 8) = v652;
      *(&v940[6] + 8) = v647;
      *(&v940[5] + 8) = v651;
      *(&v940[8] + 8) = v646;
      *(&v940[7] + 8) = v650;
      *(&v940[10] + 8) = v645;
      *(&v940[9] + 8) = v649;
      *(&v940[11] + 1) = v669;
      *&v940[12] = v668;
      *(&v940[12] + 1) = v653;
      *&v940[13] = v667;
      *(&v940[13] + 1) = v666;
      *&v940[14] = v654;
      *(&v940[14] + 1) = v644;
      *&v940[15] = v641;
      *(&v940[15] + 1) = v640;
      *&v940[16] = v639;
      *(&v940[16] + 1) = v638;
      *&v940[17] = v637;
      *(&v940[17] + 1) = v636;
      *&v940[18] = v187;
      *(&v940[18] + 1) = v188;
      *&v940[19] = v189;
      *(&v940[19] + 1) = v190;
      *&v940[20] = v191;
      *(&v940[20] + 1) = v192;
      v940[21] = v193;
      *&v940[22] = 0;
      BYTE8(v940[22]) = 0;
      sub_1000B2464(v940);
      v71 = v672.i64[0];
      memcpy((v672.i64[0] + v670), v940, 0x16AuLL);
LABEL_224:
      swift_storeEnumTagMultiPayload();
      v280 = v673;
      v281 = v674;
      goto LABEL_225;
    case 0x9DuLL:
      v56 = v673;
      v55 = v674;
      v292 = v37;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v293 = Logger.logObject.getter();
      v294 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v293, v294))
      {
        v295 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        *&v932[0] = v296;
        *v295 = 136315138;
        *(v295 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v293, v294, "nan_event: %s APPLE80211_M_NAN_OOB_AF_TX_STATUS", v295, 0xCu);
        sub_100002A00(v296);
      }

      v83 = v668;
      (*(v667 + 8))(v292, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_oob_act_frm_tx_status(0);
      sub_100112214(v56, v55, v297, v931);
      if (v931[0].i8[10])
      {
        goto LABEL_217;
      }

      v298 = v931[0].i16[0];
      v299 = v931[0].i64[0] >> 16;
      v300 = v931[0].i16[4];
      v301 = HIWORD(v931[0].i64[0]) | (v931[0].u16[4] << 16);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v302 = *(type metadata accessor for DriverEvent(0) - 8);
      v303 = (*(v302 + 80) + 32) & ~*(v302 + 80);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_100480F40;
      LOWORD(v932[0]) = v298;
      *(v932 + 2) = __PAIR64__(v301, v299);
      LODWORD(v932[0]) = sub_100112578(*&v932[0], v300);
      sub_1000B24BC(v932);
      memcpy((v144 + v303), v932, 0x16AuLL);
      goto LABEL_78;
    case 0x9EuLL:
      v56 = v673;
      v55 = v674;
      v410 = v36;
      sub_10000AB0C(v673, v674);
      Logger.init(subsystem:category:)();
      v411 = Logger.logObject.getter();
      v412 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v411, v412))
      {
        v413 = swift_slowAlloc();
        v414 = swift_slowAlloc();
        *&v932[0] = v414;
        *v413 = 136315138;
        *(v413 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v411, v412, "nan_event: %s APPLE80211_M_NAN_OOB_AF_RX", v413, 0xCu);
        sub_100002A00(v414);
      }

      v83 = v668;
      (*(v667 + 8))(v410, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_oob_act_frm_rx_data(0);
      sub_100112214(v56, v55, v415, v931);
      memcpy(v932, v931, 0x3E6uLL);
      if (sub_1000B2494(v932) == 1)
      {
        goto LABEL_217;
      }

      memcpy(v940, v932, 0x3E5uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v416 = *(type metadata accessor for DriverEvent(0) - 8);
      v340 = (*(v416 + 80) + 32) & ~*(v416 + 80);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100480F40;
      sub_1001125C0(v933);
      sub_1000B24B0(v933);
LABEL_135:
      memcpy(&v25[v340], v933, 0x16AuLL);
LABEL_136:
      swift_storeEnumTagMultiPayload();
      v362 = v56;
      v363 = v55;
      goto LABEL_137;
    case 0xABuLL:
      type metadata accessor for apple80211_hostap_state(0);
      v532 = v531;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v532, v932);
      if (v932[1])
      {
        goto LABEL_215;
      }

      v533 = WORD4(v932[0]);
      v534 = DWORD1(v932[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v535 = *(type metadata accessor for DriverEvent(0) - 8);
      v536 = (*(v535 + 80) + 32) & ~*(v535 + 80);
      v218 = swift_allocObject();
      *(v218 + 16) = xmmword_100480F40;
      v537 = v218 + v536;
      v538 = sub_10003B238(v533);
      *v537 = v534 != 0;
      *(v537 + 4) = v538;
      *(v537 + 8) = WORD2(v538);
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      goto LABEL_184;
    case 0xB2uLL:
      type metadata accessor for apple80211_awdl_service_reg_soft_error_event(0);
      v90 = v89;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v90, v931);
      memcpy(v932, v931, 0x109uLL);
      if (sub_1000B2378(v932) == 1)
      {
        goto LABEL_215;
      }

      v91 = DWORD1(v932[0]);
      v83 = v668;
      if (DWORD1(v932[0]) > 0xFF)
      {
        goto LABEL_216;
      }

      v931[12] = *(&v932[12] + 8);
      v931[13] = *(&v932[13] + 8);
      v931[14] = *(&v932[14] + 8);
      v931[15] = *(&v932[15] + 8);
      v931[8] = *(&v932[8] + 8);
      v931[9] = *(&v932[9] + 8);
      v931[10] = *(&v932[10] + 8);
      v931[11] = *(&v932[11] + 8);
      v931[4] = *(&v932[4] + 8);
      v931[5] = *(&v932[5] + 8);
      v931[6] = *(&v932[6] + 8);
      v931[7] = *(&v932[7] + 8);
      v931[0] = *(v932 + 8);
      v931[1] = *(&v932[1] + 8);
      v931[2] = *(&v932[2] + 8);
      v931[3] = *(&v932[3] + 8);
      v92 = sub_10005DC58(&qword_10058C7F8, &unk_100482000);
      *(&v933[1] + 1) = v92;
      *&v933[2] = sub_1000B2394();
      v93 = swift_allocObject();
      *&v933[0] = v93;
      v93[2] = 0;
      v93[3] = v91;
      v93[4] = v931;
      v93[5] = &v931[16];
      v94 = sub_100029B34(v933, v92);
      v95 = v94[1];
      v936[0] = *v94;
      v936[1] = v95;
      Slice<>.withUnsafeBytes<A>(_:)();
      v96 = v934;
      v97 = v935;
      sub_100002A00(v933);
      static DNSRecords.createRecord(with:value:)(v96, v97, 0, 0xF000000000000000, v940);
      sub_1000124C8(v96, v97);
      sub_10005DC58(&unk_100595FD0, &qword_100486B50);
      if (swift_dynamicCast())
      {
        v596 = v931[0].i64[1];
        v595 = v931[0].i64[0];
        v597 = v931[1].i8[0];
      }

      else if (swift_dynamicCast())
      {
        v596 = v931[1].i64[1];
        v595 = v931[1].i64[0];
        v597 = v931[2].i8[0];
      }

      else
      {
        v601 = v654;
        if (swift_dynamicCast())
        {
          v602 = v653;
          sub_100038FEC(v601, v653, type metadata accessor for DNSRecords.SRV);
          v595 = *(v602 + 16);
          v596 = *(v602 + 24);
          v597 = *(v602 + 32);

          sub_10003B8D4(v602, type metadata accessor for DNSRecords.SRV);
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_100002A00(v940);
            goto LABEL_216;
          }

          v596 = v931[1].i64[1];
          v595 = v931[1].i64[0];
          v597 = v931[2].i8[0];
          v622 = v931[2].i64[1];
          v623 = v931[3].u64[0];

          sub_1000124C8(v622, v623);
        }
      }

      sub_100002A00(v940);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v624 = *(type metadata accessor for DriverEvent(0) - 8);
      v625 = (*(v624 + 80) + 32) & ~*(v624 + 80);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_100480F40;
      v626 = v144 + v625;
      v931[0].i64[0] = 0xD000000000000015;
      v931[0].i64[1] = 0x80000001004B8110;
      DNSRecords.Identifier.description.getter(v595, v596, v597);
      v628 = v627;
      v630 = v629;

      v631._countAndFlagsBits = v628;
      v631._object = v630;
      String.append(_:)(v631);

      v632._countAndFlagsBits = 0x2064656B61654C20;
      v632._object = 0xE90000000000005BLL;
      String.append(_:)(v632);
      LODWORD(v940[0]) = v932[0];
      v633._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v633);

      v634._countAndFlagsBits = 93;
      v634._object = 0xE100000000000000;
      String.append(_:)(v634);
      v635 = v931[0].i64[1];
      *v626 = v931[0].i64[0];
      *(v626 + 8) = v635;
      *(v626 + 16) = 0xD000000000000096;
      *(v626 + 24) = 0x80000001004B8130;
      *(v626 + 32) = 1;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
LABEL_78:
      swift_storeEnumTagMultiPayload();
      v255 = v56;
      v256 = v674;
LABEL_79:
      sub_1000124C8(v255, v256);
      return v144;
    case 0xB5uLL:
      type metadata accessor for apple80211_p2p_thread_coex_event(0);
      v344 = v343;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v344, v932);
      if (BYTE2(v932[0]))
      {
        goto LABEL_215;
      }

      v345 = v932[0];
      v346 = HIBYTE(LOWORD(v932[0]));
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v347 = *(type metadata accessor for DriverEvent(0) - 8);
      v348 = (*(v347 + 80) + 32) & ~*(v347 + 80);
      v218 = swift_allocObject();
      *(v218 + 16) = xmmword_100480F40;
      v349 = (v218 + v348);
      *v349 = v345;
      v349[1] = v346;
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_100:
      swift_storeEnumTagMultiPayload();
      goto LABEL_184;
    case 0xC4uLL:
      v665 = v42;
      v663 = v41;
      v56 = v673;
      v55 = v674;
      v501 = v35;
      sub_10000AB0C(v673, v674);
      v664 = &unk_1004B4EC0;
      Logger.init(subsystem:category:)();
      v502 = Logger.logObject.getter();
      v503 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v502, v503))
      {
        v504 = swift_slowAlloc();
        v505 = swift_slowAlloc();
        *&v932[0] = v505;
        *v504 = 136315138;
        *(v504 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v932);
        _os_log_impl(&_mh_execute_header, v502, v503, "nan_event: %s APPLE80211_M_NAN_PREFERRED_CHANNELS_CHANGED", v504, 0xCu);
        sub_100002A00(v505);
      }

      v83 = v668;
      (*(v667 + 8))(v501, v668);
      v79 = v669;
      type metadata accessor for apple80211_nan_preferred_channels_changed_event(0);
      sub_100112214(v56, v55, v506, v931);
      if (v931[1].i8[12])
      {
        goto LABEL_217;
      }

      v507 = v931[0].i8[8];
      v508 = HIDWORD(v931[0].i64[0]);
      v509 = v931[0].i64[0] >> 40;
      v510 = v931[1].i8[8];
      v511 = HIWORD(v931[0].i64[0]);
      v512 = v931[1].i8[0];
      v513 = HIBYTE(v931[0].i64[0]);
      *&v652 = v931[0].i64[1] >> 8;
      v653 = v931[0].i64[1] >> 16;
      v654 = (v931[0].i64[1] >> 24);
      v655 = HIDWORD(v931[0].i64[1]);
      v656 = v931[0].i64[1] >> 40;
      v657 = HIWORD(v931[0].i64[1]);
      v658 = HIBYTE(v931[0].i64[1]);
      v659 = v931[1].i64[0] >> 8;
      v660 = v931[1].i64[0] >> 16;
      v661 = v931[1].i64[0] >> 24;
      v662 = HIDWORD(v931[1].i64[0]);
      v666 = v931[1].i64[0] >> 40;
      *&v669 = HIWORD(v931[1].i64[0]);
      *&v670 = HIBYTE(v931[1].i64[0]);
      v514 = v931[1].i32[2] >> 8;
      v672.i32[0] = HIWORD(v931[1].i32[2]);
      LODWORD(v671) = HIBYTE(v931[1].i32[2]);
      sub_10005DC58(&qword_10058C810, &qword_100482010);
      v515 = swift_allocObject();
      v515[32] = v508;
      v515[33] = v509;
      v515[34] = v511;
      v515[35] = v513;
      v515[36] = v507;
      v515[37] = v652;
      v516 = v654;
      v515[38] = v653;
      v515[39] = v516;
      v517 = v656;
      v515[40] = v655;
      v515[41] = v517;
      v518 = v658;
      v515[42] = v657;
      v515[43] = v518;
      v515[44] = v512;
      v515[45] = v659;
      v515[46] = v660;
      v515[47] = v661;
      v515[48] = v662;
      v515[49] = v666;
      v515[50] = v669;
      v515[51] = v670;
      v515[52] = v510;
      v515[53] = v514;
      v515[54] = v672.i8[0];
      v515[55] = v671;
      v519 = swift_allocObject();
      v520 = 0;
      v672.i64[0] = v519;
      v521 = _swiftEmptyArrayStorage;
      *(v519 + 16) = _swiftEmptyArrayStorage;
      *&v671 = v519 + 16;
      v522 = (v667 + 8);
      do
      {
        v524 = v515[v520 + 32];
        if (v515[v520 + 32])
        {
          v525 = v515[v520 + 34];
          if (v525 >= 3)
          {
            Logger.init(subsystem:category:)();
            v526 = Logger.logObject.getter();
            v527 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v526, v527))
            {
              v528 = swift_slowAlloc();
              *v528 = 0;
              _os_log_impl(&_mh_execute_header, v526, v527, "Invalid channel_band in preferred channel list", v528, 2u);
            }

            (*v522)(v665, v668);
            LOBYTE(v525) = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v521 = sub_100011C2C(0, *(v521 + 2) + 1, 1, v521);
          }

          v530 = *(v521 + 2);
          v529 = *(v521 + 3);
          if (v530 >= v529 >> 1)
          {
            v521 = sub_100011C2C((v529 > 1), v530 + 1, 1, v521);
          }

          *(v521 + 2) = v530 + 1;
          v523 = &v521[8 * v530];
          *(v523 + 8) = v524;
          v523[36] = v525;
          v523[37] = 3;
        }

        v520 += 3;
      }

      while (v520 != 24);
      *(v672.i64[0] + 16) = v521;
      swift_setDeallocating();
      swift_deallocClassInstance();
      v555 = v663;
      Logger.init(subsystem:category:)();

      v556 = Logger.logObject.getter();
      v557 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v556, v557))
      {
        v558 = swift_slowAlloc();
        *&v670 = swift_slowAlloc();
        *&v932[0] = v670;
        *v558 = 136315138;
        swift_beginAccess();

        v559 = Array.description.getter();
        v561 = v560;

        v562 = sub_100002320(v559, v561, v932);

        *(v558 + 4) = v562;
        _os_log_impl(&_mh_execute_header, v556, v557, "Received preferred channels: %s", v558, 0xCu);
        sub_100002A00(v670);
      }

      (*v522)(v555, v668);
      v564 = v673;
      v563 = v674;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v587 = *(type metadata accessor for DriverEvent(0) - 8);
      v588 = (*(v587 + 80) + 32) & ~*(v587 + 80);
      v589 = swift_allocObject();
      *(v589 + 16) = xmmword_100480F40;
      swift_beginAccess();
      *&v932[0] = *(v672.i64[0] + 16);
      sub_1000B247C(v932);
      memcpy((v589 + v588), v932, 0x16AuLL);
      swift_storeEnumTagMultiPayload();

      sub_1000124C8(v564, v563);
      return v589;
    case 0xC7uLL:
      type metadata accessor for apple80211_awdl_stats_p2p_failure(0);
      v372 = v371;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v372, v932);
      if (BYTE8(v932[2]))
      {
        goto LABEL_215;
      }

      v931[0] = v932[0];
      v931[1] = v932[1];
      v931[2].i64[0] = *&v932[2];
      v373 = sub_100119A30(v931);
      v79 = v669;
      if (!v373)
      {
        v83 = v668;
        goto LABEL_217;
      }

      v375 = v373;
      v376 = v374;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v377 = *(type metadata accessor for DriverEvent(0) - 8);
      v378 = (*(v377 + 80) + 32) & ~*(v377 + 80);
      v218 = swift_allocObject();
      *(v218 + 16) = xmmword_100480F40;
      v379 = v218 + v378;
      *v379 = v375;
      *(v379 + 8) = v376;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
LABEL_184:
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v56, v55);
      return v218;
    case 0xD6uLL:
      type metadata accessor for ether_addr(0);
      v67 = v66;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v67, v932);
      if (BYTE6(v932[0]))
      {
        goto LABEL_215;
      }

      v68 = LODWORD(v932[0]) | (WORD2(v932[0]) << 32);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v69 = *(type metadata accessor for DriverEvent(0) - 8);
      v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_100480F40;
      v72 = v71 + v70;
      *v72 = v68;
      *(v72 + 24) = 0u;
      *(v72 + 8) = 0u;
      *(v72 + 40) = 0;
      v73 = 9;
LABEL_161:
      *(v72 + 41) = v73;
      goto LABEL_190;
    case 0xE0uLL:
      type metadata accessor for apple80211_channel_band(0);
      v540 = v539;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v540, v932);
      if (BYTE4(v932[0]))
      {
        goto LABEL_215;
      }

      if (LODWORD(v932[0]) >= 4)
      {
        v541 = 1;
      }

      else
      {
        v541 = 0x2010001u >> (8 * LOBYTE(v932[0]));
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v542 = *(type metadata accessor for DriverEvent(0) - 8);
      v543 = (*(v542 + 80) + 32) & ~*(v542 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_100480F40;
      LOBYTE(v932[0]) = v541;
      sub_1000B2470(v932);
      memcpy((v71 + v543), v932, 0x16AuLL);
LABEL_190:
      swift_storeEnumTagMultiPayload();
      v280 = v56;
      v281 = v55;
      goto LABEL_225;
    case 0xE9uLL:
      type metadata accessor for apple80211_idle_detect(0);
      v473 = v472;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v473, v932);
      if (BYTE8(v932[0]))
      {
        goto LABEL_215;
      }

      v474 = v932[0];
      v672.i64[0] = HIDWORD(*&v932[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v475 = *(type metadata accessor for DriverEvent(0) - 8);
      v476 = (*(v475 + 80) + 32) & ~*(v475 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      v477 = v60 + v476;
      *(v60 + v476) = v474;
      v478 = enum case for DispatchTimeInterval.milliseconds(_:);
      v479 = type metadata accessor for DispatchTimeInterval();
      v480 = v55;
      v481 = *(*(v479 - 8) + 104);
      v481(v477, v478, v479);
      v482 = *(type metadata accessor for AWDLIdleActivity(0) + 20);
      *(v477 + v482) = v672.i64[0];
      v481(v477 + v482, v478, v479);
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v64 = v56;
      v65 = v480;
      goto LABEL_158;
    case 0xF2uLL:
      type metadata accessor for apple80211_awdl_rtg_statistics(0);
      v383 = v382;
      v56 = v673;
      v55 = v674;
      sub_10000AB0C(v673, v674);
      sub_100112214(v56, v55, v383, v932);
      if (BYTE14(v932[3]) == 2)
      {
        goto LABEL_215;
      }

      v384 = v55;
      v385 = WORD6(v932[3]);
      v386 = DWORD2(v932[3]);
      v387 = BYTE14(v932[3]) & 1;
      v672.i32[0] = BYTE8(v932[4]) & 1;
      LODWORD(v671) = BYTE9(v932[4]) & 1;
      LODWORD(v670) = BYTE7(v932[4]) & 1;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v388 = *(type metadata accessor for DriverEvent(0) - 8);
      v389 = (*(v388 + 80) + 32) & ~*(v388 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      v390 = v60 + v389;
      v391 = v932[1];
      *v390 = v932[0];
      *(v390 + 16) = v391;
      *(v390 + 32) = v932[2];
      *(v390 + 48) = *&v932[3];
      *(v390 + 56) = v386;
      *(v390 + 60) = v385;
      *(v390 + 62) = v387;
      *v392.i8 = vand_s8(*(&v932[3] + 15), 0x101010101010101);
      v392.i64[1] = v392.i64[0];
      *(v390 + 63) = vqtbl1_s8(v392, 0x607050403020100);
      *(v390 + 71) = v672.i8[0];
      *(v390 + 72) = v671;
      *(v390 + 73) = v670;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v64 = v673;
      v65 = v384;
LABEL_158:
      sub_1000124C8(v64, v65);
      return v60;
    default:
      return result;
  }
}