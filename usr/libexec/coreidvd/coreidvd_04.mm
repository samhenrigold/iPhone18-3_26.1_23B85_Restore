uint64_t sub_10006F7E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
  __chkstk_darwin(v3 - 8);
  v32 = &v27 - v4;
  v5 = sub_100007224(&qword_10084A120, &unk_1006C51E0);
  __chkstk_darwin(v5 - 8);
  v33 = &v27 - v6;
  v35 = sub_100007224(&qword_100837990, &qword_1006C9A10);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v27 - v7;
  v9 = type metadata accessor for TiberiusIdentitySharingRequest(0);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&unk_100836448, &unk_1006C5210);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v30 = v9;
  v13 = *(v9 + 20);
  v14 = type metadata accessor for TiberiusWrappedAssessment(0);
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  sub_10000BA08(a1, a1[3]);
  sub_1000AC654();
  v34 = v8;
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v16 = a1;
  if (v15)
  {
    sub_10000BB78(a1);
    sub_10000BE18(v11, &qword_10084A120, &unk_1006C51E0);
    return sub_10000BE18(&v11[v13], &qword_100835E38, &qword_1006C49F0);
  }

  else
  {
    v17 = v30;
    v18 = v31;
    v28 = v16;
    v36 = v13;
    v19 = v32;
    v39 = 0;
    sub_1000BA30C(&qword_100836CB0, &unk_100836448, &unk_1006C5210, &protocol conformance descriptor for JWSSignedJSON<A>);
    v21 = v33;
    v20 = v34;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v21, v11, &qword_10084A120, &unk_1006C51E0);
    v38 = 1;
    sub_10009F43C(&qword_100837160, type metadata accessor for TiberiusWrappedAssessment, &unk_1006C7210);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v19, &v11[v36], &qword_100835E38, &qword_1006C49F0);
    v37 = 2;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    (*(v18 + 8))(v20, v35);
    v25 = &v11[*(v17 + 24)];
    *v25 = v22;
    v25[1] = v24;
    sub_10009ED78(v11, v29, type metadata accessor for TiberiusIdentitySharingRequest);
    sub_10000BB78(v28);
    return sub_10009EDE0(v11, type metadata accessor for TiberiusIdentitySharingRequest);
  }
}

unint64_t sub_10006FCA4()
{
  v1 = 0x656D737365737361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_10006FD10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009656C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006FD38(uint64_t a1)
{
  v2 = sub_1000AC654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006FD74(uint64_t a1)
{
  v2 = sub_1000AC654();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006FDE0(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100837A20, &qword_1006C9A60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2820();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1000B1478(&v31, &v18);
  sub_1000B14B0();
  v14 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100070070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100837078, &qword_1006C9638);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000AD250();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100070204()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0x6954707570657473;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x746163696C707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E6F6ELL;
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

uint64_t sub_1000702BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009669C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000702E4(uint64_t a1)
{
  v2 = sub_1000B2820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100070320(uint64_t a1)
{
  v2 = sub_1000B2820();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007035C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100096868(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_1000703D0()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_100070400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_1000704D8(uint64_t a1)
{
  v2 = sub_1000AD250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100070514(uint64_t a1)
{
  v2 = sub_1000AD250();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100070550@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_100837678, &qword_1006C9868, sub_1000AD250, &type metadata for OLDRequest.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000705CC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008356C8, &qword_1006C1A78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009E958();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v10 = *v3;
  v11 = 0;
  sub_100007224(&qword_1008356A8, &qword_1006C1A70);
  sub_10009EAE0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v10 = *(v3 + 8);
    v11 = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 32);
    v11 = 3;
    sub_10009EBC0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000707F0()
{
  v1 = 0x52746C7561666544;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000014;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100070888@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100096C44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000708B0(uint64_t a1)
{
  v2 = sub_10009E958();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000708EC(uint64_t a1)
{
  v2 = sub_10009E958();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100070928@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100096DBC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_100070984(char a1)
{
  result = 0x5255726576726573;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 26:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x3256726576726573;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
    case 17:
      result = 0xD000000000000013;
      break;
    case 10:
    case 18:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x656D737365737361;
      break;
    case 13:
      result = 0xD000000000000024;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 19:
    case 28:
      result = 0xD000000000000010;
      break;
    case 20:
      v3 = 1114530915;
      goto LABEL_17;
    case 21:
      v3 = 1114403435;
LABEL_17:
      result = v3 | 0x5565736100000000;
      break;
    case 22:
      result = 0xD000000000000034;
      break;
    case 23:
      result = 0xD000000000000023;
      break;
    case 24:
      result = 0x2D656C6261736964;
      break;
    case 25:
      result = 0x6C2D786966657270;
      break;
    case 27:
      result = 0x55657361426D7374;
      break;
    case 29:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000020;
      break;
  }

  return result;
}

uint64_t sub_100070D3C(void *a1)
{
  v3 = sub_100007224(&qword_100836B88, &qword_1006C94A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000BA08(a1, a1[3]);
  sub_1000AA5D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100071308(void *a1, char a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_100836B90, &qword_1006C94B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000AA68C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1000AA7C0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_100007224(&qword_100836B78, &qword_1006C94A0);
    sub_1000AA814();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_100071514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000970CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100071544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100070984(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100071578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000970CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000715AC(uint64_t a1)
{
  v2 = sub_1000AA5D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000715E8(uint64_t a1)
{
  v2 = sub_1000AA5D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100071624@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100097120(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x1A1uLL);
  }

  return result;
}

uint64_t sub_100071688(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F436E6F69676552;
  }

  else
  {
    v3 = 0x43746C7561666544;
  }

  if (v2)
  {
    v4 = 0xEE00736769666E6FLL;
  }

  else
  {
    v4 = 0xED0000736769666ELL;
  }

  if (*a2)
  {
    v5 = 0x6F436E6F69676552;
  }

  else
  {
    v5 = 0x43746C7561666544;
  }

  if (*a2)
  {
    v6 = 0xED0000736769666ELL;
  }

  else
  {
    v6 = 0xEE00736769666E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100071748()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000717E4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007186C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100071910(uint64_t *a1@<X8>)
{
  v2 = 0x43746C7561666544;
  if (*v1)
  {
    v2 = 0x6F436E6F69676552;
  }

  v3 = 0xEE00736769666E6FLL;
  if (*v1)
  {
    v3 = 0xED0000736769666ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100071968()
{
  if (*v0)
  {
    return 0x6F436E6F69676552;
  }

  else
  {
    return 0x43746C7561666544;
  }
}

uint64_t sub_1000719C8@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100071A28(uint64_t a1)
{
  v2 = sub_1000AA68C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071A64(uint64_t a1)
{
  v2 = sub_1000AA68C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100071AA0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100098168(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

Swift::Int sub_100071AF0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100071B64(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100071C00@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007F9728, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100071C58(uint64_t a1)
{
  v2 = sub_1000BA114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071C94(uint64_t a1)
{
  v2 = sub_1000BA114();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100071CD0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100007224(&qword_1008382B8, &qword_1006CFC60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA114();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000BB78(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_100071E30(void *a1)
{
  v2 = sub_100007224(&qword_1008382C8, &qword_1006CFC68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA114();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100071F68()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100071F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_100071FA8(uint64_t a1)
{
  v2 = sub_1000B2250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071FE4(uint64_t a1)
{
  v2 = sub_1000B2250();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = sub_100007224(&qword_100837908, &qword_1006C99E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2328();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18 = 0;
  sub_100007224(&qword_100837918, &qword_1006C99E8);
  sub_1000B237C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v13 = v17;
    v19 = v16;
    v18 = 1;
    sub_100007224(&unk_10084A230, &qword_1006C0F50);
    sub_1000ACB5C(&qword_10084A240, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = a4;
    v18 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v13;
    v18 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10007227C()
{
  v1 = 0x656372756F736572;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10007230C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100098B58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100072334(uint64_t a1)
{
  v2 = sub_1000B2328();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072370(uint64_t a1)
{
  v2 = sub_1000B2328();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000723AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100098354(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100072414(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10007250C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098CCC(*a1);
  *a2 = result;
  return result;
}

void sub_10007253C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  v5 = 0xE300000000000000;
  v6 = 7369839;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001006F93E0;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6172656D6163;
  if (v2 != 3)
  {
    v8 = 0x6F746F6870;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x72656B636970;
  if (v2 != 1)
  {
    v10 = 1702125924;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1000726AC(char a1)
{
  result = 0x707954646C656966;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x4679616C70736964;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x697373696D627573;
      break;
    case 6:
      v3 = 1282304365;
      goto LABEL_16;
    case 7:
      v3 = 1282957677;
LABEL_16:
      result = v3 | 0x74676E6500000000;
      break;
    case 8:
      result = 0x6554657275636573;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x636972656D756ELL;
      break;
    case 11:
      result = 0x79614473776F6873;
      break;
    case 12:
      result = 0x6E6F4D73776F6873;
      break;
    case 13:
      result = 0x61655973776F6873;
      break;
    case 14:
      result = 0x736D657469;
      break;
    case 15:
      result = 0x7461766972507369;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x656C6261636E7973;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x6974726F70707573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100072944(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837AC0, &qword_1006C9AA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = *v3;
  v11 = 0;
  sub_1000B2D6C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 112);
    v11 = 14;
    sub_100007224(&qword_100837AA8, &qword_1006C9A98);
    sub_1000B2DC0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100072D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100838420, &qword_1006CFD28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA744();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100072F2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_1008382F8, &qword_1006CFC88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA1BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000730C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_1008378D0, &qword_1006C99C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B21A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100073254(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008379C8, &qword_1006C9A30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2654();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  sub_1000AB028();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v13 = *(v3 + 4);
    v12 = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v13 = *(v3 + 7);
    v12 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100073500(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_100007224(&qword_1008379A8, &qword_1006C9A20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2558();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2 & 1;
  v14 = 0;
  sub_1000B2600();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000736B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000996A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000736E8(uint64_t a1)
{
  v2 = sub_1000B2BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073724(uint64_t a1)
{
  v2 = sub_1000B2BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100073760@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100098D18(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_1000737EC()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_100073828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001006FE590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10007390C(uint64_t a1)
{
  v2 = sub_1000BA744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073948(uint64_t a1)
{
  v2 = sub_1000BA744();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073984@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_100838410, &qword_1006CFD20, sub_1000BA744, &type metadata for AttributeSettingsPickerItem.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100073A00()
{
  if (*v0)
  {
    return 0x776F6C666B726F77;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_100073A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449)
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

uint64_t sub_100073B1C(uint64_t a1)
{
  v2 = sub_1000BA1BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073B58(uint64_t a1)
{
  v2 = sub_1000BA1BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073B94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008382E8, &qword_1006CFC80, sub_1000BA1BC, &type metadata for ProviderWorkflowInfo.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100073C10()
{
  if (*v0)
  {
    return 1953259891;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_100073C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEB00000000644965;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953259891 && a2 == 0xE400000000000000)
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

uint64_t sub_100073D2C(uint64_t a1)
{
  v2 = sub_1000B21A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073D68(uint64_t a1)
{
  v2 = sub_1000B21A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073DA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008378C0, &qword_1006C99B8, sub_1000B21A8, &type metadata for AppleIdAttributeProof.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100073E20()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 0xD00000000000001FLL;
    if (v1 != 6)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0x6575716552647364;
    if (v1 != 4)
    {
      v3 = 0xD00000000000001FLL;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0x6974617269707865;
    if (v1 != 2)
    {
      v2 = 0x6976726553766469;
    }

    v3 = 0xD000000000000015;
    if (!*v0)
    {
      v3 = 0xD000000000000011;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100073F40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100099CF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100073F68(uint64_t a1)
{
  v2 = sub_1000B2654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073FA4(uint64_t a1)
{
  v2 = sub_1000B2654();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100073FE0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100099FA8(a2, v9);
  if (!v2)
  {
    v5 = v13;
    a1[4] = v12;
    a1[5] = v5;
    v6 = v15;
    a1[6] = v14;
    a1[7] = v6;
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

uint64_t sub_10007404C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "deviceConfidenceAssessment";
  }

  else
  {
    v2 = "identityDocument";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "deviceConfidenceAssessment";
  }

  else
  {
    v4 = "identityDocument";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1000740F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100074168(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000741CC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10007424C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "deviceConfidenceAssessment";
  }

  else
  {
    v2 = "identityDocument";
  }

  *a1 = 0xD00000000000001ALL;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_100074334()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x7463616669747261;
  }
}

uint64_t sub_100074370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463616669747261 && a2 == 0xEA00000000006449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_100074450(uint64_t a1)
{
  v2 = sub_1000B2558();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007448C(uint64_t a1)
{
  v2 = sub_1000B2558();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000744C8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10009A58C(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10007451C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836C78, &qword_1006C9508);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AAE40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 48);
    v13 = *(v3 + 32);
    v14 = v10;
    v12 = 2;
    sub_1000AB028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v13 = *(v3 + 64);
    v12 = 3;
    sub_100007224(&qword_100836C60, &qword_1006C9500);
    sub_1000AB07C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100074790()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7463616669747261;
  v4 = 0x64657461657263;
  if (v1 != 4)
  {
    v4 = 0x6974617269707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6465696669726576;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_100074858@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009A750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100074880(uint64_t a1)
{
  v2 = sub_1000AAE40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000748BC(uint64_t a1)
{
  v2 = sub_1000AAE40();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000748F8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10009A964(a2, v7);
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

uint64_t sub_100074970(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835688, &qword_1006C1A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_10009E888();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100074B28(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835950, &qword_1006C1B80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_10009FCD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100074CE0()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 1953259891;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_100074D38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009AEC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100074D60(uint64_t a1)
{
  v2 = sub_10009E888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100074D9C(uint64_t a1)
{
  v2 = sub_10009E888();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100074DD8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10009AFDC(a2, v6);
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

uint64_t sub_100074E54()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0x656372756F736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_100074EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009B254(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100074EE0(uint64_t a1)
{
  v2 = sub_10009FCD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100074F1C(uint64_t a1)
{
  v2 = sub_10009FCD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100074F58@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10009B374(a2, v6);
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

uint64_t sub_100074FB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_100836E20, &qword_1006C9570);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000ABD8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_100007224(&unk_10084A070, &unk_1006E7DF0);
  sub_1000AB81C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100007224(&qword_100836E08, &qword_1006C9568);
    sub_1000ABEB8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100075178(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_1008378E8, &qword_1006C99D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B21FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10007530C()
{
  if (*v0)
  {
    return 0x4464656D69616C63;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_100075354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4464656D69616C63 && a2 == 0xEB00000000617461)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100075440(uint64_t a1)
{
  v2 = sub_1000ABD8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007547C(uint64_t a1)
{
  v2 = sub_1000ABD8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000754B8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10009B5EC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100075500()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_100075548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEB00000000644965;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FE430 == a2)
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

uint64_t sub_100075630(uint64_t a1)
{
  v2 = sub_1000B21FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007566C(uint64_t a1)
{
  v2 = sub_1000B21FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000756A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008378D8, &qword_1006C99C8, sub_1000B21FC, &type metadata for DataNodeProof.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100075724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100838310, &qword_1006CFC98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000758B8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1000758F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE650 == a2)
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

uint64_t sub_1000759DC(uint64_t a1)
{
  v2 = sub_1000BA210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075A18(uint64_t a1)
{
  v2 = sub_1000BA210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100075A54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009B7FC(a1, &qword_100838300, &qword_1006CFC90, sub_1000BA210, &type metadata for DeviceAssessmentTrainingSignalId.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100075AD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100835750, &qword_1006C1AB8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_10009EE40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100075C64()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100075CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FD500 == a2)
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

uint64_t sub_100075D88(uint64_t a1)
{
  v2 = sub_10009EE40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075DC4(uint64_t a1)
{
  v2 = sub_10009EE40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100075E00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009B7FC(a1, &qword_100835740, &qword_1006C1AB0, sub_10009EE40, &type metadata for TrainingSignalId.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100075E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_1008357E8, &qword_1006C1AF8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_10009F134();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100076010(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836D60, &qword_1006C9548);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AB678();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v11[0] = *v3;
  v12 = 0;
  sub_100007224(&unk_10084A070, &unk_1006E7DF0);
  sub_1000AB81C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v11[0] = *(v3 + 8);
    v11[1] = v9;
    v12 = 1;
    sub_1000AB8D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000761E4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837A08, &qword_1006C9A50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000B27CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[15] = 0;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for SharingCredentials(0);
    v10[14] = 1;
    sub_100007224(&unk_100836448, &unk_1006C5210);
    sub_1000BA30C(&qword_100836D08, &unk_100836448, &unk_1006C5210, &protocol conformance descriptor for JWSSignedJSON<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000763D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_100007224(&unk_100836448, &unk_1006C5210);
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v18 - v4;
  v26 = sub_100007224(&qword_1008379F8, &qword_1006C9A48);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SharingCredentials(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a1, a1[3]);
  sub_1000B27CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v21 = a1;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v28 = 0;
  sub_10007FD2C();
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v11;
  v20 = v29;
  *v11 = v29;
  v27 = 1;
  sub_1000BA30C(&qword_100836CB0, &unk_100836448, &unk_1006C5210, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v7, v14);
  v15 = *(v8 + 20);
  v16 = v19;
  (*(v22 + 32))(&v19[v15], v5, v12);
  sub_10009ED78(v16, v23, type metadata accessor for SharingCredentials);
  sub_10000BB78(v21);
  return sub_10009EDE0(v16, type metadata accessor for SharingCredentials);
}

uint64_t sub_100076748(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000033;
    if (a1 != 8)
    {
      v5 = 0x5F64616F6C796170;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000026;
    }

    v6 = 0x726F727265;
    if (a1 != 5)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x617461645F617564;
    v2 = 0x7364656573;
    v3 = 0x776F6C666B726F77;
    if (a1 != 3)
    {
      v3 = 0x5F656C69666F7270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
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

uint64_t sub_1000768AC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835800, &qword_1006C1B08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009F188();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v35[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v36[0] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = v3[3];
    v35[0] = v3[2];
    v35[1] = v9;
    v10 = v3[5];
    v12 = v3[2];
    v11 = v3[3];
    v35[2] = v3[4];
    v35[3] = v10;
    v31 = v12;
    v32 = v11;
    v13 = v3[5];
    v33 = v3[4];
    v34 = v13;
    v30 = 2;
    sub_10000BBC4(v35, v29, &qword_100835770, &qword_1006C1AD0);
    sub_10009F038();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    sub_10000BE18(v29, &qword_100835770, &qword_1006C1AD0);
    LOBYTE(v26[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[9];
    v26[0] = v3[8];
    v26[1] = v14;
    v16 = v3[8];
    v15 = v3[9];
    *v27 = v3[10];
    *&v27[9] = *(v3 + 169);
    v23 = v16;
    v24 = v15;
    v25[0] = v3[10];
    *(v25 + 9) = *(v3 + 169);
    v22 = 5;
    sub_10000BBC4(v26, v20, &qword_100835768, &qword_1006DB770);
    sub_10009F08C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20[0] = v23;
    v20[1] = v24;
    *v21 = v25[0];
    *&v21[9] = *(v25 + 9);
    sub_10000BE18(v20, &qword_100835768, &qword_1006DB770);
    v19 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = type metadata accessor for ORDRequest(0);
    v19 = 7;
    sub_100007224(&unk_100835208, &unk_1006C0D10);
    sub_1000BA30C(&qword_100835738, &unk_100835208, &unk_1006C0D10, &protocol conformance descriptor for EncryptedDataContainer<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100076D3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v54 = sub_100007224(&qword_1008357F0, &qword_1006C1B00);
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v9 = &v48 - v8;
  v10 = type metadata accessor for ORDRequest(0);
  __chkstk_darwin(v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v55 = a1;
  sub_10000BA08(a1, v13);
  sub_10009F188();
  v53 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v55);
  }

  v50 = v6;
  v14 = v7;
  v51 = v10;
  LOBYTE(v59) = 0;
  v16 = v53;
  v15 = v54;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + 1) = v18;
  v48 = v18;
  LOBYTE(v59) = 1;
  *(v12 + 2) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 3) = v19;
  v64 = 2;
  sub_10009EF3C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v60;
  *(v12 + 2) = v59;
  *(v12 + 3) = v20;
  v21 = *&v61[16];
  *(v12 + 4) = *v61;
  *(v12 + 5) = v21;
  LOBYTE(v56) = 3;
  *(v12 + 12) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 13) = v22;
  LOBYTE(v56) = 4;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = 0;
  *(v12 + 14) = v23;
  *(v12 + 15) = v24;
  v63 = 5;
  sub_10009EF90();
  v25 = v49;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v25)
  {
    v49 = v25;
    (*(v14 + 8))(v16, v15);
    sub_10000BB78(v55);

    v26 = *(v12 + 3);
    v59 = *(v12 + 2);
    v60 = v26;
    v27 = *(v12 + 5);
    *v61 = *(v12 + 4);
    *&v61[16] = v27;
    sub_10000BE18(&v59, &qword_100835770, &qword_1006C1AD0);
  }

  v28 = v57;
  *(v12 + 8) = v56;
  *(v12 + 9) = v28;
  *(v12 + 10) = v58[0];
  *(v12 + 169) = *(v58 + 9);
  v62 = 6;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = 0;
  v12[185] = v29;
  sub_100007224(&unk_100835208, &unk_1006C0D10);
  v62 = 7;
  sub_1000BA30C(&qword_100835728, &unk_100835208, &unk_1006C0D10, &protocol conformance descriptor for EncryptedDataContainer<A>);
  v30 = v50;
  v31 = v49;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v31;
  if (v31)
  {
    (*(v14 + 8))(v16, v15);
    sub_10000BB78(v55);
    v32 = 0;
LABEL_9:
    v33 = v12;
    v34 = v51;
    goto LABEL_10;
  }

  v34 = v51;
  v33 = v12;
  sub_1000B1FC8(v30, &v12[*(v51 + 44)], &qword_100835180, &unk_1006C0CE0);
  v62 = 8;
  v38 = v49;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v38;
  if (!v38)
  {
    v41 = &v12[*(v34 + 48)];
    *v41 = v39;
    v41[8] = v40 & 1;
    v62 = 9;
    v42 = v49;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v42;
    if (!v42)
    {
      v45 = v43;
      v46 = v44;
      (*(v14 + 8))(v53, v54);
      v47 = &v12[*(v51 + 52)];
      *v47 = v45;
      v47[8] = v46 & 1;
      sub_10009ED78(v12, v52, type metadata accessor for ORDRequest);
      sub_10000BB78(v55);
      return sub_10009EDE0(v12, type metadata accessor for ORDRequest);
    }

    (*(v14 + 8))(v53, v54);
    sub_10000BB78(v55);
    v32 = 1;
    goto LABEL_9;
  }

  (*(v14 + 8))(v16, v15);
  sub_10000BB78(v55);
  v32 = 1;
LABEL_10:

  v35 = v33[3];
  v59 = v33[2];
  v60 = v35;
  v36 = v33[5];
  *v61 = v33[4];
  *&v61[16] = v36;
  sub_10000BE18(&v59, &qword_100835770, &qword_1006C1AD0);

  v37 = v33[9];
  v59 = v33[8];
  v60 = v37;
  *v61 = v33[10];
  *&v61[9] = *(v33 + 169);
  result = sub_10000BE18(&v59, &qword_100835768, &qword_1006DB770);
  if (v32)
  {
    return sub_10000BE18(v33 + *(v34 + 44), &qword_100835180, &unk_1006C0CE0);
  }

  return result;
}

uint64_t sub_1000774D8(void *a1)
{
  v3 = sub_100007224(&qword_100835710, &qword_1006C1A98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_10009EC68();
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
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000776BC()
{
  if (*v0)
  {
    return 0x656D737365737361;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100077704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEF646975675F746ELL)
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

uint64_t sub_1000777E8(uint64_t a1)
{
  v2 = sub_10009F134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077824(uint64_t a1)
{
  v2 = sub_10009F134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009B7FC(a1, &qword_1008357D8, &qword_1006C1AF0, sub_10009F134, &type metadata for AssessmentGUIDContainer.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1000778DC()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_100077934@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009B9D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007795C(uint64_t a1)
{
  v2 = sub_1000AB678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077998(uint64_t a1)
{
  v2 = sub_1000AB678();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000779D4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10009BAF8(a2, v6);
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

unint64_t sub_100077A3C()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_100077A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x80000001006FE550 == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001006FDAA0 == a2)
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

uint64_t sub_100077B54(uint64_t a1)
{
  v2 = sub_1000B27CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077B90(uint64_t a1)
{
  v2 = sub_1000B27CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077C04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009BDF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100077C38(uint64_t a1)
{
  v2 = sub_10009F188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077C74(uint64_t a1)
{
  v2 = sub_10009F188();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077CE0()
{
  v1 = *v0;
  v2 = 0x6F7272655F766469;
  v3 = 0x776F6C666B726F77;
  v4 = 0x6574617473;
  if (v1 != 3)
  {
    v4 = 0x6D6F6365725F7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F7272655F6E646FLL;
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

uint64_t sub_100077D8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009C138(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100077DB4(uint64_t a1)
{
  v2 = sub_10009EC68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077DF0(uint64_t a1)
{
  v2 = sub_10009EC68();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100077E2C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10009C300(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100077E90()
{
  sub_100007224(&qword_100835958, &qword_1006C1B88);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006C0990;
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  return v0;
}

uint64_t sub_100078044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x666F72705F617564 && a2 == 0xEB00000000656C69)
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

uint64_t sub_1000780D0(uint64_t a1)
{
  v2 = sub_1000AD2A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007810C(uint64_t a1)
{
  v2 = sub_1000AD2A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000781E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D697473 && a2 == 0xE500000000000000)
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

uint64_t sub_100078268(uint64_t a1)
{
  v2 = sub_1000AD2F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000782A4(uint64_t a1)
{
  v2 = sub_1000AD2F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100078324@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = sub_100007224(a2, a3);
  v19 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_10000BA08(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return sub_10000BB78(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = sub_10000BB78(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_1000784F0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = sub_100007224(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  v14 = *v7;
  sub_10000BA08(a1, a1[3]);
  v15();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100078638(void *a1)
{
  v3 = sub_100007224(&qword_100836EF8, &qword_1006C95A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC70C();
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
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000787D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t a8)
{
  v16[2] = a3;
  v16[1] = a4;
  v10 = sub_100007224(a5, a6);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  sub_10000BA08(a1, a1[3]);
  a7();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v14 = v16[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100078968(void *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  HIDWORD(v13) = a4;
  v7 = sub_100007224(&qword_100836F08, &qword_1006C95A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000AC760();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v11 = BYTE4(v13);
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v11 & 1;
    v15 = 2;
    sub_1000AC7B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100078B8C()
{
  v1 = 0x5F6E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x65636E6F6E5F7374;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632436;
  }
}

uint64_t sub_100078BE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009C5E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100078C0C(uint64_t a1)
{
  v2 = sub_1000AC70C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100078C48(uint64_t a1)
{
  v2 = sub_1000AC70C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100078C84@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10009C700(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_100078CE0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100078D10()
{
  if (*v0)
  {
    return 0x695F747365676964;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_100078D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x695F747365676964 && a2 == 0xEC0000007865646ELL)
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

uint64_t sub_100078E34(uint64_t a1)
{
  v2 = sub_10009F0E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100078E70(uint64_t a1)
{
  v2 = sub_10009F0E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100078EF0@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_10009C94C(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
  }

  return result;
}

void *sub_100078F7C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
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

unint64_t sub_100079058()
{
  v1 = 0x617461645F617564;
  v2 = 0x7079745F6B736174;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461727564;
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

uint64_t sub_1000790DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009CB34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100079104(uint64_t a1)
{
  v2 = sub_1000AC760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100079140(uint64_t a1)
{
  v2 = sub_1000AC760();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10007917C(uint64_t a1@<X8>, void *a2@<X0>)
{
  v7 = sub_10009CCA8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6 & 1;
    *(a1 + 25) = HIBYTE(v6);
  }
}

unint64_t sub_1000791E8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E6F635F64697374;
    v7 = 0x776F6C666B726F77;
    v8 = 0x617461645F617564;
    if (a1 != 3)
    {
      v8 = 0x6E6F6973726576;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7364656573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x726F727265;
    v2 = 0x6B63616264656566;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0xD000000000000023;
    if (a1 != 6)
    {
      v4 = 0xD000000000000030;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100079370(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835798, &qword_1006C1AD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009EE94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 2);
  v44 = *v3;
  v45 = v9;
  v10 = v8;
  v43 = 0;
  sub_10009EFE4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 40);
    v42[0] = *(v3 + 24);
    v42[1] = v11;
    v12 = *(v3 + 72);
    v42[2] = *(v3 + 56);
    v42[3] = v12;
    v13 = *(v3 + 40);
    v38 = *(v3 + 24);
    v39 = v13;
    v14 = *(v3 + 72);
    v40 = *(v3 + 56);
    v41 = v14;
    v37 = 1;
    sub_10000BBC4(v42, v36, &qword_100835770, &qword_1006C1AD0);
    sub_10009F038();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36[0] = v38;
    v36[1] = v39;
    v36[2] = v40;
    v36[3] = v41;
    sub_10000BE18(v36, &qword_100835770, &qword_1006C1AD0);
    LOBYTE(v33[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33[0]) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v33[0]) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v33[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = type metadata accessor for OTDRequest(0);
    v46 = v8;
    v24 = v15;
    LOBYTE(v33[0]) = 6;
    sub_100007224(&qword_1008352C8, &qword_1006C0D50);
    sub_1000BA30C(&qword_1008357B0, &qword_1008352C8, &qword_1006C0D50, &protocol conformance descriptor for EncryptedDataContainer<A>);
    v25 = v3;
    v10 = v46;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v24;
    v16 = v25;
    v35 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v16 + *(v17 + 48));
    v19 = v18[1];
    v33[0] = *v18;
    v33[1] = v19;
    v21 = *v18;
    v20 = v18[1];
    *v34 = v18[2];
    *&v34[9] = *(v18 + 41);
    v30 = v21;
    v31 = v20;
    v32[0] = v18[2];
    *(v32 + 9) = *(v18 + 41);
    v29 = 8;
    sub_10000BBC4(v33, v27, &qword_100835768, &qword_1006DB770);
    sub_10009F08C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27[0] = v30;
    v27[1] = v31;
    *v28 = v32[0];
    *&v28[9] = *(v32 + 9);
    sub_10000BE18(v27, &qword_100835768, &qword_1006DB770);
    v26 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_10007985C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_100007224(&qword_100835248, &unk_1006E7940);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v47 = sub_100007224(&qword_100835758, &unk_1006C1AC0);
  v7 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = &v39 - v8;
  v10 = type metadata accessor for OTDRequest(0);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v48 = a1;
  sub_10000BA08(a1, v13);
  sub_10009EE94();
  v46 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v48);
  }

  v44 = v6;
  v14 = v7;
  v43 = v10;
  LOBYTE(v49) = 0;
  sub_10009EEE8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(&v52 + 1);
  v16 = v53;
  *v12 = v52;
  *(v12 + 1) = v15;
  *(v12 + 2) = v16;
  v58 = 1;
  sub_10009EF3C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v53;
  *(v12 + 24) = v52;
  *(v12 + 40) = v17;
  v18 = v55;
  *(v12 + 56) = v54;
  *(v12 + 72) = v18;
  LOBYTE(v49) = 2;
  *(v12 + 11) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 12) = v19;
  v41 = v19;
  LOBYTE(v49) = 3;
  *(v12 + 13) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + 14) = v20;
  v42 = v20;
  LOBYTE(v49) = 4;
  *(v12 + 15) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49) = 5;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = 0;
  v12[128] = v21;
  sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v40 = v12;
  LOBYTE(v49) = 6;
  sub_1000BA30C(&qword_100835788, &qword_1008352C8, &qword_1006C0D50, &protocol conformance descriptor for EncryptedDataContainer<A>);
  v22 = v44;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v43;
  v24 = v40;
  sub_1000B1FC8(v22, &v40[v43[10]], &qword_100835248, &unk_1006E7940);
  LOBYTE(v49) = 7;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = &v24[v23[11]];
  *v26 = v25;
  v26[8] = v27 & 1;
  v57 = 8;
  sub_10009EF90();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = &v24[v23[12]];
  v29 = v50;
  *v28 = v49;
  *(v28 + 1) = v29;
  *(v28 + 2) = v51[0];
  *(v28 + 41) = *(v51 + 9);
  v56 = 9;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = &v12[v43[13]];
  *v31 = v30;
  v31[8] = v32 & 1;
  v56 = 10;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v34;
  v36 = v12;
  v37 = &v12[v43[14]];
  (*(v14 + 8))(v46, v47);
  *v37 = v33;
  v37[1] = v35;
  sub_10009ED78(v36, v45, type metadata accessor for OTDRequest);
  sub_10000BB78(v48);
  return sub_10009EDE0(v36, type metadata accessor for OTDRequest);
}

uint64_t sub_100079FE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_1008356F8, &qword_1006C1A88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_10009EC14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10007A184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009CEFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007A1AC(uint64_t a1)
{
  v2 = sub_10009EE94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A1E8(uint64_t a1)
{
  v2 = sub_10009EE94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A254()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_10007A294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
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

uint64_t sub_10007A378(uint64_t a1)
{
  v2 = sub_10009EC14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A3B4(uint64_t a1)
{
  v2 = sub_10009EC14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A3F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008356E8, &qword_1006C1A80, sub_10009EC14, &type metadata for IDSPACData.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10007A46C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008355B8, &qword_1006C1A10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_10009D708();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_100007224(&qword_1008355A8, &qword_1006C1A08);
    sub_10009D7D8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[14] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007A680()
{
  v1 = 1701667182;
  v2 = 0x61636F6C5F737067;
  if (*v0 != 2)
  {
    v2 = 1684628851;
  }

  if (*v0)
  {
    v1 = 0x756E5F656E6F6870;
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

uint64_t sub_10007A6FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009D288(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007A724(uint64_t a1)
{
  v2 = sub_10009D708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A760(uint64_t a1)
{
  v2 = sub_10009D708();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007A79C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10009D3F4(a2, v6);
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

Swift::Int sub_10007A804()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10007A870(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007A8CC@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_10007A9E8(void *a1)
{
  v3 = sub_100007224(&qword_1008355E0, &qword_1006C1A20);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_10009D854();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  sub_100007224(&qword_100835138, &qword_1006C0B58);
  sub_1000BA30C(&qword_1008355E8, &qword_100835138, &qword_1006C0B58, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AugmentedProfile(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10007AC3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v28 = sub_100007224(&qword_1008355C8, &qword_1006C1A18);
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v27 - v8;
  v29 = type metadata accessor for AugmentedProfile(0);
  __chkstk_darwin(v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = a1[3];
  v30 = a1;
  sub_10000BA08(a1, v13);
  sub_10009D854();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(v30);
    sub_10000BE18(v11, &qword_1008350C0, &unk_1006C0B30);
  }

  else
  {
    v35 = 0;
    sub_1000BA30C(&qword_1008355D8, &qword_100835138, &qword_1006C0B58, &protocol conformance descriptor for JWSSignedJSON<A>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v6, v11, &qword_1008350C0, &unk_1006C0B30);
    v34 = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v29;
    v16 = &v11[*(v29 + 20)];
    *v16 = v14;
    v16[1] = v17;
    v33 = 2;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = &v11[v15[6]];
    *v19 = v18;
    v19[1] = v20;
    v32 = 3;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = &v11[v15[7]];
    *v22 = v21;
    v22[1] = v23;
    v31 = 4;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v15[8];
    (*(v7 + 8))(v9, v28);
    *&v11[v25] = v24;
    sub_10009ED78(v11, v27, type metadata accessor for AugmentedProfile);
    sub_10000BB78(v30);
    return sub_10009EDE0(v11, type metadata accessor for AugmentedProfile);
  }
}

unint64_t sub_10007B0F4()
{
  v1 = *v0;
  v2 = 0x656C69666F7270;
  v3 = 0x49656C69666F7270;
  v4 = 0x49656C69666F7270;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_10007B1A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009D8A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007B1C8(uint64_t a1)
{
  v2 = sub_10009D854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007B204(uint64_t a1)
{
  v2 = sub_10009D854();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007B270(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7373657373416F6ELL;
  v4 = 0xEC000000746E656DLL;
  if (v2 != 1)
  {
    v3 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C616D726F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x7373657373416F6ELL;
  v8 = 0xEC000000746E656DLL;
  if (*a2 != 1)
  {
    v7 = 0x64656C6261736964;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10007B380()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007B428(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007B4BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007B560@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DA70(*a1);
  *a2 = result;
  return result;
}

void sub_10007B590(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC000000746E656DLL;
  v5 = 0x7373657373416F6ELL;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616D726F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10007B670()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007B73C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007B7F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007B8BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DABC(*a1);
  *a2 = result;
  return result;
}

void sub_10007B8EC(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64756F6C4369;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x73656E755469;
    v2 = 0xE600000000000000;
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

uint64_t sub_10007B9A4@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(_BYTE *, uint64_t)@<X4>, _BYTE *a4@<X8>)
{
  sub_100020260(a1, v11);
  v9 = a3(v11, a2);
  result = sub_10000BB78(a1);
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t sub_10007BA8C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10007BBA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DB08(*a1);
  *a2 = result;
  return result;
}

void sub_10007BBD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64726143654DLL;
  if (v2 != 5)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  v6 = 0xED0000796E6F6870;
  v7 = 0x656C655465726F43;
  if (v2 != 3)
  {
    v7 = 0x797469746E656449;
    v6 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEF64756F6C43692ELL;
  if (v2 != 1)
  {
    v8 = 0xEF73656E7554692ELL;
  }

  if (*v1)
  {
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = 0x73746E756F636341;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v4;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10007BD5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000018;
  v4 = 0x80000001006F94E0;
  if (v2 == 1)
  {
    v5 = 0x80000001006F94E0;
  }

  else
  {
    v3 = 0x6146737961776C61;
    v5 = 0xEE006B6361626C6CLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000018;
  if (*a2 != 1)
  {
    v8 = 0x6146737961776C61;
    v4 = 0xEE006B6361626C6CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10007BE70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007BF24(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007BFC4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007C074@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DB54(*a1);
  *a2 = result;
  return result;
}

void sub_10007C0A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001006F94E0;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0x6146737961776C61;
    v4 = 0xEE006B6361626C6CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10007C134@<X0>(void *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  sub_100020260(a1, v10);
  v7._rawValue = a2;
  v8 = sub_100081E3C(v10, 0, v7);
  result = sub_10000BB78(a1);
  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_10007C1F8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x73656E755469;
  }

  else
  {
    v2 = 0x64756F6C4369;
  }

  if (*a2)
  {
    v3 = 0x73656E755469;
  }

  else
  {
    v3 = 0x64756F6C4369;
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

Swift::Int sub_10007C278()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C2E8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007C33C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C3B4@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_10007C410(uint64_t *a1@<X8>)
{
  v2 = 0x64756F6C4369;
  if (*v1)
  {
    v2 = 0x73656E755469;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_10007C440@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100020260(a1, v7);
  v5 = sub_100081F48(v7, 0);
  result = sub_10000BB78(a1);
  if (!v2)
  {
    *a2 = v5 & 1;
  }

  return result;
}

uint64_t sub_10007C4B0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x74616E6974736564;
    if (a1 != 3)
    {
      v5 = 0x5468736572666572;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000019;
    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4F646E6553657375;
    v2 = 0x447972616D697270;
    if (a1 != 9)
    {
      v2 = 0x79546769666E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 6)
    {
      v3 = 0x4F646E6553657375;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10007C694(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10007C4B0(*a1);
  v5 = v4;
  if (v3 == sub_10007C4B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10007C71C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007C4B0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C780(uint64_t a1)
{
  sub_10007C4B0(*v1);
  String.hash(into:)();
}

Swift::Int sub_10007C7D4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10007C4B0(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007C834@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DBA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007C864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007C4B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10007C8AC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DBA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007C8D4(uint64_t a1)
{
  v2 = sub_10009E3BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007C910(uint64_t a1)
{
  v2 = sub_10009E3BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007C94C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_100007224(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  sub_10000BA08(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  v11 = v13[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v16 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

__n128 sub_10007CB14@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10009DBEC(a2, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 93) = *(v8 + 13);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10007CB68()
{
  v0 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.unimplemented(_:));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

unint64_t sub_10007CD20()
{
  v1 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v1 = 6581359;
  }

  v2 = 6583407;
  if (!*v0)
  {
    v2 = 6582895;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10007CD80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000A977C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007CDA8(uint64_t a1)
{
  v2 = sub_1000AA514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007CDE4(uint64_t a1)
{
  v2 = sub_1000AA514();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007CE4C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_10007CED8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F58, &qword_1006C95C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC964();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v12) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007D090()
{
  v1 = 0x69746E6564497072;
  if (*v0 != 1)
  {
    v1 = 0x72656469766F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4874736575716572;
  }
}

uint64_t sub_10007D104@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000A9BCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007D12C(uint64_t a1)
{
  v2 = sub_1000AC964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007D168(uint64_t a1)
{
  v2 = sub_1000AC964();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007D1A4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000A9CF8(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_10007D200(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008376D8, &qword_1006C98B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACCF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1000B1478(&v31, &v18);
  sub_1000B14B0();
  v14 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v2 + 14);
    v16[7] = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10007D46C()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10007D4E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000AA074(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007D508(uint64_t a1)
{
  v2 = sub_1000ACCF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007D544(uint64_t a1)
{
  v2 = sub_1000ACCF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007D580@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000AA1A0(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_10007D618(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10007D658@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000AA4C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10007D6AC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000AA4C8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007D6D4(uint64_t a1)
{
  v2 = sub_1000820EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007D710(uint64_t a1)
{
  v2 = sub_1000820EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007D74C(void *a1)
{
  v4 = sub_100007224(&qword_100835588, &qword_1006C19F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000820EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CWTPayload();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15) = 0;
    *(v1 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 24) = v8;
    LOBYTE(v15) = 1;
    *(v1 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 40) = v9;
    LOBYTE(v15) = 2;
    *(v1 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 56) = v10;
    LOBYTE(v15) = 3;
    *(v1 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 72) = v11 & 1;
    LOBYTE(v15) = 4;
    *(v1 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 88) = v13 & 1;
    LOBYTE(v15) = 5;
    *(v1 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 104) = v14 & 1;
    v16 = 6;
    sub_10000B960();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 112) = v15;
  }

  sub_10000BB78(a1);
  return v1;
}

uint64_t sub_10007DA6C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DIPError.Code();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EncodingError();
  v22 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v21 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v23 = &v21 - v10;
  v11 = sub_100007224(&qword_100835960, &unk_1006C1B90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  sub_10000BA08(a1, a1[3]);
  sub_1000820EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    (*(v12 + 8))(v14, v11);
    v27 = v2;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v15 = v23;
    if (swift_dynamicCast())
    {

      v17 = v21;
      v16 = v22;
      (*(v22 + 32))(v21, v15, v7);
      swift_allocError();
      (*(v16 + 16))(v18, v17, v7);
      (*(v24 + 104))(v26, enum case for DIPError.Code.cborEncodingFailed(_:), v25);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v16 + 8))(v17, v7);
    }

    else
    {

      (*(v24 + 104))(v26, enum case for DIPError.Code.cwtPayloadCBOREncodingFailed(_:), v25);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v27) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 120);
    v27 = *(v3 + 112);
    v28 = v19;
    v29 = 6;
    sub_1000363B4(v27, v19);
    sub_10000B9B4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000BD94(v27, v28);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_10007E110()
{

  sub_10000BD94(*(v0 + 112), *(v0 + 120));

  return swift_deallocClassInstance();
}

__n128 sub_10007E184(uint64_t a1, uint64_t a2)
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

uint64_t sub_10007E1A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10007E1FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10007E280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007E360(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10007E448(uint64_t a1)
{
  sub_1000A5F34(319, &qword_100835130, &qword_100835138, &qword_1006C0B58, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10007E530(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10007E55C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 109))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007E5A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 109) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 109) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10007E614(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007E640(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10007E688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10007E6E4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_10007E708(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10007E724(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_10007E780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10007E808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10007E8E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007E9B4(uint64_t a1)
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000A437C(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_100835200, &unk_100835208, &unk_1006C0D10, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10007EB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_100835248, &unk_1006E7940);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007EBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100835248, &unk_1006E7940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007ECC8(uint64_t a1)
{
  sub_1000A437C(319, &qword_1008352B8, &type metadata for DIPClientGUIDSeeds, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_1008352C0, &qword_1008352C8, &qword_1006C0D50, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000A437C(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000A437C(319, &qword_1008352D0, &type metadata for ODNErrorInfo, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1000A437C(319, &unk_1008352D8, &type metadata for Double, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
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

__n128 sub_10007EEF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10007EF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007F018(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007F0E8(uint64_t a1)
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A437C(319, &qword_1008352B8, &type metadata for DIPClientGUIDSeeds, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000A437C(319, &qword_1008352D0, &type metadata for ODNErrorInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000A5F34(319, &qword_100835200, &unk_100835208, &unk_1006C0D10, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000A437C(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10007F2C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
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

uint64_t sub_10007F310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 488) = 1;
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

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007F3DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10007F3F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10007F414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 266))
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

uint64_t sub_10007F470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
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
    *(result + 264) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 266) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 266) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10007F52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007F5FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007F6CC(uint64_t a1)
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835450, &type metadata for String, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10007FA34(319, &qword_100835458, &type metadata accessor for HardwareAttestationType, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_100835460, &qword_100835468, &unk_1006C0F40, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000A5F34(319, &qword_100835470, &qword_100835478, &qword_1006D4980, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000A437C(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_10007FA34(319, &qword_100835480, &type metadata accessor for IdentityProofingConsentFlow, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_1000A5F34(319, &qword_100835488, &unk_10084A230, &qword_1006C0F50, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_1000A5F34(319, &qword_100835490, &qword_100835498, &qword_1006C0F58, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_1000A5F34(319, &qword_1008354A0, &unk_1008354A8, &qword_1006C0F60, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_10007FA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10007FA98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10007FAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10007FB40(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

unint64_t sub_10007FBB0()
{
  result = qword_100835528;
  if (!qword_100835528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835528);
  }

  return result;
}

unint64_t sub_10007FC08()
{
  result = qword_100835530;
  if (!qword_100835530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835530);
  }

  return result;
}

uint64_t sub_10007FC5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CWTPayload();
  v5 = swift_allocObject();
  result = sub_10007D74C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_10007FCD8()
{
  result = qword_100835550;
  if (!qword_100835550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835550);
  }

  return result;
}

unint64_t sub_10007FD2C()
{
  result = qword_100839860;
  if (!qword_100839860)
  {
    sub_10000B870(&qword_100834EA0, &qword_1006C06B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839860);
  }

  return result;
}

unint64_t sub_10007FDA8()
{
  result = qword_100835558;
  if (!qword_100835558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835558);
  }

  return result;
}

uint64_t sub_10007FDFC()
{
  if (*v0)
  {
    return 0x65636E6F6ELL;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_10007FE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
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

uint64_t sub_10007FF0C(uint64_t a1)
{
  v2 = sub_1000BA2B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007FF48(uint64_t a1)
{
  v2 = sub_1000BA2B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007FF84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a4;
  v14[2] = a5;
  v15 = type metadata accessor for DIPError.Code();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v16 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100838338, &qword_1006CFCA8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA2B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  Data.base64EncodedString(options:)(0);
  v19 = 0;
  v12 = v17;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v12)
  {
    (*(v9 + 8))(v11, v8);

    (*(v6 + 104))(v16, enum case for DIPError.Code.jsonEncodingFailed(_:), v15);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {

    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1000802F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000AD3A0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100080344(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_1000C31A0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000803D4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4874736575716572;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0xD00000000000001ELL;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6564496D616574;
    if (a1 != 4)
    {
      v3 = 0x6F54737365636361;
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

uint64_t sub_100080520(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008370D0, &qword_1006C9660);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7 - 8];
  sub_10000BA08(a1, a1[3]);
  sub_1000AE2E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v15[0] = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[3];
    v16 = v3[2];
    v17 = v10;
    v18 = v3[4];
    v15[0] = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 168);
    v19[0] = *(v3 + 152);
    v19[1] = v11;
    v12 = *(v3 + 168);
    v16 = *(v3 + 152);
    v17 = v12;
    v15[39] = 7;
    sub_10000BBC4(v19, v15, &qword_1008370D8, &qword_1006C9668);
    sub_1000AE438();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000AE33C(v16, *(&v16 + 1), v17, *(&v17 + 1));
    LOBYTE(v16) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10008082C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000AD80C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100080860(uint64_t a1)
{
  v2 = sub_1000AE2E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008089C(uint64_t a1)
{
  v2 = sub_1000AE2E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000808D8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000ADB04(a2, v10);
  if (!v2)
  {
    v5 = v18;
    a1[8] = v17;
    a1[9] = v5;
    a1[10] = v19[0];
    *(a1 + 169) = *(v19 + 9);
    v6 = v14;
    a1[4] = v13;
    a1[5] = v6;
    v7 = v16;
    a1[6] = v15;
    a1[7] = v7;
    v8 = v10[1];
    *a1 = v10[0];
    a1[1] = v8;
    result = *&v11;
    v9 = v12;
    a1[2] = v11;
    a1[3] = v9;
  }

  return result;
}

uint64_t sub_10008095C(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008376E0, &qword_1006C98B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACBC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1000B1478(&v31, &v18);
  sub_1000B14B0();
  v14 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v2 + 14);
    v16[7] = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    type metadata accessor for RegisterTerminalResponse(0);
    LOBYTE(v17) = 3;
    sub_100007224(&unk_100835E00, &qword_1006C46A0);
    sub_1000BA30C(&qword_1008376E8, &unk_100835E00, &qword_1006C46A0, &protocol conformance descriptor for CBOREncodedCBOR<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100080C64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  __chkstk_darwin(v3 - 8);
  v43 = v39 - v4;
  v5 = sub_100007224(&qword_100836FA8, &qword_1006C95F0);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v39 - v6;
  v8 = type metadata accessor for RegisterTerminalResponse(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 36);
  v13 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v46 = v12;
  v48 = v11;
  v15(&v11[v12], 1, 1, v13);
  sub_10000BA08(a1, a1[3]);
  sub_1000ACBC8();
  v17 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_10000BB78(a1);
    v21 = v48;
    return sub_10000BE18(v21 + v46, &qword_100835D88, &qword_1006DE890);
  }

  v41 = v16;
  v42 = v15;
  v47 = v13;
  v18 = v45;
  v52 = 0;
  sub_1000ACC1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *&v51[19];
  v21 = v48;
  *(v48 + 2) = *&v51[17];
  *(v21 + 48) = v20;
  v22 = *&v51[23];
  *(v21 + 64) = *&v51[21];
  *(v21 + 80) = v22;
  v23 = *&v51[15];
  *v21 = *&v51[13];
  *(v21 + 16) = v23;
  LOBYTE(v51[0]) = 1;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v25;
  v40 = a1;
  *(v21 + 96) = v24;
  *(v21 + 104) = v25;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v49) = 2;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v26;
  v28 = v51[0];
  *(v21 + 112) = v51[0];
  LOBYTE(v51[0]) = 3;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39[4] = v28;
  v39[3] = v27;
  v34 = v7;
  if (v30 && (v51[0] = v29, v51[1] = v30, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , v50))
  {
    v39[2] = Data.init(base64Encoded:options:)();
    v36 = v35;

    if (v36 >> 60 == 15)
    {
      LOBYTE(v51[0]) = 3;
      type metadata accessor for DecodingError();
      swift_allocError();
      sub_1000BA30C(&qword_100836FC8, &qword_100836FA8, &qword_1006C95F0, &protocol conformance descriptor for KeyedDecodingContainer<A>);
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      swift_willThrow();
      (*(v18 + 8))(v34, v5);
      sub_10000BB78(v40);
      v31 = *(v21 + 48);
      *&v51[4] = *(v21 + 32);
      *&v51[6] = v31;
      v32 = *(v21 + 80);
      *&v51[8] = *(v21 + 64);
      *&v51[10] = v32;
      v33 = *(v21 + 16);
      *v51 = *v21;
      *&v51[2] = v33;
      sub_1000ACC70(v51);

      return sub_10000BE18(v21 + v46, &qword_100835D88, &qword_1006DE890);
    }

    type metadata accessor for MobileDocumentReaderExternalData();
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    v39[1] = CBORDecoder.init()();
    sub_10009F43C(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    sub_10009F43C(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    v38 = v43;
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    (*(v18 + 8))(v34, v5);
    v42(v38, 0, 1, v47);
    sub_1000B2764(v38, v21 + v46, &qword_100835D88, &qword_1006DE890);
  }

  else
  {
    (*(v18 + 8))(v7, v5);
  }

  v37 = v40;
  sub_10009ED78(v21, v44, type metadata accessor for RegisterTerminalResponse);
  sub_10000BB78(v37);
  return sub_10009EDE0(v21, type metadata accessor for RegisterTerminalResponse);
}

Swift::Int sub_100081418()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000814FC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000815CC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000816AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B08D0(*a1);
  *a2 = result;
  return result;
}

void sub_1000816DC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00726564616548;
  v3 = 0x65736E6F70736572;
  v4 = 0x80000001006F9610;
  v5 = 0xD000000000000026;
  if (*v1 != 2)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xEC00000061746144;
  }

  if (*v1)
  {
    v3 = 0x45656D69746E7572;
    v2 = 0xEC000000726F7272;
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

unint64_t sub_10008177C()
{
  v1 = 0x65736E6F70736572;
  v2 = 0xD000000000000026;
  if (*v0 != 2)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    v1 = 0x45656D69746E7572;
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

unint64_t sub_100081818@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B08D0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100081840(uint64_t a1)
{
  v2 = sub_1000ACBC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008187C(uint64_t a1)
{
  v2 = sub_1000ACBC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000818B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100837508, &qword_1006C97B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B0B0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100081A4C()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_100081A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_100081B68(uint64_t a1)
{
  v2 = sub_1000B0B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100081BA4(uint64_t a1)
{
  v2 = sub_1000B0B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100081BE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008374F8, &qword_1006C97A8, sub_1000B0B0C, &type metadata for PIIToken.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100081C5C(void *a1, unsigned int a2)
{
  v5 = sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_10000BA08(v9, v9[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v7 = sub_10009DABC(v8);
    if (v7 == 4)
    {
      v5 = a2;
    }

    else
    {
      v5 = v7;
    }

    sub_10000BB78(v9);
    sub_10000BB78(a1);
  }

  return v5;
}

unint64_t sub_100081D4C(void *a1, unsigned int a2)
{
  v5 = sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_10000BA08(v9, v9[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v7 = sub_10009DB08(v8);
    if (v7 == 7)
    {
      v5 = a2;
    }

    else
    {
      v5 = v7;
    }

    sub_10000BB78(v9);
    sub_10000BB78(a1);
  }

  return v5;
}

unint64_t sub_100081E3C(void *a1, unsigned int a2, Swift::OpaquePointer a3)
{
  v7 = sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v3)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_10000BA08(v11, v11[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v9 = _findStringSwitchCase(cases:string:)(a3, v10);

    if (v9 >= 3)
    {
      v7 = a2;
    }

    else
    {
      v7 = v9;
    }

    sub_10000BB78(v11);
    sub_10000BB78(a1);
  }

  return v7;
}

uint64_t sub_100081F48(void *a1, char a2)
{
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_10000BA08(v8, v8[3]);
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  v6 = _findStringSwitchCase(cases:string:)(&off_1007F9AC8, v7);

  if (v6)
  {
    if (v6 == 1)
    {
      a2 = 1;
    }
  }

  else
  {
    a2 = 0;
  }

  sub_10000BB78(v8);
  sub_10000BB78(a1);
  return a2 & 1;
}

BOOL sub_10008205C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = 0;
  if (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = a3[2];
    v9 = v8 <= 1 && v8 == a6[2];
    if (v9 && (!v8 || a3[4] == a6[4] && a3[5] == a6[5] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1000820EC()
{
  result = qword_100835590;
  if (!qword_100835590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835590);
  }

  return result;
}

unint64_t sub_100082140(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F87B0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008218C(void *a1)
{
  v3 = sub_100007224(&qword_100837750, &qword_1006C98F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();

  (*(v8 + 8))(v10, v7);
  v11 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1930();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v15 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v11;
}

uint64_t sub_1000823FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7574617453627573 && a2 == 0xED000065646F4373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D737574617473 && a2 == 0xED00006567617373)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100082624@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_1008376A8, &qword_1006C9888);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B1504();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  LOBYTE(v43[0]) = 1;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v12;
  LOBYTE(v43[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v14;
  v31 = v13;
  LOBYTE(v43[0]) = 3;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v15;
  LOBYTE(v43[0]) = 4;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v16;
  v44 = 5;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = *(v6 + 8);
  v19 = v17;
  v28 = v20;
  v18(v8, v5);
  *&v37 = v9;
  *(&v37 + 1) = v11;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v31;
  *(&v39 + 1) = v35;
  *&v40 = v30;
  v21 = v33;
  *(&v40 + 1) = v33;
  *&v41 = v29;
  v22 = v32;
  *(&v41 + 1) = v32;
  *&v42 = v19;
  v23 = v28;
  *(&v42 + 1) = v28;
  sub_1000B1478(&v37, v43);
  sub_10000BB78(a1);
  v43[0] = v9;
  v43[1] = v11;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v31;
  v43[5] = v35;
  v43[6] = v30;
  v43[7] = v21;
  v43[8] = v29;
  v43[9] = v22;
  v43[10] = v19;
  v43[11] = v23;
  result = sub_1000ACC70(v43);
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  v26 = v42;
  a2[4] = v41;
  a2[5] = v26;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

uint64_t sub_100082AC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69726F68747561 && a2 == 0xED00006E6F697461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100082BE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837680, &qword_1006C9870);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B1424();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000BB78(a1);
  v20 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

uint64_t sub_100082DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1919248756 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FDBF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F4365636E6F6ELL && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F436E6F69676572 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100083184@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_100007224(&qword_100837858, &qword_1006C9978);
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v7 = &v46 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v107 = v12;
  (*(v9 + 8))(v11, v8);
  v13 = a1[3];
  v62 = a1;
  sub_10000BA08(a1, v13);
  sub_1000ACA60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v67 = v2;
    v16 = 0;
    LODWORD(v61) = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v63 = &off_1007F8AB0;
  }

  else
  {
    v14 = v5;
    LOBYTE(v68) = 0;
    sub_1000AB1A8();
    v15 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v24 = v80;
    v58 = v81;
    v25 = v82;
    v107 = v83;
    LOBYTE(v68) = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = v25;
    v54 = v24;
    v18 = v81;
    v19 = v82;
    v56 = v83;
    v57 = v80;
    v26 = v84;
    v55 = v85;
    LOBYTE(v80) = 2;
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = v26;
    v60 = v27;
    LOBYTE(v80) = 3;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v28;
    LOBYTE(v80) = 4;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v29;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    LOBYTE(v68) = 5;
    sub_10007FD2C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = v80;
    LOBYTE(v80) = 6;
    v48 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v80) = 7;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = 0;
    v47 = v30;
    v64 = v31;
    sub_100007224(&qword_100836E80, &qword_1006C9588);
    LOBYTE(v68) = 8;
    sub_1000AC244();
    v32 = v67;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v67 = v32;
    if (v32)
    {
      (*(v14 + 8))(v7, v15);
      v63 = &off_1007F8AB0;
    }

    else
    {
      v63 = v80;
      LOBYTE(v80) = 9;
      v33 = KeyedDecodingContainer.decode(_:forKey:)();
      v67 = 0;
      v34 = v33;
      sub_100007224(&unk_10084A230, &qword_1006C0F50);
      v104 = 10;
      sub_1000ACB5C(&qword_100835878, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
      v35 = v67;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v67 = v35;
      if (!v35)
      {
        v36 = v34 & 1;
        (*(v14 + 8))(v7, v61);
        v61 = v105;
        v37 = v55;
        *&v68 = v54;
        *(&v68 + 1) = v58;
        v38 = v52;
        v39 = v107;
        *&v69 = v53;
        *(&v69 + 1) = v107;
        v40 = v56;
        *&v70 = v57;
        *(&v70 + 1) = v18;
        *&v71 = v19;
        *(&v71 + 1) = v56;
        *&v72 = v52;
        *(&v72 + 1) = v55;
        *&v73 = v51;
        *(&v73 + 1) = v60;
        *&v74 = v50;
        *(&v74 + 1) = v66;
        *&v75 = v49;
        *(&v75 + 1) = v65;
        *&v76 = v59;
        *(&v76 + 1) = v48;
        *&v77 = v47;
        *(&v77 + 1) = v64;
        *&v78 = v63;
        BYTE8(v78) = v36;
        *(&v78 + 9) = v106[0];
        HIDWORD(v78) = *(v106 + 3);
        v79 = v105;
        sub_1000B2030(&v68, &v80);
        sub_10000BB78(v62);
        v80 = v54;
        v81 = v58;
        v82 = v53;
        v83 = v39;
        v84 = v57;
        v85 = v18;
        v86 = v19;
        v87 = v40;
        v88 = v38;
        v89 = v37;
        v90 = v51;
        v91 = v60;
        v92 = v50;
        v93 = v66;
        v94 = v49;
        v95 = v65;
        v96 = v59;
        v97 = v48;
        v98 = v47;
        v99 = v64;
        v100 = v63;
        v101 = v36;
        *v102 = v106[0];
        *&v102[3] = *(v106 + 3);
        v103 = v61;
        result = sub_1000B2068(&v80);
        v41 = v77;
        *(a2 + 128) = v76;
        *(a2 + 144) = v41;
        *(a2 + 160) = v78;
        *(a2 + 176) = v79;
        v42 = v73;
        *(a2 + 64) = v72;
        *(a2 + 80) = v42;
        v43 = v75;
        *(a2 + 96) = v74;
        *(a2 + 112) = v43;
        v44 = v69;
        *a2 = v68;
        *(a2 + 16) = v44;
        v45 = v71;
        *(a2 + 32) = v70;
        *(a2 + 48) = v45;
        return result;
      }

      (*(v14 + 8))(v7, v61);
    }

    v16 = 1;
    LODWORD(v61) = 1;
    v17 = v57;
    v20 = v56;
    v21 = v52;
    v22 = v55;
  }

  sub_10000BB78(v62);

  sub_1000AB97C(v17, v18, v19, v20, v21, v22);
  if (v16)
  {
  }

  if (v61)
  {
  }
}

uint64_t sub_100083A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_100007224(&qword_100837058, &qword_1006C9628);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000AD0D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v9 = v20;
  v45 = 0;
  sub_1000ACC1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v35;
  v42 = v36;
  v43 = v37;
  v44 = v38;
  v39 = *&v33[40];
  v40 = v34;
  LOBYTE(v29[0]) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v19 = v10;
  sub_100020260(a1, v33);
  type metadata accessor for LegacyWorkflowPackage(0);
  v13 = swift_allocObject();
  sub_10005034C(v33);
  (*(v8 + 8))(v7, v4);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v21 = v39;
  v22 = v40;
  v14 = v19;
  *&v27 = v19;
  *(&v27 + 1) = v12;
  v28 = v13;
  sub_1000AD12C(&v21, v29);
  sub_10000BB78(a1);
  v29[2] = v41;
  v29[3] = v42;
  v29[4] = v43;
  v29[5] = v44;
  v29[0] = v39;
  v29[1] = v40;
  v30 = v14;
  v31 = v12;
  v32 = v13;
  result = sub_1000AD164(v29);
  v16 = v26;
  *(v9 + 64) = v25;
  *(v9 + 80) = v16;
  *(v9 + 96) = v27;
  *(v9 + 112) = v28;
  v17 = v22;
  *v9 = v21;
  *(v9 + 16) = v17;
  v18 = v24;
  *(v9 + 32) = v23;
  *(v9 + 48) = v18;
  return result;
}

uint64_t sub_100083D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_100083E3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8AD8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100083E88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447475706E69 && a2 == 0xE900000000000061;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FE3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xED00006873614879)
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

uint64_t sub_100084008(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDC50 == a2)
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

uint64_t sub_10008418C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837068, &qword_1006C9630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AD194();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v36) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v10 & 1;
  LOBYTE(v36) = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v31 = v11;
  LOBYTE(v36) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v30 = v14;
  v45 = 3;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = *(v6 + 8);
  v29 = v17;
  v19 = v8;
  v21 = v20;
  v18(v19, v5);
  v28 = v9;
  *&v32 = v9;
  LOBYTE(v9) = v44;
  BYTE8(v32) = v44;
  v23 = v30;
  v22 = v31;
  *&v33 = v31;
  *(&v33 + 1) = v13;
  *&v34 = v30;
  *(&v34 + 1) = v16;
  *&v35 = v29;
  *(&v35 + 1) = v21;
  sub_1000AD1E8(&v32, &v36);
  sub_10000BB78(a1);
  v36 = v28;
  v37 = v9;
  v38 = v22;
  v39 = v13;
  v40 = v23;
  v41 = v16;
  v42 = v29;
  v43 = v21;
  result = sub_1000AD220(&v36);
  v25 = v33;
  *a2 = v32;
  a2[1] = v25;
  v26 = v35;
  a2[2] = v34;
  a2[3] = v26;
  return result;
}

uint64_t sub_100084448(void *a1)
{
  v3 = sub_100007224(&qword_100837780, &qword_1006C9918);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_10000BA08(a1, v7);
  sub_1000B19D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    HIBYTE(v9) = 0;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v10;
    sub_100007224(&qword_100837790, &qword_1006C9920);
    HIBYTE(v9) = 1;
    sub_1000B1A2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_100084658(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001006FDA20 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365726975716572 && a2 == 0xEE00373134464450 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FDA40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDA60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F656D69547263 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61756E614D7263 && a2 == 0xED000079616C6544 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B6174655278616DLL && a2 == 0xEE00746E756F4365)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000848C8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100836C08, &qword_1006C94E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AAC1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_100007224(&qword_100836C18, &qword_1006C94E8);
  LOBYTE(v28) = 0;
  sub_1000AAC70();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v31;
  LOBYTE(v31) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v31) = 2;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v31) = 3;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v31) = 4;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = v11 & 1;
  LOBYTE(v31) = 5;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = v12 & 1;
  v44 = 6;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  v16 = *(v6 + 8);
  v22 = v13;
  v16(v8, v5);
  v15 &= 1u;
  v41 = v15;
  *&v28 = v9;
  v23 = v10;
  BYTE8(v28) = v10;
  BYTE9(v28) = v27;
  BYTE10(v28) = v26;
  v17 = v24;
  *&v29 = v25;
  LOBYTE(v10) = v43;
  BYTE8(v29) = v43;
  *v30 = v24;
  v18 = v42;
  v30[8] = v42;
  v19 = v22;
  *&v30[16] = v22;
  v30[24] = v15;
  sub_1000AAD24(&v28, &v31);
  sub_10000BB78(a1);
  v31 = v9;
  v32 = v23;
  v33 = v27;
  v34 = v26;
  v35 = v25;
  v36 = v10;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v40 = v15;
  result = sub_1000AAD5C(&v31);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  a2[2] = *v30;
  *(a2 + 41) = *&v30[9];
  return result;
}

unint64_t sub_100084C60(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8C08, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100084CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69676552627573 && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FD610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974616E69676170 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E616353636F64 && a2 == 0xED00006769666E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6761506863746177 && a2 == 0xEF6E6F6974616E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616E696761506D64 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100084ED4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = sub_100007224(&qword_100835900, &qword_1006C1B60);
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_10009FAC8();
  v52 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v29 = a2;
  LOBYTE(v37[0]) = 0;
  v9 = v30;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v37[0]) = 1;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v12;
  sub_100007224(&unk_100839A40, &qword_1006C1B50);
  LOBYTE(v31) = 2;
  sub_10009F8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v37[0];
  v45 = 3;
  sub_10009FB1C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v46;
  v50 = v47;
  v51[0] = v48[0];
  *(v51 + 9) = *(v48 + 9);
  LOBYTE(v31) = 4;
  v25 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v37[0];
  v43 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v28;
  (*(v8 + 8))(v52, v9);
  v14 = v44;
  *&v31 = v10;
  *(&v31 + 1) = v13;
  v15 = v26;
  v16 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v26;
  v17 = v24;
  v33 = v49;
  v34 = v50;
  v35[0] = v51[0];
  *(v35 + 9) = *(v51 + 9);
  *&v36 = v24;
  *(&v36 + 1) = v44;
  sub_10009FB70(&v31, v37);
  sub_10000BB78(a1);
  v37[0] = v10;
  v37[1] = v13;
  v37[2] = v16;
  v37[3] = v15;
  v38 = v49;
  v39 = v50;
  v40[0] = v51[0];
  *(v40 + 9) = *(v51 + 9);
  v41 = v17;
  v42 = v14;
  result = sub_10009FBA8(v37);
  v19 = v35[1];
  v20 = v29;
  v29[4] = v35[0];
  v20[5] = v19;
  v20[6] = v36;
  v21 = v32;
  *v20 = v31;
  v20[1] = v21;
  v22 = v34;
  v20[2] = v33;
  v20[3] = v22;
  return result;
}

uint64_t sub_100085378(void *a1)
{
  v2 = sub_100007224(&qword_1008358C0, &qword_1006C1B48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10000BA08(a1, a1[3]);
  sub_10009F81C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[30] = 0;
  sub_10009F870();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v8[31];
  sub_100007224(&unk_100839A40, &qword_1006C1B50);
  v8[15] = 1;
  sub_10009F8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v6;
}

unint64_t sub_100085564(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000855B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006F8C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144766469 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEE00736D69616C43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6974726F70707573 && a2 == 0xEE0061746144676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001006FDB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65646F4E61746164 && a2 == 0xEE0073666F6F7250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FDB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1000859A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FE490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xED00006D69616C43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B726F577478656ELL && a2 == 0xEC000000776F6C66)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100085BCC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8EB8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void *sub_100085C18@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = a2;
  v4 = sub_100007224(&qword_1008371E0, &qword_1006C96B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000AED80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v9 = v13;
  v16 = 0;
  sub_1000AEDD4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v14[0];
  v16 = 1;
  sub_1000AEE28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v7, v4);
  memcpy(&v15[7], v14, 0x148uLL);
  sub_10000BB78(a1);
  *v9 = v10;
  return memcpy(v9 + 1, v15, 0x14FuLL);
}

unint64_t sub_100085E24(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

void *sub_100085E78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837A28, &qword_1006C9A68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v9 = a1[3];
  v87 = a1;
  sub_10000BA08(a1, v9);
  sub_1000B28DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v87);
  }

  v10 = v6;
  LOBYTE(v89[0]) = 0;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v85 = v13;
  LOBYTE(v89[0]) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v77 = v15;
  v84 = 0;
  v16 = v14;
  LOBYTE(v89[0]) = 2;
  v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v76 = v17;
  LOBYTE(v89[0]) = 3;
  v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = v18;
  LOBYTE(v89[0]) = 4;
  v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v74 = v19;
  LOBYTE(v89[0]) = 5;
  v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = v20;
  LOBYTE(v89[0]) = 6;
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = v21;
  LOBYTE(v89[0]) = 7;
  v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = v22;
  LOBYTE(v89[0]) = 8;
  v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v23;
  v86 = 0;
  LOBYTE(v89[0]) = 9;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v69 = v25;
  v86 = 0;
  v26 = v24;
  LOBYTE(v89[0]) = 10;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v27;
  v86 = 0;
  LOBYTE(v89[0]) = 11;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v67 = v28;
  v86 = 0;
  sub_100007224(&qword_1008355A8, &qword_1006C1A08);
  LOBYTE(v88[0]) = 12;
  sub_10009D75C();
  v29 = v86;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v86 = v29;
  if (!v29)
  {
    v66 = v89[0];
    LOBYTE(v89[0]) = 13;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v30;
    v86 = 0;
    LOBYTE(v89[0]) = 14;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v31;
    v86 = 0;
    LOBYTE(v89[0]) = 15;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v32;
    v86 = 0;
    LOBYTE(v89[0]) = 16;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v33;
    v86 = 0;
    LOBYTE(v89[0]) = 17;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = v34;
    v84 = 0;
    LOBYTE(v89[0]) = 18;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v35;
    v86 = 0;
    LOBYTE(v89[0]) = 19;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v36;
    v86 = 0;
    v90 = 20;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v38;
    v48 = v37;
    v86 = 0;
    (*(v10 + 8))(v8, v5);
    v39 = v85;
    v88[0] = v12;
    v88[1] = v85;
    v88[2] = v66;
    v88[3] = v59;
    v88[4] = v65;
    v88[5] = v58;
    v88[6] = v64;
    v88[7] = v57;
    v88[8] = v63;
    v88[9] = v55;
    v88[10] = v56;
    v88[11] = v16;
    v40 = v16;
    v42 = v76;
    v41 = v77;
    v88[12] = v77;
    v88[13] = v83;
    v88[14] = v76;
    v88[15] = v82;
    v43 = v74;
    v88[16] = v75;
    v88[17] = v81;
    v88[18] = v74;
    v88[19] = v80;
    v88[20] = v73;
    v88[21] = v79;
    v88[22] = v72;
    v88[23] = v78;
    v88[24] = v71;
    v88[25] = v62;
    v88[26] = v70;
    v46 = v26;
    v88[27] = v26;
    v88[28] = v69;
    v88[29] = v61;
    v88[30] = v68;
    v88[31] = v60;
    v88[32] = v67;
    v44 = v54;
    v88[33] = v53;
    v88[34] = v54;
    v88[35] = v50;
    v88[36] = v52;
    v88[37] = v49;
    v88[38] = v51;
    v88[39] = v48;
    v88[40] = v47;
    sub_1000B2930(v88, v89);
    sub_10000BB78(v87);
    v89[0] = v12;
    v89[1] = v39;
    v89[2] = v66;
    v89[3] = v59;
    v89[4] = v65;
    v89[5] = v58;
    v89[6] = v64;
    v89[7] = v57;
    v89[8] = v63;
    v89[9] = v55;
    v89[10] = v56;
    v89[11] = v40;
    v89[12] = v41;
    v89[13] = v83;
    v89[14] = v42;
    v89[15] = v82;
    v89[16] = v75;
    v89[17] = v81;
    v89[18] = v43;
    v89[19] = v80;
    v89[20] = v73;
    v89[21] = v79;
    v89[22] = v72;
    v89[23] = v78;
    v89[24] = v71;
    v89[25] = v62;
    v89[26] = v70;
    v89[27] = v46;
    v89[28] = v69;
    v89[29] = v61;
    v89[30] = v68;
    v89[31] = v60;
    v89[32] = v67;
    v89[33] = v53;
    v89[34] = v44;
    v89[35] = v50;
    v89[36] = v52;
    v89[37] = v49;
    v89[38] = v51;
    v89[39] = v48;
    v89[40] = v47;
    sub_1000AEF5C(v89);
    return memcpy(a2, v88, 0x148uLL);
  }

  (*(v10 + 8))(v8, v5);
  LODWORD(v81) = 0;
  LODWORD(v82) = 0;
  LODWORD(v83) = 0;
  LODWORD(v78) = 1;
  LODWORD(v79) = 1;
  LODWORD(v80) = 1;
  sub_10000BB78(v87);

  if (v81)
  {

    if ((v82 & 1) == 0)
    {
LABEL_12:
      if (!v83)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (!v82)
  {
    goto LABEL_12;
  }

  if (v83)
  {
LABEL_13:
  }

LABEL_14:
  if (!v84)
  {

    if ((v78 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v78)
  {
LABEL_16:
  }

LABEL_21:

  if (v79)
  {

    if ((v80 & 1) == 0)
    {
    }

    goto LABEL_19;
  }

  if (v80)
  {
LABEL_19:
  }
}

uint64_t sub_100086D64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644979656BLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4961746164 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100086E7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_100837340, &qword_1006C9728);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AF9C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v27 = a2;
  v12 = v9;
  LOBYTE(v33[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v26 + 1) = v14;
  *&v26 = v13;
  v43 = 2;
  sub_1000AFA1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v25 = v40;
  v15 = v41;
  v24 = *(&v40 + 1);
  v16 = *(&v41 + 1);
  v17 = v42;
  *&v28 = v12;
  *(&v28 + 1) = v11;
  v18 = v26;
  v29 = v26;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  sub_1000AFA70(&v28, v33);
  sub_10000BB78(a1);
  v33[0] = v12;
  v33[1] = v11;
  v34 = v18;
  v35 = v25;
  v36 = v24;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  result = sub_1000AFAA8(v33);
  v20 = v31;
  v21 = v27;
  *(v27 + 32) = v30;
  *(v21 + 48) = v20;
  *(v21 + 64) = v32;
  v22 = v29;
  *v21 = v28;
  *(v21 + 16) = v22;
  return result;
}

uint64_t sub_100087188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000872A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100838360, &qword_1006CFCC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA3FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v22 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000BB78(a1);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v19;
  a2[3] = v13;
  a2[4] = v16;
  return result;
}

void *sub_1000874B8(void *a1)
{
  v3 = sub_100007224(&qword_100837710, &qword_1006C98E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000BA08(a1, a1[3]);
  sub_1000B171C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_100007224(&qword_100837720, &qword_1006C98E8);
    sub_1000B1770();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000BB78(a1);
  }

  return v7;
}

uint64_t sub_10008763C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D656E696C6E69 && a2 == 0xED00007363697274;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D65727574706163 && a2 == 0xEE00736369727465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74654D6F65646976 && a2 == 0xEC00000073636972)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100087768(void *a1)
{
  v2 = sub_100007224(&qword_1008372E8, &qword_1006C9708);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_1000AF6BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100007224(&qword_1008372F8, &qword_1006C9710);
  v9 = 0;
  sub_1000AF710();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v7 = v10;
  v9 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100007224(&qword_100837310, &qword_1006C9718);
  v9 = 2;
  sub_1000AF7E8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_1000879EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E697272756C62 && a2 == 0xEA00000000007373;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426563616C70616CLL && a2 == 0xEB0000000072756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694464726163 && a2 == 0xEE006E6F6974726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDE90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6374695064616568 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6C6F5264616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x77615964616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5465727574706163 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000077656B53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x666972447466656CLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6972447468676972 && a2 == 0xEA00000000007466 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x74666972447075 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x666972446E776F64 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x666E6F4365636166 && a2 == 0xEF7365636E656469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FDFB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x73656361466D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6C6576654C78756CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6544373134666470 && a2 == 0xEE00646574636574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x61436F7475417369 && a2 == 0xEE00646572757470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x456873616C467369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x754E726575737369 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x7465446572616C67 && a2 == 0xED00006465746365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDFF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x6556746567726174 && a2 == 0xEE00736563697472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEF7372656E726F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x686374614D72636FLL && a2 == 0xEC00000061746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x6365446C65646F6DLL && a2 == 0xED00006E6F697369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x7461726F6C707865 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x6F436E6163736572 && a2 == 0xEB00000000746E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xED00006574756843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0x6165706552626F64 && a2 == 0xEE00746E756F4374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x6165706552656F64 && a2 == 0xEE00746E756F4374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FE0B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x526E6163537A726DLL && a2 == 0xED0000746C757365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0x636F44664F656761 && a2 == 0xED0000746E656D75)
  {

    return 54;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 54;
    }

    else
    {
      return 55;
    }
  }
}

void *sub_100088AE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837260, &qword_1006C96D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v9 = a1[3];
  v371 = a1;
  sub_10000BA08(a1, v9);
  sub_1000AF190();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v371);
  }

  v10 = v6;
  v104 = a2;
  LOBYTE(v106) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v370 = BYTE4(v11) & 1;
  LOBYTE(v106) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v367 = BYTE4(v13) & 1;
  LOBYTE(v106) = 2;
  v103 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v364 = BYTE4(v103) & 1;
  LOBYTE(v106) = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v361 = BYTE4(v14) & 1;
  LOBYTE(v106) = 4;
  v15 = v14;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = v15;
  v358 = BYTE4(v16) & 1;
  LOBYTE(v106) = 5;
  v17 = v16;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v101 = v17;
  v19 = v18;
  v355 = BYTE4(v18) & 1;
  LOBYTE(v106) = 6;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v352 = BYTE4(v20) & 1;
  LOBYTE(v106) = 7;
  v99 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v100 = v20;
  v349 = BYTE4(v99) & 1;
  LOBYTE(v106) = 8;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v97 = v13;
  v98 = v21;
  v346 = BYTE4(v21) & 1;
  LOBYTE(v106) = 9;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v343 = BYTE4(v22) & 1;
  LOBYTE(v106) = 10;
  v96 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v340 = BYTE4(v96) & 1;
  LOBYTE(v106) = 11;
  v95 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v337 = BYTE4(v95) & 1;
  LOBYTE(v106) = 12;
  v94 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v334 = BYTE4(v94) & 1;
  LOBYTE(v106) = 13;
  v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v331 = BYTE4(v93) & 1;
  LOBYTE(v106) = 14;
  v92 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v328 = BYTE4(v92) & 1;
  LOBYTE(v106) = 15;
  v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v325 = BYTE4(v91) & 1;
  LOBYTE(v106) = 16;
  v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v322 = BYTE4(v90) & 1;
  LOBYTE(v106) = 17;
  v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v319 = BYTE4(v89) & 1;
  LOBYTE(v106) = 18;
  v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v316 = BYTE4(v88) & 1;
  LOBYTE(v106) = 19;
  v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v313 = BYTE4(v87) & 1;
  LOBYTE(v106) = 20;
  v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v310 = BYTE4(v86) & 1;
  LOBYTE(v106) = 21;
  v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v307 = BYTE4(v85) & 1;
  LOBYTE(v106) = 22;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v304 = BYTE4(v84) & 1;
  LOBYTE(v106) = 23;
  v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v301 = BYTE4(v83) & 1;
  v23 = sub_100007224(&unk_10083A0F0, &unk_1006C96E0);
  LOBYTE(v105[0]) = 24;
  v81 = sub_1000AF1E4();
  v82 = v23;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v80 = v106;
  LOBYTE(v105[0]) = 25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v82 = 0;
  v81 = v106;
  LOBYTE(v106) = 26;
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v298 = v24 & 1;
  LOBYTE(v106) = 27;
  v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v296 = v25 & 1;
  LOBYTE(v106) = 28;
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v106) = 29;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v106) = 30;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v106) = 31;
  v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v106) = 32;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v79 = v26;
  LOBYTE(v106) = 33;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v78 = v27;
  LOBYTE(v106) = 34;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = sub_100007224(&qword_100837278, &unk_1006DA590);
  LOBYTE(v105[0]) = 35;
  v75 = sub_1000AF260();
  v76 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v77 = v106;
  LOBYTE(v105[0]) = 36;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v76 = v106;
  v29 = sub_100007224(&qword_100837288, &qword_1006C96F0);
  LOBYTE(v105[0]) = 37;
  v71 = sub_1000AF2DC();
  v72 = v29;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v75 = v106;
  LOBYTE(v105[0]) = 38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v74 = v106;
  LOBYTE(v105[0]) = 39;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v73 = v106;
  LOBYTE(v105[0]) = 40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v72 = v106;
  v264 = 41;
  sub_1000AF390();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v291 = v269;
  v292[0] = v270[0];
  *(v292 + 10) = *(v270 + 10);
  v287 = v265;
  v288 = v266;
  v290 = v268;
  v289 = v267;
  sub_100007224(&qword_1008372A8, &qword_1006C96F8);
  LOBYTE(v105[0]) = 42;
  sub_1000AF3E4(&qword_1008372B0, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v71 = v106;
  LOBYTE(v106) = 43;
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v30;
  LOBYTE(v106) = 44;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v69 = v31;
  LOBYTE(v106) = 45;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v106) = 46;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v283 = v32 & 1;
  LOBYTE(v106) = 47;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v33;
  LOBYTE(v106) = 48;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v281 = v34 & 1;
  LOBYTE(v106) = 49;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v279 = v35 & 1;
  LOBYTE(v106) = 50;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v277 = v36 & 1;
  LOBYTE(v106) = 51;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v275 = v37 & 1;
  LOBYTE(v106) = 52;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v273 = v38 & 1;
  LOBYTE(v106) = 53;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v58 = v39;
  v263 = 54;
  v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v40;
  (*(v10 + 8))(v8, v5);
  *(&v105[16] + 5) = v320;
  *(&v105[17] + 5) = v317;
  *(&v105[18] + 5) = v314;
  *(&v105[19] + 5) = v311;
  *(&v105[20] + 5) = v308;
  *(&v105[21] + 5) = v305;
  *(&v105[22] + 5) = v302;
  *(&v105[23] + 5) = v299;
  HIDWORD(v105[27]) = *&v297[3];
  *(&v105[27] + 1) = *v297;
  *(&v105[29] + 5) = v294;
  *(&v105[34] + 1) = *v293;
  *(&v105[54] + 2) = v285;
  *(&v105[60] + 1) = *v284;
  *(&v105[62] + 1) = *v282;
  *(&v105[66] + 1) = *v280;
  *(&v105[68] + 1) = *v278;
  *(&v105[70] + 1) = *v276;
  *(&v105[72] + 1) = *v274;
  *(&v105[74] + 1) = *v272;
  v271 = v46 & 1;
  BYTE4(v105[0]) = v370;
  *(v105 + 5) = v368;
  HIBYTE(v105[0]) = v369;
  BYTE4(v105[1]) = v367;
  *(&v105[1] + 5) = v365;
  HIBYTE(v105[1]) = v366;
  BYTE4(v105[2]) = v364;
  HIBYTE(v105[2]) = v363;
  *(&v105[2] + 5) = v362;
  BYTE4(v105[3]) = v361;
  *(&v105[3] + 5) = v359;
  HIBYTE(v105[3]) = v360;
  BYTE4(v105[4]) = v358;
  *(&v105[4] + 5) = v356;
  HIBYTE(v105[4]) = v357;
  BYTE4(v105[5]) = v355;
  HIBYTE(v105[5]) = v354;
  *(&v105[5] + 5) = v353;
  BYTE4(v105[6]) = v352;
  HIBYTE(v105[6]) = v351;
  *(&v105[6] + 5) = v350;
  BYTE4(v105[7]) = v349;
  HIBYTE(v105[7]) = v348;
  *(&v105[7] + 5) = v347;
  BYTE4(v105[8]) = v346;
  HIBYTE(v105[8]) = v345;
  *(&v105[8] + 5) = v344;
  BYTE4(v105[9]) = v343;
  HIBYTE(v105[9]) = v342;
  *(&v105[9] + 5) = v341;
  BYTE4(v105[10]) = v340;
  HIBYTE(v105[10]) = v339;
  *(&v105[10] + 5) = v338;
  BYTE4(v105[11]) = v337;
  HIBYTE(v105[11]) = v336;
  *(&v105[11] + 5) = v335;
  BYTE4(v105[12]) = v334;
  HIBYTE(v105[12]) = v333;
  *(&v105[12] + 5) = v332;
  BYTE4(v105[13]) = v331;
  HIBYTE(v105[13]) = v330;
  *(&v105[13] + 5) = v329;
  BYTE4(v105[14]) = v328;
  HIBYTE(v105[14]) = v327;
  *(&v105[14] + 5) = v326;
  BYTE4(v105[15]) = v325;
  HIBYTE(v105[15]) = v324;
  *(&v105[15] + 5) = v323;
  BYTE4(v105[16]) = v322;
  HIBYTE(v105[16]) = v321;
  BYTE4(v105[17]) = v319;
  HIBYTE(v105[17]) = v318;
  BYTE4(v105[18]) = v316;
  HIBYTE(v105[18]) = v315;
  BYTE4(v105[19]) = v313;
  HIBYTE(v105[19]) = v312;
  BYTE4(v105[20]) = v310;
  HIBYTE(v105[20]) = v309;
  BYTE4(v105[21]) = v307;
  HIBYTE(v105[21]) = v306;
  BYTE4(v105[22]) = v304;
  HIBYTE(v105[22]) = v303;
  BYTE4(v105[23]) = v301;
  HIBYTE(v105[23]) = v300;
  LOBYTE(v105[27]) = v298;
  LOBYTE(v105[29]) = v296;
  HIBYTE(v105[29]) = v295;
  HIDWORD(v105[34]) = *&v293[3];
  *&v105[41] = v287;
  *&v105[43] = v288;
  *(&v105[52] + 2) = *(v292 + 10);
  *&v105[49] = v291;
  *&v105[51] = v292[0];
  *&v105[45] = v289;
  *&v105[47] = v290;
  HIWORD(v105[54]) = v286;
  HIDWORD(v105[60]) = *&v284[3];
  LOBYTE(v105[62]) = v283;
  HIDWORD(v105[62]) = *&v282[3];
  LOBYTE(v105[66]) = v281;
  HIDWORD(v105[66]) = *&v280[3];
  LOBYTE(v105[68]) = v279;
  HIDWORD(v105[68]) = *&v278[3];
  LOBYTE(v105[70]) = v277;
  HIDWORD(v105[70]) = *&v276[3];
  LOBYTE(v105[72]) = v275;
  HIDWORD(v105[72]) = *&v274[3];
  LOBYTE(v105[74]) = v273;
  HIDWORD(v105[74]) = *&v272[3];
  LOBYTE(v105[78]) = v46 & 1;
  LODWORD(v105[0]) = v12;
  v41 = v97;
  LODWORD(v105[1]) = v97;
  LODWORD(v105[2]) = v103;
  LODWORD(v105[3]) = v102;
  LODWORD(v10) = v100;
  LODWORD(v105[4]) = v101;
  LODWORD(v105[5]) = v19;
  LODWORD(v105[6]) = v100;
  LODWORD(v105[7]) = v99;
  LODWORD(v105[8]) = v98;
  v45 = v22;
  LODWORD(v105[9]) = v22;
  LODWORD(v105[10]) = v96;
  LODWORD(v105[11]) = v95;
  LODWORD(v105[12]) = v94;
  LODWORD(v105[13]) = v93;
  LODWORD(v105[14]) = v92;
  LODWORD(v105[15]) = v91;
  LODWORD(v105[16]) = v90;
  LODWORD(v105[17]) = v89;
  LODWORD(v105[18]) = v88;
  LODWORD(v105[19]) = v87;
  LODWORD(v105[20]) = v86;
  LODWORD(v105[21]) = v85;
  LODWORD(v105[22]) = v84;
  LODWORD(v105[23]) = v83;
  v42 = v81;
  v105[24] = v80;
  v105[25] = v81;
  v105[26] = v67;
  v105[28] = v66;
  BYTE1(v105[29]) = v65;
  BYTE2(v105[29]) = v64;
  BYTE3(v105[29]) = v63;
  BYTE4(v105[29]) = v62;
  v105[30] = v61;
  v43 = v79;
  v105[31] = v79;
  v105[32] = v60;
  v105[33] = v78;
  LOBYTE(v105[34]) = v59;
  v105[35] = v77;
  v105[36] = v76;
  v105[37] = v75;
  v105[38] = v74;
  v105[39] = v73;
  v105[40] = v72;
  v105[55] = v71;
  v105[56] = v57;
  v105[57] = v70;
  v105[58] = v56;
  v105[59] = v69;
  LOBYTE(v105[60]) = v55;
  v105[61] = v54;
  v105[63] = v53;
  v105[64] = v68;
  v105[65] = v52;
  v105[67] = v51;
  v105[69] = v50;
  v105[71] = v49;
  v105[73] = v48;
  v105[75] = v47;
  v105[76] = v58;
  v105[77] = v82;
  sub_1000AF454(v105, &v106);
  sub_10000BB78(v371);
  LODWORD(v106) = v12;
  v107 = v41;
  v111 = v103;
  v115 = v102;
  v119 = v101;
  v123 = v19;
  v127 = v10;
  v131 = v99;
  v135 = v98;
  v139 = v45;
  v143 = v96;
  v147 = v95;
  v151 = v94;
  v155 = v93;
  v159 = v92;
  v163 = v91;
  v167 = v90;
  v171 = v89;
  v175 = v88;
  v179 = v87;
  v183 = v86;
  v187 = v85;
  v191 = v84;
  v195 = v83;
  v199 = v80;
  v200 = v42;
  v201 = v67;
  v204 = v66;
  v206 = v65;
  v207 = v64;
  v208 = v63;
  v209 = v62;
  v212 = v61;
  v213 = v43;
  BYTE4(v106) = v370;
  *(&v106 + 5) = v368;
  HIBYTE(v106) = v369;
  v108 = v367;
  v109 = v365;
  v110 = v366;
  v112 = v364;
  v114 = v363;
  v113 = v362;
  v116 = v361;
  v117 = v359;
  v118 = v360;
  v120 = v358;
  v121 = v356;
  v122 = v357;
  v124 = v355;
  v126 = v354;
  v125 = v353;
  v128 = v352;
  v130 = v351;
  v129 = v350;
  v132 = v349;
  v134 = v348;
  v133 = v347;
  v136 = v346;
  v138 = v345;
  v137 = v344;
  v140 = v343;
  v142 = v342;
  v141 = v341;
  v144 = v340;
  v146 = v339;
  v145 = v338;
  v148 = v337;
  v150 = v336;
  v149 = v335;
  v152 = v334;
  v154 = v333;
  v153 = v332;
  v156 = v331;
  v158 = v330;
  v157 = v329;
  v160 = v328;
  v162 = v327;
  v161 = v326;
  v164 = v325;
  v166 = v324;
  v165 = v323;
  v168 = v322;
  v170 = v321;
  v169 = v320;
  v172 = v319;
  v174 = v318;
  v173 = v317;
  v176 = v316;
  v178 = v315;
  v177 = v314;
  v180 = v313;
  v182 = v312;
  v181 = v311;
  v184 = v310;
  v186 = v309;
  v185 = v308;
  v188 = v307;
  v190 = v306;
  v189 = v305;
  v192 = v304;
  v194 = v303;
  v193 = v302;
  v196 = v301;
  v198 = v300;
  v197 = v299;
  v202 = v298;
  *&v203[3] = *&v297[3];
  *v203 = *v297;
  v205 = v296;
  v211 = v295;
  v210 = v294;
  v214 = v60;
  v215 = v78;
  v216 = v59;
  *v217 = *v293;
  *&v217[3] = *&v293[3];
  v218 = v77;
  v219 = v76;
  v220 = v75;
  v221 = v74;
  v222 = v73;
  v223 = v72;
  v224 = v287;
  v225 = v288;
  *&v229[10] = *(v292 + 10);
  v228 = v291;
  *v229 = v292[0];
  v226 = v289;
  v227 = v290;
  v230 = v285;
  v231 = v286;
  v232 = v71;
  v233 = v57;
  v234 = v70;
  v235 = v56;
  v236 = v69;
  v237 = v55;
  *v238 = *v284;
  *&v238[3] = *&v284[3];
  v239 = v54;
  v240 = v283;
  *v241 = *v282;
  *&v241[3] = *&v282[3];
  v242 = v53;
  v243 = v68;
  v244 = v52;
  v245 = v281;
  *v246 = *v280;
  *&v246[3] = *&v280[3];
  v247 = v51;
  v248 = v279;
  *v249 = *v278;
  *&v249[3] = *&v278[3];
  v250 = v50;
  v251 = v277;
  *v252 = *v276;
  *&v252[3] = *&v276[3];
  v253 = v49;
  v254 = v275;
  *v255 = *v274;
  *&v255[3] = *&v274[3];
  v256 = v48;
  v257 = v273;
  *v258 = *v272;
  *&v258[3] = *&v272[3];
  v259 = v47;
  v260 = v58;
  v261 = v82;
  v262 = v271;
  sub_1000AF48C(&v106);
  return memcpy(v104, v105, 0x271uLL);
}