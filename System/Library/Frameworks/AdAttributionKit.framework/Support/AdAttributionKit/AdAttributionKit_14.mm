void *Postback.init(compactJWS:interactionType:postbackURL:conversionValueTier:countryCode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v54 = a8;
  v16 = sub_1000BB714();
  v17 = sub_1000BB768();
  v18 = sub_1000BB7BC();
  v19 = sub_1000BB810();
  JWS.init(compactJWS:)(a1, a2, &type metadata for Postback.JWSPayload, v16, v17, v18, v19, &v41);
  if (v11)
  {
  }

  else
  {
    v38 = v51;
    v39 = v52;
    v34 = v47;
    v35 = v48;
    v37 = v50;
    v36 = v49;
    v30 = v43;
    v31 = v44;
    v33 = v46;
    v32 = v45;
    v29 = v42;
    v28 = v41;
    *&__src[224] = v51;
    *&__src[240] = v52;
    *&__src[160] = v47;
    *&__src[176] = v48;
    *&__src[192] = v49;
    *&__src[208] = v50;
    *&__src[96] = v43;
    *&__src[112] = v44;
    *&__src[128] = v45;
    *&__src[144] = v46;
    v40 = v53;
    *__src = a3;
    *&__src[8] = a4;
    *&__src[16] = a5;
    *&__src[24] = a6;
    *&__src[32] = a7;
    *&__src[40] = v54;
    *&__src[48] = a10;
    *&__src[56] = a11;
    *&__src[256] = v53;
    *&__src[64] = v41;
    *&__src[80] = v42;
    v27[0] = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    v27[4] = a7;
    v27[5] = v54;
    v27[6] = a10;
    v27[7] = a11;
    sub_1000BB8B8(__src, v25);
    sub_1000BB914(v27);
    return memcpy(a9, __src, 0x108uLL);
  }
}

void *Postback.init(postbackResponse:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = sub_1000BB714();
  v9 = sub_1000BB768();
  v10 = sub_1000BB7BC();
  v11 = sub_1000BB810();

  JWS.init(compactJWS:)(v6, v7, &type metadata for Postback.JWSPayload, v8, v9, v10, v11, v17);
  if (v3)
  {
    return sub_10001970C(a1);
  }

  __src[13] = v17[9];
  __src[14] = v17[10];
  __src[15] = v17[11];
  __src[9] = v17[5];
  __src[10] = v17[6];
  __src[11] = v17[7];
  __src[12] = v17[8];
  __src[5] = v17[1];
  __src[6] = v17[2];
  *&__src[16] = v18;
  __src[7] = v17[3];
  __src[8] = v17[4];
  v13 = *(a1 + 16);
  v22 = *(a1 + 32);
  v23 = v13;
  __src[0] = v13;
  __src[1] = v22;
  v21 = *(a1 + 48);
  __src[4] = v17[0];
  __src[2] = v21;
  v20 = *(a1 + 72);
  sub_1000C4880(&v23, v16);
  sub_1000C4880(&v22, v16);
  sub_1000C4880(&v21, v16);
  sub_10005CB44(&v20, v16);
  sub_10001970C(a1);
  __src[3] = v20;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_1000BB8B8(__dst, &v14);
  sub_1000BB914(v16);
  return memcpy(a2, __dst, 0x108uLL);
}

uint64_t sub_100151AB8(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100151BDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100153334(*a1);
  *a2 = result;
  return result;
}

void sub_100151C0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x697274732D73776ALL;
  v5 = 0x80000001001CAA80;
  v6 = 0xD000000000000015;
  v7 = 0xEE007865646E692DLL;
  v8 = 0x676E69726564726FLL;
  if (v2 != 4)
  {
    v8 = 0x2D7972746E756F63;
    v7 = 0xEC00000065646F63;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000006C72752DLL;
  v10 = 0x6B63616274736F70;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x80000001001CA540;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100151CF8()
{
  v1 = *v0;
  v2 = 0x697274732D73776ALL;
  v3 = 0xD000000000000015;
  v4 = 0x676E69726564726FLL;
  if (v1 != 4)
  {
    v4 = 0x2D7972746E756F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B63616274736F70;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

unint64_t sub_100151DE0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100153334(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100151E08(uint64_t a1)
{
  v2 = sub_100152080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151E44(uint64_t a1)
{
  v2 = sub_100152080();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PostbackResponse.encode(to:)(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023D9C8, &qword_1001C1F78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_100152080();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100152080()
{
  result = qword_10023D9D0;
  if (!qword_10023D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9D0);
  }

  return result;
}

double PostbackResponse.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001533CC(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL Postback.Version.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100216900, v2);

  return v3 != 0;
}

Swift::Int sub_1001521A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001521FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100152244@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002164E0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1001523C4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6580587;
  }

  else
  {
    v2 = 6777953;
  }

  if (*a2)
  {
    v3 = 6580587;
  }

  else
  {
    v3 = 6777953;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10015243C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001524A4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001524F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100152554@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100216518, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001525B4(uint64_t *a1@<X8>)
{
  v2 = 6777953;
  if (*v1)
  {
    v2 = 6580587;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1001525DC()
{
  if (*v0)
  {
    return 6580587;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_100152600@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216518, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100152664(uint64_t a1)
{
  v2 = sub_100153808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001526A0(uint64_t a1)
{
  v2 = sub_100153808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Postback.JWSHeader.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000CDE0(&qword_10023D9D8, &qword_1001C1F80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000DA7C(a1, a1[3]);
  sub_100153808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t Postback.JWSHeader.init(from:)(void *a1)
{
  result = sub_10015385C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10015289C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10015385C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t Postback.postbackURL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Postback.conversionValueTier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Postback.JWSPayload.sourceIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t Postback.JWSPayload.adNetworkID.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Postback.JWSPayload.conversionType.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_100152A04(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x69737265766E6F63;
    v6 = 0x6E69772D646964;
    if (a1 != 8)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0xD000000000000015;
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
    v1 = 0x6973736572706D69;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000019;
    if (a1 != 3)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000016;
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

uint64_t sub_100152B5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100152A04(*a1);
  v5 = v4;
  if (v3 == sub_100152A04(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100152BE4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100152A04(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100152C48(uint64_t a1)
{
  sub_100152A04(*v1);
  String.hash(into:)();
}

Swift::Int sub_100152C9C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100152A04(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100152CFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100153380(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100152D2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100152A04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100152D74@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100153380(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100152DA8(uint64_t a1)
{
  v2 = sub_100153A40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100152DE4(uint64_t a1)
{
  v2 = sub_100153A40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Postback.JWSPayload.encode(to:)(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023D9E8, &qword_1001C1F88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_100153A40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[6] = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

__n128 Postback.JWSPayload.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100153A94(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t Postback.header.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Postback.signature.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t Postback.interactionType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Postback.postbackURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Postback.conversionValueTier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Postback.countryCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Postback.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_100153334(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215700, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100153380(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002163D0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001533CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023DA60, qword_1001C2700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_100152080();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v38[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v38[0]) = 1;
  *&v31 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v31 + 1) = v12;
  LOBYTE(v38[0]) = 2;
  *&v30 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v30 + 1) = v13;
  LOBYTE(v38[0]) = 3;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v14;
  LOBYTE(v38[0]) = 4;
  v28 = 0;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = 5;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = *(v6 + 8);
  v17 = v15;
  v28 = v18;
  v16(v8, v5);
  *&v32 = v9;
  *(&v32 + 1) = v11;
  v19 = *(&v30 + 1);
  v33 = v30;
  v34 = v31;
  *&v35 = v27;
  v20 = v29;
  *(&v35 + 1) = v29;
  *&v36 = v26;
  v21 = v28;
  *(&v36 + 1) = v17;
  v37 = v28;
  sub_10015468C(&v32, v38);
  sub_10000DB58(a1);
  v38[0] = v9;
  v38[1] = v11;
  v38[2] = v30;
  v38[3] = v19;
  v39 = v31;
  v40 = v27;
  v41 = v20;
  v42 = v26;
  v43 = v17;
  v44 = v21;
  result = sub_10001970C(v38);
  v23 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v23;
  *(a2 + 64) = v36;
  *(a2 + 80) = v37;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_100153808()
{
  result = qword_10023D9E0;
  if (!qword_10023D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9E0);
  }

  return result;
}

uint64_t sub_10015385C(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023DA58, &qword_1001C26F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100153808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000DB58(a1);
  return v7;
}

unint64_t sub_100153A40()
{
  result = qword_10023D9F0;
  if (!qword_10023D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9F0);
  }

  return result;
}

uint64_t sub_100153A94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_10000CDE0(&qword_10023DA50, &qword_1001C26F0);
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v29 - v6;
  sub_10000DA7C(a1, a1[3]);
  sub_100153A40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v44 = a2;
  LOBYTE(v55[0]) = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v9;
  LOBYTE(v55[0]) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = v11;
  v40 = v10;
  LOBYTE(v55[0]) = 2;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v12;
  LOBYTE(v55[0]) = 3;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = v13 & 1;
  LOBYTE(v55[0]) = 4;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v55[0]) = 5;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v14;
  LOBYTE(v55[0]) = 6;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v16;
  v32 = v15;
  LOBYTE(v55[0]) = 7;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v17;
  LOBYTE(v55[0]) = 8;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v67 = 9;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v30 & 1;
  (*(v5 + 8))(v7, v45);
  *&v46 = v8;
  *(&v46 + 1) = v43;
  *&v47 = v40;
  *(&v47 + 1) = v42;
  *&v48 = v39;
  *(&v48 + 1) = v41;
  v20 = v37;
  *&v49 = v38;
  LODWORD(v45) = v66;
  BYTE8(v49) = v66;
  v22 = v34;
  v21 = v35;
  *&v50 = v37;
  *(&v50 + 1) = v34;
  *&v51 = v36;
  *(&v51 + 1) = v32;
  *&v52 = v35;
  *(&v52 + 1) = v31;
  *&v53 = v33;
  BYTE8(v53) = v19;
  v54 = v18;
  sub_10014A860(&v46, v55);
  sub_10000DB58(a1);
  v55[0] = v8;
  v55[1] = v43;
  v55[2] = v40;
  v55[3] = v42;
  v55[4] = v39;
  v55[5] = v41;
  v55[6] = v38;
  v56 = v45;
  v57 = v20;
  v58 = v22;
  v59 = v36;
  v60 = v32;
  v61 = v21;
  v62 = v31;
  v63 = v33;
  v64 = v19;
  v65 = v18;
  result = sub_1000BB864(v55);
  v24 = v53;
  v25 = v44;
  *(v44 + 96) = v52;
  *(v25 + 112) = v24;
  *(v25 + 128) = v54;
  v26 = v49;
  *(v25 + 32) = v48;
  *(v25 + 48) = v26;
  v27 = v51;
  *(v25 + 64) = v50;
  *(v25 + 80) = v27;
  v28 = v47;
  *v25 = v46;
  *(v25 + 16) = v28;
  return result;
}

unint64_t sub_100154004()
{
  result = qword_10023D9F8;
  if (!qword_10023D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9F8);
  }

  return result;
}

uint64_t sub_100154058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001540A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015410C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100154154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100154204(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100154238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100154280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100154324()
{
  result = qword_10023DA00;
  if (!qword_10023DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA00);
  }

  return result;
}

unint64_t sub_10015437C()
{
  result = qword_10023DA08;
  if (!qword_10023DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA08);
  }

  return result;
}

unint64_t sub_1001543D4()
{
  result = qword_10023DA10;
  if (!qword_10023DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA10);
  }

  return result;
}

unint64_t sub_10015442C()
{
  result = qword_10023DA18;
  if (!qword_10023DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA18);
  }

  return result;
}

unint64_t sub_100154484()
{
  result = qword_10023DA20;
  if (!qword_10023DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA20);
  }

  return result;
}

unint64_t sub_1001544DC()
{
  result = qword_10023DA28;
  if (!qword_10023DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA28);
  }

  return result;
}

unint64_t sub_100154534()
{
  result = qword_10023DA30;
  if (!qword_10023DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA30);
  }

  return result;
}

unint64_t sub_10015458C()
{
  result = qword_10023DA38;
  if (!qword_10023DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA38);
  }

  return result;
}

unint64_t sub_1001545E4()
{
  result = qword_10023DA40;
  if (!qword_10023DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA40);
  }

  return result;
}

unint64_t sub_100154638()
{
  result = qword_10023DA48;
  if (!qword_10023DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA48);
  }

  return result;
}

uint64_t sub_1001546C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10000BD30;

  return sub_10003EBDC(a2, a3, a4);
}

uint64_t sub_1001549F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100154A28()
{
  sub_10001BABC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100154A60(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000BD30;

  return sub_1001546C8(a1, a2, v7, v6);
}

uint64_t sub_100154B10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100154B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000152E0;

  return sub_100084734(a1, a2, a3, v8);
}

uint64_t sub_100154C28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100154CC8();
}

uint64_t sub_100154CC8()
{
  v1 = type metadata accessor for Logger();
  v0[13] = v1;
  v0[14] = *(v1 - 8);
  v0[15] = swift_task_alloc();

  return _swift_task_switch(sub_100154D84, 0, 0);
}

uint64_t sub_100154D84(uint64_t a1)
{
  v18 = v1;
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  v5 = Logger.developerMode.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Resetting developer mode", v8, 2u);
  }

  v10 = v1[14];
  v9 = v1[15];
  v11 = v1[13];

  (*(v10 + 8))(v9, v11);
  v12 = [objc_opt_self() sharedScheduler];
  v16[3] = &type metadata for ActivityManager;
  v16[4] = &off_100223E90;
  v13 = swift_allocObject();
  v16[0] = v13;
  v13[5] = &type metadata for BackgroundSystemTaskScheduler;
  v13[6] = &off_100217910;
  v13[2] = v12;
  v17[3] = &type metadata for LaunchServicesRecordFactory;
  v17[4] = &off_10021CBA8;
  sub_1000B8524(v16, v17, (v1 + 2));
  sub_1000B8AD8(0);
  sub_10014AA3C((v1 + 2));

  v14 = v1[1];

  return v14();
}

uint64_t sub_100154F48()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100154F80(uint64_t a1, void *a2)
{
  v3 = *sub_10000DA7C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return swift_continuation_resume();
}

uint64_t sub_100155010(uint64_t a1)
{
  sub_10000DA7C((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_100155044(uint64_t a1, void *a2)
{
  v3 = sub_10000DA7C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100155110()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[21] = v1;
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v0[22] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100155270;
  v3 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023DAA0, &qword_1001C2840);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100154F80;
  v0[13] = &unk_100222BF0;
  v0[14] = v3;
  [v1 getImpressionsForApp:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100155270()
{

  return _swift_task_switch(sub_100155350, 0, 0);
}

uint64_t sub_100155350()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1001553C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1001553EC, 0, 0);
}

uint64_t sub_1001553EC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[21] = v1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;
  v3 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_100155560;
  v4 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023DA98, &qword_1001C2830);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155010;
  v0[13] = &unk_100222BC8;
  v0[14] = v4;
  [v1 storeSkannerEvents:isa advertisedItemID:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100155560()
{

  return _swift_task_switch(sub_100155640, 0, 0);
}

uint64_t sub_100155640()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001556C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1001556E4, 0, 0);
}

uint64_t sub_1001556E4()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[3] = sub_100155840;
  v3 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023DAA8, &unk_1001C2850);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155044;
  v0[13] = &unk_100222C18;
  v0[14] = v3;
  [v1 storePostbacks:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100155840()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1001559B8;
  }

  else
  {
    v2 = sub_100155950;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100155950()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001559B8(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

id sub_100155BF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SoloEventEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100155C50()
{
  result = qword_10023DAD8;
  if (!qword_10023DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DAD8);
  }

  return result;
}

uint64_t sub_100155CA4()
{
  v2 = v0[1];
  os_activity_scope_leave(&v2);
  return swift_deallocClassInstance();
}

uint64_t sub_100155D30()
{
  qword_10023DAF8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_100155D6C(os_activity_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_100239D28 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_10023DAF8;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (description >> 32)
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_100239D28 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_10023DAF8, OS_ACTIVITY_FLAG_DEFAULT);
}

id sub_1001560CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FinalizedTokenEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100156128()
{
  result = qword_10023DBC8;
  if (!qword_10023DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DBC8);
  }

  return result;
}

unint64_t sub_100156180()
{
  result = qword_10023DBE8;
  if (!qword_10023DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DBE8);
  }

  return result;
}

unint64_t sub_1001561D8()
{
  result = qword_10023DBF0;
  if (!qword_10023DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DBF0);
  }

  return result;
}

unint64_t sub_10015622C(uint64_t a1)
{
  *(a1 + 8) = sub_10015625C();
  result = sub_1000F1A64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015625C()
{
  result = qword_10023DC40;
  if (!qword_10023DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC40);
  }

  return result;
}

uint64_t sub_1001562B0(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023DC70, &qword_1001C2B08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_1001561D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = *(v3 + 40);
    v10[12] = 2;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1001564BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100156590(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100156650(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100156720@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100156AA4(*a1);
  *a2 = result;
  return result;
}

void sub_100156750(unint64_t *a1@<X8>)
{
  v2 = 0xED000064695F6E6FLL;
  v3 = 0x69737265766E6F63;
  v4 = 0xEF657079745F6E6FLL;
  v5 = 0x69737265766E6F63;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001001CA620;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1001567E8()
{
  v1 = 0x69737265766E6F63;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0x69737265766E6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t sub_100156874@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100156AA4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001568AC(uint64_t a1)
{
  v2 = sub_1001561D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001568E8(uint64_t a1)
{
  v2 = sub_1001561D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100156924@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100156AF0(a2, v6);
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

unint64_t sub_100156990()
{
  result = qword_10023DC48;
  if (!qword_10023DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC48);
  }

  return result;
}

unint64_t sub_1001569E8()
{
  result = qword_10023DC50;
  if (!qword_10023DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC50);
  }

  return result;
}

unint64_t sub_100156A40()
{
  result = qword_10023DC58;
  if (!qword_10023DC58)
  {
    sub_10000CCC0(&qword_10023DC60, &qword_1001C2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC58);
  }

  return result;
}

unint64_t sub_100156AA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002161C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100156AF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023DC68, &qword_1001C2B00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1001561D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v21 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v20 = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 2;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIDWORD(v15) = v19;
  v17 = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v12;
  *(a2 + 24) = v11;
  *(a2 + 32) = v16;
  *(a2 + 40) = BYTE4(v15);
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_100156D7C()
{
  result = qword_10023DC78;
  if (!qword_10023DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC78);
  }

  return result;
}

id sub_100156DD0(uint64_t a1, uint64_t a2)
{
  v4 = [v2 connection];
  v5 = String._bridgeToObjectiveC()();

  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = sub_1000873A0(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10[2] = &v11;
  sub_100037374(sub_1001570B4, v10, v8);

  if (v3)
  {
  }

  else if (v13)
  {
    v4 = v12;
  }

  else
  {
    return 0;
  }

  return v4;
}

id sub_100156FE0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppMetadataDatabaseSession();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100157038(uint64_t *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];

  *a4 = v6;
  a4[1] = v7;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = v10;
  *a3 = 1;
}

uint64_t sub_1001570CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10015716C();
}

uint64_t sub_100157188()
{
  v23 = v0;
  v1 = objc_opt_self();
  v2 = [v1 sharedScheduler];
  v18 = &type metadata for ActivityManager;
  v19 = &off_100223E90;
  v3 = swift_allocObject();
  v17[0] = v3;
  v3[5] = &type metadata for BackgroundSystemTaskScheduler;
  v3[6] = &off_100217910;
  v3[2] = v2;
  v21 = &type metadata for LaunchServicesRecordFactory;
  v22 = &off_10021CBA8;
  sub_1000B8524(v17, v20, v0 + 616);
  sub_1000BA604();
  sub_10014AA3C(v0 + 616);
  if (qword_100239CB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 704) = sub_10000DAC0(v4, qword_10023FC58);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Scheduling postback fetch if needed", v7, 2u);
  }

  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FC50;
  v9 = [v1 sharedScheduler];
  *(v0 + 208) = &type metadata for ActivityManager;
  *(v0 + 216) = &off_100223E90;
  v10 = swift_allocObject();
  *(v0 + 184) = v10;
  v10[5] = &type metadata for BackgroundSystemTaskScheduler;
  v10[6] = &off_100217910;
  v10[2] = v9;
  *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v0 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v11 = qword_10023FC28;
  *(v0 + 312) = type metadata accessor for TaskGreyhound(0);
  *(v0 + 320) = &off_1002169F0;
  *(v0 + 288) = v11;
  *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v0 + 360) = &off_10021CBA8;
  *(v0 + 392) = &type metadata for AMSDogBag;
  *(v0 + 400) = &off_100222F48;

  v12 = [v1 sharedScheduler];
  v18 = &type metadata for ActivityManager;
  v19 = &off_100223E90;
  v13 = swift_allocObject();
  v17[0] = v13;
  v13[5] = &type metadata for BackgroundSystemTaskScheduler;
  v13[6] = &off_100217910;
  v13[2] = v12;
  v21 = &type metadata for LaunchServicesRecordFactory;
  v22 = &off_10021CBA8;
  sub_1000B8524(v17, v20, v0 + 408);
  *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v0 + 528) = &off_100222C60;
  sub_1000B42E0((v0 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v14 = qword_10023FD90;
  *(v0 + 600) = type metadata accessor for SnoutManager(0);
  *(v0 + 608) = &off_100223858;
  *(v0 + 576) = v14;
  strcpy((v0 + 16), "postback_store");
  *(v0 + 31) = -18;
  *(v0 + 32) = v8;
  *(v0 + 40) = 0x63616274736F6867;
  *(v0 + 48) = 0xEF65726F74735F6BLL;
  *(v0 + 56) = v8;
  *(v0 + 64) = 0xD000000000000010;
  *(v0 + 72) = 0x80000001001CB320;
  *(v0 + 80) = v8;
  *(v0 + 88) = 0x74735F6E656B6F74;
  *(v0 + 96) = 0xEB0000000065726FLL;
  *(v0 + 104) = v8;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001001CB340;
  *(v0 + 128) = v8;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001001CB360;
  *(v0 + 152) = v8;
  *(v0 + 160) = 0xD000000000000018;
  *(v0 + 168) = 0x80000001001CB380;
  *(v0 + 176) = v8;
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001001CB3A0;
  *(v0 + 240) = v8;

  v15 = swift_task_alloc();
  *(v0 + 712) = v15;
  *v15 = v0;
  v15[1] = sub_1001576B4;

  return sub_100128208();
}

uint64_t sub_1001576B4()
{
  *(*v1 + 720) = v0;

  if (v0)
  {
    v2 = sub_1001577C8;
  }

  else
  {
    v2 = sub_10004E764;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001577C8()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to schedule postback fetch with error: %@", v3, 0xCu);
    sub_1000AEA80(v4);
  }

  else
  {
  }

  sub_10004E7FC(v0 + 16);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100157920()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100157958(char a1)
{
  result = 0x7363697274656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000032;
      break;
    case 2:
    case 10:
      result = 0xD000000000000036;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    case 4:
    case 15:
      result = 0xD000000000000042;
      break;
    case 5:
    case 14:
      result = 0xD000000000000038;
      break;
    case 6:
    case 17:
      result = 0xD000000000000039;
      break;
    case 7:
      result = 0xD00000000000002ELL;
      break;
    case 8:
      result = 0xD00000000000003BLL;
      break;
    case 9:
    case 12:
      result = 0xD000000000000046;
      break;
    case 11:
      result = 0xD000000000000043;
      break;
    case 13:
      result = 0xD000000000000031;
      break;
    case 16:
      result = 0xD000000000000032;
      break;
    case 18:
      result = 0xD00000000000003ELL;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100157BD8(uint64_t a1, char a2)
{
  *(v2 + 153) = a2;
  *(v2 + 160) = a1;
  return _swift_task_switch(sub_100157BFC, 0, 0);
}

uint64_t sub_100157BFC()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 URLForKey:v5];
  *(v0 + 168) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100157DDC;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCB8, &qword_1001C2D38);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222F00;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100157DDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100157FA0;
  }

  else
  {
    v2 = sub_100157EEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100157EEC()
{
  v1 = v0[21];
  v2 = v0[18];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v0[20];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100157FA0(uint64_t a1)
{
  v19 = v1;
  v2 = *(v1 + 168);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FC70);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 153);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    v10 = sub_100157958(v6);
    v12 = sub_10017AD04(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get bag value for key %s, error: %@", v7, 0x16u);
    sub_1000AEA80(v8);

    sub_10000DB58(v9);
  }

  else
  {
  }

  v14 = *(v1 + 160);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_100158210()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 integerForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1001583F0;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCA8, &qword_1001C2D08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222EB0;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001583F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1001596F4;
  }

  else
  {
    v2 = sub_100158500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100158500()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = [v2 integerValue];

  v4 = v0[21] != 0;
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_1001585B4()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 doubleForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100158794;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCA8, &qword_1001C2D08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222E88;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100158794()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100158938;
  }

  else
  {
    v2 = sub_1001588A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001588A4()
{
  v1 = v0[20];
  v2 = v0[18];
  [v2 doubleValue];
  v4 = v3;

  v5 = v0[21] != 0;
  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_100158938(uint64_t a1)
{
  v18 = v1;
  v2 = *(v1 + 160);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FC70);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 153);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    v10 = sub_100157958(v6);
    v12 = sub_10017AD04(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get bag value for key %s, error: %@", v7, 0x16u);
    sub_1000AEA80(v8);

    sub_10000DB58(v9);
  }

  else
  {
  }

  v14 = *(v1 + 168) != 0;
  v15 = *(v1 + 8);

  return v15(0, v14);
}

uint64_t sub_100158B74()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 BOOLForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100158D54;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCA8, &qword_1001C2D08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222E60;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100158D54()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100158EEC;
  }

  else
  {
    v2 = sub_100158E64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100158E64()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = [v2 BOOLValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100158EEC(uint64_t a1)
{
  v17 = v1;
  v2 = *(v1 + 160);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FC70);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 153);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    v10 = sub_100157958(v6);
    v12 = sub_10017AD04(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get BOOL bag value for key %s, error: %@", v7, 0x16u);
    sub_1000AEA80(v8);

    sub_10000DB58(v9);
  }

  else
  {
  }

  v14 = *(v1 + 8);

  return v14(2);
}

uint64_t sub_100159134()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 stringForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100159314;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCB0, &qword_1001C2D28);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222ED8;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100159314()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1001594AC;
  }

  else
  {
    v2 = sub_100159424;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100159424()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_1001594AC(uint64_t a1)
{
  v17 = v1;
  v2 = *(v1 + 160);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FC70);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 153);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    v10 = sub_100157958(v6);
    v12 = sub_10017AD04(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get bag value for key %s, error: %@", v7, 0x16u);
    sub_1000AEA80(v8);

    sub_10000DB58(v9);
  }

  else
  {
  }

  v14 = *(v1 + 8);

  return v14(0, 0);
}

uint64_t sub_1001596F8(uint64_t a1, uint64_t a2)
{
  v3[167] = v2;
  v3[166] = a2;
  v3[165] = a1;
  v4 = type metadata accessor for Calendar.Component();
  v3[168] = v4;
  v3[169] = *(v4 - 8);
  v3[170] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[171] = v5;
  v3[172] = *(v5 - 8);
  v3[173] = swift_task_alloc();

  return _swift_task_switch(sub_10015981C, v2, 0);
}

uint64_t sub_10015981C(uint64_t a1)
{
  v2 = *(v1 + 1384);
  v3 = *(v1 + 1376);
  v4 = *(v1 + 1368);
  v5 = *(v1 + 1360);
  v6 = *(v1 + 1352);
  v7 = *(v1 + 1344);
  v8 = *(v1 + 1320);
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v9 = sub_100025808(v2, v5);
  v11 = v10;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  v13 = [objc_opt_self() buildVersion];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v1 + 1480) = 1;
  *(v1 + 1488) = 1;
  *(v1 + 1496) = 1;
  *(v1 + 1504) = 1;
  *(v1 + 1512) = 1;
  *(v1 + 688) = 2561;
  *(v1 + 696) = 0u;
  *(v1 + 712) = 0u;
  *(v1 + 728) = 0u;
  *(v1 + 744) = v12;
  *(v1 + 752) = v14;
  *(v1 + 760) = v16;
  *(v1 + 768) = 0;
  *(v1 + 769) = 33686018;
  *(v1 + 773) = 2;
  *(v1 + 776) = 0;
  *(v1 + 784) = 1;
  *(v1 + 792) = 0;
  *(v1 + 800) = 769;
  *(v1 + 808) = 0;
  v17 = *(v1 + 1496);
  *(v1 + 816) = v17;
  *(v1 + 824) = 0;
  v18 = *(v1 + 1504);
  *(v1 + 832) = v18;
  *(v1 + 833) = 770;
  *(v1 + 840) = 0;
  v19 = *(v1 + 1512);
  *(v1 + 848) = v19;
  *(v1 + 856) = 0u;
  *(v1 + 872) = 514;
  *(v1 + 874) = 2;
  *(v1 + 880) = 0u;
  *(v1 + 896) = 0u;
  *(v1 + 464) = 2561;
  *(v1 + 488) = 0u;
  *(v1 + 504) = 0u;
  *(v1 + 472) = 0u;
  *(v1 + 520) = v12;
  *(v1 + 528) = v14;
  *(v1 + 536) = v16;
  *(v1 + 544) = 0;
  *(v1 + 549) = 2;
  *(v1 + 545) = 33686018;
  *(v1 + 552) = 0;
  *(v1 + 560) = 1;
  *(v1 + 568) = 0;
  *(v1 + 576) = 769;
  *(v1 + 584) = 0;
  *(v1 + 592) = v17;
  *(v1 + 600) = 0;
  *(v1 + 608) = v18;
  *(v1 + 609) = 770;
  *(v1 + 616) = 0;
  *(v1 + 624) = v19;
  *(v1 + 632) = 0u;
  *(v1 + 648) = 514;
  *(v1 + 650) = 2;
  *(v1 + 656) = 0u;
  *(v1 + 672) = 0u;
  sub_100010568(v1 + 688, v1 + 912);
  sub_10003AE8C(v1 + 464);
  v20 = *(v1 + 704);
  *(v1 + 1392) = *(v1 + 688);
  *(v1 + 1408) = v20;
  v21 = *(v1 + 872);
  *(v1 + 1264) = *(v1 + 856);
  *(v1 + 1280) = v21;
  *(v1 + 1296) = *(v1 + 888);
  v22 = *(v1 + 808);
  *(v1 + 1200) = *(v1 + 792);
  *(v1 + 1216) = v22;
  v23 = *(v1 + 840);
  *(v1 + 1232) = *(v1 + 824);
  *(v1 + 1248) = v23;
  v24 = *(v1 + 744);
  *(v1 + 1136) = *(v1 + 728);
  *(v1 + 1152) = v24;
  v25 = *(v1 + 776);
  *(v1 + 1168) = *(v1 + 760);
  *(v1 + 1424) = *(v1 + 720);
  *(v1 + 1312) = *(v1 + 904);
  *(v1 + 1184) = v25;
  v26 = v8[3];
  v27 = v8[4];
  sub_10000DA7C(v8, v26);
  if ((*(v27 + 8))(v26, v27) == 0xC181BADB23D8497BLL)
  {
    v28 = v8[3];
    v29 = v8[4];
    sub_10000DA7C(*(v1 + 1320), v28);
    if ((*(v29 + 16))(v28, v29) == 1589136771)
    {
      v30 = *(v1 + 1336);
      v31 = v8[3];
      v32 = v8[4];
      sub_10000DA7C(*(v1 + 1320), v31);
      if (*(v30 + 192) < (*(v32 + 24))(v31, v32))
      {
        v34 = v8[3];
        v33 = v8[4];
        sub_10000DA7C(*(v1 + 1320), v34);
        *(v30 + 192) = (*(v33 + 24))(v34, v33);
        v35 = swift_task_alloc();
        *(v1 + 1432) = v35;
        *v35 = v1;
        v35[1] = sub_100159E90;
        v36 = *(v1 + 1320);

        return sub_1000457E0(v36);
      }

      sub_10015A8DC();
      v38 = swift_allocError();
      v41 = 2;
    }

    else
    {
      sub_10015A8DC();
      v38 = swift_allocError();
      v41 = 1;
    }

    *v40 = v41;
  }

  else
  {
    sub_10015A8DC();
    v38 = swift_allocError();
    *v39 = 0;
  }

  swift_willThrow();
  *(v1 + 1464) = v38;
  v58 = *(v1 + 1392);
  v42 = *(v1 + 1336);
  v43 = sub_1000C7C10(v38);
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_10000DA7C((v42 + 152), *(v42 + 176));
  v50 = *(v1 + 1280);
  *(v1 + 184) = *(v1 + 1264);
  *(v1 + 200) = v50;
  *(v1 + 216) = *(v1 + 1296);
  v51 = *(v1 + 1216);
  *(v1 + 120) = *(v1 + 1200);
  *(v1 + 136) = v51;
  v52 = *(v1 + 1248);
  *(v1 + 152) = *(v1 + 1232);
  *(v1 + 168) = v52;
  v53 = *(v1 + 1152);
  *(v1 + 56) = *(v1 + 1136);
  *(v1 + 72) = v53;
  v54 = *(v1 + 1184);
  *(v1 + 88) = *(v1 + 1168);
  *(v1 + 16) = v58;
  *(v1 + 24) = v43;
  *(v1 + 32) = v45;
  *(v1 + 40) = v47;
  *(v1 + 48) = v49;
  *(v1 + 232) = *(v1 + 1312);
  *(v1 + 104) = v54;
  v55 = type metadata accessor for SnoutManager(0);
  v56 = swift_task_alloc();
  *(v1 + 1472) = v56;
  *v56 = v1;
  v56[1] = sub_10015A6DC;
  v57 = *(v1 + 1328);

  return (sub_10016E27C)(v1 + 16, v57, 0, 0, v55, &off_100223858);
}

uint64_t sub_100159E90(uint64_t a1)
{
  v4 = *v2;
  v4[180] = v1;

  v5 = v4[167];
  if (v1)
  {
    v6 = sub_10015A348;
  }

  else
  {
    v4[181] = a1;
    v6 = sub_100159FCC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100159FCC()
{
  v1 = (v0 + 1136);
  if ((*(v0 + 1448) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = *(v0 + 1424);
    v29 = *(v0 + 1408);
    v30 = *(v0 + 1392);
    sub_10000DA7C((*(v0 + 1336) + 152), *(*(v0 + 1336) + 176));
    *(v0 + 256) = v29;
    *(v0 + 240) = v30;
    v3 = v0 + 240;
    *(v0 + 272) = v2;
    v4 = *(v0 + 1280);
    *(v0 + 408) = *(v0 + 1264);
    *(v0 + 424) = v4;
    *(v0 + 440) = *(v0 + 1296);
    *(v0 + 456) = *(v0 + 1312);
    v5 = *(v0 + 1216);
    *(v0 + 344) = *(v0 + 1200);
    *(v0 + 360) = v5;
    v6 = *(v0 + 1248);
    *(v0 + 376) = *(v0 + 1232);
    *(v0 + 392) = v6;
    v7 = *(v0 + 1152);
    *(v0 + 280) = *v1;
    *(v0 + 296) = v7;
    v8 = *(v0 + 1184);
    *(v0 + 312) = *(v0 + 1168);
    *(v0 + 328) = v8;
    v9 = type metadata accessor for SnoutManager(0);
    v10 = swift_task_alloc();
    *(v0 + 1456) = v10;
    *v10 = v0;
    v11 = sub_10015A554;
  }

  else
  {
    sub_10015A8DC();
    v12 = swift_allocError();
    *v13 = 3;
    swift_willThrow();
    *(v0 + 1464) = v12;
    v31 = *(v0 + 1392);
    v14 = *(v0 + 1336);
    v15 = sub_1000C7C10(v12);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_10000DA7C((v14 + 152), *(v14 + 176));
    v22 = *(v0 + 1280);
    *(v0 + 184) = *(v0 + 1264);
    *(v0 + 200) = v22;
    *(v0 + 216) = *(v0 + 1296);
    v23 = *(v0 + 1216);
    *(v0 + 120) = *(v0 + 1200);
    *(v0 + 136) = v23;
    v24 = *(v0 + 1248);
    *(v0 + 152) = *(v0 + 1232);
    *(v0 + 168) = v24;
    v25 = *(v0 + 1152);
    *(v0 + 56) = *v1;
    *(v0 + 72) = v25;
    v26 = *(v0 + 1184);
    *(v0 + 88) = *(v0 + 1168);
    *(v0 + 16) = v31;
    v3 = v0 + 16;
    *(v0 + 24) = v15;
    *(v0 + 32) = v17;
    *(v0 + 40) = v19;
    *(v0 + 48) = v21;
    *(v0 + 232) = *(v0 + 1312);
    *(v0 + 104) = v26;
    v9 = type metadata accessor for SnoutManager(0);
    v10 = swift_task_alloc();
    *(v0 + 1472) = v10;
    *v10 = v0;
    v11 = sub_10015A6DC;
  }

  v10[1] = v11;
  v27 = *(v0 + 1328);

  return (sub_10016E27C)(v3, v27, 0, 0, v9, &off_100223858);
}

uint64_t sub_10015A348()
{
  v1 = *(v0 + 1440);
  *(v0 + 1464) = v1;
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1336);
  v4 = sub_1000C7C10(v1);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  sub_10000DA7C((v3 + 152), *(v3 + 176));
  *(v0 + 16) = v2;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
  *(v0 + 40) = v8;
  *(v0 + 48) = v10;
  *(v0 + 184) = *(v0 + 1264);
  *(v0 + 200) = *(v0 + 1280);
  *(v0 + 216) = *(v0 + 1296);
  *(v0 + 232) = *(v0 + 1312);
  *(v0 + 120) = *(v0 + 1200);
  *(v0 + 136) = *(v0 + 1216);
  *(v0 + 152) = *(v0 + 1232);
  *(v0 + 168) = *(v0 + 1248);
  *(v0 + 56) = *(v0 + 1136);
  *(v0 + 72) = *(v0 + 1152);
  *(v0 + 88) = *(v0 + 1168);
  *(v0 + 104) = *(v0 + 1184);
  v11 = type metadata accessor for SnoutManager(0);
  v12 = swift_task_alloc();
  *(v0 + 1472) = v12;
  *v12 = v0;
  v12[1] = sub_10015A6DC;
  v13 = *(v0 + 1328);

  return (sub_10016E27C)(v0 + 16, v13, 0, 0, v11, &off_100223858);
}

uint64_t sub_10015A554()
{
  v1 = *v0;
  v2 = *(*v0 + 1336);

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_10015A66C, v2, 0);
}

uint64_t sub_10015A66C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015A6DC()
{
  v1 = *v0;
  v2 = *(*v0 + 1336);

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10015A7F4, v2, 0);
}

uint64_t sub_10015A7F4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10015A878()
{
  sub_10000DB58((v0 + 112));
  sub_10000DB58((v0 + 152));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10015A8DC()
{
  result = qword_10023DD98;
  if (!qword_10023DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DD98);
  }

  return result;
}

unint64_t sub_10015A940(uint64_t a1)
{
  result = sub_10015A8DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10015A96C()
{
  result = qword_10023DDA0;
  if (!qword_10023DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DDA0);
  }

  return result;
}

id sub_10015AAFC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceListenerDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10015AB64(void *a1)
{
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
  [a1 setRemoteObjectInterface:v4];

  v5 = [v3 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon15ServiceProtocol_];
  [a1 setExportedInterface:v5];

  [a1 setExportedObject:*(v1 + OBJC_IVAR____TtC20AttributionKitDaemon23ServiceListenerDelegate_serviceBridge)];
  [a1 resume];
  v6 = [a1 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    XPCClientProtocol.handleMessage(_:)(0, 0);
    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_10015ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10015ADAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PostAppInstallTask(uint64_t a1)
{
  result = qword_10023DE68;
  if (!qword_10023DE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015AE9C(uint64_t a1)
{
  result = sub_10015AF64();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10015AF64()
{
  result = qword_10023AE00;
  if (!qword_10023AE00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10023AE00);
  }

  return result;
}

uint64_t sub_10015AFC8()
{
  v1[108] = v0;
  v2 = type metadata accessor for PostAppInstallTask(0);
  v1[109] = v2;
  v3 = *(v2 - 8);
  v1[110] = v3;
  v1[111] = *(v3 + 64);
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();

  return _swift_task_switch(sub_10015B09C, 0, 0);
}

uint64_t sub_10015B09C(uint64_t a1)
{
  *(v1 + 548) = *(*(v1 + 872) + 44);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running post app install task", v4, 2u);
  }

  v5 = *(v1 + 904);
  v6 = *(v1 + 880);
  v7 = *(v1 + 864);

  v9 = v7[3];
  v8 = v7[4];
  v10 = v7[5];
  sub_1000B6DD0(v7, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v1 + 912) = v12;
  sub_10015C650(v5, v12 + v11);
  v13 = swift_task_alloc();
  *(v1 + 920) = v13;
  *v13 = v1;
  v13[1] = sub_10015B258;

  return sub_10010FC40(v1 + 448, sub_10015C6B4, v12, v9, v8, v10);
}

uint64_t sub_10015B258()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_10015BE48;
  }

  else
  {
    v2 = sub_10015B37C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015B37C()
{
  v1 = (v0 + 448);
  v2 = *(v0 + 528);
  *(v0 + 616) = *(v0 + 512);
  *(v0 + 632) = v2;
  v3 = *(v0 + 464);
  *(v0 + 552) = *(v0 + 448);
  *(v0 + 568) = v3;
  v4 = *(v0 + 496);
  *(v0 + 584) = *(v0 + 480);
  *(v0 + 600) = v4;
  *(v0 + 647) = *(v0 + 543);
  v5 = *(v0 + 568);
  *(v0 + 936) = v5;
  v6 = *(v0 + 576);
  *(v0 + 944) = v6;
  v7 = *(v0 + 648);
  *(v0 + 547) = v7;
  if (v6)
  {
    v8 = *(v0 + 864);
    v9 = *(v0 + 649);
    v10 = v8[13];
    v30 = v8[12];
    v11 = v8[14];
    v12 = swift_allocObject();
    *(v0 + 952) = v12;
    v13 = *v1;
    v14 = *(v0 + 464);
    *(v12 + 16) = *v1;
    *(v12 + 32) = v5;
    *(v12 + 40) = v6;
    v15 = *(v0 + 496);
    *(v12 + 48) = *(v0 + 480);
    *(v12 + 64) = v15;
    v16 = *(v0 + 528);
    *(v12 + 80) = *(v0 + 512);
    *(v12 + 96) = v16;
    *(v12 + 112) = v7;
    *(v12 + 113) = v9;
    *(v0 + 656) = v13;
    *(v0 + 672) = v14;
    v17 = *(v0 + 480);
    v18 = *(v0 + 496);
    v19 = *(v0 + 512);
    v20 = *(v0 + 528);
    *(v0 + 751) = *(v0 + 543);
    *(v0 + 720) = v19;
    *(v0 + 736) = v20;
    *(v0 + 688) = v17;
    *(v0 + 704) = v18;
    sub_10001B9B0(v0 + 656, v0 + 760);
    v21 = swift_task_alloc();
    *(v0 + 960) = v21;
    *v21 = v0;
    v21[1] = sub_10015B630;

    return sub_10010FAD4(v0 + 16, sub_10015C7B8, v12, v30, v10, v11);
  }

  else
  {
    sub_1000B6DD0(*(v0 + 864), *(v0 + 896));
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 896);
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = *v26;
      sub_1000B6E34(v26);
      *(v27 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "No allocated token found for app %llu", v27, 0xCu);
    }

    else
    {
      sub_1000B6E34(*(v0 + 896));
    }

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_10015B630()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    sub_10000DAF8(v2 + 552, &qword_10023AFD8, qword_1001B7F28);
    v3 = sub_10015BEB8;
  }

  else
  {
    v3 = sub_10015B76C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015B76C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  *(v0 + 384) = v2;
  *(v0 + 400) = v1;
  v4 = *(v0 + 112);
  v6 = *(v0 + 128);
  v5 = *(v0 + 144);
  *(v0 + 416) = v6;
  *(v0 + 432) = v5;
  v8 = *(v0 + 32);
  v7 = *(v0 + 48);
  v9 = *(v0 + 16);
  *(v0 + 320) = v8;
  *(v0 + 336) = v7;
  v10 = *(v0 + 48);
  v12 = *(v0 + 64);
  v11 = *(v0 + 80);
  *(v0 + 352) = v12;
  *(v0 + 368) = v11;
  v13 = *(v0 + 16);
  *(v0 + 256) = v4;
  *(v0 + 272) = v6;
  *(v0 + 288) = *(v0 + 144);
  *(v0 + 304) = v13;
  *(v0 + 192) = v10;
  *(v0 + 208) = v12;
  *(v0 + 224) = v3;
  *(v0 + 240) = v2;
  *(v0 + 160) = v9;
  *(v0 + 176) = v8;
  if (sub_10014B138(v0 + 160) == 1)
  {
    v14 = &qword_10023AFD8;
    v15 = qword_1001B7F28;
    v16 = v0 + 552;
    goto LABEL_3;
  }

  if ((*(v0 + 184) != 0xD000000000000012 || 0x80000001001CB3C0 != *(v0 + 192)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10000DAF8(v0 + 552, &qword_10023AFD8, qword_1001B7F28);
    v14 = &qword_10023CBD8;
    v15 = &qword_1001C1840;
    v16 = v0 + 304;
LABEL_3:
    sub_10000DAF8(v16, v14, v15);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Ignoring post app install task";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  sub_10000DAF8(v0 + 304, &qword_10023CBD8, &qword_1001C1840);
  if (*(v0 + 296))
  {
    sub_10000DAF8(v0 + 552, &qword_10023AFD8, qword_1001B7F28);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Ghostback is already scheduled";
      goto LABEL_11;
    }

LABEL_12:

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Post app install conversion attribution", v25, 2u);
  }

  v26 = swift_task_alloc();
  *(v0 + 976) = v26;
  *v26 = v0;
  v26[1] = sub_10015BAA8;

  return sub_10015BF28();
}

uint64_t sub_10015BAA8()
{

  return _swift_task_switch(sub_10015BBA4, 0, 0);
}

uint64_t sub_10015BBA4()
{
  v1 = *(v0 + 944);
  sub_10000DA7C((*(v0 + 864) + 120), *(*(v0 + 864) + 144));
  v2 = swift_task_alloc();
  *(v0 + 984) = v2;
  *v2 = v0;
  v2[1] = sub_10015BC5C;
  v3 = *(v0 + 936);
  v4 = *(v0 + 547);

  return sub_100137450(v3, v1, v4);
}

uint64_t sub_10015BC5C()
{
  v2 = *v1;
  *(v2 + 992) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10015BDC0, 0, 0);
  }

  else
  {
    sub_10000DAF8(v2 + 552, &qword_10023AFD8, qword_1001B7F28);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10015BDC0()
{
  sub_10000DAF8(v0 + 552, &qword_10023AFD8, qword_1001B7F28);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015BE48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015BEB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015BF28()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for PostAppInstallTask(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015BFBC, 0, 0);
}

uint64_t sub_10015BFBC()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *(v0 + 64) = 1;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v8 = swift_allocObject();
  *(v0 + 40) = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = *(v0 + 64);
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_10015C0F0;

  return sub_10010E48C(sub_10010E48C, sub_10015C858, v8, v6, v5, v7);
}

uint64_t sub_10015C0F0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10015C280;
  }

  else
  {
    v2 = sub_10015C220;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015C220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015C280()
{
  sub_1000B6DD0(v0[2], v0[4]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[4];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    v7 = *v4;
    sub_1000B6E34(v4);
    *(v5 + 4) = v7;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to add metadata mapping for app %llu with error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    sub_1000B6E34(v0[4]);
  }

  v9 = v0[1];

  return v9();
}

void sub_10015C428(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EE0D4(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_10015C494()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10015AFC8();
}

uint64_t sub_10015C520()
{
  v1 = (type metadata accessor for PostAppInstallTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000DB58((v0 + v3 + 120));
  v5 = v1[13];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015C650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostAppInstallTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10015C6B4@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for PostAppInstallTask(0);
  result.n128_u64[0] = sub_10005E248(v6).n128_u64[0];
  if (!v1)
  {
    v4 = *v7;
    *(a1 + 64) = v6[4];
    *(a1 + 80) = v4;
    *(a1 + 95) = *&v7[15];
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10015C768()
{

  return _swift_deallocObject(v0, 115, 7);
}

__n128 sub_10015C7B8@<Q0>(uint64_t a1@<X8>)
{
  result.n128_u64[0] = sub_1000E3ED8(v7).n128_u64[0];
  if (!v1)
  {
    v4 = v7[7];
    *(a1 + 96) = v7[6];
    *(a1 + 112) = v4;
    *(a1 + 128) = v7[8];
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    v6 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v6;
    result = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10015C820()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10015C874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10015C8B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10015C8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015C94C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000BD30;

  return v6(a1);
}

uint64_t sub_10015CA44(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000152E0;

  return sub_10015C94C(a1, v4);
}

uint64_t sub_10015CAF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10015CB4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10015CBCC(char a1)
{
  result = 0x707954746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7954746C75736572;
      break;
    case 2:
      result = 0x726F7774654E6461;
      break;
    case 3:
      result = 0x657079546461;
      break;
    case 4:
      result = 0x7463617265746E69;
      break;
    case 5:
      result = 0x74616E6974736564;
      break;
    case 6:
      result = 0x7461745370747468;
      break;
    case 7:
      result = 0x6B63616274736F70;
      break;
    case 8:
      result = 0x6D6F44726F727265;
      break;
    case 9:
      result = 0x646F43726F727265;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x707954726566666FLL;
      break;
    case 12:
      result = 0x79636E6572727563;
      break;
    case 13:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015CDC8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023DF68, &qword_1001C3118);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_10015D2DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11 = 0;
  sub_1000CAFC8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    sub_1000CB01C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[24];
    v11 = 3;
    sub_1000CB070();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[25];
    v11 = 4;
    sub_10004CE54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[26];
    v11 = 5;
    sub_1000CB1C0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[41];
    v11 = 7;
    sub_1000CB16C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[74];
    v11 = 11;
    sub_1000CB2BC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10015D1C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10015D330(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10015D1F8(uint64_t a1)
{
  v2 = sub_10015D2DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D234(uint64_t a1)
{
  v2 = sub_10015D2DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10015D270@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10015D7D4(a2, v7);
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

unint64_t sub_10015D2DC()
{
  result = qword_10023DF70;
  if (!qword_10023DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DF70);
  }

  return result;
}

uint64_t sub_10015D330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7774654E6461 && a2 == 0xEB0000000044496BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745370747468 && a2 == 0xEE0065646F437375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CCC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_10015D7D4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v92 = sub_10000CDE0(&qword_10023DF78, &qword_1001C3120);
  v5 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v30 - v6;
  sub_10000DA7C(a1, a1[3]);
  sub_10015D2DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v8 = v5;
  LOBYTE(v48) = 0;
  sub_1000CAC80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v55[0];
  LOBYTE(v48) = 1;
  sub_1000CACD4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47 = v9;
  v10 = v55[0];
  v55[0] = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v10;
  v45 = v11;
  v46 = v12;
  LOBYTE(v48) = 3;
  sub_1000CAD28();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v55[0];
  LOBYTE(v48) = 4;
  sub_10004DC18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v43 = v13;
  v14 = v55[0];
  LOBYTE(v48) = 5;
  sub_1000CAE78();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v14;
  v15 = v55[0];
  v55[0] = 6;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v87 = v16 & 1;
  LOBYTE(v48) = 7;
  sub_1000CAE24();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v39 = v55[0];
  v40 = v15;
  v55[0] = 8;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v18;
  v55[0] = 9;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v84 = v20 & 1;
  v55[0] = 10;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v48) = 11;
  sub_1000CAF74();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v55[0];
  v55[0] = 12;
  *&v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v36 + 1) = v21;
  v81 = 13;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v23;
  v24 = v22;
  (*(v8 + 8))(v7, v92);
  v25 = v47;
  LOBYTE(v48) = v47;
  LOBYTE(v8) = v44;
  BYTE1(v48) = v44;
  *(&v48 + 1) = v45;
  *&v49 = v46;
  BYTE8(v49) = v43;
  BYTE9(v49) = v42;
  BYTE10(v49) = v40;
  *&v50 = v41;
  v31 = v87;
  BYTE8(v50) = v87;
  BYTE9(v50) = v39;
  v32 = v19;
  v33 = v17;
  *&v51 = v17;
  *(&v51 + 1) = v38;
  *&v52 = v19;
  LODWORD(v92) = v84;
  BYTE8(v52) = v84;
  LOBYTE(v19) = v37;
  BYTE9(v52) = v37;
  LOBYTE(v17) = v35;
  BYTE10(v52) = v35;
  v53 = v36;
  *&v54 = v24;
  *(&v54 + 1) = v34;
  sub_10015DE70(&v48, v55);
  sub_10000DB58(a1);
  v55[0] = v25;
  v55[1] = v8;
  v56 = v90;
  v57 = v91;
  v58 = v45;
  v59 = v46;
  v60 = v43;
  v61 = v42;
  v62 = v40;
  v63 = v88;
  v64 = v89;
  v65 = v41;
  v66 = v31;
  v67 = v39;
  v69 = v86;
  v68 = v85;
  v70 = v33;
  v71 = v38;
  v72 = v32;
  v73 = v92;
  v74 = v19;
  v75 = v17;
  v76 = v82;
  v77 = v83;
  v78 = v36;
  v79 = v24;
  v80 = v34;
  result = sub_1000C8D6C(v55);
  v27 = v53;
  a2[4] = v52;
  a2[5] = v27;
  a2[6] = v54;
  v28 = v49;
  *a2 = v48;
  a2[1] = v28;
  v29 = v51;
  a2[2] = v50;
  a2[3] = v29;
  return result;
}

uint64_t getEnumTagSinglePayload for SnoutInteropPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnoutInteropPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10015DFFC()
{
  result = qword_10023DF80;
  if (!qword_10023DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DF80);
  }

  return result;
}

unint64_t sub_10015E054()
{
  result = qword_10023DF88;
  if (!qword_10023DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DF88);
  }

  return result;
}

unint64_t sub_10015E0AC()
{
  result = qword_10023DF90;
  if (!qword_10023DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DF90);
  }

  return result;
}

void sub_10015E100(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = [v3 connection];
  sub_10000CDE0(&qword_10023DFC0, &qword_1001C3288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v10 = String._bridgeToObjectiveC()();
  *&v24 = a1;
  *(&v24 + 1) = a2;

  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v12 = objc_opt_self();
  v13 = [v12 predicateWithProperty:v10 equalToValue:v11];
  swift_unknownObjectRelease();

  *(inited + 32) = v13;
  Date.timeIntervalSince1970.getter();
  v15 = v14 * 1000.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v15 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = [v12 predicateWithProperty:v16 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:6];
  swift_unknownObjectRelease();

  *(inited + 40) = v17;
  v18 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023DFC8, qword_1001C3290);
  swift_arrayDestroy();
  v19 = sub_100084BCC(v8, v18, _swiftEmptyArrayStorage, 0, 0);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  __chkstk_darwin(v19);
  v22[2] = &v24;
  sub_10003404C(sub_10015E4F0, v22, v19);
  if (v4)
  {

    v23[0] = v24;
    v23[1] = v25;
    v23[2] = v26;
    v23[3] = v27;
    sub_10015E568(v23);
  }

  else
  {

    v20 = v25;
    *a3 = v24;
    a3[1] = v20;
    v21 = v27;
    a3[2] = v26;
    a3[3] = v21;
  }
}

id sub_10015E498(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AggregatedReportingDatabaseSession();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10015E4F0(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v7 = a1[3];
  v18 = a1[2];
  v19 = v7;
  v9 = v5[2];
  v8 = v5[3];
  v10 = v5[1];
  v20[0] = *v5;
  v20[1] = v10;
  v20[2] = v9;
  v20[3] = v8;
  sub_10015E568(v20);
  v11 = v19;
  v13 = v16;
  v12 = v17;
  v5[2] = v18;
  v5[3] = v11;
  *v5 = v13;
  v5[1] = v12;
  *a3 = 1;
  return sub_10005DD10(&v16, &v15);
}

uint64_t sub_10015E568(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023D768, &qword_1001C1880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10015E660(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ImpressionIntakeServiceListenerDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10015E6C8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009E494(0);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v10];

    v11 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon31ImpressionIntakeServiceProtocol_];
    [a1 setExportedInterface:v11];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon39ImpressionIntakeServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v12 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v13, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing entitlement for ImpressionIntakeService", v16, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8 & 1;
}

uint64_t sub_10015EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000152E0;

  return sub_10005061C(a2, a3, a4);
}

uint64_t sub_10015EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1000152E0;

  return sub_100051570(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10015F0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000152E0;

  return sub_100051C5C(a2, a3, a4, a5);
}

uint64_t sub_10015F380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000152E0;

  return sub_100052160(a2, a3, a4, a5);
}

uint64_t sub_10015F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_10000BD30;

  return sub_1000527E8(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10015FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000152E0;

  return sub_100053EE8(a2, a3, a4);
}

uint64_t sub_10015FDD8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015FE14(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10015FA98(a1, a2, v7, v6);
}

uint64_t sub_10015FEC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10015FEE4, 0, 0);
}

uint64_t sub_10015FEE4()
{
  v1 = *(v0 + 16);
  sub_1000504CC();
  *v1 = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015FF50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015FF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000152E0;

  return sub_100084734(a1, a2, a3, v8);
}

uint64_t sub_100160058()
{
  v1 = *(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100160180(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000BD30;

  return sub_10015F644(a1, a2, v8, v9, v10, v11, v2 + v7);
}

uint64_t sub_100160294()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001602CC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_10015F380(a1, a2, v6, v7, v8);
}

uint64_t sub_10016038C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_10015F0BC(a1, a2, v6, v7, v8);
}

uint64_t sub_10016044C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016048C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000152E0;

  return sub_10015EDC8(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100160560(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10015EAFC(a1, a2, v7, v6);
}

uint64_t sub_100160644@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v1 = type metadata accessor for Logger();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = __chkstk_darwin(v1);
  v56 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v55 - v4;
  v57 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  v18 = [v17 URLsForDirectory:13 inDomains:1];

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v19 + 16))
  {
    v20 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v55 = *(v10 + 16);
    v55(v13, v20, v9);

    (*(v10 + 32))(v15, v13, v9);
    v61[0] = 0xD000000000000019;
    v61[1] = 0x80000001001CB290;
    v21 = v57;
    (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v57);
    sub_10003E5C8();
    URL.append<A>(path:directoryHint:)();
    (*(v6 + 8))(v8, v21);
    v22 = [v16 defaultManager];
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v61[0] = 0;
    v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v61];

    v27 = v61[0];
    if (v26)
    {
      v28 = v60;
      v55(v60, v15, v9);
      (*(v10 + 56))(v28, 0, 1, v9);
      v29 = *(v10 + 8);
      v30 = v27;
      return v29(v15, v9);
    }

    else
    {
      v38 = v15;
      v57 = v10;
      v39 = v9;
      v40 = v61[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v41 = Logger.general.unsafeMutableAddressor();
      v43 = v58;
      v42 = v59;
      v44 = v56;
      (*(v58 + 16))(v56, v41, v59);
      swift_errorRetain();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v62 = v55;
        *v47 = 136315394;
        v49 = v38;
        swift_beginAccess();
        sub_100160D64();
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = sub_10017AD04(v50, v51, &v62);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2112;
        swift_errorRetain();
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 14) = v53;
        *v48 = v53;
        _os_log_impl(&_mh_execute_header, v45, v46, "Failed to create caches directory %s with error: %@", v47, 0x16u);
        sub_1000AEA80(v48);

        sub_10000DB58(v55);

        (*(v43 + 8))(v56, v59);
        v54 = v57;
      }

      else
      {

        (*(v43 + 8))(v44, v42);
        v54 = v57;
        v49 = v38;
      }

      (*(v54 + 56))(v60, 1, 1, v39);
      return (*(v54 + 8))(v49, v39);
    }
  }

  else
  {

    v32 = Logger.general.unsafeMutableAddressor();
    v33 = v58;
    v34 = v59;
    (*(v58 + 16))(v5, v32, v59);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No caches directory url found", v37, 2u);
    }

    (*(v33 + 8))(v5, v34);
    return (*(v10 + 56))(v60, 1, 1, v9);
  }
}

unint64_t sub_100160D64()
{
  result = qword_10023E030;
  if (!qword_10023E030)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E030);
  }

  return result;
}

uint64_t sub_100160DBC()
{
  result = os_transaction_get_description();
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

__uint64_t sub_100160DEC()
{
  v1 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000CDE0(&qword_10023E0F0, &qword_1001C34A0);
  v58 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v59 = v0;
  v16 = *(v0 + 16);
  swift_unknownObjectRetain();
  v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  result = os_transaction_get_timestamp();
  v60 = result;
  if (v17 < result)
  {
    __break(1u);
  }

  else
  {
    v57 = v3;
    v19 = v7;
    v53 = objc_opt_self();
    v20 = [v53 nanoseconds];
    sub_1001620F4();
    Measurement.init(value:unit:)();
    v21 = Logger.general.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v21, v4);
    v22 = v58;
    (*(v58 + 16))(v13, v15, v8);
    swift_unknownObjectRetain();
    v23 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v54 = v25;
    v26 = os_log_type_enabled(v24, v25);
    v27 = v22;
    v56 = v15;
    if (v26)
    {
      v50 = v24;
      v51 = v19;
      v28 = v13;
      v49 = v5;
      v52 = v23;
      v29 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v29 = 33555202;
      *(v29 + 4) = v60;
      *(v29 + 6) = 2080;
      swift_unknownObjectRetain();
      if (os_transaction_get_description())
      {
        v30 = String.init(cString:)();
        v32 = v31;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      v34 = sub_10017AD04(v30, v32, &v61);

      *(v29 + 8) = v34;
      *(v29 + 16) = 2080;
      v35 = [v53 milliseconds];
      v36 = v55;
      Measurement<>.converted(to:)();

      v37 = Measurement<>.formatted()();
      v39 = v38;
      v40 = v36;
      v33 = *(v27 + 8);
      v33(v40, v8);
      v33(v28, v8);
      v41 = sub_10017AD04(v37, v39, &v61);

      *(v29 + 18) = v41;
      v42 = v50;
      _os_log_impl(&_mh_execute_header, v50, v54, "[TXN%hx] 🐏 Ending transaction (%s) (%s)", v29, 0x1Au);
      swift_arrayDestroy();

      (*(v49 + 8))(v51, v52);
    }

    else
    {

      v33 = *(v22 + 8);
      v33(v13, v8);
      (*(v5 + 8))(v19, v23);
    }

    v43 = v59;
    v44 = type metadata accessor for TaskPriority();
    v45 = v57;
    (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v47 = v60;
    v46[4] = v16;
    v46[5] = v47;
    swift_unknownObjectRetain();
    sub_100161968(0, 0, v45, &unk_1001C34B0, v46);
    swift_unknownObjectRelease();

    v33(v56, v8);
    swift_unknownObjectRelease();

    return v43;
  }

  return result;
}

uint64_t sub_1001613A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001614C0, 0, 0);
}

uint64_t sub_1001614C0()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10016158C;

  return sub_100161C3C(0xB469471F80140000, 0, 0, 0, 1);
}

uint64_t sub_10016158C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1001618F8;
  }

  else
  {
    v5 = sub_1001616FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001616FC(uint64_t a1)
{
  v24 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = Logger.general.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 33554946;
    *(v9 + 4) = v8;
    *(v9 + 6) = 2080;
    description = os_transaction_get_description();
    if (description)
    {
      description = String.init(cString:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v18 = v1[5];
    v17 = v1[6];
    v19 = v1[4];
    v20 = sub_10017AD04(description, v13, &v23);

    *(v9 + 8) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "[TXN%hx] 🐏 Releasing transaction (%s)", v9, 0x10u);
    sub_10000DB58(v10);

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    v15 = v1[5];
    v14 = v1[6];
    v16 = v1[4];

    (*(v15 + 8))(v14, v16);
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_1001618F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100161968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000A2558(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10009D7BC(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10009D7BC(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10009D7BC(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100161BD4()
{
  sub_100160DEC();

  return swift_deallocClassInstance();
}

uint64_t sub_100161C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100161D3C, 0, 0);
}

uint64_t sub_100161D3C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100162240(&qword_10023E100, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100162240(&qword_10023E108, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100161ECC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100161ECC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100162088, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100162088()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1001620F4()
{
  result = qword_10023E0F8;
  if (!qword_10023E0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023E0F8);
  }

  return result;
}

uint64_t sub_100162140()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100162180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BD30;

  return sub_1001613A4(a1, v4, v5, v7, v6);
}

uint64_t sub_100162240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016229C()
{
  result = qword_10023E110;
  if (!qword_10023E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E110);
  }

  return result;
}

Swift::Int sub_1001622F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 19000;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100162340()
{
  if (*v0)
  {
    v1 = 19000;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100162378(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 19000;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_1001623C4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 19000)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1001623E8(uint64_t *a1@<X8>)
{
  v2 = 19000;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

void sub_100162410(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    sub_10016263C(a2);
  }
}

unint64_t sub_100162448(void *a1)
{
  a1[1] = sub_100162480();
  a1[2] = sub_1001624D4();
  result = sub_100162528();
  a1[3] = result;
  return result;
}

unint64_t sub_100162480()
{
  result = qword_10023E158;
  if (!qword_10023E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E158);
  }

  return result;
}

unint64_t sub_1001624D4()
{
  result = qword_10023E160;
  if (!qword_10023E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E160);
  }

  return result;
}

unint64_t sub_100162528()
{
  result = qword_10023E168;
  if (!qword_10023E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E168);
  }

  return result;
}

unint64_t sub_100162580()
{
  result = qword_10023E170;
  if (!qword_10023E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E170);
  }

  return result;
}

unint64_t sub_1001625D8()
{
  result = qword_10023E178;
  if (!qword_10023E178)
  {
    sub_10000CCC0(&qword_10023E180, &qword_1001C3610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E178);
  }

  return result;
}

void sub_10016263C(uint64_t a1)
{
  _StringGuts.grow(_:)(95);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for CurrencyExchangeRateEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x79636E6572727563;
  v9._object = 0xED000065646F635FLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA600;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C4C41455220;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000012;
  v13._object = 0x80000001001CA620;
  String.append(_:)(v13);
  v14._object = 0x80000001001CB530;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x79636E6572727563;
  v15._object = 0xED000065646F635FLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001001CB550;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v17);
}

unint64_t sub_100162850()
{
  result = qword_10023E188;
  if (!qword_10023E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E188);
  }

  return result;
}

unint64_t sub_1001628A8()
{
  result = qword_10023E190;
  if (!qword_10023E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E190);
  }

  return result;
}

unint64_t sub_1001628FC(uint64_t a1)
{
  *(a1 + 8) = sub_10003C0AC();
  result = sub_1000F19C8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10016292C(void *a1)
{
  v2 = v1;
  v4 = sub_10000CDE0(&qword_10023E208, &qword_1001C37D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  sub_10000DA7C(a1, a1[3]);
  sub_1001628A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[12];
  v27 = v2[11];
  v28 = v8;
  v9 = v2[14];
  v29 = v2[13];
  v30 = v9;
  v10 = v2[8];
  v23 = v2[7];
  v24 = v10;
  v11 = v2[10];
  v25 = v2[9];
  v26 = v11;
  v12 = v2[4];
  v19 = v2[3];
  v20 = v12;
  v13 = v2[6];
  v21 = v2[5];
  v22 = v13;
  v14 = v2[2];
  v17 = v2[1];
  v18 = v14;
  sub_100104824(v2, v16);
  sub_100010514();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16[10] = v27;
  v16[11] = v28;
  v16[12] = v29;
  v16[13] = v30;
  v16[6] = v23;
  v16[7] = v24;
  v16[8] = v25;
  v16[9] = v26;
  v16[2] = v19;
  v16[3] = v20;
  v16[4] = v21;
  v16[5] = v22;
  v16[0] = v17;
  v16[1] = v18;
  sub_10003AE8C(v16);
  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_100162B04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100162B80(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100162BD8@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100215600, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100162C70@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216938, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100162CD8(uint64_t a1)
{
  v2 = sub_1001628A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100162D14(uint64_t a1)
{
  v2 = sub_1001628A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100162D50@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100162F48(a2, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v5;
    *(a1 + 224) = v11[14];
    v6 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v6;
    v7 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v7;
    v8 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v8;
    v9 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v9;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
    result = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_100162E34()
{
  result = qword_10023E1E0;
  if (!qword_10023E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E1E0);
  }

  return result;
}

unint64_t sub_100162E8C()
{
  result = qword_10023E1E8;
  if (!qword_10023E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E1E8);
  }

  return result;
}

unint64_t sub_100162EE4()
{
  result = qword_10023E1F0;
  if (!qword_10023E1F0)
  {
    sub_10000CCC0(&qword_10023E1F8, &qword_1001C3790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E1F0);
  }

  return result;
}

uint64_t sub_100162F48@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = a2;
  v4 = sub_10000CDE0(&qword_10023E200, &qword_1001C37D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v38 = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_1001628A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  sub_100010340();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  *&v37[167] = *&v35[183];
  *&v37[183] = *&v35[199];
  *&v37[199] = *&v35[215];
  *&v37[215] = v36;
  *&v37[103] = *&v35[119];
  *&v37[119] = *&v35[135];
  *&v37[135] = *&v35[151];
  *&v37[151] = *&v35[167];
  *&v37[39] = *&v35[55];
  *&v37[55] = *&v35[71];
  *&v37[71] = *&v35[87];
  *&v37[87] = *&v35[103];
  *&v37[7] = *&v35[23];
  *&v37[23] = *&v35[39];
  *(&v19[11] + 9) = *&v37[176];
  *(&v19[12] + 9) = *&v37[192];
  *(&v19[13] + 9) = *&v37[208];
  *(&v19[7] + 9) = *&v37[112];
  *(&v19[8] + 9) = *&v37[128];
  *(&v19[9] + 9) = *&v37[144];
  *(&v19[10] + 9) = *&v37[160];
  *(&v19[3] + 9) = *&v37[48];
  *(&v19[4] + 9) = *&v37[64];
  *(&v19[5] + 9) = *&v37[80];
  *(&v19[6] + 9) = *&v37[96];
  *(v19 + 9) = *v37;
  *(&v19[1] + 9) = *&v37[16];
  *&v19[0] = 0;
  v8 = v38;
  BYTE8(v19[0]) = v38;
  *(&v19[14] + 1) = *(&v36 + 1);
  *(&v19[2] + 9) = *&v37[32];
  sub_100104824(v19, &v20);
  sub_10000DB58(a1);
  v33 = *&v37[176];
  v34 = *&v37[192];
  *v35 = *&v37[208];
  v29 = *&v37[112];
  v30 = *&v37[128];
  v31 = *&v37[144];
  v32 = *&v37[160];
  v25 = *&v37[48];
  v26 = *&v37[64];
  v27 = *&v37[80];
  v28 = *&v37[96];
  v22 = *v37;
  v23 = *&v37[16];
  v20 = 0;
  v21 = v8;
  *&v35[15] = *&v37[223];
  v24 = *&v37[32];
  result = sub_10003C100(&v20);
  v10 = v19[13];
  v11 = v39;
  v39[12] = v19[12];
  v11[13] = v10;
  v11[14] = v19[14];
  v12 = v19[9];
  v11[8] = v19[8];
  v11[9] = v12;
  v13 = v19[11];
  v11[10] = v19[10];
  v11[11] = v13;
  v14 = v19[5];
  v11[4] = v19[4];
  v11[5] = v14;
  v15 = v19[7];
  v11[6] = v19[6];
  v11[7] = v15;
  v16 = v19[1];
  *v11 = v19[0];
  v11[1] = v16;
  v17 = v19[3];
  v11[2] = v19[2];
  v11[3] = v17;
  return result;
}

uint64_t sub_10016338C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001633D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100163464()
{
  result = qword_10023E210;
  if (!qword_10023E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E210);
  }

  return result;
}

void *sub_1001634B8(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for UUID();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v26 = v2;
    v34 = _swiftEmptyArrayStorage;
    sub_100147284(0, v7, 0);
    v8 = v34;
    v9 = (a1 + 32);
    swift_beginAccess();
    v10 = type metadata accessor for SnoutStoryModel(0);
    v28 = *(v5 + 16);
    v29 = v10;
    v30 = a2;
    v31 = v5 + 16;
    v27 = (v5 + 8);
    do
    {
      v11 = v9[11];
      v36[10] = v9[10];
      v36[11] = v11;
      v12 = v9[13];
      v36[12] = v9[12];
      v36[13] = v12;
      v13 = v9[7];
      v36[6] = v9[6];
      v36[7] = v13;
      v14 = v9[9];
      v36[8] = v9[8];
      v36[9] = v14;
      v15 = v9[3];
      v36[2] = v9[2];
      v36[3] = v15;
      v16 = v9[5];
      v36[4] = v9[4];
      v36[5] = v16;
      v17 = v9[1];
      v36[0] = *v9;
      v36[1] = v17;
      v18 = v32;
      v19 = v37;
      v28(v32, a2 + *(v29 + 20), v37);
      sub_100010568(v36, &v33);
      v20 = UUID.uuidString.getter();
      v22 = v21;
      (*v27)(v18, v19);
      sub_1000CF83C(v36, v20, v22, v35);
      sub_10003AE8C(v36);
      v34 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        sub_100147284((v23 > 1), v24 + 1, 1);
        v8 = v34;
      }

      v8[2] = v24 + 1;
      memcpy(&v8[59 * v24 + 4], v35, 0x1D8uLL);
      v9 += 14;
      --v7;
      a2 = v30;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_100163710()
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_10023FC50;
  v5 = &type metadata for AMSDogBag;
  v6 = &off_100222F48;
  sub_1000C2030(v4, v3);
  v1 = sub_10016E7D8(0x74735F74756F6E73, 0xEB0000000065726FLL, v0, v3, 1);
  result = sub_1000C208C(v4);
  qword_10023FD90 = v1;
  return result;
}

uint64_t sub_1001637D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100163860();
}

uint64_t sub_100163860()
{
  v1[154] = v0;
  v2 = sub_10000CDE0(&qword_10023E3B8, &qword_1001C3B70);
  v1[155] = v2;
  v1[156] = *(v2 - 8);
  v1[157] = swift_task_alloc();

  return _swift_task_switch(sub_10016392C, v0, 0);
}

uint64_t sub_10016392C()
{
  sub_10000CDE0(&qword_10023E3C0, &qword_1001C3B78);
  AsyncStream.makeAsyncIterator()();
  v1 = sub_10016F5A0(&qword_10023E3C8, type metadata accessor for SnoutManager, &unk_1001C3B30);
  v0[158] = v1;
  v2 = v0[154];
  v3 = swift_task_alloc();
  v0[159] = v3;
  *v3 = v0;
  v3[1] = sub_100163A4C;
  v4 = v0[155];

  return AsyncStream.Iterator.next(isolation:)(v0 + 64, v2, v1, v4);
}

uint64_t sub_100163A4C()
{
  v1 = *(*v0 + 1232);

  return _swift_task_switch(sub_100163B5C, v1, 0);
}

uint64_t sub_100163B5C()
{
  v1 = *(v0 + 720);
  *(v0 + 456) = *(v0 + 704);
  *(v0 + 472) = v1;
  *(v0 + 488) = *(v0 + 736);
  *(v0 + 504) = *(v0 + 752);
  v2 = *(v0 + 656);
  *(v0 + 392) = *(v0 + 640);
  *(v0 + 408) = v2;
  v3 = *(v0 + 688);
  *(v0 + 424) = *(v0 + 672);
  *(v0 + 440) = v3;
  v4 = *(v0 + 592);
  *(v0 + 328) = *(v0 + 576);
  *(v0 + 344) = v4;
  v5 = *(v0 + 624);
  *(v0 + 360) = *(v0 + 608);
  *(v0 + 376) = v5;
  v6 = *(v0 + 528);
  *(v0 + 264) = *(v0 + 512);
  *(v0 + 280) = v6;
  v7 = *(v0 + 560);
  *(v0 + 296) = *(v0 + 544);
  *(v0 + 312) = v7;
  v8 = *(v0 + 472);
  *(v0 + 208) = *(v0 + 456);
  *(v0 + 224) = v8;
  *(v0 + 240) = *(v0 + 488);
  *(v0 + 256) = *(v0 + 504);
  v9 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 392);
  *(v0 + 160) = v9;
  v10 = *(v0 + 440);
  *(v0 + 176) = *(v0 + 424);
  *(v0 + 192) = v10;
  v11 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 328);
  *(v0 + 96) = v11;
  v12 = *(v0 + 376);
  *(v0 + 112) = *(v0 + 360);
  *(v0 + 128) = v12;
  v13 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 264);
  *(v0 + 32) = v13;
  v14 = *(v0 + 312);
  *(v0 + 48) = *(v0 + 296);
  *(v0 + 64) = v14;
  if (sub_10016F5E8(v0 + 16) == 1)
  {
    (*(*(v0 + 1248) + 8))(*(v0 + 1256), *(v0 + 1240));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 224);
    *(v0 + 952) = *(v0 + 208);
    *(v0 + 968) = v17;
    *(v0 + 984) = *(v0 + 240);
    *(v0 + 1000) = *(v0 + 256);
    v18 = *(v0 + 160);
    *(v0 + 888) = *(v0 + 144);
    *(v0 + 904) = v18;
    v19 = *(v0 + 192);
    *(v0 + 920) = *(v0 + 176);
    *(v0 + 936) = v19;
    v20 = *(v0 + 96);
    *(v0 + 824) = *(v0 + 80);
    *(v0 + 840) = v20;
    v21 = *(v0 + 128);
    *(v0 + 856) = *(v0 + 112);
    *(v0 + 872) = v21;
    v22 = *(v0 + 32);
    *(v0 + 760) = *(v0 + 16);
    *(v0 + 776) = v22;
    v23 = *(v0 + 64);
    *(v0 + 792) = *(v0 + 48);
    *(v0 + 808) = v23;
    v24 = sub_10016F608(v0 + 760);
    v25 = sub_10016E1E8(v0 + 760);
    if (v24 == 1)
    {
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = swift_task_alloc();
      *(v0 + 1288) = v29;
      *v29 = v0;
      v29[1] = sub_10016402C;

      return sub_10016649C(v27, v26, v28);
    }

    else
    {
      v30 = *(v25 + 16);
      *(v0 + 1008) = *v25;
      *(v0 + 1024) = v30;
      v31 = *(v25 + 32);
      v32 = *(v25 + 48);
      v33 = *(v25 + 80);
      *(v0 + 1072) = *(v25 + 64);
      *(v0 + 1088) = v33;
      *(v0 + 1040) = v31;
      *(v0 + 1056) = v32;
      v34 = *(v25 + 96);
      v35 = *(v25 + 112);
      v36 = *(v25 + 144);
      *(v0 + 1136) = *(v25 + 128);
      *(v0 + 1152) = v36;
      *(v0 + 1104) = v34;
      *(v0 + 1120) = v35;
      v37 = *(v25 + 160);
      v38 = *(v25 + 176);
      v39 = *(v25 + 208);
      *(v0 + 1200) = *(v25 + 192);
      *(v0 + 1216) = v39;
      *(v0 + 1168) = v37;
      *(v0 + 1184) = v38;
      v40 = *(v25 + 224);
      v41 = *(v25 + 232);
      v42 = *(v25 + 241);
      v43 = *(v25 + 240);
      v44 = swift_task_alloc();
      *(v0 + 1280) = v44;
      *v44 = v0;
      v44[1] = sub_100163E4C;

      return sub_10016413C((v0 + 1008), v40, v41, v43, v42);
    }
  }
}

uint64_t sub_100163E4C()
{
  v1 = *(*v0 + 1232);

  return _swift_task_switch(sub_100163F5C, v1, 0);
}

uint64_t sub_100163F5C()
{
  sub_10000DAF8((v0 + 33), &qword_10023E3D0, &unk_1001C3B80);
  v1 = v0[158];
  v2 = v0[154];
  v3 = swift_task_alloc();
  v0[159] = v3;
  *v3 = v0;
  v3[1] = sub_100163A4C;
  v4 = v0[155];

  return AsyncStream.Iterator.next(isolation:)(v0 + 64, v2, v1, v4);
}

uint64_t sub_10016402C()
{
  v1 = *(*v0 + 1232);

  return _swift_task_switch(sub_10016F834, v1, 0);
}

uint64_t sub_10016413C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 1384) = v5;
  *(v6 + 1586) = a5;
  *(v6 + 1585) = a4;
  *(v6 + 1376) = a3;
  *(v6 + 1368) = a2;
  *(v6 + 1360) = a1;
  v7 = a1[11];
  *(v6 + 176) = a1[10];
  *(v6 + 192) = v7;
  v8 = a1[13];
  *(v6 + 208) = a1[12];
  *(v6 + 224) = v8;
  v9 = a1[7];
  *(v6 + 112) = a1[6];
  *(v6 + 128) = v9;
  v10 = a1[9];
  *(v6 + 144) = a1[8];
  *(v6 + 160) = v10;
  v11 = a1[3];
  *(v6 + 48) = a1[2];
  *(v6 + 64) = v11;
  v12 = a1[5];
  *(v6 + 80) = a1[4];
  *(v6 + 96) = v12;
  v13 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v13;
  v14 = type metadata accessor for Date();
  *(v6 + 1392) = v14;
  *(v6 + 1400) = *(v14 - 8);
  *(v6 + 1408) = swift_task_alloc();
  v15 = type metadata accessor for SnoutStoryModel(0);
  *(v6 + 1416) = v15;
  v16 = *(v15 - 8);
  *(v6 + 1424) = v16;
  *(v6 + 1432) = *(v16 + 64);
  *(v6 + 1440) = swift_task_alloc();
  *(v6 + 1448) = swift_task_alloc();
  sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  *(v6 + 1456) = swift_task_alloc();
  *(v6 + 1464) = swift_task_alloc();

  return _swift_task_switch(sub_1001642FC, v5, 0);
}

uint64_t sub_1001642FC()
{
  sub_10000DA7C((*(v0 + 1384) + 136), *(*(v0 + 1384) + 160));
  v1 = swift_task_alloc();
  *(v0 + 1472) = v1;
  *v1 = v0;
  v1[1] = sub_10016439C;

  return sub_100011A14();
}

uint64_t sub_10016439C(char a1)
{
  v2 = *(*v1 + 1384);
  *(*v1 + 1587) = a1;

  return _swift_task_switch(sub_1001644B4, v2, 0);
}

uint64_t sub_1001644B4()
{
  if (*(v0 + 1587) == 1)
  {
    if (*(v0 + 1585) == 2 && *(v0 + 1368) == 0)
    {
      sub_10000DA7C((*(v0 + 1384) + 136), *(*(v0 + 1384) + 160));
      v9 = swift_task_alloc();
      *(v0 + 1480) = v9;
      *v9 = v0;
      v9[1] = sub_100164670;

      return sub_100012250();
    }

    else
    {
      v2 = swift_task_alloc();
      *(v0 + 1512) = v2;
      *v2 = v0;
      v2[1] = sub_100164BEC;
      v3 = *(v0 + 1464);
      v4 = *(v0 + 1376);
      v5 = *(v0 + 1368);
      v6 = *(v0 + 1585);

      return sub_10016CBA4(v3, v5, v4, v6);
    }
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100164670(char a1)
{
  v2 = *(*v1 + 1384);
  *(*v1 + 1588) = a1;

  return _swift_task_switch(sub_100164788, v2, 0);
}

uint64_t sub_100164788()
{
  if (*(v0 + 1588) == 1)
  {
    *&v11[167] = *(v0 + 176);
    *&v11[183] = *(v0 + 192);
    *&v11[199] = *(v0 + 208);
    *&v11[215] = *(v0 + 224);
    *&v11[103] = *(v0 + 112);
    *&v11[119] = *(v0 + 128);
    *&v11[135] = *(v0 + 144);
    *&v11[151] = *(v0 + 160);
    *&v11[39] = *(v0 + 48);
    *&v11[55] = *(v0 + 64);
    *&v11[71] = *(v0 + 80);
    *&v11[87] = *(v0 + 96);
    v1 = *(v0 + 32);
    *&v11[7] = *(v0 + 16);
    v2 = *(v0 + 1384);
    v3 = *(v0 + 1360);
    *(v0 + 1584) = 1;
    *&v11[23] = v1;
    v5 = v2[14];
    v4 = v2[15];
    v6 = v2[16];
    v7 = swift_allocObject();
    *(v7 + 201) = *&v11[176];
    *(v7 + 217) = *&v11[192];
    *(v7 + 233) = *&v11[208];
    *(v7 + 137) = *&v11[112];
    *(v7 + 153) = *&v11[128];
    *(v7 + 169) = *&v11[144];
    *(v7 + 185) = *&v11[160];
    *(v7 + 73) = *&v11[48];
    *(v7 + 89) = *&v11[64];
    *(v7 + 105) = *&v11[80];
    *(v7 + 121) = *&v11[96];
    *(v7 + 25) = *v11;
    *(v7 + 41) = *&v11[16];
    *(v0 + 1488) = v7;
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    *(v7 + 248) = *&v11[223];
    *(v7 + 57) = *&v11[32];
    sub_100010568(v3, v0 + 1136);
    v8 = swift_task_alloc();
    *(v0 + 1496) = v8;
    *v8 = v0;
    v8[1] = sub_100164A0C;

    return sub_10010F390(sub_10010F390, sub_10016F584, v7, v5, v4, v6);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100164A0C()
{
  v2 = *v1;
  *(*v1 + 1504) = v0;

  v3 = *(v2 + 1384);
  if (v0)
  {
    v4 = sub_100165AF8;
  }

  else
  {
    v4 = sub_100164B54;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100164B54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100164BEC()
{
  v2 = *v1;
  *(*v1 + 1520) = v0;

  v3 = *(v2 + 1384);
  if (v0)
  {
    v4 = sub_100165D00;
  }

  else
  {
    v4 = sub_100164D18;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100164D18()
{
  v47 = v0;
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = swift_allocBox();
  v7 = v6;
  *(v0 + 1528) = v5;
  sub_100014B50(v1, v2, &qword_10023C6F0, &unk_1001BC7B0);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v8 = *(v0 + 1586);
    v9 = *(v0 + 1585);
    sub_10000DAF8(*(v0 + 1456), &qword_10023C6F0, &unk_1001BC7B0);
    swift_deallocBox();
    if (v9 || !v8)
    {
      if (qword_100239CF8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 1376);
      v30 = *(v0 + 1368);
      v31 = *(v0 + 1585);
      v32 = type metadata accessor for Logger();
      sub_10000DAC0(v32, qword_10023FD18);
      sub_10016E7C0(v30, v29, v31);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      sub_100098CA0(v30, v29, v31);
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 1464);
      if (v35)
      {
        v37 = *(v0 + 1376);
        v38 = *(v0 + 1368);
        v39 = *(v0 + 1585);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46 = v41;
        *v40 = 136315138;
        v42 = sub_1001663CC(v38, v37, v39);
        v44 = sub_10017AD04(v42, v43, &v46);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v33, v34, "No story found for identifier: '%s'", v40, 0xCu);
        sub_10000DB58(v41);
      }

      sub_10000DAF8(v36, &qword_10023C6F0, &unk_1001BC7B0);

      v45 = *(v0 + 8);

      return v45();
    }

    else
    {
      sub_10000DA7C((*(v0 + 1384) + 136), *(*(v0 + 1384) + 160));
      v10 = swift_task_alloc();
      *(v0 + 1552) = v10;
      *v10 = v0;
      v10[1] = sub_1001653C0;

      return sub_100012250();
    }
  }

  else
  {
    v12 = *(v0 + 1384);
    v13 = *(v0 + 1360);
    sub_10016F314(*(v0 + 1456), v7);
    sub_10000CDE0(&unk_10023BC30, &unk_1001BA530);
    v14 = swift_allocObject();
    v14[1] = xmmword_1001B93B0;
    v15 = v13[1];
    v14[2] = *v13;
    v14[3] = v15;
    v16 = v13[5];
    v18 = v13[2];
    v17 = v13[3];
    v14[6] = v13[4];
    v14[7] = v16;
    v14[4] = v18;
    v14[5] = v17;
    v19 = v13[9];
    v21 = v13[6];
    v20 = v13[7];
    v14[10] = v13[8];
    v14[11] = v19;
    v14[8] = v21;
    v14[9] = v20;
    v22 = v13[13];
    v24 = v13[10];
    v23 = v13[11];
    v14[14] = v13[12];
    v14[15] = v22;
    v14[12] = v24;
    v14[13] = v23;
    sub_100010568(v13, v0 + 912);
    sub_10000F500(v14);
    swift_setDeallocating();
    sub_10003AE8C((v14 + 2));
    swift_deallocClassInstance();
    v25 = v12[14];
    v26 = v12[15];
    v27 = v12[16];

    v28 = swift_task_alloc();
    *(v0 + 1536) = v28;
    *v28 = v0;
    v28[1] = sub_1001651BC;

    return sub_10010F390(sub_10010F390, sub_10016F7E0, v5, v25, v26, v27);
  }
}

uint64_t sub_1001651BC()
{
  v2 = *v1;
  *(*v1 + 1544) = v0;

  v3 = *(v2 + 1384);
  if (v0)
  {
    v4 = sub_100165F08;
  }

  else
  {
    v4 = sub_100165304;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100165304()
{
  sub_10000DAF8(*(v0 + 1464), &qword_10023C6F0, &unk_1001BC7B0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001653C0(char a1)
{
  v2 = *(*v1 + 1384);
  *(*v1 + 1589) = a1;

  return _swift_task_switch(sub_1001654D8, v2, 0);
}

uint64_t sub_1001654D8()
{
  v46 = *(v0 + 1589);
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1416);
  v3 = *(v0 + 1408);
  v47 = *(v0 + 1400);
  v48 = *(v0 + 1392);
  v45 = *(v0 + 1368);
  v4 = *(v0 + 1360);
  sub_10000CDE0(&unk_10023BC30, &unk_1001BA530);
  v5 = swift_allocObject();
  v5[1] = xmmword_1001B93B0;
  v6 = v4[1];
  v5[2] = *v4;
  v5[3] = v6;
  v7 = v4[5];
  v9 = v4[2];
  v8 = v4[3];
  v5[6] = v4[4];
  v5[7] = v7;
  v5[4] = v9;
  v5[5] = v8;
  v10 = v4[9];
  v12 = v4[6];
  v11 = v4[7];
  v5[10] = v4[8];
  v5[11] = v10;
  v5[8] = v12;
  v5[9] = v11;
  v13 = v4[13];
  v15 = v4[10];
  v14 = v4[11];
  v5[14] = v4[12];
  v5[15] = v13;
  v5[12] = v15;
  v5[13] = v14;
  *v1 = 0;
  v16 = 1;
  *(v1 + 8) = 1;
  v17 = (v1 + v2[7]);
  v18 = v1 + v2[8];
  sub_100010568(v4, v0 + 240);
  UUID.init()();
  *(v1 + v2[6]) = v45;
  *v17 = 0;
  v17[1] = 0;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v1 + v2[9]) = v46;
  *(v1 + v2[10]) = 0;
  v19 = v2[11];
  *(v1 + v19) = _swiftEmptyArrayStorage;
  v20 = v2[12];
  *(v1 + v20) = 0;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v22 = v21;
  (*(v47 + 8))(v3, v48);
  v24 = v22 * 1000.0;
  v25 = fabs(v22 * 1000.0);
  if (v25 > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v24 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = 0x43F0000000000000;
  if (v24 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = *(v0 + 1589);
  *(*(v0 + 1448) + *(*(v0 + 1416) + 52)) = v24;
  if (v26)
  {
    v27 = v5[13];
    *(v0 + 624) = v5[12];
    *(v0 + 640) = v27;
    v28 = v5[15];
    *(v0 + 656) = v5[14];
    *(v0 + 672) = v28;
    v29 = v5[9];
    *(v0 + 560) = v5[8];
    *(v0 + 576) = v29;
    v30 = v5[11];
    *(v0 + 592) = v5[10];
    *(v0 + 608) = v30;
    v31 = v5[5];
    *(v0 + 496) = v5[4];
    *(v0 + 512) = v31;
    v32 = v5[7];
    *(v0 + 528) = v5[6];
    *(v0 + 544) = v32;
    v33 = v5[3];
    *(v0 + 464) = v5[2];
    *(v0 + 480) = v33;
    sub_100010568(v0 + 464, v0 + 688);

    v5 = *(v0 + 520);
    v49 = *(v0 + 464);
    v50 = *(v0 + 480);
    v51 = *(v0 + 496);
    v52 = *(v0 + 512);
    v59 = *(v0 + 624);
    v60 = *(v0 + 640);
    v61 = *(v0 + 656);
    v62 = *(v0 + 672);
    v55 = *(v0 + 560);
    v56 = *(v0 + 576);
    v57 = *(v0 + 592);
    v58 = *(v0 + 608);
    v53 = *(v0 + 528);
    v54 = *(v0 + 544);
    *(v1 + v20) = 1;
    v23 = sub_100088AB4(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = *(v23 + 2);
    v25 = *(v23 + 3);
    v3 = v16 + 1;
    if (v16 < v25 >> 1)
    {
LABEL_6:
      *(v23 + 2) = v3;
      v34 = &v23[224 * v16];
      *(v34 + 2) = v49;
      *(v34 + 3) = v50;
      *(v34 + 4) = v51;
      *(v34 + 10) = v52;
      *(v34 + 11) = v5;
      *(v34 + 12) = v59;
      *(v34 + 13) = v60;
      *(v34 + 14) = v61;
      *(v34 + 15) = v62;
      *(v34 + 8) = v55;
      *(v34 + 9) = v56;
      *(v34 + 10) = v57;
      *(v34 + 11) = v58;
      *(v34 + 6) = v53;
      *(v34 + 7) = v54;
      *(v1 + v19) = v23;
      goto LABEL_8;
    }

LABEL_14:
    v23 = sub_100088AB4((v25 > 1), v3, 1, v23);
    goto LABEL_6;
  }

LABEL_8:
  v35 = *(v0 + 1440);
  v36 = *(v0 + 1424);
  v37 = *(v0 + 1384);
  v39 = v37[14];
  v38 = v37[15];
  v40 = v37[16];
  sub_100010394(*(v0 + 1448), v35);
  v41 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v42 = swift_allocObject();
  *(v0 + 1560) = v42;
  sub_10016F314(v35, v42 + v41);
  v43 = swift_task_alloc();
  *(v0 + 1568) = v43;
  *v43 = v0;
  v43[1] = sub_1001658F4;

  return sub_10010F390(sub_10010F390, sub_10016F4A8, v42, v39, v38, v40);
}

uint64_t sub_1001658F4()
{
  v2 = *v1;
  *(*v1 + 1576) = v0;

  v3 = *(v2 + 1384);
  if (v0)
  {
    v4 = sub_100166134;
  }

  else
  {
    v4 = sub_100165A3C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100165A3C()
{
  v1 = v0[181];
  sub_10000DAF8(v0[183], &qword_10023C6F0, &unk_1001BC7B0);
  sub_1000103F8(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100165AF8()
{
  v18 = v0;
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1585);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD18);
  sub_10016E7C0(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_100098CA0(v2, v1, v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1376);
    v8 = *(v0 + 1368);
    v9 = *(v0 + 1585);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_1001663CC(v8, v7, v9);
    v14 = sub_10017AD04(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Encountered error while logging event to story: '%s'", v10, 0xCu);
    sub_10000DB58(v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100165D00()
{
  v18 = v0;
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1585);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD18);
  sub_10016E7C0(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_100098CA0(v2, v1, v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1376);
    v8 = *(v0 + 1368);
    v9 = *(v0 + 1585);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_1001663CC(v8, v7, v9);
    v14 = sub_10017AD04(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Encountered error while logging event to story: '%s'", v10, 0xCu);
    sub_10000DB58(v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100165F08()
{
  v18 = v0;
  sub_10000DAF8(*(v0 + 1464), &qword_10023C6F0, &unk_1001BC7B0);

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1585);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD18);
  sub_10016E7C0(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_100098CA0(v2, v1, v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1376);
    v8 = *(v0 + 1368);
    v9 = *(v0 + 1585);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_1001663CC(v8, v7, v9);
    v14 = sub_10017AD04(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Encountered error while logging event to story: '%s'", v10, 0xCu);
    sub_10000DB58(v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100166134()
{
  v19 = v0;
  v1 = *(v0 + 1448);
  sub_10000DAF8(*(v0 + 1464), &qword_10023C6F0, &unk_1001BC7B0);
  sub_1000103F8(v1);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1376);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1585);
  v5 = type metadata accessor for Logger();
  sub_10000DAC0(v5, qword_10023FD18);
  sub_10016E7C0(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  sub_100098CA0(v3, v2, v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1376);
    v9 = *(v0 + 1368);
    v10 = *(v0 + 1585);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_1001663CC(v9, v8, v10);
    v15 = sub_10017AD04(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered error while logging event to story: '%s'", v11, 0xCu);
    sub_10000DB58(v12);
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_100166360(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000ECBDC(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_1001663CC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v5 = 0x6973736572706D69;
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return v5;
  }

  if (a3 == 1)
  {
    v5 = 0x69737265766E6F63;
    String.append(_:)(*&a1);
    return v5;
  }

  return 0x6576652D6F6C6F73;
}

uint64_t sub_10016649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100166548, v3, 0);
}

uint64_t sub_100166548()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1[14];
  v0[8] = v3;
  v4 = v1[15];
  v0[9] = v4;
  v5 = v1[16];
  v0[10] = v5;
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100166664;
  v8 = v0[7];

  return sub_10011115C(v8, sub_10016F378, v6, v3, v4, v5);
}

uint64_t sub_100166664()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100166C38;
  }

  else
  {
    v4 = sub_1001667AC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001667AC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for SnoutStoryModel(0);
  v4 = swift_allocBox();
  v6 = v5;
  v0[14] = v4;
  sub_100014B50(v1, v2, &qword_10023C6F0, &unk_1001BC7B0);
  v7 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v8 = v0[6];
  if (v7 == 1)
  {
    sub_10000DAF8(v8, &qword_10023C6F0, &unk_1001BC7B0);
    swift_deallocBox();
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000DAC0(v9, qword_10023FD18);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[2];
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "No story found to rotate for app %llu", v13, 0xCu);
    }

    v14 = v0[7];

    sub_10000DAF8(v14, &qword_10023C6F0, &unk_1001BC7B0);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v18 = v0[3];
    v17 = v0[4];
    sub_10016F314(v8, v6);
    sub_10000F740(v18, v17);

    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_100166A64;
    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[8];

    return sub_10010F390(sub_10010F390, sub_10016F7E0, v4, v22, v20, v21);
  }
}

uint64_t sub_100166A64()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100166DF8;
  }

  else
  {
    v4 = sub_100166BAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100166BAC()
{
  sub_10000DAF8(*(v0 + 56), &qword_10023C6F0, &unk_1001BC7B0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100166C38()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Encountered error while logging event to story for app: %llu, error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100166DF8()
{
  sub_10000DAF8(v0[7], &qword_10023C6F0, &unk_1001BC7B0);

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Encountered error while logging event to story for app: %llu, error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100166FDC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 960) = v3;
  *(v4 + 1143) = a3;
  *(v4 + 952) = a2;
  *(v4 + 944) = a1;
  v5 = type metadata accessor for Calendar.Component();
  *(v4 + 968) = v5;
  *(v4 + 976) = *(v5 - 8);
  *(v4 + 984) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 992) = v6;
  *(v4 + 1000) = *(v6 - 8);
  *(v4 + 1008) = swift_task_alloc();
  sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  *(v4 + 1016) = swift_task_alloc();

  return _swift_task_switch(sub_10016713C, v3, 0);
}

uint64_t sub_10016713C()
{
  sub_10000DA7C((*(v0 + 960) + 136), *(*(v0 + 960) + 160));
  v1 = swift_task_alloc();
  *(v0 + 1024) = v1;
  *v1 = v0;
  v1[1] = sub_1001671DC;

  return sub_100011A14();
}

uint64_t sub_1001671DC(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    *(v3 + 1032) = type metadata accessor for SnoutStoryModel(0);
    *(v3 + 1040) = swift_allocBox();
    *(v3 + 1048) = v5;
    v6 = swift_task_alloc();
    *(v3 + 1056) = v6;
    *v6 = v4;
    v6[1] = sub_100167398;
    v7 = *(v3 + 1016);
    v8 = *(v3 + 952);
    v9 = *(v3 + 944);
    v10 = *(v3 + 1143);

    return sub_10016CBA4(v7, v9, v8, v10);
  }

  else
  {

    v12 = *(v4 + 8);

    return v12();
  }
}

uint64_t sub_100167398()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  v3 = *(v2 + 960);
  if (v0)
  {
    v4 = sub_100167F1C;
  }

  else
  {
    v4 = sub_1001674C4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001674C4()
{
  v85 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1016);
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    sub_10000DAF8(v2, &qword_10023C6F0, &unk_1001BC7B0);
    swift_deallocBox();
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 952);
    v4 = *(v0 + 944);
    v5 = *(v0 + 1143);
    v6 = type metadata accessor for Logger();
    sub_10000DAC0(v6, qword_10023FD18);
    sub_10016E7C0(v4, v3, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_100098CA0(v4, v3, v5);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 952);
      v10 = *(v0 + 944);
      v11 = *(v0 + 1143);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v84[0] = v13;
      *v12 = 136315138;
      v14 = sub_1001663CC(v10, v9, v11);
      v16 = sub_10017AD04(v14, v15, v84);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "No story found for identifier: %s", v12, 0xCu);
      sub_10000DB58(v13);
    }

    sub_10016F2C0();
    swift_allocError();
    swift_willThrow();
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 952);
    v18 = *(v0 + 944);
    v19 = *(v0 + 1143);
    sub_10000DAC0(v6, qword_10023FD18);
    sub_10016E7C0(v18, v17, v19);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_100098CA0(v18, v17, v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 952);
      v23 = *(v0 + 944);
      v24 = *(v0 + 1143);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v84[0] = v26;
      *v25 = 136315138;
      v27 = sub_1001663CC(v23, v22, v24);
      v29 = sub_10017AD04(v27, v28, v84);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Encountered error while completing story for app: '%s'", v25, 0xCu);
      sub_10000DB58(v26);
    }

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v80 = (v0 + 1138);
    v81 = *(v0 + 1048);
    v78 = (v0 + 1121);
    v79 = (v0 + 1113);
    v83 = v1;
    v77 = (v0 + 1105);
    v75 = (v0 + 1126);
    v76 = (v0 + 1097);
    v32 = *(v0 + 1008);
    v33 = *(v0 + 1000);
    v34 = *(v0 + 992);
    v35 = *(v0 + 984);
    v36 = *(v0 + 976);
    v37 = *(v0 + 968);
    v82 = *(v0 + 960);
    sub_10016F314(v2, v81);
    sub_10000CDE0(&unk_10023BC30, &unk_1001BA530);
    inited = swift_initStackObject();
    *(v0 + 1072) = inited;
    inited[1] = xmmword_1001B93B0;
    static Date.now.getter();
    (*(v36 + 104))(v35, enum case for Calendar.Component.hour(_:), v37);
    v39 = sub_100025808(v32, v35);
    v41 = v40;
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v32, v34);
    if (v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = v39;
    }

    v43 = [objc_opt_self() buildVersion];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v0 + 1096) = 1;
    *(v0 + 1104) = 1;
    *(v0 + 1112) = 1;
    *(v0 + 1120) = 1;
    *(v0 + 1144) = 1;
    *(v0 + 496) = 2568;
    *(v0 + 498) = *v75;
    *(v0 + 502) = *(v0 + 1130);
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = v42;
    *(v0 + 560) = v44;
    *(v0 + 568) = v46;
    *(v0 + 576) = 0;
    *(v0 + 577) = 33686018;
    *(v0 + 581) = 2;
    *(v0 + 584) = 0;
    v47 = *(v0 + 1096);
    *(v0 + 592) = v47;
    *(v0 + 593) = *v76;
    *(v0 + 596) = *(v0 + 1100);
    *(v0 + 600) = 0;
    v48 = *(v0 + 1104);
    *(v0 + 608) = v48;
    *(v0 + 609) = 3;
    *(v0 + 610) = *(v0 + 1132);
    *(v0 + 614) = *(v0 + 1136);
    *(v0 + 616) = 0;
    v49 = *(v0 + 1112);
    *(v0 + 624) = v49;
    *(v0 + 628) = *(v0 + 1108);
    *(v0 + 625) = *v77;
    *(v0 + 632) = 0;
    v50 = *(v0 + 1120);
    *(v0 + 640) = v50;
    *(v0 + 641) = 770;
    *(v0 + 647) = *(v0 + 1125);
    *(v0 + 643) = *v78;
    *(v0 + 648) = 0;
    v51 = *(v0 + 1144);
    *(v0 + 656) = v51;
    *(v0 + 660) = *(v0 + 1116);
    *(v0 + 657) = *v79;
    *(v0 + 664) = 0u;
    *(v0 + 680) = 514;
    *(v0 + 682) = 2;
    v52 = *v80;
    *(v0 + 687) = *(v0 + 1142);
    *(v0 + 683) = v52;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 272) = 2568;
    v53 = *v75;
    *(v0 + 278) = *(v0 + 1130);
    *(v0 + 274) = v53;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 328) = v42;
    *(v0 + 336) = v44;
    *(v0 + 344) = v46;
    *(v0 + 352) = 0;
    *(v0 + 357) = 2;
    *(v0 + 353) = 33686018;
    *(v0 + 360) = 0;
    *(v0 + 368) = v47;
    v54 = *v76;
    *(v0 + 372) = *(v0 + 1100);
    *(v0 + 369) = v54;
    *(v0 + 376) = 0;
    *(v0 + 384) = v48;
    *(v0 + 385) = 3;
    v55 = *(v0 + 1132);
    *(v0 + 390) = *(v0 + 1136);
    *(v0 + 386) = v55;
    *(v0 + 392) = 0;
    *(v0 + 400) = v49;
    v56 = *v77;
    *(v0 + 404) = *(v0 + 1108);
    *(v0 + 401) = v56;
    *(v0 + 408) = 0;
    *(v0 + 416) = v50;
    *(v0 + 417) = 770;
    v57 = *v78;
    *(v0 + 423) = *(v0 + 1125);
    *(v0 + 419) = v57;
    *(v0 + 424) = 0;
    *(v0 + 432) = v51;
    v58 = *v79;
    *(v0 + 436) = *(v0 + 1116);
    *(v0 + 433) = v58;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0;
    *(v0 + 456) = 514;
    *(v0 + 458) = 2;
    v59 = *v80;
    *(v0 + 463) = *(v0 + 1142);
    *(v0 + 459) = v59;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_100010568(v0 + 496, v0 + 720);
    sub_10003AE8C(v0 + 272);
    v60 = *(v0 + 512);
    inited[2] = *(v0 + 496);
    inited[3] = v60;
    v61 = *(v0 + 576);
    v63 = *(v0 + 528);
    v62 = *(v0 + 544);
    inited[6] = *(v0 + 560);
    inited[7] = v61;
    inited[4] = v63;
    inited[5] = v62;
    v64 = *(v0 + 640);
    v66 = *(v0 + 592);
    v65 = *(v0 + 608);
    inited[10] = *(v0 + 624);
    inited[11] = v64;
    inited[8] = v66;
    inited[9] = v65;
    v67 = *(v0 + 704);
    v69 = *(v0 + 656);
    v68 = *(v0 + 672);
    inited[14] = *(v0 + 688);
    inited[15] = v67;
    inited[12] = v69;
    inited[13] = v68;
    sub_10000F500(inited);
    swift_setDeallocating();
    sub_10003AE8C((inited + 2));
    *(v81 + *(v83 + 40)) = 1;
    v71 = v82[14];
    v70 = v82[15];
    v72 = v82[16];

    v73 = swift_task_alloc();
    *(v0 + 1080) = v73;
    *v73 = v0;
    v73[1] = sub_100167D54;
    v74 = *(v0 + 1040);

    return sub_10010F390(sub_10010F390, sub_10016F7E0, v74, v71, v70, v72);
  }
}

uint64_t sub_100167D54()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  v3 = *(v2 + 960);

  if (v0)
  {
    v4 = sub_100168114;
  }

  else
  {
    v4 = sub_100167E9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100167E9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100167F1C()
{
  v18 = v0;
  swift_deallocBox();
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 1143);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD18);
  sub_10016E7C0(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_100098CA0(v2, v1, v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 952);
    v8 = *(v0 + 944);
    v9 = *(v0 + 1143);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_1001663CC(v8, v7, v9);
    v14 = sub_10017AD04(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Encountered error while completing story for app: '%s'", v10, 0xCu);
    sub_10000DB58(v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100168114()
{
  v18 = v0;

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 1143);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD18);
  sub_10016E7C0(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_100098CA0(v2, v1, v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 952);
    v8 = *(v0 + 944);
    v9 = *(v0 + 1143);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_1001663CC(v8, v7, v9);
    v14 = sub_10017AD04(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Encountered error while completing story for app: '%s'", v10, 0xCu);
    sub_10000DB58(v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10016832C()
{
  sub_10000DA7C((*(v0 + 56) + 136), *(*(v0 + 56) + 160));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1001683CC;

  return sub_100011A14();
}

uint64_t sub_1001683CC(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = swift_task_alloc();
    *(v3 + 72) = v5;
    *v5 = v4;
    v5[1] = sub_100168530;

    return sub_100168D2C();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_100168530()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[7];

    return _swift_task_switch(sub_1001689EC, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[11] = v4;
    *v4 = v2;
    v4[1] = sub_10016869C;

    return sub_10016A64C();
  }
}

uint64_t sub_10016869C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100168B8C;
  }

  else
  {
    v4 = sub_1001687C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001687C8()
{
  *(v0 + 104) = sub_10000DA7C((*(v0 + 56) + 136), *(*(v0 + 56) + 160));

  return _swift_task_switch(sub_10016883C, 0, 0);
}

uint64_t sub_10016883C()
{
  sub_10000CE28(*(v0 + 104), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1001688F0;

  return sub_1000215A0(0xD000000000000010, 0x80000001001CCE30);
}

uint64_t sub_1001688F0()
{
  v1 = *v0;
  v4 = *v0;

  sub_10016F144(v1 + 16);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001689EC()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "encountered error during pending event flush %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100168B8C()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "encountered error during pending event flush %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100168D4C()
{
  v1 = v0[149];
  v2 = v1[14];
  v0[150] = v2;
  v3 = v1[15];
  v0[151] = v3;
  v4 = v1[16];
  v0[152] = v4;
  v5 = swift_task_alloc();
  v0[153] = v5;
  *v5 = v0;
  v5[1] = sub_100168E34;

  return sub_100110E84(sub_10016F800, 0, v2, v3, v4);
}

uint64_t sub_100168E34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[154] = a1;
  v3[155] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[149];

    return _swift_task_switch(sub_100168F80, v7, 0);
  }
}

uint64_t sub_100168F80(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1232);
  v5 = *(v3 + 1192);
  v6 = *(v4 + 16);
  *(v3 + 1248) = v6;
  if (v6)
  {
    *(v3 + 1256) = 0;
    if (*(v4 + 16))
    {
      v7 = type metadata accessor for SnoutStoryModel(0);
      *(v3 + 1264) = v7;
      v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
      v9 = swift_allocBox();
      v11 = v10;
      *(v3 + 1272) = v9;
      *(v3 + 1280) = v10;
      sub_100010394(v4 + v8, v10);
      swift_beginAccess();
      v12 = *(v7 + 44);
      v13 = *(v11 + v12);
      *(v11 + v12) = _swiftEmptyArrayStorage;
      v14 = sub_1001634B8(v13, v11);

      *(v3 + 1288) = sub_10000DA7C((v5 + 136), *(v5 + 160));
      v15 = v14[2];
      if (v15)
      {
        *(v3 + 1184) = _swiftEmptyArrayStorage;
        sub_100147244(0, v15, 0);
        v16 = *(v3 + 1184);
        v17 = sub_1000898EC();
        v32 = v15 - 1;
        v18 = 32;
        v30 = v14;
        while (1)
        {
          memcpy((v3 + 16), v14 + v18, 0x1D8uLL);
          *(v3 + 984) = &type metadata for SnoutEventPayload;
          *(v3 + 992) = v17;
          v19 = swift_allocObject();
          *(v3 + 960) = v19;
          v31 = v18;
          memmove((v19 + 16), v14 + v18, 0x1D8uLL);
          sub_100089A30(v3 + 16, v3 + 488);
          *(v3 + 1184) = v16;
          v21 = v16[2];
          v20 = v16[3];
          v22 = v17;
          if (v21 >= v20 >> 1)
          {
            sub_100147244((v20 > 1), v21 + 1, 1);
            v16 = *(v3 + 1184);
          }

          v23 = *(v3 + 984);
          v24 = sub_100054C30(v3 + 960, v23);
          v25 = *(v23 - 8);
          v26 = swift_task_alloc();
          (*(v25 + 16))(v26, v24, v23);
          *(v3 + 1024) = &type metadata for SnoutEventPayload;
          *(v3 + 1032) = v22;
          v27 = swift_allocObject();
          *(v3 + 1000) = v27;
          memmove((v27 + 16), v26, 0x1D8uLL);
          v16[2] = v21 + 1;
          sub_100054C8C((v3 + 1000), &v16[5 * v21 + 4]);
          sub_10000DB58((v3 + 960));

          if (!v32)
          {
            break;
          }

          v17 = v22;
          --v32;
          v14 = v30;
          v18 = v31 + 472;
        }
      }

      else
      {

        v16 = _swiftEmptyArrayStorage;
      }

      *(v3 + 1296) = v16;
      a1 = sub_100169310;
      a2 = 0;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {

    v28 = *(v3 + 8);

    return v28();
  }
}

uint64_t sub_100169310()
{
  sub_10000CE28(v0[161], (v0 + 130));
  v1 = swift_task_alloc();
  v0[163] = v1;
  *v1 = v0;
  v1[1] = sub_1001693B4;
  v2 = v0[162];

  return sub_1000203E0(v2);
}

uint64_t sub_1001693B4()
{
  v1 = *v0;
  v2 = *(*v0 + 1192);

  sub_10016F144(v1 + 1040);

  return _swift_task_switch(sub_1001694F0, v2, 0);
}

uint64_t sub_1001694F0()
{
  v1 = *(*(v0 + 1280) + *(*(v0 + 1264) + 40));

  if (v1 == 1)
  {
    v2 = sub_100169580;
  }

  else
  {
    v2 = sub_100169CD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100169580()
{
  v1 = v0[159];
  v2 = v0[152];
  v3 = v0[151];
  v4 = v0[150];
  v0[143] = &type metadata for SnoutDatabaseStore;
  v0[144] = sub_10014AB1C();
  v0[140] = v4;
  v0[141] = v3;
  v0[142] = v2;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[164] = v6;
  v6[2] = v5;
  v6[3] = v0 + 140;
  v6[4] = sub_10016F2A4;
  v6[5] = v1;
  v7 = swift_task_alloc();
  v0[165] = v7;
  *v7 = v0;
  v7[1] = sub_1001696D0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D28C, v6, &type metadata for () + 8);
}

uint64_t sub_1001696D0()
{
  v2 = *v1;
  *(*v1 + 1328) = v0;

  if (v0)
  {

    v3 = sub_100169BF8;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 1192);

    sub_10000DB58((v2 + 1120));
    v3 = sub_100169828;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100169828()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);

  if (v1 + 1 == v2)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 1256) + 1;
    *(v0 + 1256) = v8;
    v9 = *(v0 + 1232);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = *(v0 + 1192);
      v11 = type metadata accessor for SnoutStoryModel(0);
      *(v0 + 1264) = v11;
      v12 = v9 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v8;
      v13 = swift_allocBox();
      v15 = v14;
      *(v0 + 1272) = v13;
      *(v0 + 1280) = v14;
      sub_100010394(v12, v14);
      swift_beginAccess();
      v16 = *(v11 + 44);
      v17 = *(v15 + v16);
      *(v15 + v16) = _swiftEmptyArrayStorage;
      v18 = sub_1001634B8(v17, v15);

      *(v0 + 1288) = sub_10000DA7C((v10 + 136), *(v10 + 160));
      v19 = v18[2];
      if (v19)
      {
        *(v0 + 1184) = _swiftEmptyArrayStorage;
        sub_100147244(0, v19, 0);
        v20 = *(v0 + 1184);
        v21 = sub_1000898EC();
        v34 = v19 - 1;
        v22 = 32;
        v32 = v18;
        while (1)
        {
          memcpy((v0 + 16), v18 + v22, 0x1D8uLL);
          *(v0 + 984) = &type metadata for SnoutEventPayload;
          *(v0 + 992) = v21;
          v23 = swift_allocObject();
          *(v0 + 960) = v23;
          v33 = v22;
          memmove((v23 + 16), v18 + v22, 0x1D8uLL);
          sub_100089A30(v0 + 16, v0 + 488);
          *(v0 + 1184) = v20;
          v25 = v20[2];
          v24 = v20[3];
          v26 = v21;
          if (v25 >= v24 >> 1)
          {
            sub_100147244((v24 > 1), v25 + 1, 1);
            v20 = *(v0 + 1184);
          }

          v27 = *(v0 + 984);
          v28 = sub_100054C30(v0 + 960, v27);
          v29 = *(v27 - 8);
          v30 = swift_task_alloc();
          (*(v29 + 16))(v30, v28, v27);
          *(v0 + 1024) = &type metadata for SnoutEventPayload;
          *(v0 + 1032) = v26;
          v31 = swift_allocObject();
          *(v0 + 1000) = v31;
          memmove((v31 + 16), v30, 0x1D8uLL);
          v20[2] = v25 + 1;
          sub_100054C8C((v0 + 1000), &v20[5 * v25 + 4]);
          sub_10000DB58((v0 + 960));

          if (!v34)
          {
            break;
          }

          v21 = v26;
          --v34;
          v18 = v32;
          v22 = v33 + 472;
        }
      }

      else
      {

        v20 = _swiftEmptyArrayStorage;
      }

      *(v0 + 1296) = v20;
      v3 = sub_100169310;
      v4 = 0;
      v5 = 0;
    }

    return _swift_task_switch(v3, v4, v5);
  }
}

uint64_t sub_100169BF8()
{
  v1 = *(v0 + 1192);

  sub_10000DB58((v0 + 1120));

  return _swift_task_switch(sub_100169C6C, v1, 0);
}

uint64_t sub_100169C6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100169CD0()
{
  v1 = v0[159];
  v2 = v0[152];
  v3 = v0[151];
  v4 = v0[150];
  v0[138] = &type metadata for SnoutDatabaseStore;
  v0[139] = sub_10014AB1C();
  v0[135] = v4;
  v0[136] = v3;
  v0[137] = v2;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[167] = v6;
  v6[2] = v5;
  v6[3] = v0 + 135;
  v6[4] = sub_10016F288;
  v6[5] = v1;
  v7 = swift_task_alloc();
  v0[168] = v7;
  *v7 = v0;
  v7[1] = sub_100169E20;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014AC48, v6, &type metadata for () + 8);
}

uint64_t sub_100169E20()
{
  v2 = *v1;
  *(*v1 + 1352) = v0;

  if (v0)
  {

    v3 = sub_10016A348;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 1192);

    sub_10000DB58((v2 + 1080));
    v3 = sub_100169F78;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100169F78()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);

  if (v1 + 1 == v2)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 1256) + 1;
    *(v0 + 1256) = v8;
    v9 = *(v0 + 1232);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = *(v0 + 1192);
      v11 = type metadata accessor for SnoutStoryModel(0);
      *(v0 + 1264) = v11;
      v12 = v9 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v8;
      v13 = swift_allocBox();
      v15 = v14;
      *(v0 + 1272) = v13;
      *(v0 + 1280) = v14;
      sub_100010394(v12, v14);
      swift_beginAccess();
      v16 = *(v11 + 44);
      v17 = *(v15 + v16);
      *(v15 + v16) = _swiftEmptyArrayStorage;
      v18 = sub_1001634B8(v17, v15);

      *(v0 + 1288) = sub_10000DA7C((v10 + 136), *(v10 + 160));
      v19 = v18[2];
      if (v19)
      {
        *(v0 + 1184) = _swiftEmptyArrayStorage;
        sub_100147244(0, v19, 0);
        v20 = *(v0 + 1184);
        v21 = sub_1000898EC();
        v34 = v19 - 1;
        v22 = 32;
        v32 = v18;
        while (1)
        {
          memcpy((v0 + 16), v18 + v22, 0x1D8uLL);
          *(v0 + 984) = &type metadata for SnoutEventPayload;
          *(v0 + 992) = v21;
          v23 = swift_allocObject();
          *(v0 + 960) = v23;
          v33 = v22;
          memmove((v23 + 16), v18 + v22, 0x1D8uLL);
          sub_100089A30(v0 + 16, v0 + 488);
          *(v0 + 1184) = v20;
          v25 = v20[2];
          v24 = v20[3];
          v26 = v21;
          if (v25 >= v24 >> 1)
          {
            sub_100147244((v24 > 1), v25 + 1, 1);
            v20 = *(v0 + 1184);
          }

          v27 = *(v0 + 984);
          v28 = sub_100054C30(v0 + 960, v27);
          v29 = *(v27 - 8);
          v30 = swift_task_alloc();
          (*(v29 + 16))(v30, v28, v27);
          *(v0 + 1024) = &type metadata for SnoutEventPayload;
          *(v0 + 1032) = v26;
          v31 = swift_allocObject();
          *(v0 + 1000) = v31;
          memmove((v31 + 16), v30, 0x1D8uLL);
          v20[2] = v25 + 1;
          sub_100054C8C((v0 + 1000), &v20[5 * v25 + 4]);
          sub_10000DB58((v0 + 960));

          if (!v34)
          {
            break;
          }

          v21 = v26;
          --v34;
          v18 = v32;
          v22 = v33 + 472;
        }
      }

      else
      {

        v20 = _swiftEmptyArrayStorage;
      }

      *(v0 + 1296) = v20;
      v3 = sub_100169310;
      v4 = 0;
      v5 = 0;
    }

    return _swift_task_switch(v3, v4, v5);
  }
}

uint64_t sub_10016A348()
{
  v1 = *(v0 + 1192);

  sub_10000DB58((v0 + 1080));

  return _swift_task_switch(sub_10016A3BC, v1, 0);
}

uint64_t sub_10016A3BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10016A420@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001039F8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10016A450(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SnoutStoryModel(0);
  v7 = swift_projectBox();
  swift_beginAccess();
  (*(v3 + 16))(v5, v7 + *(v6 + 20), v2);
  sub_10001EF6C(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10016A588(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SnoutStoryModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_100010394(v5, v4);
  sub_10001ED70(v4);
  return sub_1000103F8(v4);
}

uint64_t sub_10016A66C()
{
  v1 = v0[154];
  v2 = v1[14];
  v0[155] = v2;
  v3 = v1[15];
  v0[156] = v3;
  v4 = v1[16];
  v0[157] = v4;
  v5 = swift_task_alloc();
  v0[158] = v5;
  *v5 = v0;
  v5[1] = sub_10016A754;

  return sub_100111604(sub_10016AE44, 0, v2, v3, v4);
}

uint64_t sub_10016A754(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 1272) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 1232);

    return _swift_task_switch(sub_10016A89C, v7, 0);
  }
}

uint64_t sub_10016A89C()
{
  v1 = *(v0 + 1272);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100147284(0, v2, 0);
    v3 = v2 - 1;
    for (i = (v1 + 48); ; i += 15)
    {
      v5 = *(i - 1);
      v6 = i[1];
      *(v0 + 504) = *i;
      *(v0 + 520) = v6;
      *(v0 + 488) = v5;
      v7 = i[2];
      v8 = i[3];
      v9 = i[5];
      *(v0 + 568) = i[4];
      *(v0 + 584) = v9;
      *(v0 + 536) = v7;
      *(v0 + 552) = v8;
      v10 = i[6];
      v11 = i[7];
      v12 = i[9];
      *(v0 + 632) = i[8];
      *(v0 + 648) = v12;
      *(v0 + 600) = v10;
      *(v0 + 616) = v11;
      v13 = i[10];
      v14 = i[11];
      v15 = i[13];
      *(v0 + 696) = i[12];
      *(v0 + 712) = v15;
      *(v0 + 664) = v13;
      *(v0 + 680) = v14;
      v16 = i[1];
      *(v0 + 968) = *i;
      *(v0 + 984) = v16;
      v17 = i[2];
      v18 = i[3];
      v19 = i[5];
      *(v0 + 1032) = i[4];
      *(v0 + 1048) = v19;
      *(v0 + 1000) = v17;
      *(v0 + 1016) = v18;
      v20 = i[6];
      v21 = i[7];
      v22 = i[9];
      *(v0 + 1096) = i[8];
      *(v0 + 1112) = v22;
      *(v0 + 1064) = v20;
      *(v0 + 1080) = v21;
      v23 = i[10];
      v24 = i[11];
      v25 = i[13];
      *(v0 + 1160) = i[12];
      *(v0 + 1176) = v25;
      *(v0 + 1128) = v23;
      *(v0 + 1144) = v24;
      sub_100104824(v0 + 488, v0 + 728);
      sub_1000CF83C((v0 + 968), 0, 0, v0 + 16);
      sub_10003C100(v0 + 488);
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_100147284((v26 > 1), v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      memcpy(&_swiftEmptyArrayStorage[59 * v27 + 4], (v0 + 16), 0x1D8uLL);
      if (!v3)
      {
        break;
      }

      --v3;
    }
  }

  *(v0 + 1280) = sub_10000DA7C((*(v0 + 1232) + 136), *(*(v0 + 1232) + 160));
  *(v0 + 1288) = sub_100087E14(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_10016AAA0, 0, 0);
}

uint64_t sub_10016AAA0()
{
  sub_10000CE28(v0[160], (v0 + 149));
  v1 = swift_task_alloc();
  v0[162] = v1;
  *v1 = v0;
  v1[1] = sub_10016AB44;
  v2 = v0[161];

  return sub_1000203E0(v2);
}

uint64_t sub_10016AB44()
{
  v1 = *v0;
  v2 = *v0;

  sub_10016F144(v1 + 1192);
  v3 = swift_task_alloc();
  *(v1 + 1304) = v3;
  *v3 = v2;
  v3[1] = sub_10016AD00;

  return (sub_10010F390)();
}

uint64_t sub_10016AD00()
{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  v3 = *(v2 + 1232);
  if (v0)
  {
    v4 = sub_10016AE2C;
  }

  else
  {
    v4 = sub_1000FB99C;
  }

  return _swift_task_switch(v4, v3, 0);
}

void *sub_10016AE44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001044C8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_10016AE74(void *a1)
{
  v1 = [a1 connection];
  v2 = sub_1000854E0(v1, 0, _swiftEmptyArrayStorage, 0, 0);
  if (![v2 deleteAllEntities])
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10016F5A0(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_10016AFAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SnoutStoryModel(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10016B0D0, v1, 0);
}

uint64_t sub_10016B0D0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v6 = v4[14];
  v5 = v4[15];
  v7 = v4[16];
  (*(v3 + 16))(v1, v0[2], v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[11] = v9;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_10016B224;

  return sub_100110E84(sub_10016F088, v9, v6, v5, v7);
}

uint64_t sub_10016B224(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_10016B844;
  }

  else
  {
    v6 = sub_10016B374;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10016B374()
{
  v20 = v0;
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_10017AD04(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stories: %s", v4, 0xCu);
    sub_10000DB58(v5);
  }

  v9 = *(v0 + 104);
  v10 = *(v9 + 16);
  *(v0 + 120) = v10;
  if (v10)
  {
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(*(v0 + 32) + 24);
    *(v0 + 152) = v13;
    v14 = *(v11 + 80);
    *(v0 + 156) = v14;
    *(v0 + 128) = *(v11 + 72);
    *(v0 + 136) = 0;
    sub_100010394(v9 + ((v14 + 32) & ~v14), v12);
    v15 = *(v12 + v13);
    sub_1000103F8(v12);
    v16 = swift_task_alloc();
    *(v0 + 144) = v16;
    *v16 = v0;
    v16[1] = sub_10016B5FC;

    return sub_100166FDC(v15, 0, 0);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10016B5FC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10016B70C, v1, 0);
}

uint64_t sub_10016B70C()
{
  v1 = *(v0 + 136) + 1;
  if (v1 == *(v0 + 120))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 136) = v1;
    v4 = *(v0 + 152);
    v5 = *(v0 + 48);
    sub_100010394(*(v0 + 104) + ((*(v0 + 156) + 32) & ~*(v0 + 156)) + *(v0 + 128) * v1, v5);
    v6 = *(v5 + v4);
    sub_1000103F8(v5);
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_10016B5FC;

    return sub_100166FDC(v6, 0, 0);
  }
}

uint64_t sub_10016B844()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to complete expired stories", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10016B978(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SnoutStoryModel(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10016BAA8, v1, 0);
}

uint64_t sub_10016BAA8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[3];
  v6 = v4[14];
  v5 = v4[15];
  v7 = v4[16];
  (*(v3 + 16))(v1, v0[2], v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[12] = v9;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_10016BBFC;

  return sub_100110E84(sub_10016F05C, v9, v6, v5, v7);
}

uint64_t sub_10016BBFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_10016C5B4;
  }

  else
  {
    v6 = sub_10016BD4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10016BD4C()
{
  v40 = v0;
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000DAC0(v1, qword_10023FD18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v39 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_10017AD04(v6, v7, &v39);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stories: %s", v4, 0xCu);
    sub_10000DB58(v5);
  }

  v9 = *(v0 + 112);
  v10 = *(v9 + 16);
  *(v0 + 136) = v10;
  if (v10)
  {
    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v13 = *(v11 + 80);
    *(v0 + 168) = v13;
    *(v0 + 144) = *(v11 + 72);
    *(v0 + 152) = 0;
    v14 = *(v0 + 56);
    sub_100010394(v9 + ((v13 + 32) & ~v13), v14);
    v15 = (v14 + *(v12 + 28));
    v16 = v15[1];
    if (v16)
    {
LABEL_12:
      v35 = *v15;
      v36 = swift_task_alloc();
      *(v0 + 160) = v36;
      *v36 = v0;
      v36[1] = sub_10016C1A8;

      return sub_100166FDC(v35, v16, 1);
    }

    while (1)
    {
      sub_100010394(*(v0 + 56), *(v0 + 48));
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 48);
      if (v19)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v39 = v22;
        *v21 = 136315138;
        type metadata accessor for UUID();
        sub_10016F5A0(&qword_10023C610, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        sub_1000103F8(v20);
        v26 = sub_10017AD04(v23, v25, &v39);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get conversion id from post-conversion story: %s", v21, 0xCu);
        sub_10000DB58(v22);
      }

      else
      {

        sub_1000103F8(v20);
      }

      v27 = *(v0 + 136);
      v28 = *(v0 + 152) + 1;
      sub_1000103F8(*(v0 + 56));
      if (v28 == v27)
      {
        break;
      }

      v29 = *(v0 + 144);
      v30 = *(v0 + 152) + 1;
      v31 = *(v0 + 168);
      v32 = *(v0 + 112);
      *(v0 + 152) = v30;
      v33 = *(v0 + 56);
      v34 = *(v0 + 32);
      sub_100010394(v32 + ((v31 + 32) & ~v31) + v29 * v30, v33);
      v15 = (v33 + *(v34 + 28));
      v16 = v15[1];
      if (v16)
      {
        goto LABEL_12;
      }
    }
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10016C1A8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10016C2B8, v1, 0);
}

uint64_t sub_10016C2B8()
{
  v26 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 152) + 1;
  sub_1000103F8(*(v0 + 56));
  if (v2 == v1)
  {
LABEL_2:

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    while (1)
    {
      v13 = *(v0 + 144);
      v14 = *(v0 + 152) + 1;
      *(v0 + 152) = v14;
      v15 = *(v0 + 56);
      v16 = *(v0 + 32);
      sub_100010394(*(v0 + 112) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + v13 * v14, v15);
      v17 = (v15 + *(v16 + 28));
      v18 = v17[1];
      if (v18)
      {
        break;
      }

      sub_100010394(*(v0 + 56), *(v0 + 48));
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 48);
      if (v21)
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v25 = v6;
        *v5 = 136315138;
        type metadata accessor for UUID();
        sub_10016F5A0(&qword_10023C610, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v7 = dispatch thunk of CustomStringConvertible.description.getter();
        v9 = v8;
        sub_1000103F8(v22);
        v10 = sub_10017AD04(v7, v9, &v25);

        *(v5 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to get conversion id from post-conversion story: %s", v5, 0xCu);
        sub_10000DB58(v6);
      }

      else
      {

        sub_1000103F8(v22);
      }

      v11 = *(v0 + 136);
      v12 = *(v0 + 152) + 1;
      sub_1000103F8(*(v0 + 56));
      if (v12 == v11)
      {
        goto LABEL_2;
      }
    }

    v23 = *v17;
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v24[1] = sub_10016C1A8;

    return sub_100166FDC(v23, v18, 1);
  }
}

uint64_t sub_10016C5B4()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to complete expired stories", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10016C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[96] = v3;
  v4[95] = a3;
  v4[94] = a2;
  v4[93] = a1;
  v5 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  v4[97] = v5;
  v4[98] = *(v5 - 8);
  v4[99] = swift_task_alloc();

  return _swift_task_switch(sub_10016C7C8, v3, 0);
}

uint64_t sub_10016C7C8()
{
  v31 = v0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10000CDE0(&qword_10023D848, &unk_1001C19E0);
  sub_10016EF8C(&qword_10023E3A0, sub_10016F004, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v1 = *(v0 + 736);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (*(v0 + 784) + 8);
    v4 = v2 - 1;
    for (i = 32; ; i += 112)
    {
      v6 = *(v0 + 792);
      v7 = *(v0 + 776);
      v8 = *(v0 + 760);
      v9 = *(v1 + i);
      v10 = *(v1 + i + 32);
      *(v0 + 528) = *(v1 + i + 16);
      *(v0 + 544) = v10;
      *(v0 + 512) = v9;
      v11 = *(v1 + i + 48);
      v12 = *(v1 + i + 64);
      v13 = *(v1 + i + 96);
      *(v0 + 592) = *(v1 + i + 80);
      *(v0 + 608) = v13;
      *(v0 + 560) = v11;
      *(v0 + 576) = v12;
      sub_10015DE70(v0 + 512, v0 + 624);
      sub_1000C8888((v0 + 512), v30);
      v14 = v30[11];
      *(v0 + 176) = v30[10];
      *(v0 + 192) = v14;
      v15 = v30[13];
      *(v0 + 208) = v30[12];
      *(v0 + 224) = v15;
      v16 = v30[7];
      *(v0 + 112) = v30[6];
      *(v0 + 128) = v16;
      v17 = v30[9];
      *(v0 + 144) = v30[8];
      *(v0 + 160) = v17;
      v18 = v30[3];
      *(v0 + 48) = v30[2];
      *(v0 + 64) = v18;
      v19 = v30[5];
      *(v0 + 80) = v30[4];
      *(v0 + 96) = v19;
      v20 = v30[1];
      *(v0 + 16) = v30[0];
      *(v0 + 32) = v20;
      *(v0 + 240) = v8;
      *(v0 + 248) = 0;
      *(v0 + 256) = 0;
      sub_1000E191C(v0 + 16);
      v21 = *(v0 + 224);
      *(v0 + 456) = *(v0 + 208);
      *(v0 + 472) = v21;
      *(v0 + 488) = *(v0 + 240);
      *(v0 + 504) = *(v0 + 256);
      v22 = *(v0 + 160);
      *(v0 + 392) = *(v0 + 144);
      *(v0 + 408) = v22;
      v23 = *(v0 + 192);
      *(v0 + 424) = *(v0 + 176);
      *(v0 + 440) = v23;
      v24 = *(v0 + 96);
      *(v0 + 328) = *(v0 + 80);
      *(v0 + 344) = v24;
      v25 = *(v0 + 128);
      *(v0 + 360) = *(v0 + 112);
      *(v0 + 376) = v25;
      v26 = *(v0 + 32);
      *(v0 + 264) = *(v0 + 16);
      *(v0 + 280) = v26;
      v27 = *(v0 + 64);
      *(v0 + 296) = *(v0 + 48);
      *(v0 + 312) = v27;
      sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
      AsyncStream.Continuation.yield(_:)();
      (*v3)(v6, v7);
      if (!v4)
      {
        break;
      }

      --v4;
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10016CBA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_10016CC54, v4, 0);
}

uint64_t sub_10016CC54()
{
  if (!*(v0 + 112))
  {
    v15 = *(v0 + 40);
    v16 = *(v0 + 24);
    v18 = v15[14];
    v17 = v15[15];
    v19 = v15[16];
    v20 = swift_allocObject();
    *(v0 + 88) = v20;
    *(v20 + 16) = v16;
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_10016D010;
    v9 = *(v0 + 56);
    v10 = sub_10016F818;
    v11 = v20;
    v12 = v18;
    v13 = v17;
    v14 = v19;
    goto LABEL_5;
  }

  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = *(v0 + 24);
    v4 = v1[14];
    v5 = v1[15];
    v6 = v1[16];
    v7 = swift_allocObject();
    *(v0 + 64) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;

    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_10016CEC8;
    v9 = *(v0 + 48);
    v10 = sub_10016EEE0;
    v11 = v7;
    v12 = v4;
    v13 = v5;
    v14 = v6;
LABEL_5:

    return sub_10011115C(v9, v10, v11, v12, v13, v14);
  }

  v23 = *(v0 + 16);
  v24 = type metadata accessor for SnoutStoryModel(0);
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10016CEC8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10016D2B4;
  }

  else
  {
    v4 = sub_10016D1D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10016D010()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10016D248;
  }

  else
  {
    v4 = sub_10016D158;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10016D158()
{
  sub_10016EF0C(v0[7], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016D1D0()
{
  sub_10016EF0C(v0[6], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016D248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016D2B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016D340()
{
  v1 = *(v0 + 24);
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[16];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10016D418;

  return sub_100110E84(sub_10016F800, 0, v3, v2, v4);
}