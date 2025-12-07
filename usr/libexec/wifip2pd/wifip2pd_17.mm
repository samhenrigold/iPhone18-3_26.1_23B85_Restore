Swift::Int sub_1001514F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x1008040201uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100151588(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x1008040201uLL >> (8 * v2));
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.Version.platformType.getter(__int16 a1)
{
  if (HIBYTE(a1) <= 3u)
  {
    if (HIBYTE(a1) == 1)
    {
      return 0;
    }

    if (HIBYTE(a1) == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(HIBYTE(a1))
    {
      case 4u:
        return 2;
      case 8u:
        return 3;
      case 0x10u:
        return 4;
    }
  }

  return 5;
}

uint64_t sub_1001516C4()
{
  if (*v0)
  {
    return 0x726F6674616C705FLL;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_10015170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6674616C705FLL && a2 == 0xED0000657079546DLL)
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

uint64_t sub_1001517F0(uint64_t a1)
{
  v2 = sub_10003D0E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015182C(uint64_t a1)
{
  v2 = sub_10003D0E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.Version.encode(to:)(void *a1, __int16 a2)
{
  v3 = a2;
  v5 = sub_10005DC58(&qword_10058E3C0, &qword_1004894B0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_10003D0E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = v3;
  v10[14] = 0;
  sub_1001608B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void AWDLThreadCoexistenceEvent.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int AWDLThreadCoexistenceEvent.hashValue.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100151AB8@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_10003CF28(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100151B00()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100151B60()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100151BA0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100151BFC()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x6D6F6F6C62;
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

uint64_t sub_100151C54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100165124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100151C7C(uint64_t a1)
{
  v2 = sub_10016090C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151CB8(uint64_t a1)
{
  v2 = sub_10016090C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.PeerMACAddressListBloomFilter.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005DC58(&qword_10058E3D8, &qword_1004894B8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v11 - v8;
  sub_100029B34(a1, a1[3]);
  sub_10016090C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[1] = a3;
    v12 = 2;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_100165E30(&qword_10058E320, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

void AWDLActionFrame.PeerMACAddressListBloomFilter.hash(into:)(int a1, __int16 a2, uint64_t a3)
{
  v4 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  v5 = *(a3 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a3 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }
}

Swift::Int AWDLActionFrame.PeerMACAddressListBloomFilter.hashValue.getter(__int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
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

  return Hasher._finalize()();
}

uint64_t sub_100152024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015F770(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_100152094(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  Hasher.init(_seed:)();
  AWDLActionFrame.PeerMACAddressListBloomFilter.hash(into:)(v5, v3, v2);
  return Hasher._finalize()();
}

uint64_t NANElectionParameters.clusterID.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 4) = BYTE2(result);
  *(v1 + 5) = BYTE3(result);
  *(v1 + 6) = BYTE4(result);
  *(v1 + 7) = BYTE5(result);
  return result;
}

uint64_t AWDLActionFrame.NANSynchronization.clusterID.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 10) = BYTE2(result);
  *(v1 + 11) = BYTE3(result);
  *(v1 + 12) = BYTE4(result);
  *(v1 + 13) = BYTE5(result);
  return result;
}

unint64_t sub_1001521F4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000016;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000022;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    if (a1 == 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746E756F43706F68;
    v2 = 0x4972657473756C63;
    v3 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6F4E656372756F73;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100152350@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100165240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100152384(uint64_t a1)
{
  v2 = sub_10003D548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001523C0(uint64_t a1)
{
  v2 = sub_10003D548();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.NANSynchronization.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_10058E3E8, &qword_1004894C0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100029B34(a1, a1[3]);
  sub_10003D548();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LODWORD(v10) = *(v3 + 2);
    WORD2(v10) = *(v3 + 6);
    v11 = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LODWORD(v10) = *(v3 + 8);
    WORD2(v10) = *(v3 + 12);
    v11 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 16);
    v11 = 3;
    sub_100160960();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOWORD(v10) = *(v3 + 24);
    v11 = 4;
    sub_1001609B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LODWORD(v10) = *(v3 + 26);
    WORD2(v10) = *(v3 + 30);
    v11 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void AWDLActionFrame.NANSynchronization.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  v9 = *(v0 + 12);
  v10 = *(v0 + 13);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(*(v0 + 16));
  v11 = *(v0 + 25);
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(v11);
  v12 = *(v0 + 27);
  v13 = *(v0 + 28);
  v14 = *(v0 + 29);
  v15 = *(v0 + 30);
  v16 = *(v0 + 31);
  Hasher._combine(_:)(*(v0 + 26));
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 33));
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(*(v0 + 36));
}

Swift::Int AWDLActionFrame.NANSynchronization.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  v9 = *(v0 + 12);
  v10 = *(v0 + 13);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(*(v0 + 16));
  v11 = *(v0 + 25);
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(v11);
  v12 = *(v0 + 27);
  v13 = *(v0 + 28);
  v14 = *(v0 + 29);
  v15 = *(v0 + 30);
  v16 = *(v0 + 31);
  Hasher._combine(_:)(*(v0 + 26));
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 33));
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(*(v0 + 36));
  return Hasher._finalize()();
}

double AWDLActionFrame.NANSynchronization.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003D138(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_100152AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P15AWDLActionFrameV18NANSynchronizationV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t AWDLActionFrame.ElectionParameter.selfMetric.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.ElectionParameter.init(rootNode:parentNode:rootLoopFreeCounter:hopCount:rootMetric:selfMetric:electionID:electionFlags:selfLoopFreeCounter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10)
{
  *a9 = result;
  *(a9 + 2) = BYTE2(result);
  *(a9 + 3) = BYTE3(result);
  *(a9 + 4) = BYTE4(result);
  *(a9 + 5) = BYTE5(result);
  *(a9 + 6) = a2;
  *(a9 + 8) = BYTE2(a2);
  *(a9 + 9) = BYTE3(a2);
  *(a9 + 10) = BYTE4(a2);
  *(a9 + 11) = BYTE5(a2);
  *(a9 + 12) = a3;
  *(a9 + 16) = a4;
  *(a9 + 20) = a5;
  *(a9 + 24) = BYTE4(a5) & 1;
  *(a9 + 28) = a6;
  *(a9 + 32) = BYTE4(a6) & 1;
  *(a9 + 36) = a7;
  *(a9 + 40) = a8;
  *(a9 + 44) = a10;
  return result;
}

unint64_t sub_100152CA8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65646F4E746F6F72;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x746E756F43706F68;
    }

    if (a1)
    {
      v5 = 0x6F4E746E65726170;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6F697463656C65;
    v2 = 0x6E6F697463656C65;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7274654D746F6F72;
    if (a1 != 4)
    {
      v3 = 0x7274654D666C6573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100152DF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10016557C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100152E28(uint64_t a1)
{
  v2 = sub_10003A618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100152E64(uint64_t a1)
{
  v2 = sub_10003A618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ElectionParameter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_10058E408, &qword_1004894C8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100029B34(a1, a1[3]);
  sub_10003A618();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 2);
  HIBYTE(v10) = 0;
  sub_10008A490();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 6);
    v12 = *(v3 + 5);
    HIBYTE(v10) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[5];
    LOBYTE(v12) = *(v3 + 24);
    HIBYTE(v10) = 4;
    sub_100160538();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[7];
    LOBYTE(v12) = *(v3 + 32);
    HIBYTE(v10) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void AWDLActionFrame.ElectionParameter.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 16));
  v11 = *(v0 + 20);
  if (*(v0 + 24))
  {
    v11 = dword_10048DB84[v11];
  }

  Hasher._combine(_:)(v11);
  v12 = *(v0 + 28);
  if (*(v0 + 32))
  {
    v12 = dword_10048DB84[v12];
  }

  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(*(v0 + 36));
  Hasher._combine(_:)(*(v0 + 40));
  Hasher._combine(_:)(*(v0 + 44));
}

Swift::Int AWDLActionFrame.ElectionParameter.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLActionFrame.ElectionParameter.hash(into:)();
  return Hasher._finalize()();
}

double AWDLActionFrame.ElectionParameter.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10003A254(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_100153380(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

BOOL sub_1001533C4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7CoreP2P15AWDLActionFrameV17ElectionParameterV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

uint64_t sub_100153410@<X0>(Swift::UInt8 *a1@<X0>, CoreP2P::AWDLActionFrame::MultiPeerBSSSteering::SteeringMessageID_optional *a2@<X8>)
{
  result = _s7CoreP2P15AWDLActionFrameV20MultiPeerBSSSteeringV17SteeringMessageIDO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_100153508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
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

uint64_t sub_100153598(uint64_t a1)
{
  v2 = sub_100160A08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001535D4(uint64_t a1)
{
  v2 = sub_100160A08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.MultiPeerBSSSteering.encode(to:)(void *a1, char a2)
{
  v4 = sub_10005DC58(&qword_10058E418, &qword_1004894D0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  sub_100029B34(a1, a1[3]);
  sub_100160A08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_100160A5C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_100153770@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015F990(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001537B8()
{
  if (*v0)
  {
    return 0x44496E656B6F74;
  }

  else
  {
    return 0x7367616C66;
  }
}

uint64_t sub_1001537F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496E656B6F74 && a2 == 0xE700000000000000)
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

uint64_t sub_1001538C8(uint64_t a1)
{
  v2 = sub_100160AB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100153904(uint64_t a1)
{
  v2 = sub_100160AB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.Ranging.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_10005DC58(&qword_10058E430, &qword_1004894D8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_100160AB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[9] = BYTE1(a2);
    v10[10] = BYTE2(a2);
    v10[11] = BYTE3(a2);
    v10[12] = BYTE4(a2);
    v10[13] = BYTE5(a2);
    v10[14] = BYTE6(a2);
    v10[8] = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100153B00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015FB00(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
  }

  return result;
}

uint64_t AWDLActionFrame.RealtimeGroup.infrastructureChannel.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = WORD2(result);
  return result;
}

uint64_t AWDLActionFrame.RealtimeGroup.customRealtimeGroupInfraChannel.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = WORD2(result);
  return result;
}

void *AWDLActionFrame.RealtimeGroup.activeServiceIdentifiers.getter()
{
  v6 = &_swiftEmptySetSingleton;
  v1 = *v0;
  if ((*v0 & 4) != 0)
  {
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceSidecar);
  }

  if ((v1 & 2) != 0)
  {
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceUniversalControl);
  }

  if ((v1 & 9) != 0)
  {
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceAirPlay);
  }

  if ((v1 & 0x10) != 0)
  {
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceMPRemoteCamera);

    v2 = v0[24];
    if ((v2 & 4) == 0)
    {
LABEL_9:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v2 = v0[24];
    if ((v2 & 4) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_100159C80(&v5, AWDLTrafficRegistrationServiceEdgeKit);

  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  sub_100159C80(&v5, AWDLTrafficRegistrationServiceRemoteCamera);

  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  sub_100159C80(&v5, AWDLTrafficRegistrationServiceTVRemoteCamera);

  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    v3 = v0[34];
    if ((v3 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceSpatialStreaming);

    if ((v3 & 4) == 0)
    {
      return v6;
    }

    goto LABEL_14;
  }

LABEL_20:
  sub_100159C80(&v5, AWDLTrafficRegistrationServiceRemoteScreen);

  v3 = v0[34];
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_13:
  if ((v3 & 4) != 0)
  {
LABEL_14:
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceMacVirtualDisplay);
  }

  return v6;
}

void AWDLActionFrame.RealtimeGroup.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 8) | (*(v0 + 12) << 32);
  if ((v6 & 0xFF00000000) == 0x300000000)
  {
    v7 = 0;
LABEL_3:
    Hasher._combine(_:)(v7);
    goto LABEL_4;
  }

  v10 = v6 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(0x801004u >> ((v6 >> 29) & 0xF8));
  if ((v6 >> 40) <= 3)
  {
    if (v10 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_30;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v10)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_30:
        Hasher._combine(_:)(2uLL);
        v7 = BYTE5(v6) & 1;
        goto LABEL_3;
    }
  }

LABEL_4:
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  v8 = *(v0 + 28) | (*(v0 + 32) << 32);
  if ((v8 & 0xFF00000000) == 0x300000000)
  {
    v9 = 0;
  }

  else
  {
    v11 = v8 >> 40;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v8);
    Hasher._combine(_:)(0x801004u >> ((v8 >> 29) & 0xF8));
    if ((v8 >> 40) <= 3)
    {
      if (v11 == 2)
      {
        Hasher._combine(_:)(0);
        goto LABEL_7;
      }

      if (v11 == 3)
      {
        Hasher._combine(_:)(1uLL);
        goto LABEL_7;
      }
    }

    else
    {
      switch(v11)
      {
        case 4:
          Hasher._combine(_:)(3uLL);
          goto LABEL_7;
        case 5:
          Hasher._combine(_:)(4uLL);
          goto LABEL_7;
        case 6:
          Hasher._combine(_:)(5uLL);
          goto LABEL_7;
      }
    }

    Hasher._combine(_:)(2uLL);
    v9 = BYTE5(v8) & 1;
  }

  Hasher._combine(_:)(v9);
LABEL_7:
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(*(v0 + 35));
  Hasher._combine(_:)(*(v0 + 36));
  Hasher._combine(_:)(*(v0 + 37));
  Hasher._combine(_:)(*(v0 + 38));
  Hasher._combine(_:)(*(v0 + 39));
}

Swift::Int AWDLActionFrame.RealtimeGroup.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLActionFrame.RealtimeGroup.hash(into:)();
  return Hasher._finalize()();
}

double sub_1001543D4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = AWDLActionFrame.RealtimeGroup.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double AWDLActionFrame.RealtimeGroup.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001600CC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t AWDLActionFrame.RealtimeGroup.encode(to:)(void *a1)
{
  v3 = v1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  LOBYTE(v9) = *v1;
  sub_100031694(v7, v8);
  sub_100160B04();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v2)
  {
    return sub_100002A00(v7);
  }

  v9 = *(v1 + 1);
  v10 = *(v1 + 5);
  sub_100031694(v7, v8);
  sub_10008A490();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (*(v1 + 12) << 32 == 0x300000000)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v1 + 8);
  }

  if (v5 > 0xFF)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100031694(v7, v8);
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v6 = *(v3 + 16);
  if (v6 < -128)
  {
    goto LABEL_21;
  }

  if (v6 <= 127)
  {
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    LOBYTE(v9) = *(v3 + 24);
    sub_100031694(v7, v8);
    sub_100160B58();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    LOBYTE(v9) = *(v3 + 34);
    sub_100031694(v7, v8);
    sub_100160BAC();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    return sub_100002A00(v7);
  }

LABEL_22:
  __break(1u);
  return result;
}

Swift::Int sub_10015482C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

BOOL sub_100154870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P15AWDLActionFrameV13RealtimeGroupV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t sub_1001548BC(uint64_t a1)
{
  v2 = sub_100160C00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001548F8(uint64_t a1)
{
  v2 = sub_100160C00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ExtendedChannelSequence.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_10058E458, &qword_1004894E0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100029B34(a1, a1[3]);
  sub_100160C00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

void AWDLActionFrame.PreferredChannels.PreferredChannel.hash(into:)(int a1, unint64_t a2)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(0x801004u >> ((a2 >> 29) & 0xF8));
  if (BYTE5(a2) <= 3u)
  {
    if (BYTE5(a2) == 2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a2) == 3)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(BYTE5(a2) & 1);
    goto LABEL_13;
  }

  if (BYTE5(a2) == 4)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (BYTE5(a2) == 5)
  {
    v3 = 4;
    goto LABEL_12;
  }

  if (BYTE5(a2) != 6)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  Hasher._combine(_:)(v3);
LABEL_13:
  Hasher._combine(_:)(BYTE6(a2));
}

Swift::Int AWDLActionFrame.PreferredChannels.PreferredChannel.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.PreferredChannel.hash(into:)(v3, a1 & 0xFFFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_100154BF4()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.PreferredChannel.hash(into:)(v6, v1 | (v2 << 32) | (v3 << 40) | (v4 << 48));
  return Hasher._finalize()();
}

Swift::Int sub_100154C78(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.PreferredChannel.hash(into:)(v7, v2 | (v3 << 32) | (v4 << 40) | (v5 << 48));
  return Hasher._finalize()();
}

void AWDLActionFrame.PreferredChannels.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(0x801004u >> ((a2 >> 29) & 0xF8));
  if (BYTE5(a2) <= 3u)
  {
    if (BYTE5(a2) == 2)
    {
      v6 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a2) == 3)
    {
      v6 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(BYTE5(a2))
    {
      case 4u:
        v6 = 3;
        goto LABEL_12;
      case 5u:
        v6 = 4;
        goto LABEL_12;
      case 6u:
        v6 = 5;
LABEL_12:
        Hasher._combine(_:)(v6);
        goto LABEL_13;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(BYTE5(a2) & 1);
LABEL_13:

  sub_1000DF7BC(a1, a3);
}

Swift::Int AWDLActionFrame.PreferredChannels.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.hash(into:)(v5, a1 & 0xFFFFFFFFFFFFLL, a2);
  return Hasher._finalize()();
}

unint64_t sub_100154E48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003DB6C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t AWDLActionFrame.PreferredChannels.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v13, v14);
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v3)
  {
    return sub_100002A00(v13);
  }

  if ((a2 & 0xFFFFFF00) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    Channel.operatingClass.getter(a2 & 0xFFFF000000FFLL);
    sub_100031694(v13, v14);
    result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v7 = *(a3 + 16);
    if (v7 <= 0xFF)
    {
      sub_100031694(v13, v14);
      result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v8 = (a3 + 38);
      v9 = v7 + 1;
      while (--v9)
      {
        v10 = *(v8 - 6);
        if (v10 > 0xFF)
        {
          goto LABEL_10;
        }

        v11 = *(v8 - 2);
        v12 = *(v8 - 1);
        v15 = *v8;
        sub_100031694(v13, v14);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        Channel.operatingClass.getter(v10 | (v11 << 32) | (v12 << 40));
        sub_100031694(v13, v14);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        v8 += 8;
        sub_100031694(v13, v14);
        result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      }

      return sub_100002A00(v13);
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100155128()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.hash(into:)(v6, v1 | (v2 << 32) | (v3 << 40), v4);
  return Hasher._finalize()();
}

Swift::Int sub_1001551B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = *(v1 + 1);
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.hash(into:)(v7, v2 | (v3 << 32) | (v4 << 40), v5);
  return Hasher._finalize()();
}

CoreP2P::AWDLActionFrame::ProMode::Command_optional __swiftcall AWDLActionFrame.ProMode.Command.init(rawValue:)(Swift::UInt8 rawValue)
{
  if ((rawValue & 0xFC) != 0)
  {
    return 3;
  }

  else
  {
    return (0x2010003u >> (8 * rawValue));
  }
}

unsigned __int8 *sub_10015527C@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 3)
  {
    v3 = 0x2010003u >> (8 * v2);
  }

  else
  {
    v3 = 3;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100155364()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001553DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100155518@<X0>(_DWORD *a2@<X8>)
{
  v3 = sub_100286BF0();

  *a2 = v3;
  return result;
}

uint64_t sub_100155560()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x737574617473;
  if (*v0 != 2)
  {
    v2 = 0x7367616C66;
  }

  if (*v0)
  {
    v1 = 0x646E616D6D6F63;
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

uint64_t sub_1001555D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100165890(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001555FC(uint64_t a1)
{
  v2 = sub_100160C54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100155638(uint64_t a1)
{
  v2 = sub_100160C54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ProMode.encode(to:)(void *a1, unint64_t a2, int a3)
{
  v5 = BYTE1(a2);
  v7 = sub_10005DC58(&qword_10058E468, &qword_1004894E8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12[-v9];
  sub_100029B34(a1, a1[3]);
  sub_100160C54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v16 = v5;
    v15 = 1;
    sub_100160CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = a3;
    v12[15] = 3;
    sub_100160CFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void AWDLActionFrame.ProMode.hash(into:)(int a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = a2 >> 8;
  v5 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4 + 1);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(a3);
}

Swift::Int AWDLActionFrame.ProMode.hashValue.getter(unint64_t a1, Swift::UInt32 a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4 + 1);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

unint64_t sub_100155994@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015FCD0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = HIDWORD(result);
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_1001559F4()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100155A78()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100155AD4(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  v5 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2 + 1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

BOOL sub_100155B54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
}

uint64_t sub_100155C40()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100155C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_100155D50(uint64_t a1)
{
  v2 = sub_100160D50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100155D8C(uint64_t a1)
{
  v2 = sub_100160D50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static AWDLActionFrame.AirDrop.__derived_struct_equals(_:_:)(__int16 a1, __int16 a2)
{
  if (a1 == a2)
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }

  else
  {
    return 0;
  }
}

uint64_t AWDLActionFrame.AirDrop.encode(to:)(void *a1, uint64_t a2)
{
  v3 = BYTE1(a2);
  v5 = sub_10005DC58(&qword_10058E488, &qword_1004894F0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_100160D50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = v3 & 1;
    v10[13] = 1;
    sub_100160DA4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void AWDLActionFrame.AirDrop.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2 & 1);
}

Swift::Int AWDLActionFrame.AirDrop.hashValue.getter(__int16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

uint64_t sub_100156008@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015FF04(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_10015603C(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return AWDLActionFrame.AirDrop.encode(to:)(a1, v2 | *v1);
}

Swift::Int sub_10015606C()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1001560CC()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10015610C(uint64_t a1)
{
  v2 = v1[1];
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001561CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10048DBA0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100156254(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10048DBA0[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1001562A0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15AWDLActionFrameV13AWDLAttributeO13AttributeTypeO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void AWDLActionFrame.AWDLAttribute.encode(to:)(void *a1)
{
  v96 = a1;
  v93 = sub_10005DC58(&qword_10058E458, &qword_1004894E0);
  v91 = *(v93 - 8);
  __chkstk_darwin();
  v87 = &v86 - v2;
  v94 = sub_10005DC58(&qword_10058E418, &qword_1004894D0);
  v92 = *(v94 - 8);
  __chkstk_darwin();
  v88 = &v86 - v3;
  v4 = sub_10005DC58(&qword_10058E388, &qword_100489490);
  v89 = *(v4 - 8);
  v90 = v4;
  __chkstk_darwin();
  v86 = &v86 - v5;
  type metadata accessor for AWDLActionFrame.DataPathState(0);
  __chkstk_darwin();
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  __chkstk_darwin();
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  __chkstk_darwin();
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100033AA8(_swiftEmptyArrayStorage);
  v13 = type metadata accessor for BinaryEncoder();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100480A90;
  v95 = v14 + 16;
  v15 = v14;
  *(v14 + 32) = v12;
  v97 = v1;
  sub_10003B86C(v1, v11, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v114;
  v18 = v15;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_100039054(v11, v9, type metadata accessor for AWDLActionFrame.ServiceResponse);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.ServiceResponse.encode(to:)(v101);
      if (v17)
      {
        sub_10003B934(v9, type metadata accessor for AWDLActionFrame.ServiceResponse);
        goto LABEL_72;
      }

      v75 = type metadata accessor for AWDLActionFrame.ServiceResponse;
      v76 = v9;
      goto LABEL_56;
    case 2:
      v43 = *(v11 + 1);
      v104[0] = *v11;
      v104[1] = v43;
      v104[2] = *(v11 + 2);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.SynchronizationParameter.encode(to:)(v101);
      if (v17)
      {
        sub_100160E4C(v104);
        goto LABEL_72;
      }

      sub_100160E4C(v104);
      goto LABEL_57;
    case 3:
      v93 = *v11;
      v92 = *(v11 + 1);
      v91 = v11[4];
      v27 = v11[5];
      v28 = v11[6];
      v29 = v11[16];
      v30 = v11[24];
      v31 = v11[7];
      v94 = *(v11 + 1);
      v32 = *(v11 + 5);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      v100 = v29 & 1;
      LOBYTE(v98) = v30 & 1;
      v33 = v114;
      AWDLActionFrame.DeprecatedElectionParameter.encode(to:)(v101, v93 | (v92 << 16) | (v91 << 32) | (v27 << 40) | (v28 << 48) | (v31 << 56), v94, v29 & 1 | (v32 << 32), v30 & 1);
      v17 = v33;
      if (v33)
      {
        goto LABEL_72;
      }

      sub_100002A00(v101);
      v18 = v15;
      goto LABEL_58;
    case 4:
      v51 = *v11;
      v102 = &type metadata for BinaryEncoder.UnkeyedContainer;
      v103 = sub_1000D12E4();
      v101[0] = v15;

      sub_1001587A0(v101, 3u, v51);
      if (v17)
      {
        goto LABEL_44;
      }

      sub_100031694(v101, v102);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v101, v102);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      goto LABEL_57;
    case 5:
      v56 = *v11;
      v57 = *(v11 + 1);
      v58 = *(v11 + 2);
      LODWORD(v94) = *(v11 + 2);
      v40 = *(v11 + 2);
      v41 = *(v11 + 3);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;
      v59 = v56 | (v57 << 16);
      v18 = v15;
      v60 = v59 | (v58 << 32);

      v61 = v60;
      v42 = v17;
      AWDLActionFrame.ServiceParameter.encode(to:)(v101, v61, v94, v40, v41);
      goto LABEL_37;
    case 6:
      sub_100039054(v11, v7, type metadata accessor for AWDLActionFrame.DataPathState);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.DataPathState.encode(to:)(v101);
      if (v17)
      {
        sub_10003B934(v7, type metadata accessor for AWDLActionFrame.DataPathState);
        goto LABEL_72;
      }

      v75 = type metadata accessor for AWDLActionFrame.DataPathState;
      v76 = v7;
LABEL_56:
      sub_10003B934(v76, v75);
      goto LABEL_57;
    case 7:
      v67 = *(v11 + 1);
      v66 = *(v11 + 2);
      v68 = *v11;
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.Arpa.encode(to:)(v101, v68, v67, v66);
      if (v17)
      {
        goto LABEL_44;
      }

      goto LABEL_47;
    case 8:
      v35 = *v11;
      v101[0] = v15;
      swift_retain_n();
      sub_10005DC58(&qword_10058E4C8, &qword_100489508);
      sub_10000CADC(&qword_10058E4D0, &qword_10058E4C8, &qword_100489508, byte_10049852C);
      v36 = v86;
      KeyedEncodingContainer.init<A>(_:)();
      v101[0] = v35;
      sub_10005DC58(&qword_10058E398, &qword_100489498);
      sub_10004B1E4(&qword_10058E3A0, sub_10008A490, &protocol conformance descriptor for <A> [A]);
      v37 = v90;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v17)
      {
        (*(v89 + 8))(v36, v37);

        return;
      }

      (*(v89 + 8))(v36, v37);

      goto LABEL_58;
    case 9:
      v65 = *v11;
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.Version.encode(to:)(v101, v65);
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 10:
      v25 = *(v11 + 1);
      v26 = *v11;
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.PeerMACAddressListBloomFilter.encode(to:)(v101, v26, v25);
      if (!v17)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    case 11:
      v34 = *(v11 + 1);
      v106[2] = *v11;
      v106[3] = v34;
      v107 = *(v11 + 4);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.NANSynchronization.encode(to:)(v101);
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 12:
      v55 = *(v11 + 1);
      v108 = *v11;
      v109 = v55;
      v110 = *(v11 + 2);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.ElectionParameter.encode(to:)(v101);
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 13:
      v24 = *(v11 + 1);
      v105[0] = *v11;
      v105[1] = v24;
      v106[0] = *(v11 + 2);
      *(v106 + 9) = *(v11 + 41);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      IEEE80211InformationElement.encode(to:)(v101);
      if (v17)
      {
        sub_1000C2E24(v105);
        goto LABEL_72;
      }

      sub_1000C2E24(v105);
      goto LABEL_57;
    case 14:
      v38 = *v11;
      v39 = v11[4];
      v40 = *(v11 + 1);
      v41 = *(v11 + 2);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v18;

      v42 = v17;
      IEEE80211InformationElement.HighThroughputCapability.encode(to:)(v101, v38 | (v39 << 32), v40, v41);
LABEL_37:
      v17 = v42;
      v62 = v40;
      v63 = v41;
      if (v42)
      {
        goto LABEL_71;
      }

      sub_1000124C8(v40, v41);
      goto LABEL_57;
    case 15:
      v21 = *v11;
      v101[0] = v15;

      sub_10005DC58(&qword_10058E4B8, &qword_100489500);
      sub_10000CADC(&qword_10058E4C0, &qword_10058E4B8, &qword_100489500, byte_10049852C);
      v22 = v88;
      KeyedEncodingContainer.init<A>(_:)();
      LOBYTE(v101[0]) = v21;
      sub_100160A5C();
      v23 = v94;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v17)
      {

        (*(v92 + 8))(v22, v23);
        return;
      }

      (*(v92 + 8))(v22, v23);
      goto LABEL_58;
    case 16:
      v44 = v11[2];
      v45 = *(v11 + 3);
      v46 = *v11;
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.Ranging.encode(to:)(v101, v46 | (v44 << 16) | (v45 << 24));
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 17:
      v64 = *(v11 + 1);
      v111 = *v11;
      v112 = v64;
      v113 = *(v11 + 4);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.RealtimeGroup.encode(to:)(v101);
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 18:
      v70 = *v11;
      v71 = v11[4];
      v72 = v11[5];
      v73 = *(v11 + 1);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;
      v74 = v70 | (v71 << 32) | (v72 << 40);
      v18 = v15;

      AWDLActionFrame.PreferredChannels.encode(to:)(v101, v74, v73);
      if (!v17)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    case 19:
      v47 = *v11;
      v50 = v11 + 4;
      v49 = *(v11 + 1);
      v48 = *(v50 + 1);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.ProMode.encode(to:)(v101, v47 | (v49 << 32), v48);
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 20:
      v52 = *v11;
      v53 = v11[1];
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;
      if (v53)
      {
        v54 = 256;
      }

      else
      {
        v54 = 0;
      }

      AWDLActionFrame.AirDrop.encode(to:)(v101, v54 | v52);
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 21:
      goto LABEL_58;
    case 22:
      v101[0] = v15;

      sub_10005DC58(&qword_10058E4A8, &qword_1004894F8);
      sub_10000CADC(&qword_10058E4B0, &qword_10058E4A8, &qword_1004894F8, byte_10049852C);
      v69 = v87;
      KeyedEncodingContainer.init<A>(_:)();
      (*(v91 + 8))(v69, v93);
      goto LABEL_58;
    default:
      v19 = *v11;
      v20 = *(v11 + 1);
      v102 = v13;
      v103 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v101[0] = v15;

      AWDLActionFrame.ServiceRequest.encode(to:)(v101, v19, v20);
      if (v17)
      {
LABEL_44:

LABEL_73:
        sub_100002A00(v101);
        return;
      }

LABEL_47:

LABEL_57:
      sub_100002A00(v101);
LABEL_58:
      sub_100029B34(v96, v96[3]);
      dispatch thunk of Encoder.unkeyedContainer()();
      v100 = AWDLActionFrame.AWDLAttribute.attributeType.getter();
      sub_100031694(v101, v102);
      sub_100160DF8();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      if (v17)
      {
        goto LABEL_72;
      }

      swift_beginAccess();
      v77 = *(v18 + 16);
      v78 = *(v18 + 24) >> 62;
      if (v78 > 1)
      {
        if (v78 != 2)
        {
          goto LABEL_70;
        }

        v80 = v77 + 16;
        v77 = *(v77 + 16);
        v79 = *(v80 + 8);
        v81 = v79 - v77;
        if (!__OFSUB__(v79, v77))
        {
          goto LABEL_68;
        }

        __break(1u);
      }

      else if (!v78)
      {
LABEL_70:
        sub_100031694(v101, v102);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        v85 = *(v18 + 24);
        v98 = *(v18 + 16);
        v84 = v98;
        v99 = v85;
        sub_100031694(v101, v102);
        sub_10000AB0C(v84, v85);
        sub_1000B8088();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        v62 = v98;
        v63 = v99;
LABEL_71:
        sub_1000124C8(v62, v63);
LABEL_72:

        goto LABEL_73;
      }

      v82 = __OFSUB__(HIDWORD(v77), v77);
      v83 = HIDWORD(v77) - v77;
      if (v82)
      {
        goto LABEL_76;
      }

      v81 = v83;
LABEL_68:
      if ((v81 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v81 >> 16))
      {
        goto LABEL_70;
      }

      __break(1u);
LABEL_76:
      __break(1u);
      return;
  }
}

uint64_t AWDLActionFrame.AWDLAttribute.attributeType.getter()
{
  type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  __chkstk_darwin();
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B86C(v0, v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 2;
      break;
    case 2:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 10;
      break;
    case 5:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 5;
      break;
    case 6:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 7;
      break;
    case 7:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 8;
      break;
    case 8:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 11;
      break;
    case 9:
      result = 12;
      break;
    case 10:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 13;
      break;
    case 11:
      result = 14;
      break;
    case 12:
      result = 15;
      break;
    case 13:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 9;
      break;
    case 14:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 6;
      break;
    case 15:
      result = 16;
      break;
    case 16:
      result = 17;
      break;
    case 17:
      result = 18;
      break;
    case 18:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 20;
      break;
    case 19:
      result = 21;
      break;
    case 20:
      result = 22;
      break;
    case 21:
      return result;
    case 22:
      result = 19;
      break;
    default:
      sub_10003B934(v2, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 1;
      break;
  }

  return result;
}

void AWDLActionFrame.AWDLAttribute.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AWDLActionFrame.DataPathState(0);
  __chkstk_darwin();
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  __chkstk_darwin();
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  __chkstk_darwin();
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B86C(v2, v9, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100039054(v9, v7, type metadata accessor for AWDLActionFrame.ServiceResponse);
      Hasher._combine(_:)(2uLL);
      AWDLActionFrame.ServiceResponse.hash(into:)(a1);
      sub_10003B934(v7, type metadata accessor for AWDLActionFrame.ServiceResponse);
      return;
    case 2u:
      v49 = *(v9 + 1);
      v116 = *v9;
      v117 = v49;
      v118[0] = *(v9 + 2);
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v116);
      Hasher._combine(_:)(WORD1(v116));
      Hasher._combine(_:)(BYTE4(v116));
      Hasher._combine(_:)(BYTE5(v116));
      Hasher._combine(_:)(WORD3(v116));
      Hasher._combine(_:)(WORD4(v116));
      Hasher._combine(_:)(WORD5(v116));
      Hasher._combine(_:)(WORD6(v116));
      Hasher._combine(_:)(HIWORD(v116));
      Hasher._combine(_:)(v117);
      Hasher._combine(_:)(BYTE2(v117));
      Hasher._combine(_:)(BYTE3(v117));
      Hasher._combine(_:)(BYTE4(v117));
      Hasher._combine(_:)(BYTE5(v117));
      v50 = BYTE7(v117);
      v51 = BYTE8(v117);
      v52 = BYTE9(v117);
      v53 = BYTE10(v117);
      v54 = BYTE11(v117);
      Hasher._combine(_:)(BYTE6(v117));
      Hasher._combine(_:)(v50);
      Hasher._combine(_:)(v51);
      Hasher._combine(_:)(v52);
      Hasher._combine(_:)(v53);
      Hasher._combine(_:)(v54);
      Hasher._combine(_:)(BYTE12(v117));
      Hasher._combine(_:)(BYTE13(v117));
      Hasher._combine(_:)(HIWORD(v117));
      Hasher._combine(_:)(v118[0]);
      ChannelSequence.hash(into:)(a1, *(&v118[0] + 1));
      sub_100160E4C(&v116);
      return;
    case 3u:
      v113 = *v9;
      v56 = *(v9 + 1);
      v57 = v9[4];
      v58 = v9[5];
      v59 = v9[6];
      v60 = v9[16];
      v61 = v9[24];
      v62 = v9[7];
      v114 = *(v9 + 1);
      v63 = *(v9 + 5);
      Hasher._combine(_:)(4uLL);
      LOBYTE(v116) = v60 & 1;
      v115 = v61 & 1;
      AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(a1, v113 | (v56 << 16) | (v57 << 32) | (v58 << 40) | (v59 << 48) | (v62 << 56), v114, v60 & 1 | (v63 << 32), v61 & 1);
      return;
    case 4u:
      v45 = *v9;
      Hasher._combine(_:)(5uLL);
      ChannelSequence.hash(into:)(a1, v45);
      goto LABEL_33;
    case 5u:
      v67 = *(v9 + 2);
      v68 = *(v9 + 2);
      v69 = *(v9 + 3);
      v70 = *v9;
      v71 = *(v9 + 1);
      v72 = *(v9 + 2);
      Hasher._combine(_:)(6uLL);
      Hasher._combine(_:)(v70);
      Hasher._combine(_:)(v71);
      Hasher._combine(_:)(v72);
      Hasher._combine(_:)(v67);
      Data.hash(into:)();
      sub_1000124C8(v68, v69);
      return;
    case 6u:
      sub_100039054(v9, v5, type metadata accessor for AWDLActionFrame.DataPathState);
      Hasher._combine(_:)(7uLL);
      AWDLActionFrame.DataPathState.hash(into:)(a1);
      sub_10003B934(v5, type metadata accessor for AWDLActionFrame.DataPathState);
      return;
    case 7u:
      v64 = *v9;
      Hasher._combine(_:)(8uLL);
      Hasher._combine(_:)(v64);
      String.hash(into:)();

      return;
    case 8u:
      v84 = *v9;
      Hasher._combine(_:)(9uLL);
      Hasher._combine(_:)(*(v84 + 16));
      v85 = *(v84 + 16);
      if (v85)
      {
        v86 = (v84 + 37);
        do
        {
          v87 = *(v86 - 5);
          v88 = *(v86 - 4);
          v89 = *(v86 - 3);
          v90 = *(v86 - 2);
          v91 = *(v86 - 1);
          v92 = *v86;
          v86 += 6;
          Hasher._combine(_:)(v87);
          Hasher._combine(_:)(v88);
          Hasher._combine(_:)(v89);
          Hasher._combine(_:)(v90);
          Hasher._combine(_:)(v91);
          Hasher._combine(_:)(v92);
          --v85;
        }

        while (v85);
      }

      goto LABEL_33;
    case 9u:
      v47 = *v9;
      v48 = v9[1];
      Hasher._combine(_:)(0xAuLL);
      Hasher._combine(_:)(v47);
      v22 = v48;
      goto LABEL_20;
    case 0xAu:
      v79 = *(v9 + 1);
      v80 = *v9;
      v81 = v9[1];
      Hasher._combine(_:)(0xBuLL);
      Hasher._combine(_:)(v80);
      Hasher._combine(_:)(v81);
      Hasher._combine(_:)(*(v79 + 16));
      v82 = *(v79 + 16);
      if (v82)
      {
        v83 = 32;
        do
        {
          Hasher._combine(_:)(*(v79 + v83++));
          --v82;
        }

        while (v82);
      }

      goto LABEL_33;
    case 0xBu:
      v105 = *(v9 + 2);
      LODWORD(v114) = *(v9 + 9);
      v28 = *v9;
      v29 = v9[2];
      v30 = v9[3];
      v31 = v9[4];
      v32 = v9[5];
      v33 = v9[6];
      v34 = v9[7];
      v35 = v9[8];
      v36 = v9[10];
      v97 = v9[9];
      v98 = v36;
      v37 = v9[12];
      v99 = v9[11];
      v100 = v37;
      v38 = v9[24];
      v101 = v9[13];
      v102 = v38;
      v39 = v9[26];
      v103 = v9[25];
      v104 = v39;
      v40 = v9[28];
      v106 = v9[27];
      v107 = v40;
      v41 = v9[30];
      v108 = v9[29];
      v109 = v41;
      v42 = v9[32];
      v110 = v9[31];
      v111 = v42;
      v43 = *(v9 + 17);
      v112 = v9[33];
      LODWORD(v113) = v43;
      Hasher._combine(_:)(0xCuLL);
      Hasher._combine(_:)(v28);
      Hasher._combine(_:)(v29);
      Hasher._combine(_:)(v30);
      Hasher._combine(_:)(v31);
      Hasher._combine(_:)(v32);
      Hasher._combine(_:)(v33);
      Hasher._combine(_:)(v34);
      Hasher._combine(_:)(v35);
      Hasher._combine(_:)(v97);
      Hasher._combine(_:)(v98);
      Hasher._combine(_:)(v99);
      Hasher._combine(_:)(v100);
      Hasher._combine(_:)(v101);
      Hasher._combine(_:)(v105);
      Hasher._combine(_:)(v102);
      Hasher._combine(_:)(v103);
      Hasher._combine(_:)(v104);
      Hasher._combine(_:)(v106);
      Hasher._combine(_:)(v107);
      Hasher._combine(_:)(v108);
      Hasher._combine(_:)(v109);
      Hasher._combine(_:)(v110);
      Hasher._combine(_:)(v111);
      Hasher._combine(_:)(v112);
      Hasher._combine(_:)(v113);
      v44 = v114;
      goto LABEL_37;
    case 0xCu:
      v46 = *(v9 + 1);
      v116 = *v9;
      v117 = v46;
      v118[0] = *(v9 + 2);
      Hasher._combine(_:)(0xDuLL);
      AWDLActionFrame.ElectionParameter.hash(into:)();
      return;
    case 0xDu:
      v74 = *(v9 + 1);
      v116 = *v9;
      v117 = v74;
      v118[0] = *(v9 + 2);
      *(v118 + 9) = *(v9 + 41);
      Hasher._combine(_:)(0xEuLL);
      IEEE80211InformationElement.hash(into:)(a1);
      sub_1000C2E24(&v116);
      return;
    case 0xEu:
      v23 = *(v9 + 1);
      v24 = *(v9 + 2);
      v25 = *v9;
      v26 = *(v9 + 1);
      v27 = v9[4];
      Hasher._combine(_:)(0xFuLL);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      Hasher._combine(_:)(v27);
      Data.hash(into:)();
      sub_1000124C8(v23, v24);
      return;
    case 0xFu:
      v55 = *v9;
      Hasher._combine(_:)(0x10uLL);
      goto LABEL_19;
    case 0x10u:
      v15 = *v9;
      v16 = v9[1];
      v17 = v9[2];
      v18 = v9[3];
      v19 = v9[4];
      v20 = v9[5];
      v21 = v9[6];
      Hasher._combine(_:)(0x11uLL);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20);
      v22 = v21;
      goto LABEL_20;
    case 0x11u:
      v65 = *(v9 + 1);
      v116 = *v9;
      v117 = v65;
      *&v118[0] = *(v9 + 4);
      Hasher._combine(_:)(0x12uLL);
      AWDLActionFrame.RealtimeGroup.hash(into:)();
      return;
    case 0x12u:
      v75 = *v9;
      v76 = v9[4];
      v77 = v9[5];
      v78 = *(v9 + 1);
      Hasher._combine(_:)(0x14uLL);
      AWDLActionFrame.PreferredChannels.hash(into:)(a1, v75 | (v76 << 32) | (v77 << 40), v78);
      goto LABEL_33;
    case 0x13u:
      v93 = v9[1];
      v94 = *(v9 + 1);
      v95 = *(v9 + 2);
      v96 = *v9;
      Hasher._combine(_:)(0x15uLL);
      Hasher._combine(_:)(v96);
      Hasher._combine(_:)(v93 + 1);
      Hasher._combine(_:)(v94);
      v44 = v95;
LABEL_37:
      Hasher._combine(_:)(v44);
      return;
    case 0x14u:
      v55 = v9[1];
      v66 = *v9;
      Hasher._combine(_:)(0x16uLL);
      Hasher._combine(_:)(v66);
LABEL_19:
      v22 = v55;
LABEL_20:
      Hasher._combine(_:)(v22);
      return;
    case 0x15u:
      v73 = 0;
      goto LABEL_35;
    case 0x16u:
      v73 = 19;
LABEL_35:
      Hasher._combine(_:)(v73);
      break;
    default:
      v10 = *(v9 + 1);
      v11 = *v9;
      v12 = *(v9 + 1);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(*(v10 + 16));
      v13 = *(v10 + 16);
      if (v13)
      {
        v14 = 32;
        do
        {
          Hasher._combine(_:)(*(v10 + v14++));
          --v13;
        }

        while (v13);
      }

LABEL_33:

      break;
  }
}

void AWDLActionFrame.hash(into:)(uint64_t a1, unint64_t a2, Swift::UInt32 a3, uint64_t a4)
{
  v6 = a2;
  v8 = a2 >> 16;
  v9 = HIDWORD(a2);
  Hasher._combine(_:)(8u);
  Hasher._combine(_:)(v6);
  if ((v6 & 0x100) != 0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(a3);
  v11 = *(a4 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = *(type metadata accessor for AWDLActionFrame.AWDLAttribute(0) - 8);
    v13 = a4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      AWDLActionFrame.AWDLAttribute.hash(into:)(a1);
      v13 += v14;
      --v11;
    }

    while (v11);
  }
}

Swift::Int AWDLActionFrame.hashValue.getter(uint64_t a1, Swift::UInt32 a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  AWDLActionFrame.hash(into:)(v7, a1 & 0xFFFFFFFF00FF01FFLL, a2, a3);
  return Hasher._finalize()();
}

uint64_t sub_100158398(void *a1)
{
  v2 = 256;
  if (!v1[1])
  {
    v2 = 0;
  }

  return AWDLActionFrame.encode(to:)(a1, v2 | *v1 | (v1[2] << 16) | (*(v1 + 1) << 32), *(v1 + 2), *(v1 + 2));
}

uint64_t AWDLActionFrame.encode(to:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v8, v9);
  sub_100160E7C();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    LOBYTE(v10) = v6;
    sub_100031694(v8, v9);
    sub_1001608B8();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    LOBYTE(v10) = HIBYTE(v6) & 1;
    sub_100031694(v8, v9);
    sub_100160ED0();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v10 = a4;
    sub_100031694(v8, v9);
    sub_10005DC58(&qword_10058E4E8, &qword_100489510);
    sub_100160F24();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v8);
}

Swift::Int sub_100158610()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 2);
  v7 = v0 + 4;
  v5 = *(v0 + 1);
  v6 = *(v7 + 1);
  Hasher.init(_seed:)();
  v8 = 256;
  if (!v2)
  {
    v8 = 0;
  }

  AWDLActionFrame.hash(into:)(v10, v8 | v1 | (v3 << 16) | (v5 << 32), v6, v4);
  return Hasher._finalize()();
}

void sub_100158694(uint64_t a1)
{
  v2 = 256;
  if (!v1[1])
  {
    v2 = 0;
  }

  AWDLActionFrame.hash(into:)(a1, v2 | *v1 | (v1[2] << 16) | (*(v1 + 1) << 32), *(v1 + 2), *(v1 + 2));
}

Swift::Int sub_1001586C4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 2);
  v8 = v1 + 4;
  v6 = *(v1 + 1);
  v7 = *(v8 + 1);
  Hasher.init(_seed:)();
  v9 = 256;
  if (!v3)
  {
    v9 = 0;
  }

  AWDLActionFrame.hash(into:)(v11, v9 | v2 | (v4 << 16) | (v6 << 32), v7, v5);
  return Hasher._finalize()();
}

uint64_t sub_100158744(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 2);
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 2);
  v6 = v4 | *a1 | (a1[2] << 16) | (*(a1 + 1) << 32);
  if (!a2[1])
  {
    v3 = 0;
  }

  return static AWDLActionFrame.__derived_struct_equals(_:_:)(v6, v5, v2, v3 | *a2 | (a2[2] << 16) | (*(a2 + 1) << 32), *(a2 + 2), *(a2 + 2));
}

uint64_t sub_1001587A0(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  if ((v4 - 1) > 0xFF)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = result;
  sub_100031694(result, *(result + 24));
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v3)
  {
    return result;
  }

  sub_100031694(v7, *(v7 + 24));
  sub_100165E9C();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_100031694(v7, *(v7 + 24));
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v7, *(v7 + 24));
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v7, *(v7 + 24));
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (a2 - 2 >= 2)
  {
    if (a2)
    {
      for (i = (a3 + 32); ; i += 2)
      {
        v13 = *i | (*(i + 2) << 32);
        if ((v13 & 0xFF00000000) == 0x300000000)
        {
          sub_100031694(v7, *(v7 + 24));
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          sub_100031694(v7, *(v7 + 24));
          result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        }

        else
        {
          v14 = sub_10015F33C(SBYTE4(v13), BYTE5(v13));
          sub_100031694(v7, *(v7 + 24));
          sub_100165EF0();
          dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
          result = sub_100038CD4(0, 2uLL, v14);
          if (result == 2 && v13 > 2)
          {
            LODWORD(v13) = v13 - 2;
          }

          else
          {
            result = sub_100038CD4(0, 2uLL, v14);
            if (v13 < 0xDE && result == 1)
            {
              LODWORD(v13) = v13 + 2;
            }
          }

          if (v13 > 0xFF)
          {
            goto LABEL_42;
          }

          sub_100031694(v7, *(v7 + 24));
          result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        }

        if (!--v4)
        {
          return result;
        }
      }
    }

    for (j = a3 + 32; ; j += 8)
    {
      v11 = *(j + 4) << 32 == 0x300000000 ? 0 : *j;
      if (v11 > 0xFF)
      {
        break;
      }

      sub_100031694(v7, *(v7 + 24));
      result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (!--v4)
      {
        return result;
      }
    }

    goto LABEL_40;
  }

  v8 = (a3 + 32);
  do
  {
    v9 = *v8 | (*(v8 + 2) << 32);
    if ((v9 & 0xFF00000000) == 0x300000000)
    {
      sub_100031694(v7, *(v7 + 24));
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v7, *(v7 + 24));
    }

    else
    {
      if ((*v8 & 0xFFFFFF00) != 0)
      {
        goto LABEL_41;
      }

      sub_100031694(v7, *(v7 + 24));
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      Channel.operatingClass.getter(v9);
      sub_100031694(v7, *(v7 + 24));
    }

    result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v8 += 2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t AWDLActionFrame.Header.channel.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result);
  *(v1 + 17) = BYTE5(result);
  return result;
}

Swift::Int sub_100158D3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100158D84(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.Header.dwellTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 32);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AWDLActionFrame.Header.dwellTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 32);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AWDLActionFrame.Header.lifetime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 36);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AWDLActionFrame.Header.lifetime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 36);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AWDLActionFrame.Header.token.setter(int a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.rate.setter(int a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.rssi.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.mactime.setter(int a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.tsf.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.chainRSSIPresent.setter(int a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.chainRSSI.getter()
{
  type metadata accessor for AWDLActionFrame.Header(0);
}

uint64_t AWDLActionFrame.Header.chainRSSI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

void AWDLActionFrame.Header.hash(into:)()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v48 = *(v1 - 8);
  __chkstk_darwin();
  v47 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v4 = (&v45 - v3);
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v7 = *(v0 + 3);
  v8 = *(v0 + 4);
  v9 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  v10 = *(v0 + 7);
  v11 = *(v0 + 8);
  v12 = *(v0 + 9);
  v13 = *(v0 + 10);
  v14 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  v15 = *(v0 + 16);
  v16 = *(v0 + 17);
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(0x801004u >> (8 * v15));
  if (v16 <= 3)
  {
    if (v16 != 2)
    {
      v17 = v48;
      if (v16 == 3)
      {
        v18 = 1;
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v19 = 0;
LABEL_13:
    Hasher._combine(_:)(v19);
    v17 = v48;
    goto LABEL_15;
  }

  if (v16 == 4)
  {
    v19 = 3;
    goto LABEL_13;
  }

  v17 = v48;
  if (v16 == 5)
  {
    v18 = 4;
    goto LABEL_11;
  }

  if (v16 == 6)
  {
    v18 = 5;
LABEL_11:
    Hasher._combine(_:)(v18);
    goto LABEL_15;
  }

LABEL_14:
  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(v16 & 1);
LABEL_15:
  Hasher._combine(_:)(*(v0 + 20));
  v20 = type metadata accessor for AWDLActionFrame.Header(0);
  v21 = v0 + v20[8];
  v46 = *(v17 + 16);
  v46(v4, v21, v1);
  v22 = *(v17 + 88);
  v23 = v22(v4, v1);
  v24 = enum case for DispatchTimeInterval.seconds(_:);
  if (v23 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v17 + 96))(v4, v1);
    v25 = *v4;
    v26 = 1000000000;
LABEL_19:
    v27 = v25 * v26;
    v28 = (v25 * v26) >> 64 != (v25 * v26) >> 63;
    v29 = v25 <= 0;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    if (v29)
    {
      v30 = 0x8000000000000000;
    }

    if (v28)
    {
      v31 = v30;
    }

    else
    {
      v31 = v27;
    }

    v32 = v47;
    goto LABEL_25;
  }

  if (v23 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v48 + 96))(v4, v1);
    v25 = *v4;
    v26 = 1000000;
    goto LABEL_19;
  }

  v32 = v47;
  if (v23 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v48 + 96))(v4, v1);
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    if (*v4 <= 0)
    {
      v36 = 0x8000000000000000;
    }

    if ((*v4 * 1000) >> 64 == (1000 * *v4) >> 63)
    {
      v31 = 1000 * *v4;
    }

    else
    {
      v31 = v36;
    }
  }

  else if (v23 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v48 + 96))(v4, v1);
    v31 = *v4;
  }

  else
  {
    if (v23 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v48 + 8))(v4, v1);
    }

    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_25:
  Hasher._combine(_:)(v31);
  v46(v32, v0 + v20[9], v1);
  v33 = v22(v32, v1);
  if (v33 == v24)
  {
    (*(v48 + 96))(v32, v1);
    v34 = *v32;
    v35 = 1000000000;
LABEL_37:
    v37 = v34 * v35;
    v38 = (v34 * v35) >> 64 != (v34 * v35) >> 63;
    v29 = v34 <= 0;
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    if (v29)
    {
      v39 = 0x8000000000000000;
    }

    if (v38)
    {
      v40 = v39;
    }

    else
    {
      v40 = v37;
    }

    goto LABEL_42;
  }

  if (v33 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v48 + 96))(v32, v1);
    v34 = *v32;
    v35 = 1000000;
    goto LABEL_37;
  }

  if (v33 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v48 + 96))(v32, v1);
    v34 = *v32;
    v35 = 1000;
    goto LABEL_37;
  }

  if (v33 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v48 + 96))(v32, v1);
    v40 = *v32;
  }

  else
  {
    if (v33 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v48 + 8))(v32, v1);
    }

    v40 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_42:
  Hasher._combine(_:)(v40);
  Hasher._combine(_:)(*(v0 + v20[10]));
  Hasher._combine(_:)(*(v0 + v20[11]));
  Hasher._combine(_:)(*(v0 + v20[12]));
  Hasher._combine(_:)(*(v0 + v20[13]));
  Hasher._combine(_:)(*(v0 + v20[14]));
  Hasher._combine(_:)(*(v0 + v20[15]));
  v41 = *(v0 + v20[16]);
  Hasher._combine(_:)(*(v41 + 16));
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = (v41 + 32);
    do
    {
      v44 = *v43++;
      Hasher._combine(_:)(v44);
      --v42;
    }

    while (v42);
  }
}

Swift::Int sub_100159A98(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100159AF8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100159B5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100159BA0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10015ADD0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100159C80(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_10015AEF0(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100159E2C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v32 - v7;
  v33 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v34 = a2;
  v14 = *(a2 + 41);
  v43 = v10;
  v44 = v9;
  String.lowercased()();
  String.hash(into:)();

  v38 = v12;
  v39 = v11;
  String.lowercased()();
  String.hash(into:)();

  if (v13)
  {
    v15 = 7365749;
  }

  else
  {
    v15 = 7365492;
  }

  String.hash(into:)();

  v36 = v14;
  Hasher._combine(_:)(v14);
  v16 = Hasher._finalize()();
  v45 = v8;
  v17 = -1 << *(v8 + 32);
  v18 = v16 & ~v17;
  v42 = v8 + 56;
  if ((*(v8 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v37 = v15;
    v40 = ~v17;
    v41 = *(v4 + 72);
    while (1)
    {
      v19 = v41 * v18;
      sub_10003B86C(*(v45 + 48) + v41 * v18, v6, type metadata accessor for AWDLPeer.AdvertisedService);
      v20 = *(v6 + 2);
      v22 = *(v6 + 3);
      v21 = *(v6 + 4);
      v23 = v6[40];
      v24 = v6[41];
      v48 = *(v6 + 1);
      v49 = v20;
      v46 = v44;
      v47 = v43;
      sub_10005E2E4();
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      v48 = v22;
      v49 = v21;
      v46 = v39;
      v47 = v38;
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      if (v23)
      {
        v25 = 7365749;
      }

      else
      {
        v25 = 7365492;
      }

      if (v25 == v37)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRelease_n();
        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      sub_10003B934(v6, type metadata accessor for AWDLPeer.AdvertisedService);
      if (v24 == v36)
      {
        sub_10003B934(v34, type metadata accessor for AWDLPeer.AdvertisedService);
        sub_10003B86C(*(v45 + 48) + v19, v35, type metadata accessor for AWDLPeer.AdvertisedService);
        return 0;
      }

LABEL_7:
      v18 = (v18 + 1) & v40;
      if (((*(v42 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_10003B934(v6, type metadata accessor for AWDLPeer.AdvertisedService);
    goto LABEL_7;
  }

LABEL_18:
  v28 = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v34;
  v31 = v32;
  sub_10003B86C(v34, v32, type metadata accessor for AWDLPeer.AdvertisedService);
  v48 = *v28;
  sub_10015B0D8(v31, v18, isUniquelyReferenced_nonNull_native);
  *v28 = v48;
  sub_100039054(v30, v35, type metadata accessor for AWDLPeer.AdvertisedService);
  return 1;
}

uint64_t sub_10015A268(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:bytes:count:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10015B4C0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_10015A350(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10005DC58(qword_100597D50, &unk_10048D5E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10015A574(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10005DC58(&unk_100597CE0, &qword_10048D610);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10015A7F0(uint64_t a1)
{
  v2 = v1;
  v34 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10005DC58(&qword_10058EC18, &qword_1004B1E90);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v2;
    v32 = v6;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    v33 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = *(v5 + 48);
      v35 = *(v34 + 72);
      sub_100039054(v19 + v35 * (v16 | (v8 << 6)), v4, type metadata accessor for AWDLPeer.AdvertisedService);
      Hasher.init(_seed:)();
      v20 = v4[41];
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v20);
      v21 = Hasher._finalize()();
      v7 = v32;
      v22 = -1 << *(v32 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v5 = v33;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v5 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_100039054(v4, *(v7 + 48) + v15 * v35, type metadata accessor for AWDLPeer.AdvertisedService);
      ++*(v7 + 16);
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10015ABA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10005DC58(&unk_10059B1A0, &qword_10048D5F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:bytes:count:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10015ADD0(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10015A350(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1001D4744();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10015B5E4(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10015AEF0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10015A574(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001D4884();
      goto LABEL_16;
    }

    sub_10015B7D4(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for AWDLTrafficRegistrationService(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = result;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10015B0D8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v42 = v3;
  v43 = a1;
  v41 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    v38 = v8;
    sub_10015A7F0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001D49D4();
      goto LABEL_25;
    }

    v38 = v8;
    sub_10015BA28(v11 + 1);
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 41);
  v48 = v15;
  v49 = v14;
  String.lowercased()();
  String.hash(into:)();

  v44 = v17;
  v45 = v16;
  String.lowercased()();
  String.hash(into:)();

  if (v18)
  {
    v20 = 7365749;
  }

  else
  {
    v20 = 7365492;
  }

  String.hash(into:)();

  v39 = v19;
  Hasher._combine(_:)(v19);
  v21 = Hasher._finalize()();
  v50 = v13;
  v22 = -1 << *(v13 + 32);
  a2 = v21 & ~v22;
  v47 = v13 + 56;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v40 = v20;
    v46 = ~v22;
    v23 = *(v7 + 72);
    while (1)
    {
      sub_10003B86C(*(v50 + 48) + v23 * a2, v10, type metadata accessor for AWDLPeer.AdvertisedService);
      v24 = *(v10 + 2);
      v26 = *(v10 + 3);
      v25 = *(v10 + 4);
      v27 = v10[40];
      v28 = v10[41];
      v53 = *(v10 + 1);
      v54 = v24;
      v51 = v49;
      v52 = v48;
      sub_10005E2E4();
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      v53 = v26;
      v54 = v25;
      v51 = v45;
      v52 = v44;
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      if (v27)
      {
        v29 = 7365749;
      }

      else
      {
        v29 = 7365492;
      }

      if (v29 == v40)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRelease_n();
        if ((v30 & 1) == 0)
        {
          break;
        }
      }

      sub_10003B934(v10, type metadata accessor for AWDLPeer.AdvertisedService);
      if (v28 == v39)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_25;
      }

LABEL_14:
      a2 = (a2 + 1) & v46;
      if (((*(v47 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_10003B934(v10, type metadata accessor for AWDLPeer.AdvertisedService);
    goto LABEL_14;
  }

LABEL_25:
  v31 = v43;
  v32 = *v42;
  *(*v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100039054(v31, *(v32 + 48) + *(v41 + 72) * a2, type metadata accessor for AWDLPeer.AdvertisedService);
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v36;
  }

  return result;
}

void sub_10015B4C0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10015ABA0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1001D4BE0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10015BDA8(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10015B5E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10005DC58(qword_100597D50, &unk_10048D5E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_10015B7D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10005DC58(&unk_100597CE0, &qword_10048D610);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10015BA28(uint64_t a1)
{
  v2 = v1;
  v33 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10005DC58(&qword_10058EC18, &qword_1004B1E90);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v2;
    v31 = v6;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    v32 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
LABEL_15:
      v19 = *(v5 + 48);
      v34 = *(v33 + 72);
      sub_10003B86C(v19 + v34 * (v16 | (v8 << 6)), v4, type metadata accessor for AWDLPeer.AdvertisedService);
      Hasher.init(_seed:)();
      v20 = v4[41];
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v20);
      v21 = Hasher._finalize()();
      v7 = v31;
      v22 = -1 << *(v31 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v5 = v32;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v5 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_100039054(v4, *(v7 + 48) + v15 * v34, type metadata accessor for AWDLPeer.AdvertisedService);
      ++*(v7 + 16);
      v12 = v35;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_10015BDA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10005DC58(&unk_10059B1A0, &qword_10048D5F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:bytes:count:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

uint64_t _s7CoreP2P15AWDLActionFrameV15ServiceResponseO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for DNSRecords.SRV(0);
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  __chkstk_darwin();
  v11 = &v53 - v10;
  sub_10005DC58(&qword_10058ED50, &qword_10048D668);
  __chkstk_darwin();
  v13 = &v53 - v12;
  v15 = &v53 + *(v14 + 56) - v12;
  sub_10003B86C(a1, &v53 - v12, type metadata accessor for AWDLActionFrame.ServiceResponse);
  sub_10003B86C(a2, v15, type metadata accessor for AWDLActionFrame.ServiceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10003B86C(v13, v9, type metadata accessor for AWDLActionFrame.ServiceResponse);
      v17 = *(v9 + 1);
      v62 = *v9;
      v63 = v17;
      v64 = *(v9 + 2);
      v65 = *(v9 + 6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = *(v15 + 1);
        v59[0] = *v15;
        v59[1] = v18;
        v60 = *(v15 + 2);
        v61 = *(v15 + 6);
        v19 = v63;
        v20 = v64;
        v21 = BYTE1(v64);
        v22 = v18;
        v23 = v60;
        v24 = BYTE1(v60);
        v58 = v62;
        v57 = v59[0];
        sub_10005E2E4();
        if (!StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(v19, *(&v19 + 1), v20 | (v21 << 8), v22, *(&v22 + 1), v23 | (v24 << 8)))
        {
          v25 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v64 + 1), v65, *(&v60 + 1), v61);
          sub_100083B14(v59);
          sub_100083B14(&v62);
          if (!v25)
          {
            goto LABEL_29;
          }

LABEL_28:
          sub_10003B934(v13, type metadata accessor for AWDLActionFrame.ServiceResponse);
          return 1;
        }

        sub_100083B14(v59);
        sub_100083B14(&v62);
        goto LABEL_29;
      }

      sub_100083B14(&v62);
    }

    else
    {
      sub_10003B86C(v13, v7, type metadata accessor for AWDLActionFrame.ServiceResponse);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100039054(v15, v5, type metadata accessor for DNSRecords.SRV);
        v31 = *v7;
        v32 = *(v7 + 1);
        v33 = *(v7 + 3);
        v55 = *(v7 + 2);
        v54 = v33;
        v34 = v7[32];
        v35 = v7[33];
        v36 = *v5;
        v37 = *(v5 + 1);
        v38 = *(v5 + 2);
        v39 = *(v5 + 3);
        v40 = v5[32];
        v41 = v5[33];
        *&v62 = v31;
        *(&v62 + 1) = v32;
        *&v59[0] = v36;
        *(&v59[0] + 1) = v37;
        sub_10005E2E4();
        if (!StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(v55, v54, v34 | (v35 << 8), v38, v39, v40 | (v41 << 8)))
        {
          type metadata accessor for NWEndpoint.Port();
          sub_1000348B8(&qword_10058CF60, &type metadata accessor for NWEndpoint.Port, &protocol conformance descriptor for NWEndpoint.Port);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v62 == LOWORD(v59[0]))
          {
            if (v42 = v56[6], v43 = *&v7[v42], v44 = *&v7[v42 + 8], v45 = &v5[v42], v43 == *v45) && v44 == *(v45 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              if (*&v7[v56[7]] == *&v5[v56[7]] && *&v7[v56[8]] == *&v5[v56[8]])
              {
                sub_10003B934(v5, type metadata accessor for DNSRecords.SRV);
                sub_10003B934(v7, type metadata accessor for DNSRecords.SRV);
                goto LABEL_28;
              }
            }
          }
        }

        sub_10003B934(v5, type metadata accessor for DNSRecords.SRV);
        sub_10003B934(v7, type metadata accessor for DNSRecords.SRV);
LABEL_29:
        sub_10003B934(v13, type metadata accessor for AWDLActionFrame.ServiceResponse);
        return 0;
      }

      sub_10003B934(v7, type metadata accessor for DNSRecords.SRV);
    }
  }

  else
  {
    sub_10003B86C(v13, v11, type metadata accessor for AWDLActionFrame.ServiceResponse);
    v26 = *(v11 + 1);
    v27 = *(v11 + 2);
    v28 = *(v11 + 3);
    v29 = v11[32];
    v30 = v11[33];
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = *v11;
      v47 = *v15;
      v48 = *(v15 + 1);
      v49 = *(v15 + 3);
      v56 = *(v15 + 2);
      LODWORD(v55) = v15[32];
      v50 = v15[33];
      *&v62 = v46;
      *(&v62 + 1) = v26;
      *&v59[0] = v47;
      *(&v59[0] + 1) = v48;
      sub_10005E2E4();
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
      }

      else
      {
        v51 = sub_100178C7C(v27, v28, v29 | (v30 << 8), v56, v49, v55 | (v50 << 8));

        if (v51)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_29;
    }
  }

  sub_100016290(v13, &qword_10058ED50, &qword_10048D668);
  return 0;
}

uint64_t _s7CoreP2P15AWDLActionFrameV24SynchronizationParameterV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || a1[4] != a2[4] || a1[5] != a2[5] || *(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6) || *(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8) || a1[18] != a2[18] || a1[19] != a2[19] || a1[20] != a2[20] || a1[21] != a2[21])
  {
    return 0;
  }

  v2 = *(a1 + 22) == *(a2 + 22) && *(a1 + 13) == *(a2 + 13);
  if (!v2 || a1[28] != a2[28] || a1[29] != a2[29] || *(a1 + 15) != *(a2 + 15) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 5);
  v4 = *(a2 + 5);

  return _s7CoreP2P15AWDLActionFrameV28AWDLChannelSequenceParameterV23__derived_struct_equalsySbAE_AEtFZ_0(v3, v4);
}

uint64_t _s7CoreP2P15AWDLActionFrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v3 = *(a1 + 6) == *(a2 + 6) && *(a1 + 10) == *(a2 + 10);
  if (!v3 || *(a1 + 12) != *(a2 + 12) || ((0x801004u >> (8 * *(a1 + 16))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 16))) & 0xFFC))
  {
    return 0;
  }

  v4 = *(a1 + 17);
  v5 = *(a2 + 17);
  if (v4 <= 3)
  {
    if (v4 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v4 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v5 - 2) < 5 || ((v5 ^ v4))
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 == 4)
  {
    if (v5 != 4)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 != 6)
  {
    goto LABEL_29;
  }

  if (v5 != 6)
  {
    return 0;
  }

LABEL_31:
  if (*(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v8 = type metadata accessor for AWDLActionFrame.Header(0);
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0 || (static DispatchTimeInterval.== infix(_:_:)() & 1) == 0 || *(a1 + v8[10]) != *(a2 + v8[10]) || *(a1 + v8[11]) != *(a2 + v8[11]) || *(a1 + v8[12]) != *(a2 + v8[12]) || *(a1 + v8[13]) != *(a2 + v8[13]) || *(a1 + v8[14]) != *(a2 + v8[14]) || *(a1 + v8[15]) != *(a2 + v8[15]))
  {
    return 0;
  }

  return sub_1000C2E80();
}

BOOL _s7CoreP2P15AWDLActionFrameV13RealtimeGroupV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  v4 = *(a1 + 2) | (*(a1 + 6) << 32);
  v5 = *(a2 + 2) | (*(a2 + 6) << 32);
  v6 = v5 & 0xFF00000000;
  if ((v4 & 0xFF00000000) != 0x300000000)
  {
    if (v6 == 0x300000000 || *(a1 + 2) != *(a2 + 2) || ((0x801004u >> ((v4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v5 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v10 = v4 >> 40;
    v11 = v5 >> 40;
    if (v10 <= 3)
    {
      if (v10 == 2)
      {
        if (v11 != 2)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (v10 == 3)
      {
        if (v11 != 3)
        {
          return 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      switch(v10)
      {
        case 4:
          if (v11 != 4)
          {
            return 0;
          }

          goto LABEL_9;
        case 5:
          if (v11 != 5)
          {
            return 0;
          }

          goto LABEL_9;
        case 6:
          if (v11 != 6)
          {
            return 0;
          }

          goto LABEL_9;
      }
    }

    if (v11 - 2) < 5 || ((v11 ^ v10))
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v6 != 0x300000000)
  {
    return 0;
  }

LABEL_9:
  if (*(a1 + 2) != *(a2 + 2) || a1[24] != a2[24])
  {
    return 0;
  }

  v7 = *(a1 + 7) | (*(a1 + 16) << 32);
  v8 = *(a2 + 7) | (*(a2 + 16) << 32);
  v9 = v8 & 0xFF00000000;
  if ((v7 & 0xFF00000000) == 0x300000000)
  {
    if (v9 == 0x300000000)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v9 == 0x300000000 || *(a1 + 7) != *(a2 + 7) || ((0x801004u >> ((v7 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v8 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  v12 = v7 >> 40;
  v13 = v8 >> 40;
  if (v12 <= 3)
  {
    if (v12 == 2)
    {
      if (v13 == 2)
      {
        goto LABEL_13;
      }

      return 0;
    }

    if (v12 == 3)
    {
      if (v13 == 3)
      {
        goto LABEL_13;
      }

      return 0;
    }
  }

  else
  {
    switch(v12)
    {
      case 4:
        if (v13 == 4)
        {
          goto LABEL_13;
        }

        return 0;
      case 5:
        if (v13 == 5)
        {
          goto LABEL_13;
        }

        return 0;
      case 6:
        if (v13 == 6)
        {
          goto LABEL_13;
        }

        return 0;
    }
  }

  if (v13 - 2) < 5 || ((v13 ^ v12))
  {
    return 0;
  }

LABEL_13:
  if (a1[34] != a2[34] || a1[35] != a2[35] || a1[36] != a2[36] || a1[37] != a2[37] || a1[38] != a2[38])
  {
    return 0;
  }

  return a1[39] == a2[39];
}

uint64_t _s7CoreP2P15AWDLActionFrameV14ServiceRequestV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (result != a3)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 != *(a4 + 16))
  {
    return 0;
  }

  if (!v4 || a2 == a4)
  {
    return 1;
  }

  v5 = (a2 + 32);
  v6 = (a4 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10015CDD4()
{
  result = qword_10058E318;
  if (!qword_10058E318)
  {
    result = swift_getWitnessTable(asc_10048D590, &type metadata for AWDLActionFrame.ServiceRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E318);
  }

  return result;
}

BOOL _s7CoreP2P15AWDLActionFrameV17ElectionParameterV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  if (v2 && (*(a1 + 6) == *(a2 + 6) ? (v3 = *(a1 + 10) == *(a2 + 10)) : (v3 = 0), v3 && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && sub_1001D8198(*(a1 + 20) | (*(a1 + 24) << 32), *(a2 + 20) | (*(a2 + 24) << 32)) && sub_1001D8198(*(a1 + 28) | (*(a1 + 32) << 32), *(a2 + 28) | (*(a2 + 32) << 32)) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40)))
  {
    return *(a1 + 44) == *(a2 + 44);
  }

  else
  {
    return 0;
  }
}

BOOL sub_10015CF80(unint64_t a1, unint64_t a2)
{
  if (a1 != a2 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a1) <= 3u)
  {
    if (BYTE5(a1) == 2)
    {
      if (BYTE5(a2) == 2)
      {
        return BYTE6(a1) == BYTE6(a2);
      }
    }

    else
    {
      if (BYTE5(a1) != 3)
      {
        goto LABEL_19;
      }

      if (BYTE5(a2) == 3)
      {
        return BYTE6(a1) == BYTE6(a2);
      }
    }

    return 0;
  }

  if (BYTE5(a1) == 4)
  {
    if (BYTE5(a2) == 4)
    {
      return BYTE6(a1) == BYTE6(a2);
    }

    return 0;
  }

  if (BYTE5(a1) == 5)
  {
    if (BYTE5(a2) == 5)
    {
      return BYTE6(a1) == BYTE6(a2);
    }

    return 0;
  }

  if (BYTE5(a1) != 6)
  {
LABEL_19:
    if (BYTE5(a2) - 2 < 5 || (((a2 >> 40) ^ (a1 >> 40)) & 1) != 0)
    {
      return 0;
    }

    return BYTE6(a1) == BYTE6(a2);
  }

  if (BYTE5(a2) != 6)
  {
    return 0;
  }

  return BYTE6(a1) == BYTE6(a2);
}

uint64_t sub_10015D064(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 != a3 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a3 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a1) <= 3u)
  {
    if (BYTE5(a1) == 2)
    {
      if (BYTE5(a3) == 2)
      {
        return sub_1000BCAE0(a2, a4);
      }
    }

    else
    {
      if (BYTE5(a1) != 3)
      {
        goto LABEL_19;
      }

      if (BYTE5(a3) == 3)
      {
        return sub_1000BCAE0(a2, a4);
      }
    }

    return 0;
  }

  if (BYTE5(a1) == 4)
  {
    if (BYTE5(a3) == 4)
    {
      return sub_1000BCAE0(a2, a4);
    }

    return 0;
  }

  if (BYTE5(a1) == 5)
  {
    if (BYTE5(a3) == 5)
    {
      return sub_1000BCAE0(a2, a4);
    }

    return 0;
  }

  if (BYTE5(a1) != 6)
  {
LABEL_19:
    if (BYTE5(a3) - 2 >= 5 && (((a3 >> 40) ^ (a1 >> 40)) & 1) == 0)
    {
      return sub_1000BCAE0(a2, a4);
    }

    return 0;
  }

  if (BYTE5(a3) != 6)
  {
    return 0;
  }

  return sub_1000BCAE0(a2, a4);
}

BOOL _s7CoreP2P15AWDLActionFrameV18NANSynchronizationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && (*(a1 + 1) == *(a2 + 1) ? (v2 = a1[3] == a2[3]) : (v2 = 0), v2 && (*(a1 + 2) == *(a2 + 2) ? (v3 = a1[6] == a2[6]) : (v3 = 0), v3 && *(a1 + 2) == *(a2 + 2) && *(a1 + 24) == *(a2 + 24) && *(a1 + 25) == *(a2 + 25) && (*(a1 + 13) == *(a2 + 13) ? (v4 = a1[15] == a2[15]) : (v4 = 0), v4 && *(a1 + 32) == *(a2 + 32) && *(a1 + 33) == *(a2 + 33) && a1[17] == a2[17]))))
  {
    return *(a1 + 9) == *(a2 + 9);
  }

  else
  {
    return 0;
  }
}

BOOL sub_10015D27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 != a5 || WORD1(a1) != WORD1(a5) || BYTE4(a1) != BYTE4(a5) || BYTE5(a1) != BYTE5(a5))
  {
    return 0;
  }

  LOBYTE(v21) = BYTE6(a1);
  BYTE1(v21) = HIBYTE(a1);
  HIWORD(v21) = a2;
  LOBYTE(v22) = BYTE2(a2);
  HIBYTE(v22) = BYTE3(a2);
  LOBYTE(v19) = BYTE6(a5);
  BYTE1(v19) = HIBYTE(a5);
  HIWORD(v19) = a6;
  LOBYTE(v20) = BYTE2(a6);
  HIBYTE(v20) = BYTE3(a6);
  if (v21 != v19 || v22 != v20)
  {
    return 0;
  }

  *(&v10 + 1) = a3 & 1;
  *&v10 = a2;
  v9 = v10 >> 32;
  *(&v10 + 1) = a7 & 1;
  *&v10 = a6;
  if (!sub_1001D8198(v9, v10 >> 32))
  {
    return 0;
  }

  *(&v16 + 1) = a4 & 1;
  *&v16 = a3;
  v15 = v16 >> 32;
  *(&v16 + 1) = a8 & 1;
  *&v16 = a7;
  v17 = v16 >> 32;

  return sub_1001D8198(v15, v17);
}

uint64_t _s7CoreP2P15AWDLActionFrameV29PeerMACAddressListBloomFilterV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t result, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  if (result != a3)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 != *(a4 + 16))
  {
    return 0;
  }

  if (!v4 || a2 == a4)
  {
    return 1;
  }

  v5 = (a2 + 32);
  v6 = (a4 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10015D490(unint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a1 == a4 && !((a4 ^ a1) >> 32) && BYTE2(a1) == BYTE2(a4) && ((a1 >> 8) & 1) != ((a4 & 0x100) == 0) && a2 == a5)
  {
    return sub_1000BEE04(a3, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7CoreP2P15AWDLActionFrameV13DataPathStateV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  __chkstk_darwin();
  v9 = &v79[-v8 - 4];
  sub_10005DC58(&unk_1005973E0, &qword_10048D650);
  __chkstk_darwin();
  v12 = &v79[-v11 - 4];
  v13 = *(a2 + 2);
  if (a1[1])
  {
    if (!*(a2 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 1) | (a1[4] << 32);
  v15 = *(a2 + 1) | (a2[4] << 32);
  v16 = v15 & 0xFF00000000;
  if ((v14 & 0xFF00000000) != 0x300000000)
  {
    if (v16 == 0x300000000 || *(a1 + 1) != *(a2 + 1) || ((0x801004u >> ((v14 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v15 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v17 = v14 >> 40;
    v18 = v15 >> 40;
    if (v17 <= 3)
    {
      if (v17 == 2)
      {
        if (v18 != 2)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (v17 == 3)
      {
        if (v18 != 3)
        {
          return 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      switch(v17)
      {
        case 4:
          if (v18 != 4)
          {
            return 0;
          }

          goto LABEL_9;
        case 5:
          if (v18 != 5)
          {
            return 0;
          }

          goto LABEL_9;
        case 6:
          if (v18 != 6)
          {
            return 0;
          }

          goto LABEL_9;
      }
    }

    if (v18 - 2) < 5 || ((v18 ^ v17))
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v16 != 0x300000000)
  {
    return 0;
  }

LABEL_9:
  if (a1[8])
  {
    if ((a2[8] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[8])
    {
      return 0;
    }

    v19 = *(a1 + 5) | (a1[7] << 32);
    v20 = *(a2 + 5) | (a2[7] << 32);
    v21.i64[0] = 0xFFFFFFFFFFFFLL;
    v21.i64[1] = 0xFFFFFFFFFFFFLL;
    v22 = vandq_s8(vdupq_n_s64(v19), v21);
    v23 = vshlq_u64(v22, xmmword_1004817A0);
    v24 = vandq_s8(vdupq_n_s64(v20), v21);
    v25 = vshlq_u64(v24, xmmword_1004817A0);
    v26 = vshlq_u64(v24, xmmword_100481790);
    v80[0] = *(a1 + 5);
    *v22.i8 = vmovn_s64(vshlq_u64(v22, xmmword_100481790));
    *v23.i8 = vmovn_s64(v23);
    v23.i16[1] = v23.i16[2];
    v23.i16[2] = v22.i16[0];
    v23.i16[3] = v22.i16[2];
    *&v80[1] = vmovn_s16(v23).u32[0];
    v80[5] = BYTE5(v19);
    v79[0] = v20;
    *v22.i8 = vmovn_s64(v26);
    *v26.i8 = vmovn_s64(v25);
    v26.i16[1] = v26.i16[2];
    v26.i16[2] = v22.i16[0];
    v26.i16[3] = v22.i16[2];
    *&v79[1] = vmovn_s16(v26).u32[0];
    v79[5] = BYTE5(v20);
    if (*v80 != *v79 || *&v80[4] != *&v79[4])
    {
      return 0;
    }
  }

  v28 = *(a1 + 5) | (a1[12] << 32);
  v29 = *(a2 + 5) | (a2[12] << 32);
  v30 = v29 & 0xFF00000000;
  if ((v28 & 0xFF00000000) != 0x300000000)
  {
    if (v30 == 0x300000000 || *(a1 + 5) != *(a2 + 5) || ((0x801004u >> ((v28 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v29 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v31 = v28 >> 40;
    v32 = v29 >> 40;
    if (v31 <= 3)
    {
      if (v31 == 2)
      {
        if (v32 != 2)
        {
          return 0;
        }

        goto LABEL_29;
      }

      if (v31 == 3)
      {
        if (v32 != 3)
        {
          return 0;
        }

        goto LABEL_29;
      }
    }

    else
    {
      switch(v31)
      {
        case 4:
          if (v32 != 4)
          {
            return 0;
          }

          goto LABEL_29;
        case 5:
          if (v32 != 5)
          {
            return 0;
          }

          goto LABEL_29;
        case 6:
          if (v32 != 6)
          {
            return 0;
          }

          goto LABEL_29;
      }
    }

    if (v32 - 2) < 5 || ((v32 ^ v31))
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v30 != 0x300000000)
  {
    return 0;
  }

LABEL_29:
  if (a1[16])
  {
    if ((a2[16] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[16])
    {
      return 0;
    }

    v33 = *(a1 + 13) | (a1[15] << 32);
    v34 = *(a2 + 13) | (a2[15] << 32);
    v35.i64[0] = 0xFFFFFFFFFFFFLL;
    v35.i64[1] = 0xFFFFFFFFFFFFLL;
    v36 = vandq_s8(vdupq_n_s64(v33), v35);
    v37 = vshlq_u64(v36, xmmword_1004817A0);
    v38 = vandq_s8(vdupq_n_s64(v34), v35);
    v39 = vshlq_u64(v38, xmmword_1004817A0);
    v40 = vshlq_u64(v38, xmmword_100481790);
    v80[0] = *(a1 + 13);
    *v36.i8 = vmovn_s64(vshlq_u64(v36, xmmword_100481790));
    *v37.i8 = vmovn_s64(v37);
    v37.i16[1] = v37.i16[2];
    v37.i16[2] = v36.i16[0];
    v37.i16[3] = v36.i16[2];
    *&v80[1] = vmovn_s16(v37).u32[0];
    v80[5] = BYTE5(v33);
    v79[0] = v34;
    *v36.i8 = vmovn_s64(v40);
    *v40.i8 = vmovn_s64(v39);
    v40.i16[1] = v40.i16[2];
    v40.i16[2] = v36.i16[0];
    v40.i16[3] = v36.i16[2];
    *&v79[1] = vmovn_s16(v40).u32[0];
    v79[5] = BYTE5(v34);
    if (*v80 != *v79 || *&v80[4] != *&v79[4])
    {
      return 0;
    }
  }

  v42 = *(a1 + 6);
  v43 = *(a2 + 6);
  if (v42)
  {
    if (!v43)
    {
      return 0;
    }

    if (*(a1 + 5) != *(a2 + 5) || v42 != v43)
    {
      v44 = v10;
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v10 = v44;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v43)
  {
    return 0;
  }

  if (a1[31])
  {
    if ((a2[31] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[31])
    {
      return 0;
    }

    v46 = *(a1 + 14) | (a1[30] << 32);
    v47 = *(a2 + 14) | (a2[30] << 32);
    v48.i64[0] = 0xFFFFFFFFFFFFLL;
    v48.i64[1] = 0xFFFFFFFFFFFFLL;
    v49 = vandq_s8(vdupq_n_s64(v46), v48);
    v50 = vshlq_u64(v49, xmmword_1004817A0);
    v51 = vandq_s8(vdupq_n_s64(v47), v48);
    v52 = vshlq_u64(v51, xmmword_1004817A0);
    v53 = vshlq_u64(v51, xmmword_100481790);
    v80[0] = *(a1 + 14);
    *v49.i8 = vmovn_s64(vshlq_u64(v49, xmmword_100481790));
    *v50.i8 = vmovn_s64(v50);
    v50.i16[1] = v50.i16[2];
    v50.i16[2] = v49.i16[0];
    v50.i16[3] = v49.i16[2];
    *&v80[1] = vmovn_s16(v50).u32[0];
    v80[5] = BYTE5(v46);
    v79[0] = v47;
    *v49.i8 = vmovn_s64(v53);
    *v53.i8 = vmovn_s64(v52);
    v53.i16[1] = v53.i16[2];
    v53.i16[2] = v49.i16[0];
    v53.i16[3] = v49.i16[2];
    *&v79[1] = vmovn_s16(v53).u32[0];
    v79[5] = BYTE5(v47);
    if (*v80 != *v79 || *&v80[4] != *&v79[4])
    {
      return 0;
    }
  }

  if (*(a1 + 63) != *(a2 + 63))
  {
    return 0;
  }

  v55 = *(a1 + 64);
  v56 = *(a2 + 64);
  if (v55 == 47)
  {
    if (v56 != 47)
    {
      return 0;
    }
  }

  else if (v56 == 47 || dword_10048DBB8[v55] != dword_10048DBB8[v56])
  {
    return 0;
  }

  if (*(a1 + 65) != *(a2 + 65))
  {
    return 0;
  }

  v58 = v5;
  v59 = v10;
  v60 = *(a2 + 68);
  if (a1[34])
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (a1[33] != a2[33])
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  v61 = *(a2 + 76);
  if (a1[38])
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 18) != *(a2 + 18))
    {
      v61 = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  if (*(a1 + 77) != *(a2 + 77) || *(a1 + 78) != *(a2 + 78) || *(a1 + 79) != *(a2 + 79) || *(a1 + 80) != *(a2 + 80) || *(a1 + 81) != *(a2 + 81) || *(a1 + 82) != *(a2 + 82) || *(a1 + 83) != *(a2 + 83) || *(a1 + 84) != *(a2 + 84) || *(a1 + 85) != *(a2 + 85) || *(a1 + 86) != *(a2 + 86) || *(a1 + 87) != *(a2 + 87) || *(a1 + 88) != *(a2 + 88) || *(a1 + 89) != *(a2 + 89) || *(a1 + 90) != *(a2 + 90) || *(a1 + 91) != *(a2 + 91) || *(a1 + 92) != *(a2 + 92) || *(a1 + 93) != *(a2 + 93) || *(a1 + 94) != *(a2 + 94))
  {
    return 0;
  }

  v78 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v62 = v78[34];
  v63 = *(v59 + 48);
  sub_1001606DC(a1 + v62, v12);
  sub_1001606DC(a2 + v62, &v12[v63]);
  v64 = *(v58 + 48);
  if (v64(v12, 1, v4) == 1)
  {
    if (v64(&v12[v63], 1, v4) == 1)
    {
      sub_100016290(v12, &unk_10059B170, &unk_1004B4D70);
      goto LABEL_134;
    }

LABEL_132:
    sub_100016290(v12, &unk_1005973E0, &qword_10048D650);
    return 0;
  }

  sub_1001606DC(v12, v9);
  if (v64(&v12[v63], 1, v4) == 1)
  {
    (*(v58 + 8))(v9, v4);
    goto LABEL_132;
  }

  v65 = v58;
  (*(v58 + 32))(v7, &v12[v63], v4);
  sub_1000348B8(&qword_1005973F0, &type metadata accessor for DispatchTimeInterval, &protocol conformance descriptor for DispatchTimeInterval);
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = *(v65 + 8);
  v67(v7, v4);
  v67(v9, v4);
  sub_100016290(v12, &unk_10059B170, &unk_1004B4D70);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_134:
  v68 = v78[35];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 4);
  v71 = (a2 + v68);
  v72 = *(a2 + v68 + 4);
  if (v70)
  {
    if (!v72)
    {
      return 0;
    }
  }

  else
  {
    if (*v69 != *v71)
    {
      LOBYTE(v72) = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  v73 = v78[36];
  v74 = (a1 + v73);
  v75 = *(a1 + v73 + 4);
  v76 = (a2 + v73);
  v77 = *(a2 + v73 + 4);
  if (v75)
  {
    if ((v77 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v74 != *v76)
    {
      v77 = 1;
    }

    if (v77)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s7CoreP2P15AWDLActionFrameV13AWDLAttributeO21__derived_enum_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, char *a2)
{
  v164 = a2;
  v163 = a1;
  type metadata accessor for AWDLActionFrame.DataPathState(0);
  __chkstk_darwin();
  v147 = (&v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  __chkstk_darwin();
  v146 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  __chkstk_darwin();
  v161 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v160 = &v145 - v6;
  __chkstk_darwin();
  v159 = &v145 - v7;
  __chkstk_darwin();
  v158 = &v145 - v8;
  __chkstk_darwin();
  v157 = &v145 - v9;
  __chkstk_darwin();
  v156 = &v145 - v10;
  __chkstk_darwin();
  v155 = (&v145 - v11);
  __chkstk_darwin();
  v154 = (&v145 - v12);
  __chkstk_darwin();
  v153 = (&v145 - v13);
  __chkstk_darwin();
  v152 = &v145 - v14;
  __chkstk_darwin();
  v151 = &v145 - v15;
  __chkstk_darwin();
  v149 = &v145 - v16;
  __chkstk_darwin();
  v18 = (&v145 - v17);
  __chkstk_darwin();
  v148 = &v145 - v19;
  __chkstk_darwin();
  v150 = (&v145 - v20);
  __chkstk_darwin();
  v22 = &v145 - v21;
  __chkstk_darwin();
  v24 = (&v145 - v23);
  __chkstk_darwin();
  v26 = &v145 - v25;
  __chkstk_darwin();
  v28 = (&v145 - v27);
  __chkstk_darwin();
  v30 = &v145 - v29;
  __chkstk_darwin();
  v32 = (&v145 - v31);
  sub_10005DC58(&qword_10058EC40, &qword_10048D5F8);
  __chkstk_darwin();
  v34 = &v145 - v33;
  v36 = &v145 + *(v35 + 56) - v33;
  sub_10003B86C(v163, &v145 - v33, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  v163 = v36;
  sub_10003B86C(v164, v36, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  v164 = v34;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = v164;
      sub_10003B86C(v164, v30, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v94 = v163;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v95 = v146;
        sub_100039054(v94, v146, type metadata accessor for AWDLActionFrame.ServiceResponse);
        v70 = _s7CoreP2P15AWDLActionFrameV15ServiceResponseO21__derived_enum_equalsySbAE_AEtFZ_0(v30, v95);
        v96 = type metadata accessor for AWDLActionFrame.ServiceResponse;
        sub_10003B934(v95, type metadata accessor for AWDLActionFrame.ServiceResponse);
        v97 = v30;
        goto LABEL_72;
      }

      v140 = type metadata accessor for AWDLActionFrame.ServiceResponse;
      v141 = v30;
      goto LABEL_107;
    case 2u:
      v39 = v164;
      sub_10003B86C(v164, v28, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v71 = v28[1];
      v165 = *v28;
      v166 = v71;
      v167[0] = v28[2];
      v72 = v163;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v73 = v72[1];
        v168 = *v72;
        v169 = v73;
        *v170 = v72[2];
        v70 = _s7CoreP2P15AWDLActionFrameV24SynchronizationParameterV23__derived_struct_equalsySbAE_AEtFZ_0(&v165, &v168);
        sub_100160E4C(&v165);
        sub_100160E4C(&v168);
        goto LABEL_89;
      }

      sub_100160E4C(&v165);
      goto LABEL_108;
    case 3u:
      v39 = v164;
      sub_10003B86C(v164, v26, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v2.i32[0] = *(v26 + 6);
      v76 = v26[10];
      v77 = v26[11];
      v78 = *(v26 + 3);
      v79 = v26[16];
      v80 = *(v26 + 5);
      v81 = v26[24];
      v82 = v163;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_108;
      }

      if (*v26 != *v82 || *(v26 + 1) != *(v82 + 1) || v26[4] != v82[4] || v26[5] != v82[5])
      {
        goto LABEL_130;
      }

      v83 = vmovl_u8(v2).u64[0];
      v84 = *(v82 + 3);
      v85 = v82[16];
      v86 = *(v82 + 5);
      v87 = v82[24];
      v88 = *(v82 + 5);
      LODWORD(v168) = vuzp1_s8(v83, v83).u32[0];
      BYTE4(v168) = v76;
      BYTE5(v168) = v77;
      if (v168 != *(v82 + 6) || WORD2(v168) != v88)
      {
        goto LABEL_130;
      }

      LOBYTE(v168) = v85;
      if (!sub_1001D8198(v78 | (v79 << 32), v84 | (v85 << 32)))
      {
        goto LABEL_130;
      }

      LOBYTE(v168) = v87;
      if (!sub_1001D8198(v80 | (v81 << 32), v86 | (v87 << 32)))
      {
        goto LABEL_130;
      }

      goto LABEL_94;
    case 4u:
      v39 = v164;
      sub_10003B86C(v164, v24, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v60 = *v24;
      v61 = v163;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_90;
      }

      v62 = _s7CoreP2P15AWDLActionFrameV28AWDLChannelSequenceParameterV23__derived_struct_equalsySbAE_AEtFZ_0(v60, *v61);
      goto LABEL_88;
    case 5u:
      v39 = v164;
      sub_10003B86C(v164, v22, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v107 = *(v22 + 1);
      v108 = *(v22 + 2);
      v109 = *(v22 + 2);
      v51 = *(v22 + 2);
      v50 = *(v22 + 3);
      v110 = v163;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_66;
      }

      v53 = *(v110 + 2);
      v54 = *(v110 + 3);
      if (*v22 == *v110 && v107 == *(v110 + 1) && v108 == *(v110 + 2) && v109 == *(v110 + 2))
      {
        goto LABEL_64;
      }

      goto LABEL_102;
    case 6u:
      v39 = v164;
      v119 = v150;
      sub_10003B86C(v164, v150, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v120 = v163;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v121 = v147;
        sub_100039054(v120, v147, type metadata accessor for AWDLActionFrame.DataPathState);
        v70 = _s7CoreP2P15AWDLActionFrameV13DataPathStateV23__derived_struct_equalsySbAE_AEtFZ_0(v119, v121);
        v96 = type metadata accessor for AWDLActionFrame.DataPathState;
        sub_10003B934(v121, type metadata accessor for AWDLActionFrame.DataPathState);
        v97 = v119;
LABEL_72:
        sub_10003B934(v97, v96);
        goto LABEL_89;
      }

      v140 = type metadata accessor for AWDLActionFrame.DataPathState;
      v141 = v119;
LABEL_107:
      sub_10003B934(v141, v140);
      goto LABEL_108;
    case 7u:
      v39 = v164;
      v90 = v148;
      sub_10003B86C(v164, v148, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v92 = *(v90 + 1);
      v91 = *(v90 + 2);
      v93 = v163;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_90;
      }

      if (*v90 != *v93)
      {
        goto LABEL_129;
      }

      if (v92 == *(v93 + 1) && v91 == *(v93 + 2))
      {

        goto LABEL_94;
      }

      v131 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_135;
    case 8u:
      v39 = v164;
      sub_10003B86C(v164, v18, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v132 = *v18;
      v133 = v163;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_90;
      }

      v62 = _s7CoreP2P15AWDLActionFrameV12SyncTreePathV23__derived_struct_equalsySbAE_AEtFZ_0(v132, *v133);
LABEL_88:
      v70 = v62;

      goto LABEL_89;
    case 9u:
      v39 = v164;
      v67 = v149;
      sub_10003B86C(v164, v149, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v68 = v163;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_108;
      }

      v70 = *v67 == *v68 && v67[1] == v68[1];
      goto LABEL_89;
    case 0xAu:
      v39 = v164;
      v128 = v151;
      sub_10003B86C(v164, v151, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v129 = v128[1];
      v130 = v163;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_90;
      }

      if (*v128 != *v130 || v129 != v130[1])
      {
        goto LABEL_129;
      }

      v131 = sub_1000C2E80();
      goto LABEL_135;
    case 0xBu:
      v39 = v164;
      v55 = v152;
      sub_10003B86C(v164, v152, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v56 = *(v55 + 16);
      v165 = *v55;
      v166 = v56;
      *&v167[0] = *(v55 + 32);
      v57 = v163;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_108;
      }

      v58 = *(v57 + 16);
      v168 = *v57;
      v169 = v58;
      *v170 = *(v57 + 32);
      v59 = _s7CoreP2P15AWDLActionFrameV18NANSynchronizationV23__derived_struct_equalsySbAE_AEtFZ_0(&v165, &v168);
      goto LABEL_56;
    case 0xCu:
      v39 = v164;
      v63 = v153;
      sub_10003B86C(v164, v153, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v64 = v63[1];
      v165 = *v63;
      v166 = v64;
      v167[0] = v63[2];
      v65 = v163;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_108;
      }

      v66 = v65[1];
      v168 = *v65;
      v169 = v66;
      *v170 = v65[2];
      v59 = _s7CoreP2P15AWDLActionFrameV17ElectionParameterV23__derived_struct_equalsySbAE_AEtFZ_0(&v165, &v168);
      goto LABEL_56;
    case 0xDu:
      v39 = v164;
      v115 = v154;
      sub_10003B86C(v164, v154, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v116 = v115[1];
      v165 = *v115;
      v166 = v116;
      v167[0] = v115[2];
      *(v167 + 9) = *(v115 + 41);
      v117 = v163;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        sub_1000C2E24(&v165);
        goto LABEL_108;
      }

      v118 = v117[1];
      v168 = *v117;
      v169 = v118;
      *v170 = v117[2];
      *&v170[9] = *(v117 + 41);
      v70 = static IEEE80211InformationElement.__derived_enum_equals(_:_:)(&v165, &v168);
      sub_1000C2E24(&v168);
      sub_1000C2E24(&v165);
LABEL_89:
      sub_10003B934(v39, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      return v70 & 1;
    case 0xEu:
      v39 = v164;
      v47 = v155;
      sub_10003B86C(v164, v155, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v48 = v47[1];
      v49 = *(v47 + 4);
      v51 = *(v47 + 1);
      v50 = *(v47 + 2);
      v52 = v163;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
LABEL_66:
        sub_1000124C8(v51, v50);
        goto LABEL_108;
      }

      v53 = *(v52 + 1);
      v54 = *(v52 + 2);
      if (*v47 == *v52 && v48 == v52[1] && v49 == *(v52 + 4))
      {
LABEL_64:
        v111 = v53;
        v112 = v54;
        v113 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v51, v50, v53, v54);
        sub_1000124C8(v111, v112);
        sub_1000124C8(v51, v50);
        if (v113)
        {
          goto LABEL_94;
        }
      }

      else
      {
LABEL_102:
        sub_1000124C8(v53, v54);
        sub_1000124C8(v51, v50);
      }

      goto LABEL_130;
    case 0xFu:
      v39 = v164;
      v74 = v156;
      sub_10003B86C(v164, v156, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v75 = v163;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_108;
      }

      v70 = *v74 == *v75;
      goto LABEL_89;
    case 0x10u:
      v39 = v164;
      v40 = v157;
      sub_10003B86C(v164, v157, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v2.i32[0] = *(v40 + 1);
      v41 = v40[5];
      v42 = v40[6];
      v43 = v163;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_108;
      }

      if (*v40 != *v43)
      {
        goto LABEL_130;
      }

      v44 = vmovl_u8(v2).u64[0];
      v45 = *(v43 + 5);
      LODWORD(v168) = vuzp1_s8(v44, v44).u32[0];
      BYTE4(v168) = v41;
      BYTE5(v168) = v42;
      if (v168 != *(v43 + 1) || WORD2(v168) != v45)
      {
        goto LABEL_130;
      }

      goto LABEL_94;
    case 0x11u:
      v39 = v164;
      v98 = v158;
      sub_10003B86C(v164, v158, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v99 = *(v98 + 16);
      v165 = *v98;
      v166 = v99;
      *&v167[0] = *(v98 + 32);
      v100 = v163;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_108;
      }

      v101 = *(v100 + 16);
      v168 = *v100;
      v169 = v101;
      *v170 = *(v100 + 32);
      v59 = _s7CoreP2P15AWDLActionFrameV13RealtimeGroupV23__derived_struct_equalsySbAE_AEtFZ_0(&v165, &v168);
LABEL_56:
      v70 = v59;
      goto LABEL_89;
    case 0x12u:
      v39 = v164;
      v122 = v159;
      sub_10003B86C(v164, v159, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v123 = *(v122 + 4);
      v124 = *(v122 + 5);
      v125 = *(v122 + 8);
      v126 = v163;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_90:

        goto LABEL_108;
      }

      if (*v122 != *v126 || ((0x801004u >> (8 * v123)) & 0xFFC) != ((0x801004u >> (8 * *(v126 + 4))) & 0xFFC))
      {
        goto LABEL_129;
      }

      v127 = *(v126 + 5);
      if (v124 <= 3)
      {
        if (v124 == 2)
        {
          if (v127 != 2)
          {
            goto LABEL_129;
          }
        }

        else
        {
          if (v124 != 3)
          {
LABEL_127:
            if (v127 - 2) < 5 || ((v127 ^ v124))
            {
              goto LABEL_129;
            }

            goto LABEL_134;
          }

          if (v127 != 3)
          {
            goto LABEL_129;
          }
        }
      }

      else
      {
        switch(v124)
        {
          case 4:
            if (v127 != 4)
            {
              goto LABEL_129;
            }

            break;
          case 5:
            if (v127 != 5)
            {
              goto LABEL_129;
            }

            break;
          case 6:
            if (v127 == 6)
            {
              break;
            }

LABEL_129:

            goto LABEL_130;
          default:
            goto LABEL_127;
        }
      }

LABEL_134:
      v131 = sub_1000BCAE0(v125, *(v126 + 8));
LABEL_135:
      v144 = v131;

      if (v144)
      {
LABEL_94:
        v134 = v39;
        goto LABEL_95;
      }

LABEL_130:
      v134 = v39;
LABEL_131:
      sub_10003B934(v134, type metadata accessor for AWDLActionFrame.AWDLAttribute);
LABEL_132:
      v70 = 0;
      return v70 & 1;
    case 0x13u:
      v39 = v164;
      v135 = v160;
      sub_10003B86C(v164, v160, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v136 = v135[1];
      v138 = *(v135 + 1);
      v137 = *(v135 + 2);
      v139 = v163;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_108;
      }

      if (*v135 != *v139 || v136 != v139[1] || v138 != *(v139 + 1) || v137 != *(v139 + 2))
      {
        goto LABEL_130;
      }

      goto LABEL_94;
    case 0x14u:
      v39 = v164;
      v102 = v161;
      sub_10003B86C(v164, v161, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v103 = v163;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_108;
      }

      v104 = v103[1];
      v105 = *v102 == *v103;
      v106 = v102[1] ^ v104 ^ 1;
      sub_10003B934(v39, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v70 = v105 & v106;
      return v70 & 1;
    case 0x15u:
      v114 = swift_getEnumCaseMultiPayload() == 21;
      goto LABEL_92;
    case 0x16u:
      v114 = swift_getEnumCaseMultiPayload() == 22;
LABEL_92:
      v39 = v164;
      if (!v114)
      {
        goto LABEL_108;
      }

      goto LABEL_94;
    default:
      sub_10003B86C(v164, v32, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v37 = v32[1];
      v38 = v163;
      if (swift_getEnumCaseMultiPayload())
      {

        v39 = v164;
LABEL_108:
        sub_100016290(v39, &qword_10058EC40, &qword_10048D5F8);
        goto LABEL_132;
      }

      if (*v32 == *v38 && v37 == v38[1])
      {
        v142 = sub_1000C2E80();

        v134 = v164;
        if (v142)
        {
LABEL_95:
          sub_10003B934(v134, type metadata accessor for AWDLActionFrame.AWDLAttribute);
          v70 = 1;
          return v70 & 1;
        }
      }

      else
      {

        v134 = v164;
      }

      goto LABEL_131;
  }
}

unint64_t sub_10015F33C(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
LABEL_7:
      sub_10000B02C();
      swift_allocError();
      *v6 = xmmword_10047CE70;
      *(v6 + 16) = 2;
      return swift_willThrow();
    }

    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  result = sub_100286B98(v4, 4, 4uLL);
  if (v2)
  {
    return result;
  }

  if (a2 - 4 < 3)
  {
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v12 = result;
    v13 = sub_100286B98(1u, 2, 2uLL);
    v9 = sub_100286B98(3u, 0, 2uLL);
    if ((v13 & ~v12) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v11 = v14 | v12;
    goto LABEL_19;
  }

  v7 = result;
  if (a2 == 3)
  {
    v8 = sub_100286B98(2u, 2, 2uLL);
    v9 = sub_100286B98(3u, 0, 2uLL);
    if ((v8 & ~v7) != 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 | v7;
LABEL_19:
    if ((v9 & ~v11) != 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    return v15 | v11;
  }

  v16 = sub_100286B98(3u, 2, 2uLL);
  if ((v16 & ~v7) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | v7;
  if (a2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_100286B98(v19, 0, 2uLL);
  if ((v20 & ~v18) != 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  return v21 | v18;
}

uint64_t _s7CoreP2P15AWDLActionFrameV20MultiPeerBSSSteeringV17SteeringMessageIDO8rawValueAGSgs5UInt8V_tcfC_0(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t _s7CoreP2P15AWDLActionFrameV7VersionV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x10u:
        return 4;
      case 8u:
        return 3;
      case 4u:
        return 2;
    }
  }

  return 5;
}

uint64_t sub_10015F550(void *a1)
{
  v3 = sub_10005DC58(&qword_10058ED58, &unk_10048D670);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = a1[3];
  sub_100029B34(a1, v7);
  sub_10015CDD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v13 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    v11[15] = 2;
    sub_100165E30(&qword_10058ECD0, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100002A00(a1);
    return v8 | (v10 << 16);
  }

  return v7;
}

uint64_t sub_10015F770(void *a1)
{
  v3 = sub_10005DC58(&qword_10058ECC8, &qword_10048D638);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = a1[3];
  sub_100029B34(a1, v7);
  sub_10016090C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v13 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    v11[15] = 2;
    sub_100165E30(&qword_10058ECD0, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100002A00(a1);
    return v8 | (v10 << 8);
  }

  return v7;
}

void *sub_10015F990(void *a1)
{
  v3 = sub_10005DC58(&qword_10058EC90, &qword_10048D620);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = sub_100029B34(a1, a1[3]);
  sub_100160A08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100165DDC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100002A00(a1);
  }

  return v7;
}

unint64_t sub_10015FB00(void *a1)
{
  v3 = sub_10005DC58(&qword_10058EC88, &qword_10048D618);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100160AB0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v14 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[8] = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v8 = v12[9];
  v9 = v12[10];
  v10 = v13;
  sub_100002A00(a1);
  return v7 | (v8 << 8) | (v9 << 16) | (v10 << 24);
}

unint64_t sub_10015FCD0(void *a1)
{
  v3 = sub_10005DC58(&qword_10058EC58, &qword_10048D608);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100160C54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v11[31] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[29] = 1;
  sub_100165C38();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v11[30];
  v11[28] = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[15] = 3;
  sub_100165C8C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 8) | (v9 << 32);
}

uint64_t sub_10015FF04(void *a1)
{
  v3 = sub_10005DC58(&qword_10058EC48, &qword_10048D600);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100160D50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[13] = 1;
  sub_100165BE4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v9 = v11[14];
  sub_100002A00(a1);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFF00 | v7;
}

uint64_t sub_1001600CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v17, v18);
  sub_100165CE0();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v17, v18);
  sub_10003804C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v3.i32[0] = v14;
  sub_100031694(v17, v18);
  v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v7 = sub_10003B238(v6);
  sub_100031694(v17, v18);
  v8 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v17, v18);
  sub_100165D34();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v13 = v7;
  sub_100031694(v17, v18);
  v9 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v10 = sub_10003B238(v9);
  sub_100031694(v17, v18);
  sub_100165D88();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v17, v18);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v17, v18);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v17, v18);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v17, v18);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v17, v18);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v12 = vmovl_u8(v3).u64[0];
  sub_100002A00(v17);
  result = sub_100002A00(a1);
  *a2 = v14;
  *(a2 + 1) = vuzp1_s8(v12, v12).u32[0];
  *(a2 + 5) = v15;
  *(a2 + 6) = v16;
  *(a2 + 12) = WORD2(v13);
  *(a2 + 8) = v13;
  *(a2 + 16) = v8;
  *(a2 + 24) = v14;
  *(a2 + 32) = WORD2(v10);
  *(a2 + 28) = v10;
  *(a2 + 34) = v14;
  *(a2 + 35) = v14;
  *(a2 + 36) = v14;
  *(a2 + 37) = v14;
  *(a2 + 38) = v14;
  *(a2 + 39) = v14;
  return result;
}

unint64_t sub_100160538()
{
  result = qword_10058E328;
  if (!qword_10058E328)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLElectionMetric, &type metadata for AWDLElectionMetric, v0, v1);
    atomic_store(result, &qword_10058E328);
  }

  return result;
}

unint64_t sub_10016058C()
{
  result = qword_10058E338;
  if (!qword_10058E338)
  {
    result = swift_getWitnessTable(aY_16, &type metadata for AWDLActionFrame.ServiceParameter.SSTH.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E338);
  }

  return result;
}

unint64_t sub_1001605E0()
{
  result = qword_10058E348;
  if (!qword_10058E348)
  {
    result = swift_getWitnessTable(byte_10048D4F0, &type metadata for AWDLActionFrame.ServiceParameter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E348);
  }

  return result;
}

unint64_t sub_100160634()
{
  result = qword_10058E350;
  if (!qword_10058E350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.Flags, &type metadata for AWDLActionFrame.ServiceParameter.Flags, v0, v1);
    atomic_store(result, &qword_10058E350);
  }

  return result;
}

unint64_t sub_100160688()
{
  result = qword_10058E358;
  if (!qword_10058E358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.SSTH, &type metadata for AWDLActionFrame.ServiceParameter.SSTH, v0, v1);
    atomic_store(result, &qword_10058E358);
  }

  return result;
}

uint64_t sub_1001606DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016074C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001607BC()
{
  result = qword_10058E370;
  if (!qword_10058E370)
  {
    result = swift_getWitnessTable(byte_10048D478, &type metadata for AWDLActionFrame.DataPathState.Flags, v0, v1);
    atomic_store(result, &qword_10058E370);
  }

  return result;
}

unint64_t sub_100160810()
{
  result = qword_10058E378;
  if (!qword_10058E378)
  {
    result = swift_getWitnessTable(asc_10048D450, &type metadata for AWDLActionFrame.DataPathState.ExtensionFlags, v0, v1);
    atomic_store(result, &qword_10058E378);
  }

  return result;
}

unint64_t sub_100160864()
{
  result = qword_10058E380;
  if (!qword_10058E380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Arpa.Flags, &type metadata for AWDLActionFrame.Arpa.Flags, v0, v1);
    atomic_store(result, &qword_10058E380);
  }

  return result;
}

unint64_t sub_1001608B8()
{
  result = qword_10058E3D0;
  if (!qword_10058E3D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AWDLVersion, &type metadata for AWDLActionFrame.AWDLVersion, v0, v1);
    atomic_store(result, &qword_10058E3D0);
  }

  return result;
}

unint64_t sub_10016090C()
{
  result = qword_10058E3E0;
  if (!qword_10058E3E0)
  {
    result = swift_getWitnessTable(byte_10048D310, &type metadata for AWDLActionFrame.PeerMACAddressListBloomFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E3E0);
  }

  return result;
}

unint64_t sub_100160960()
{
  result = qword_10058E3F8;
  if (!qword_10058E3F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANTimeSynchronizationFunction, &type metadata for NANTimeSynchronizationFunction, v0, v1);
    atomic_store(result, &qword_10058E3F8);
  }

  return result;
}

unint64_t sub_1001609B4()
{
  result = qword_10058E400;
  if (!qword_10058E400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MasterIndication, &type metadata for NANAttribute.MasterIndication, v0, v1);
    atomic_store(result, &qword_10058E400);
  }

  return result;
}

unint64_t sub_100160A08()
{
  result = qword_10058E420;
  if (!qword_10058E420)
  {
    result = swift_getWitnessTable(aY_17, &type metadata for AWDLActionFrame.MultiPeerBSSSteering.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E420);
  }

  return result;
}

unint64_t sub_100160A5C()
{
  result = qword_10058E428;
  if (!qword_10058E428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.MultiPeerBSSSteering.SteeringMessageID, &type metadata for AWDLActionFrame.MultiPeerBSSSteering.SteeringMessageID, v0, v1);
    atomic_store(result, &qword_10058E428);
  }

  return result;
}

unint64_t sub_100160AB0()
{
  result = qword_10058E438;
  if (!qword_10058E438)
  {
    result = swift_getWitnessTable(byte_10048D1D0, &type metadata for AWDLActionFrame.Ranging.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E438);
  }

  return result;
}

unint64_t sub_100160B04()
{
  result = qword_10058E440;
  if (!qword_10058E440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.Flags, &type metadata for AWDLActionFrame.RealtimeGroup.Flags, v0, v1);
    atomic_store(result, &qword_10058E440);
  }

  return result;
}

unint64_t sub_100160B58()
{
  result = qword_10058E448;
  if (!qword_10058E448)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalFlags, v0, v1);
    atomic_store(result, &qword_10058E448);
  }

  return result;
}

unint64_t sub_100160BAC()
{
  result = qword_10058E450;
  if (!qword_10058E450)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, v0, v1);
    atomic_store(result, &qword_10058E450);
  }

  return result;
}

unint64_t sub_100160C00()
{
  result = qword_10058E460;
  if (!qword_10058E460)
  {
    result = swift_getWitnessTable(byte_10048D180, &type metadata for AWDLActionFrame.ExtendedChannelSequence.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E460);
  }

  return result;
}

unint64_t sub_100160C54()
{
  result = qword_10058E470;
  if (!qword_10058E470)
  {
    result = swift_getWitnessTable(aI_4, &type metadata for AWDLActionFrame.ProMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E470);
  }

  return result;
}

unint64_t sub_100160CA8()
{
  result = qword_10058E478;
  if (!qword_10058E478)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ProMode.Command, &type metadata for AWDLActionFrame.ProMode.Command, v0, v1);
    atomic_store(result, &qword_10058E478);
  }

  return result;
}

unint64_t sub_100160CFC()
{
  result = qword_10058E480;
  if (!qword_10058E480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ProMode.Flags, &type metadata for AWDLActionFrame.ProMode.Flags, v0, v1);
    atomic_store(result, &qword_10058E480);
  }

  return result;
}

unint64_t sub_100160D50()
{
  result = qword_10058E490;
  if (!qword_10058E490)
  {
    result = swift_getWitnessTable(byte_10048D0E0, &type metadata for AWDLActionFrame.AirDrop.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E490);
  }

  return result;
}

unint64_t sub_100160DA4()
{
  result = qword_10058E498;
  if (!qword_10058E498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AirDrop.State, &type metadata for AWDLActionFrame.AirDrop.State, v0, v1);
    atomic_store(result, &qword_10058E498);
  }

  return result;
}

unint64_t sub_100160DF8()
{
  result = qword_10058E4A0;
  if (!qword_10058E4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AWDLAttribute.AttributeType, &type metadata for AWDLActionFrame.AWDLAttribute.AttributeType, v0, v1);
    atomic_store(result, &qword_10058E4A0);
  }

  return result;
}

unint64_t sub_100160E7C()
{
  result = qword_10058E4D8;
  if (!qword_10058E4D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.OUIType, &type metadata for AWDLActionFrame.OUIType, v0, v1);
    atomic_store(result, &qword_10058E4D8);
  }

  return result;
}

unint64_t sub_100160ED0()
{
  result = qword_10058E4E0;
  if (!qword_10058E4E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.OUISubtype, &type metadata for AWDLActionFrame.OUISubtype, v0, v1);
    atomic_store(result, &qword_10058E4E0);
  }

  return result;
}

unint64_t sub_100160F24()
{
  result = qword_10058E4F0;
  if (!qword_10058E4F0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058E4E8, &qword_100489510);
    v4[0] = sub_1000348B8(&qword_10058E4F8, type metadata accessor for AWDLActionFrame.AWDLAttribute, protocol conformance descriptor for AWDLActionFrame.AWDLAttribute);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_10058E4F0);
  }

  return result;
}

unint64_t sub_100160FDC()
{
  result = qword_10058E500;
  if (!qword_10058E500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.OUIType, &type metadata for AWDLActionFrame.OUIType, v0, v1);
    atomic_store(result, &qword_10058E500);
  }

  return result;
}

unint64_t sub_100161034()
{
  result = qword_10058E508;
  if (!qword_10058E508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.OUISubtype, &type metadata for AWDLActionFrame.OUISubtype, v0, v1);
    atomic_store(result, &qword_10058E508);
  }

  return result;
}

unint64_t sub_10016108C()
{
  result = qword_10058E510;
  if (!qword_10058E510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceRequest, &type metadata for AWDLActionFrame.ServiceRequest, v0, v1);
    atomic_store(result, &qword_10058E510);
  }

  return result;
}

unint64_t sub_10016112C()
{
  result = qword_10058E520;
  if (!qword_10058E520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AWDLChannelSequenceParameter, &type metadata for AWDLActionFrame.AWDLChannelSequenceParameter, v0, v1);
    atomic_store(result, &qword_10058E520);
  }

  return result;
}

unint64_t sub_100161184()
{
  result = qword_10058E528;
  if (!qword_10058E528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.SynchronizationParameter, &type metadata for AWDLActionFrame.SynchronizationParameter, v0, v1);
    atomic_store(result, &qword_10058E528);
  }

  return result;
}

unint64_t sub_1001611DC()
{
  result = qword_10058E530;
  if (!qword_10058E530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.DeprecatedElectionParameter, &type metadata for AWDLActionFrame.DeprecatedElectionParameter, v0, v1);
    atomic_store(result, &qword_10058E530);
  }

  return result;
}

unint64_t sub_100161238()
{
  result = qword_10058E540;
  if (!qword_10058E540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.Flags, &type metadata for AWDLActionFrame.ServiceParameter.Flags, v0, v1);
    atomic_store(result, &qword_10058E540);
  }

  return result;
}

unint64_t sub_10016128C()
{
  result = qword_10058E548;
  if (!qword_10058E548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.Flags, &type metadata for AWDLActionFrame.ServiceParameter.Flags, v0, v1);
    atomic_store(result, &qword_10058E548);
  }

  return result;
}

unint64_t sub_1001612E4()
{
  result = qword_10058E550;
  if (!qword_10058E550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.Flags, &type metadata for AWDLActionFrame.ServiceParameter.Flags, v0, v1);
    atomic_store(result, &qword_10058E550);
  }

  return result;
}

unint64_t sub_10016133C()
{
  result = qword_10058E558;
  if (!qword_10058E558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.SSTH, &type metadata for AWDLActionFrame.ServiceParameter.SSTH, v0, v1);
    atomic_store(result, &qword_10058E558);
  }

  return result;
}

unint64_t sub_100161394()
{
  result = qword_10058E560;
  if (!qword_10058E560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter, &type metadata for AWDLActionFrame.ServiceParameter, v0, v1);
    atomic_store(result, &qword_10058E560);
  }

  return result;
}

unint64_t sub_1001613EC()
{
  result = qword_10058E568;
  if (!qword_10058E568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.DataPathState.UnicastMasterIndicationOptions, &type metadata for AWDLActionFrame.DataPathState.UnicastMasterIndicationOptions, v0, v1);
    atomic_store(result, &qword_10058E568);
  }

  return result;
}

unint64_t sub_100161490()
{
  result = qword_10058E580;
  if (!qword_10058E580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Arpa.Flags, &type metadata for AWDLActionFrame.Arpa.Flags, v0, v1);
    atomic_store(result, &qword_10058E580);
  }

  return result;
}

unint64_t sub_1001614E4()
{
  result = qword_10058E588;
  if (!qword_10058E588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Arpa.Flags, &type metadata for AWDLActionFrame.Arpa.Flags, v0, v1);
    atomic_store(result, &qword_10058E588);
  }

  return result;
}

unint64_t sub_10016153C()
{
  result = qword_10058E590;
  if (!qword_10058E590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Arpa.Flags, &type metadata for AWDLActionFrame.Arpa.Flags, v0, v1);
    atomic_store(result, &qword_10058E590);
  }

  return result;
}

unint64_t sub_100161594()
{
  result = qword_10058E598;
  if (!qword_10058E598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Arpa, &type metadata for AWDLActionFrame.Arpa, v0, v1);
    atomic_store(result, &qword_10058E598);
  }

  return result;
}

unint64_t sub_1001615EC()
{
  result = qword_10058E5A0;
  if (!qword_10058E5A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.SyncTreePath, &type metadata for AWDLActionFrame.SyncTreePath, v0, v1);
    atomic_store(result, &qword_10058E5A0);
  }

  return result;
}

unint64_t sub_100161640()
{
  result = qword_10058E5A8;
  if (!qword_10058E5A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AWDLVersion, &type metadata for AWDLActionFrame.AWDLVersion, v0, v1);
    atomic_store(result, &qword_10058E5A8);
  }

  return result;
}

unint64_t sub_100161698()
{
  result = qword_10058E5B0;
  if (!qword_10058E5B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Version.PlatformType, &type metadata for AWDLActionFrame.Version.PlatformType, v0, v1);
    atomic_store(result, &qword_10058E5B0);
  }

  return result;
}

unint64_t sub_1001616F0()
{
  result = qword_10058E5B8;
  if (!qword_10058E5B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Version, &type metadata for AWDLActionFrame.Version, v0, v1);
    atomic_store(result, &qword_10058E5B8);
  }

  return result;
}

unint64_t sub_100161748()
{
  result = qword_10058E5C0;
  if (!qword_10058E5C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.PeerMACAddressListBloomFilter, &type metadata for AWDLActionFrame.PeerMACAddressListBloomFilter, v0, v1);
    atomic_store(result, &qword_10058E5C0);
  }

  return result;
}

unint64_t sub_1001617A0()
{
  result = qword_10058E5C8;
  if (!qword_10058E5C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.NANSynchronization, &type metadata for AWDLActionFrame.NANSynchronization, v0, v1);
    atomic_store(result, &qword_10058E5C8);
  }

  return result;
}

unint64_t sub_1001617F8()
{
  result = qword_10058E5D0;
  if (!qword_10058E5D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ElectionParameter, &type metadata for AWDLActionFrame.ElectionParameter, v0, v1);
    atomic_store(result, &qword_10058E5D0);
  }

  return result;
}

unint64_t sub_100161850()
{
  result = qword_10058E5D8;
  if (!qword_10058E5D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.MultiPeerBSSSteering.SteeringMessageID, &type metadata for AWDLActionFrame.MultiPeerBSSSteering.SteeringMessageID, v0, v1);
    atomic_store(result, &qword_10058E5D8);
  }

  return result;
}

unint64_t sub_1001618A8()
{
  result = qword_10058E5E0;
  if (!qword_10058E5E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.MultiPeerBSSSteering, &type metadata for AWDLActionFrame.MultiPeerBSSSteering, v0, v1);
    atomic_store(result, &qword_10058E5E0);
  }

  return result;
}

unint64_t sub_100161900()
{
  result = qword_10058E5E8;
  if (!qword_10058E5E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Ranging, &type metadata for AWDLActionFrame.Ranging, v0, v1);
    atomic_store(result, &qword_10058E5E8);
  }

  return result;
}

unint64_t sub_100161958()
{
  result = qword_10058E5F0;
  if (!qword_10058E5F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.Flags, &type metadata for AWDLActionFrame.RealtimeGroup.Flags, v0, v1);
    atomic_store(result, &qword_10058E5F0);
  }

  return result;
}

unint64_t sub_1001619B0()
{
  result = qword_10058E5F8;
  if (!qword_10058E5F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.Flags, &type metadata for AWDLActionFrame.RealtimeGroup.Flags, v0, v1);
    atomic_store(result, &qword_10058E5F8);
  }

  return result;
}

unint64_t sub_100161A04()
{
  result = qword_10058E600;
  if (!qword_10058E600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.Flags, &type metadata for AWDLActionFrame.RealtimeGroup.Flags, v0, v1);
    atomic_store(result, &qword_10058E600);
  }

  return result;
}

unint64_t sub_100161A5C()
{
  result = qword_10058E608;
  if (!qword_10058E608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.Flags, &type metadata for AWDLActionFrame.RealtimeGroup.Flags, v0, v1);
    atomic_store(result, &qword_10058E608);
  }

  return result;
}

unint64_t sub_100161AB4()
{
  result = qword_10058E610;
  if (!qword_10058E610)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalFlags, v0, v1);
    atomic_store(result, &qword_10058E610);
  }

  return result;
}

unint64_t sub_100161B0C()
{
  result = qword_10058E618;
  if (!qword_10058E618)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalFlags, v0, v1);
    atomic_store(result, &qword_10058E618);
  }

  return result;
}

unint64_t sub_100161B60()
{
  result = qword_10058E620;
  if (!qword_10058E620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalFlags, v0, v1);
    atomic_store(result, &qword_10058E620);
  }

  return result;
}

unint64_t sub_100161BB8()
{
  result = qword_10058E628;
  if (!qword_10058E628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalFlags, v0, v1);
    atomic_store(result, &qword_10058E628);
  }

  return result;
}

unint64_t sub_100161C10()
{
  result = qword_10058E630;
  if (!qword_10058E630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, v0, v1);
    atomic_store(result, &qword_10058E630);
  }

  return result;
}

unint64_t sub_100161C68()
{
  result = qword_10058E638;
  if (!qword_10058E638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, v0, v1);
    atomic_store(result, &qword_10058E638);
  }

  return result;
}

unint64_t sub_100161CBC()
{
  result = qword_10058E640;
  if (!qword_10058E640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, v0, v1);
    atomic_store(result, &qword_10058E640);
  }

  return result;
}

unint64_t sub_100161D14()
{
  result = qword_10058E648;
  if (!qword_10058E648)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, &type metadata for AWDLActionFrame.RealtimeGroup.AdditionalServicesFlags, v0, v1);
    atomic_store(result, &qword_10058E648);
  }

  return result;
}

unint64_t sub_100161D6C()
{
  result = qword_10058E650;
  if (!qword_10058E650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.RealtimeGroup, &type metadata for AWDLActionFrame.RealtimeGroup, v0, v1);
    atomic_store(result, &qword_10058E650);
  }

  return result;
}

unint64_t sub_100161DC4()
{
  result = qword_10058E658;
  if (!qword_10058E658)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ExtendedChannelSequence, &type metadata for AWDLActionFrame.ExtendedChannelSequence, v0, v1);
    atomic_store(result, &qword_10058E658);
  }

  return result;
}

unint64_t sub_100161E1C()
{
  result = qword_10058E660;
  if (!qword_10058E660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.PreferredChannels.PreferredChannel, &type metadata for AWDLActionFrame.PreferredChannels.PreferredChannel, v0, v1);
    atomic_store(result, &qword_10058E660);
  }

  return result;
}

unint64_t sub_100161E74()
{
  result = qword_10058E668;
  if (!qword_10058E668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.PreferredChannels, &type metadata for AWDLActionFrame.PreferredChannels, v0, v1);
    atomic_store(result, &qword_10058E668);
  }

  return result;
}

unint64_t sub_100161ECC()
{
  result = qword_10058E670;
  if (!qword_10058E670)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ProMode.Command, &type metadata for AWDLActionFrame.ProMode.Command, v0, v1);
    atomic_store(result, &qword_10058E670);
  }

  return result;
}

unint64_t sub_100161F24()
{
  result = qword_10058E678;
  if (!qword_10058E678)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ProMode.Flags, &type metadata for AWDLActionFrame.ProMode.Flags, v0, v1);
    atomic_store(result, &qword_10058E678);
  }

  return result;
}

unint64_t sub_100161F7C()
{
  result = qword_10058E680;
  if (!qword_10058E680)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ProMode.Flags, &type metadata for AWDLActionFrame.ProMode.Flags, v0, v1);
    atomic_store(result, &qword_10058E680);
  }

  return result;
}

unint64_t sub_100161FD0()
{
  result = qword_10058E688;
  if (!qword_10058E688)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ProMode.Flags, &type metadata for AWDLActionFrame.ProMode.Flags, v0, v1);
    atomic_store(result, &qword_10058E688);
  }

  return result;
}

unint64_t sub_100162028()
{
  result = qword_10058E690;
  if (!qword_10058E690)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ProMode.Flags, &type metadata for AWDLActionFrame.ProMode.Flags, v0, v1);
    atomic_store(result, &qword_10058E690);
  }

  return result;
}

unint64_t sub_100162080()
{
  result = qword_10058E698;
  if (!qword_10058E698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ProMode, &type metadata for AWDLActionFrame.ProMode, v0, v1);
    atomic_store(result, &qword_10058E698);
  }

  return result;
}

unint64_t sub_1001620D8()
{
  result = qword_10058E6A0;
  if (!qword_10058E6A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AirDrop.State, &type metadata for AWDLActionFrame.AirDrop.State, v0, v1);
    atomic_store(result, &qword_10058E6A0);
  }

  return result;
}

unint64_t sub_100162130()
{
  result = qword_10058E6A8;
  if (!qword_10058E6A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AirDrop, &type metadata for AWDLActionFrame.AirDrop, v0, v1);
    atomic_store(result, &qword_10058E6A8);
  }

  return result;
}

unint64_t sub_100162188()
{
  result = qword_10058E6B0;
  if (!qword_10058E6B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AWDLAttribute.AttributeType, &type metadata for AWDLActionFrame.AWDLAttribute.AttributeType, v0, v1);
    atomic_store(result, &qword_10058E6B0);
  }

  return result;
}

unint64_t sub_100162228()
{
  result = qword_10058E6C0;
  if (!qword_10058E6C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame, &type metadata for AWDLActionFrame, v0, v1);
    atomic_store(result, &qword_10058E6C0);
  }

  return result;
}

unint64_t sub_100162280()
{
  result = qword_10058E6C8;
  if (!qword_10058E6C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Header.Flags, &type metadata for AWDLActionFrame.Header.Flags, v0, v1);
    atomic_store(result, &qword_10058E6C8);
  }

  return result;
}

unint64_t sub_1001622D8()
{
  result = qword_10058E6D0;
  if (!qword_10058E6D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Header.Flags, &type metadata for AWDLActionFrame.Header.Flags, v0, v1);
    atomic_store(result, &qword_10058E6D0);
  }

  return result;
}

unint64_t sub_10016232C()
{
  result = qword_10058E6D8;
  if (!qword_10058E6D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Header.Flags, &type metadata for AWDLActionFrame.Header.Flags, v0, v1);
    atomic_store(result, &qword_10058E6D8);
  }

  return result;
}

unint64_t sub_100162384()
{
  result = qword_10058E6E0;
  if (!qword_10058E6E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Header.Flags, &type metadata for AWDLActionFrame.Header.Flags, v0, v1);
    atomic_store(result, &qword_10058E6E0);
  }

  return result;
}

uint64_t sub_100162460(uint64_t a1)
{
  result = type metadata accessor for DNSRecords.SRV(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1001624F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100162508(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100162528(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

void sub_100162598(uint64_t a1)
{
  sub_1001631EC(319, &qword_10058E800, &type metadata for CountryCode, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1001631EC(319, &qword_10058E808, &type metadata for Channel, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1001631EC(319, &qword_10058E810, &type metadata for WiFiAddress, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1001631EC(319, &qword_100599180, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1001631EC(319, &qword_10058E818, &type metadata for AWDLActionFrame.DataPathState.UnicastMasterIndicationOptions, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1001631EC(319, &qword_10058E820, &type metadata for UInt16, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1001631EC(319, &qword_10058E828, &type metadata for UInt32, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100162818(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100162818(uint64_t a1)
{
  if (!qword_10058E830)
  {
    type metadata accessor for DispatchTimeInterval();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10058E830);
    }
  }
}

uint64_t getEnumTagSinglePayload for NANSubReasonCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD2)
  {
    goto LABEL_17;
  }

  if (a2 + 46 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 46) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 46;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v8 = v6 - 47;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANSubReasonCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD2)
  {
    v4 = 0;
  }

  if (a2 > 0xD1)
  {
    v5 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
    *result = a2 + 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100162A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 40))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 12);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 12);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100162AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 3;
    }
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for AWDLActionFrame.PreferredChannels.PreferredChannel(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.PreferredChannels.PreferredChannel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 7))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.PreferredChannels.PreferredChannel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.ProMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 12))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.ProMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.AirDrop(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.AirDrop(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100162E4C(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.ServiceResponse(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AWDLActionFrame.DataPathState(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.AWDLAttribute.AttributeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.AWDLAttribute.AttributeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1001630F8(uint64_t a1)
{
  type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    sub_1001631EC(319, &unk_10058E9F0, &type metadata for Int8, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001631EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.ElectionParameter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.ElectionParameter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANDataHostAssistRequest.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANDataHostAssistRequest.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001635D0()
{
  result = qword_10058EA50;
  if (!qword_10058EA50)
  {
    result = swift_getWitnessTable(byte_10048C428, &type metadata for AWDLActionFrame.ServiceRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058EA50);
  }

  return result;
}

unint64_t sub_100163628()
{
  result = qword_10058EA58;
  if (!qword_10058EA58)
  {
    result = swift_getWitnessTable(asc_10048C4E0, &type metadata for AWDLActionFrame.ServiceParameter.SSTH.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058EA58);
  }

  return result;
}

unint64_t sub_100163680()
{
  result = qword_10058EA60;
  if (!qword_10058EA60)
  {
    result = swift_getWitnessTable(aQ_4, &type metadata for AWDLActionFrame.ServiceParameter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058EA60);
  }

  return result;
}

unint64_t sub_1001636D4()
{
  result = qword_10058EA68;
  if (!qword_10058EA68)
  {
    result = swift_getWitnessTable(byte_10048C5F0, &type metadata for AWDLActionFrame.DataPathState.Flags, v0, v1);
    atomic_store(result, &qword_10058EA68);
  }

  return result;
}

unint64_t sub_10016372C()
{
  result = qword_10058EA70;
  if (!qword_10058EA70)
  {
    result = swift_getWitnessTable(byte_10048C5C0, &type metadata for AWDLActionFrame.DataPathState.Flags, v0, v1);
    atomic_store(result, &qword_10058EA70);
  }

  return result;
}

unint64_t sub_100163788()
{
  result = qword_10058EA80;
  if (!qword_10058EA80)
  {
    result = swift_getWitnessTable(byte_10048C650, &type metadata for AWDLActionFrame.DataPathState.Flags, v0, v1);
    atomic_store(result, &qword_10058EA80);
  }

  return result;
}