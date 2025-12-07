uint64_t NDODWCoverageModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A77E0, &unk_10007DD00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10003D680();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 96);
    HIBYTE(v10) = 6;
    sub_10001A078(&qword_1000A7550, &qword_10007D428);
    sub_10003F788(&qword_1000A77E8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 104);
    HIBYTE(v10) = 7;
    sub_10001A078(&qword_1000A77F0, &qword_10007DD10);
    sub_10003F7F4(&qword_1000A77F8, sub_10003D6D4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NDODWCoverageModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v4 = v2[12];
  v5 = *(v4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      String.hash(into:)();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  v7 = v2[13];

  sub_10003D0E0(a1, v7);
}

Swift::Int NDODWCoverageModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  NDODWCoverageModel.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 NDODWCoverageModel.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10003D728(a2, v7);
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

Swift::Int sub_10003BCE0(uint64_t a1)
{
  Hasher.init(_seed:)();
  NDODWCoverageModel.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10003BD34(_OWORD *a1, __int128 *a2)
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
  return _s8ndoagent18NDODWCoverageModelV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14) & 1;
}

void __swiftcall NDODWCoverageModel.CoverageLink.init(label:action:)(ndoagent::NDODWCoverageModel::CoverageLink *__return_ptr retstr, Swift::String label, ndoagent::NDODWCoverageModel::CoverageLink::Action *action)
{
  retstr->label = label;
  subTitle = action->subTitle;
  retstr->action.title = action->title;
  retstr->action.subTitle = subTitle;
  *&retstr->action.benefits._rawValue = *&action->benefits._rawValue;
  retstr->action.footer._object = action->footer._object;
}

uint64_t sub_10003BDC8()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_10003BDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_10003BED0(uint64_t a1)
{
  v2 = sub_10003DFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BF0C(uint64_t a1)
{
  v2 = sub_10003DFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7808, &qword_10007DD18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7 - 8];
  sub_100001F3C(a1, a1[3]);
  sub_10003DFEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v19[0] = *(v3 + 16);
    v19[1] = v9;
    v11 = *(v3 + 16);
    v10 = *(v3 + 32);
    v19[2] = *(v3 + 48);
    v20 = *(v3 + 64);
    v15 = v11;
    v16 = v10;
    v17 = *(v3 + 48);
    v18 = *(v3 + 64);
    v21 = 1;
    sub_10003DDD8(v19, v14);
    sub_10003E040();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int NDODWCoverageModel.CoverageLink.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = *(v0 + 48);
  String.hash(into:)();
  String.hash(into:)();
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = v1 + 56;
    do
    {

      String.hash(into:)();
      String.hash(into:)();

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

__n128 NDODWCoverageModel.CoverageLink.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10003E094(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_10003C2B8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NDODWCoverageModel.CoverageLink.Action.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL sub_10003C328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8ndoagent18NDODWCoverageModelV12CoverageLinkV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9);
}

void __swiftcall NDODWCoverageModel.CoverageLink.Action.init(title:subTitle:benefits:footer:)(ndoagent::NDODWCoverageModel::CoverageLink::Action *__return_ptr retstr, Swift::String title, Swift::String subTitle, Swift::OpaquePointer benefits, Swift::String footer)
{
  retstr->title = title;
  retstr->subTitle = subTitle;
  retstr->benefits = benefits;
  retstr->footer = footer;
}

uint64_t sub_10003C3A0()
{
  v1 = 0x656C746974;
  v2 = 0x73746966656E6562;
  if (*v0 != 2)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0)
  {
    v1 = 0x656C746954627573;
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

uint64_t sub_10003C414@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003E464(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003C448(uint64_t a1)
{
  v2 = sub_10003E344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C484(uint64_t a1)
{
  v2 = sub_10003E344();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7818, &qword_10007DD20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100001F3C(a1, a1[3]);
  sub_10003E344();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_10001A078(&qword_1000A7820, &qword_10007DD28);
    sub_10003E398(&qword_1000A7828, sub_10003E410, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = v2 + 56;
    do
    {

      String.hash(into:)();
      String.hash(into:)();

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  return String.hash(into:)();
}

Swift::Int NDODWCoverageModel.CoverageLink.Action.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = v1 + 56;
    do
    {

      String.hash(into:)();
      String.hash(into:)();

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

double NDODWCoverageModel.CoverageLink.Action.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10003E5C0(a2, v6);
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

Swift::Int sub_10003C918(uint64_t a1)
{
  Hasher.init(_seed:)();
  NDODWCoverageModel.CoverageLink.Action.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10003C96C(uint64_t a1, uint64_t a2)
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
  return _s8ndoagent18NDODWCoverageModelV12CoverageLinkV6ActionV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t sub_10003CA30()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_10003CA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_10003CB30(uint64_t a1)
{
  v2 = sub_10003E914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003CB6C(uint64_t a1)
{
  v2 = sub_10003E914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NDODWCoverageModel.CoverageLink.Action.Benefits.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10001A078(&qword_1000A7838, &qword_10007DD30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100001F3C(a1, a1[3]);
  sub_10003E914();
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

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int NDODWCoverageModel.CoverageLink.Action.Benefits.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.init(from:)(void *a1)
{
  result = sub_10003E968(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_10003CED0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003CF38(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10003CF88(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003CFEC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003E968(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10003D03C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_10003D0E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  v8 = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = *(a2 + 32 + 72 * v4 + 48);

      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(*(v5 + 16));
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = v5 + 56;
        do
        {

          String.hash(into:)();
          String.hash(into:)();

          v7 += 32;
          --v6;
        }

        while (v6);
      }

      ++v4;
      String.hash(into:)();
    }

    while (v4 != v8);
  }
}

uint64_t sub_10003D28C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556F676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010008BFE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008C000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79746E6172726177 && a2 == 0xED0000656C746954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010008C020 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t _s8ndoagent18NDODWCoverageModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10003B590(a1[12], a2[12]) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[13];
  v9 = a2[13];

  return sub_10003B620(v8, v9);
}

unint64_t sub_10003D680()
{
  result = qword_1000AB3C0;
  if (!qword_1000AB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3C0);
  }

  return result;
}

unint64_t sub_10003D6D4()
{
  result = qword_1000A7800;
  if (!qword_1000A7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7800);
  }

  return result;
}

uint64_t sub_10003D728@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7890, &unk_10007E5B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10003D680();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v56[0]) = 0;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  LOBYTE(v56[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v14;
  v46 = v13;
  LOBYTE(v56[0]) = 2;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v15;
  LOBYTE(v56[0]) = 3;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v16;
  LOBYTE(v56[0]) = 4;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v18;
  v38 = v17;
  LOBYTE(v56[0]) = 5;
  v40 = 0;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = 0;
  v20 = v19;
  v39 = v21;
  sub_10001A078(&qword_1000A7550, &qword_10007D428);
  LOBYTE(v49) = 6;
  sub_10003F788(&qword_1000A7898, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v22 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v22;
  if (v22)
  {
    (*(v6 + 8))(v8, v5);
    v23 = 0;
    v24 = v40;
  }

  else
  {
    v37 = v56[0];
    sub_10001A078(&qword_1000A77F0, &qword_10007DD10);
    v57 = 7;
    sub_10003F7F4(&qword_1000A78A0, sub_10003F86C, &protocol conformance descriptor for <A> [A]);
    v25 = v44;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v25;
    if (!v25)
    {
      (*(v6 + 8))(v8, v5);
      v40 = v58;
      *&v49 = v10;
      *(&v49 + 1) = v12;
      *&v50 = v46;
      v26 = v20;
      v36 = v20;
      v27 = v48;
      *(&v50 + 1) = v48;
      *&v51 = v45;
      v28 = v47;
      *(&v51 + 1) = v47;
      *&v52 = v41;
      v29 = v43;
      *(&v52 + 1) = v43;
      v30 = v42;
      *&v53 = v38;
      *(&v53 + 1) = v42;
      *&v54 = v26;
      v31 = v39;
      *(&v54 + 1) = v39;
      *&v55 = v37;
      *(&v55 + 1) = v58;
      sub_10003F8C0(&v49, v56);
      sub_100001E74(a1);
      v56[0] = v10;
      v56[1] = v12;
      v56[2] = v46;
      v56[3] = v27;
      v56[4] = v45;
      v56[5] = v28;
      v56[6] = v41;
      v56[7] = v29;
      v56[8] = v38;
      v56[9] = v30;
      v56[10] = v36;
      v56[11] = v31;
      v56[12] = v37;
      v56[13] = v40;
      result = sub_10003F8F8(v56);
      v32 = v54;
      a2[4] = v53;
      a2[5] = v32;
      a2[6] = v55;
      v33 = v50;
      *a2 = v49;
      a2[1] = v33;
      v34 = v52;
      a2[2] = v51;
      a2[3] = v34;
      return result;
    }

    (*(v6 + 8))(v8, v5);
    v23 = 1;
    v24 = v40;
  }

  sub_100001E74(a1);

  if (!v24)
  {
  }

  if (v23)
  {
  }

  return result;
}

BOOL _s8ndoagent18NDODWCoverageModelV12CoverageLinkV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[4];
    v10 = a1[5];
    v12 = a1[6];
    v11 = a1[7];
    v13 = a1[8];
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[4];
    v17 = a2[5];
    v19 = a2[6];
    v18 = a2[7];
    v20 = a2[8];
    return (v7 == v14 && v8 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v9 == v16 && v10 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (sub_10003B4C0(v12, v19) & 1) != 0 && (v11 == v18 && v13 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return result;
}

uint64_t _s8ndoagent18NDODWCoverageModelV12CoverageLinkV6ActionV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10003B4C0(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10003DFEC()
{
  result = qword_1000AB3C8;
  if (!qword_1000AB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3C8);
  }

  return result;
}

unint64_t sub_10003E040()
{
  result = qword_1000A7810;
  if (!qword_1000A7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7810);
  }

  return result;
}

uint64_t sub_10003E094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7880, &qword_10007E5A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10003DFEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v28[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v37 = 1;
  sub_10003F6CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = *(&v33 + 1);
  v21 = v33;
  v13 = v34;
  v20 = *(&v35 + 1);
  v14 = v35;
  v19 = v36;
  v15 = v22;
  *&v23 = v22;
  *(&v23 + 1) = v11;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  sub_10003F720(&v23, v28);
  sub_100001E74(a1);
  v28[0] = v15;
  v28[1] = v11;
  v28[2] = v21;
  v28[3] = v12;
  v29 = v13;
  v30 = v14;
  v31 = v20;
  v32 = v19;
  result = sub_10003F758(v28);
  v17 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v17;
  *(a2 + 64) = v27;
  v18 = v24;
  *a2 = v23;
  *(a2 + 16) = v18;
  return result;
}

unint64_t sub_10003E344()
{
  result = qword_1000AB3D0;
  if (!qword_1000AB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3D0);
  }

  return result;
}

uint64_t sub_10003E398(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A7820, &qword_10007DD28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003E410()
{
  result = qword_1000A7830;
  if (!qword_1000A7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7830);
  }

  return result;
}

uint64_t sub_10003E464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746966656E6562 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000)
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

uint64_t sub_10003E5C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7868, &qword_10007E5A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10003E344();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v32 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v26 = v9;
  v31 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v13;
  v25 = v12;
  sub_10001A078(&qword_1000A7820, &qword_10007DD28);
  v30 = 2;
  sub_10003E398(&qword_1000A7870, sub_10003F678, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v28;
  v29 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v17 = *(v6 + 8);
  v23 = v14;
  v17(v8, v5);

  v18 = v27;

  v19 = v24;

  sub_100001E74(a1);

  v21 = v25;
  *a2 = v26;
  a2[1] = v11;
  a2[2] = v21;
  a2[3] = v18;
  v22 = v23;
  a2[4] = v19;
  a2[5] = v22;
  a2[6] = v16;
  return result;
}

unint64_t sub_10003E914()
{
  result = qword_1000AB3D8[0];
  if (!qword_1000AB3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AB3D8);
  }

  return result;
}

uint64_t sub_10003E968(void *a1)
{
  v3 = sub_10001A078(&qword_1000A7860, &qword_10007E598);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003E914();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100001E74(a1);
  return v7;
}

unint64_t sub_10003EB50()
{
  result = qword_1000A7840;
  if (!qword_1000A7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7840);
  }

  return result;
}

unint64_t sub_10003EBA8()
{
  result = qword_1000A7848;
  if (!qword_1000A7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7848);
  }

  return result;
}

unint64_t sub_10003EC00()
{
  result = qword_1000A7850;
  if (!qword_1000A7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7850);
  }

  return result;
}

unint64_t sub_10003EC58()
{
  result = qword_1000A7858;
  if (!qword_1000A7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7858);
  }

  return result;
}

__n128 sub_10003ECAC(uint64_t a1, __int128 *a2)
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

uint64_t sub_10003ECD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003ED18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003ED84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10003EDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10003EE2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003EE48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10003EE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10003EEEC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003EEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10003EF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDODWCoverageModel.CoverageLink.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDODWCoverageModel.CoverageLink.Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NDODWCoverageModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDODWCoverageModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003F25C()
{
  result = qword_1000ABCE0[0];
  if (!qword_1000ABCE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ABCE0);
  }

  return result;
}

unint64_t sub_10003F2B4()
{
  result = qword_1000ABEF0[0];
  if (!qword_1000ABEF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ABEF0);
  }

  return result;
}

unint64_t sub_10003F30C()
{
  result = qword_1000AC100[0];
  if (!qword_1000AC100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC100);
  }

  return result;
}

unint64_t sub_10003F364()
{
  result = qword_1000AC310[0];
  if (!qword_1000AC310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC310);
  }

  return result;
}

unint64_t sub_10003F3BC()
{
  result = qword_1000AC420;
  if (!qword_1000AC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC420);
  }

  return result;
}

unint64_t sub_10003F414()
{
  result = qword_1000AC428[0];
  if (!qword_1000AC428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC428);
  }

  return result;
}

unint64_t sub_10003F46C()
{
  result = qword_1000AC4B0;
  if (!qword_1000AC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC4B0);
  }

  return result;
}

unint64_t sub_10003F4C4()
{
  result = qword_1000AC4B8[0];
  if (!qword_1000AC4B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC4B8);
  }

  return result;
}

unint64_t sub_10003F51C()
{
  result = qword_1000AC540;
  if (!qword_1000AC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC540);
  }

  return result;
}

unint64_t sub_10003F574()
{
  result = qword_1000AC548[0];
  if (!qword_1000AC548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC548);
  }

  return result;
}

unint64_t sub_10003F5CC()
{
  result = qword_1000AC5D0;
  if (!qword_1000AC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC5D0);
  }

  return result;
}

unint64_t sub_10003F624()
{
  result = qword_1000AC5D8[0];
  if (!qword_1000AC5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC5D8);
  }

  return result;
}

unint64_t sub_10003F678()
{
  result = qword_1000A7878;
  if (!qword_1000A7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7878);
  }

  return result;
}

unint64_t sub_10003F6CC()
{
  result = qword_1000A7888;
  if (!qword_1000A7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7888);
  }

  return result;
}

uint64_t sub_10003F788(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A7550, &qword_10007D428);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003F7F4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A77F0, &qword_10007DD10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003F86C()
{
  result = qword_1000A78A8;
  if (!qword_1000A78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A78A8);
  }

  return result;
}

uint64_t NDOAppleCareNotificationsHandler.performCheck(in:withCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v7 = sub_10001A078(&qword_1000A78B0, qword_10007E5C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16[-1] - v8;
  v10 = type metadata accessor for NotificationData();
  v11 = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*((swift_isaMask & *v4) + 0x90))(v16, v11);
  sub_100001F3C(v16, v16[3]);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;

  sub_100002134(a3, a4);
  dispatch thunk of NDODeviceCheckInHandler.checkIn(with:trigger:completion:)();

  sub_1000035B8(v9, &qword_1000A78B0, qword_10007E5C0);

  return sub_100001E74(v16);
}

uint64_t sub_10003FC94()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler);

  return v1;
}

uint64_t sub_10003FCDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100001E10(v2 + v4, a2);
}

uint64_t sub_10003FD50(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  sub_100001E74((v3 + v6));
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_10003FE20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval);

  return v1;
}

uint64_t sub_10003FE5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction);

  return v1;
}

uint64_t sub_10003FEB4()
{
  v0 = [objc_opt_self() primaryAccountAltDSID];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void *sub_10003FF24(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v20 = objc_allocWithZone(v13);
  sub_100001E10(a1, &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInHandler]);
  sub_100001E10(a2, &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_ackHandler]);
  v21 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_primaryAccountAltDSIDProvider];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_currentDateProvider];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler];
  *v24 = a9;
  *(v24 + 1) = a10;
  v25 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval];
  *v25 = a11;
  *(v25 + 1) = a12;
  v30.receiver = v20;
  v30.super_class = v13;
  v26 = objc_msgSendSuper2(&v30, "init");
  sub_100001E74(a2);
  sub_100001E74(a1);
  return v26;
}

void *sub_100040060(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100001E10(a1, &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInHandler]);
  sub_100001E10(a2, &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_ackHandler]);
  v20 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_primaryAccountAltDSIDProvider];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_currentDateProvider];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler];
  *v23 = a9;
  *(v23 + 1) = a10;
  v24 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval];
  *v24 = a11;
  *(v24 + 1) = a12;
  v28.receiver = v12;
  v28.super_class = type metadata accessor for NDOAppleCareNotificationsHandler();
  v25 = objc_msgSendSuper2(&v28, "init");
  sub_100001E74(a2);
  sub_100001E74(a1);
  return v25;
}

uint64_t sub_100040204(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v103 = a4;
  v108 = a3;
  v109 = a1;
  v4 = sub_10001A078(&qword_1000A7970, &unk_10007AEE0);
  __chkstk_darwin(v4 - 8);
  v101 = &v94 - v5;
  v6 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  __chkstk_darwin(v6 - 8);
  v102 = &v94 - v7;
  v8 = type metadata accessor for Logger();
  v110 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v94 - v13;
  __chkstk_darwin(v12);
  v104 = &v94 - v15;
  v107 = type metadata accessor for CheckInData();
  v105 = *(v107 - 8);
  v16 = v105[8];
  v17 = __chkstk_darwin(v107);
  v100 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v94 - v19;
  __chkstk_darwin(v18);
  v106 = &v94 - v21;
  v22 = sub_10001A078(&qword_1000A7978, &unk_10007E670);
  v23 = __chkstk_darwin(v22);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v94 - v27;
  __chkstk_darwin(v26);
  v30 = (&v94 - v29);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v49 = sub_100049C1C();
    (*(v110 + 16))(v11, v49, v8);
    sub_10001CB74(v109, v28, &qword_1000A7978, &unk_10007E670);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v111 = v53;
      *v52 = 136315138;
      v109 = v8;
      sub_10001CB74(v28, v25, &qword_1000A7978, &unk_10007E670);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      sub_1000035B8(v28, &qword_1000A7978, &unk_10007E670);
      v57 = sub_10001FEC8(v54, v56, &v111);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Push handler deallocated. Dropping check in result %s", v52, 0xCu);
      sub_100001E74(v53);

      return (*(v110 + 8))(v11, v109);
    }

    else
    {

      sub_1000035B8(v28, &qword_1000A7978, &unk_10007E670);
      return (*(v110 + 8))(v11, v8);
    }
  }

  v99 = Strong;
  v32 = v110;
  sub_10001CB74(v109, v30, &qword_1000A7978, &unk_10007E670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v30;
    v34 = sub_100049C1C();
    (*(v32 + 16))(v14, v34, v8);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "DeviceCheckIn failed. Error: %@", v37, 0xCu);
      sub_1000035B8(v38, &qword_1000A6F40, &qword_10007E690);
    }

    (*(v32 + 8))(v14, v8);
    v111 = v33;
    swift_errorRetain();
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    v40 = type metadata accessor for NDOErrors();
    v41 = v101;
    v42 = swift_dynamicCast();
    v43 = *(*(v40 - 8) + 56);
    if (v42)
    {
      v44 = *(v40 - 8);
      v43(v41, 0, 1, v40);
      v45 = (*(v44 + 88))(v41, v40);
      v46 = enum case for NDOErrors.checkInDisabled(_:);
      v47 = (*(v44 + 8))(v41, v40);
      if (v45 == v46)
      {
        if (v108)
        {
          v108(v47);
        }
      }
    }

    else
    {
      v43(v41, 1, 1, v40);
      sub_1000035B8(v41, &qword_1000A7970, &unk_10007AEE0);
    }

    v74 = type metadata accessor for TaskPriority();
    v75 = v102;
    (*(*(v74 - 8) + 56))(v102, 1, 1, v74);
    v76 = swift_allocObject();
    v76[2] = 0;
    v76[3] = 0;
    v76[4] = v99;
    v77 = v108;
    v78 = v103;
    v76[5] = v108;
    v76[6] = v78;
    sub_100002134(v77, v78);
    sub_100041174(0, 0, v75, &unk_10007E688, v76);
  }

  v59 = v105;
  v58 = v106;
  v60 = v105[4];
  v61 = v30;
  v62 = v107;
  v101 = (v105 + 4);
  v98 = v60;
  v60(v106, v61, v107);
  v63 = sub_100049C1C();
  (*(v32 + 16))(v104, v63, v8);
  v97 = v59[2];
  v97(v20, v58, v62);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v111 = v94;
    *v66 = 136315138;
    CheckInData.actions.getter();
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
    v67 = Array.description.getter();
    v109 = v8;
    v68 = v32;
    v70 = v69;

    v71 = v105[1];
    v95 = (v105 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v96 = v71;
    v71(v20, v107);
    v72 = v67;
    v62 = v107;
    v73 = sub_10001FEC8(v72, v70, &v111);

    *(v66 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "DeviceCheckIn succeeded. Actions: %s", v66, 0xCu);
    sub_100001E74(v94);

    v59 = v105;

    (*(v68 + 8))(v104, v109);
  }

  else
  {

    v79 = v59[1];
    v95 = (v59 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v96 = v79;
    v79(v20, v62);
    (*(v32 + 8))(v104, v8);
  }

  v80 = type metadata accessor for TaskPriority();
  v81 = v102;
  (*(*(v80 - 8) + 56))(v102, 1, 1, v80);
  v82 = v100;
  v83 = v106;
  v97(v100, v106, v62);
  v84 = (*(v59 + 80) + 40) & ~*(v59 + 80);
  v85 = (v16 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  *(v86 + 2) = 0;
  *(v86 + 3) = 0;
  v87 = v98;
  v88 = v99;
  *(v86 + 4) = v99;
  v87(&v86[v84], v82, v62);
  v89 = &v86[v85];
  v90 = v62;
  v91 = v108;
  v92 = v103;
  *v89 = v108;
  v89[1] = v92;
  v93 = v88;
  sub_100002134(v91, v92);
  sub_100041174(0, 0, v81, &unk_10007E6A0, v86);

  return v96(v83, v90);
}

uint64_t sub_100040D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100040DA0, 0, 0);
}

uint64_t sub_100040DA0()
{
  v1 = CheckInData.nextCheckInEpoch.getter();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100040E50;

  return sub_100041678(v1, v3 & 1);
}

uint64_t sub_100040E50()
{

  return _swift_task_switch(sub_100040F4C, 0, 0);
}

uint64_t sub_100040F4C()
{
  v1 = CheckInData.actions.getter();
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100040FF0;

  return sub_100042088(v1);
}

uint64_t sub_100040FF0()
{

  return _swift_task_switch(sub_100041108, 0, 0);
}

uint64_t sub_100041108()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100041174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001CB74(a3, v25 - v10, &qword_1000A7920, &qword_10007AE70);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000035B8(v11, &qword_1000A7920, &qword_10007AE70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000035B8(a3, &qword_1000A7920, &qword_10007AE70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000035B8(a3, &qword_1000A7920, &qword_10007AE70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100041474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100041510;

  return sub_100041678(0, 1);
}

uint64_t sub_100041510()
{

  return _swift_task_switch(sub_10004160C, 0, 0);
}

uint64_t sub_10004160C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100041678(uint64_t a1, char a2)
{
  v3[2] = v2;
  v6 = type metadata accessor for Logger();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[9] = v8;
  v9 = swift_task_alloc();
  v3[10] = v9;
  *v9 = v3;
  v9[1] = sub_1000417F4;

  return sub_100041B68(v8, a1, a2 & 1, v2);
}

uint64_t sub_1000417F4()
{

  return _swift_task_switch(sub_1000418F0, 0, 0);
}

uint64_t sub_1000418F0(uint64_t a1)
{
  v35 = v1;
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[6];
  v5 = v1[7];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[3];
  v9 = sub_100049C1C();
  (*(v7 + 16))(v6, v9, v8);
  (*(v5 + 16))(v2, v3, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v1[7];
  v13 = v1[8];
  v15 = v1[5];
  v16 = v1[6];
  v18 = v1[3];
  v17 = v1[4];
  if (v12)
  {
    v31 = v11;
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v19 = 136315138;
    sub_1000456DC();
    v32 = v15;
    v33 = v18;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    log = v10;
    v23 = *(v14 + 8);
    v23(v13, v16);
    v24 = sub_10001FEC8(v20, v22, &v34);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, log, v31, "Scheduling next checkIn attempt on %s", v19, 0xCu);
    sub_100001E74(v30);

    (*(v17 + 8))(v32, v33);
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v13, v16);
    (*(v17 + 8))(v15, v18);
  }

  v25 = v1[9];
  v26 = v1[6];
  (*(v1[2] + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler))(v25);
  v23(v25, v26);

  v27 = v1[1];

  return v27();
}

uint64_t sub_100041B68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100041C8C, 0, 0);
}

uint64_t sub_100041C8C(uint64_t a1)
{
  if (*(v1 + 104))
  {
    v2 = *(v1 + 32);
    (*(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_currentDateProvider))(a1);
    v17 = (*(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval) + **(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval));
    v3 = swift_task_alloc();
    *(v1 + 88) = v3;
    *v3 = v1;
    v3[1] = sub_100041EE8;

    return v17();
  }

  else
  {
    v6 = *(v1 + 48);
    v5 = *(v1 + 56);
    v7 = *(v1 + 40);
    v8 = sub_100049C1C();
    (*(v6 + 16))(v5, v8, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v1 + 24);
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v9, v10, "Scheduling next check in for epoch %lld", v12, 0xCu);
    }

    v14 = *(v1 + 48);
    v13 = *(v1 + 56);
    v15 = *(v1 + 40);

    (*(v14 + 8))(v13, v15);
    Date.init(timeIntervalSince1970:)();

    v16 = *(v1 + 8);

    return v16();
  }
}

uint64_t sub_100041EE8(double a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100041FE8, 0, 0);
}

uint64_t sub_100041FE8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  Date.addingTimeInterval(_:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100042088(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for Logger();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100042154, 0, 0);
}

uint64_t sub_100042154(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[15];
  v4 = v1[16];
  v5 = sub_100049C1C();
  v1[19] = v5;
  v6 = *(v4 + 16);
  v1[20] = v6;
  v1[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[18];
  v11 = v1[15];
  v12 = v1[16];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
    v15 = Array.description.getter();
    v17 = sub_10001FEC8(v15, v16, &v28);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling checkIn actions: %s", v13, 0xCu);
    sub_100001E74(v14);
  }

  v18 = *(v12 + 8);
  v18(v10, v11);
  v1[22] = v18;
  v20 = v1[13];
  v19 = v1[14];
  v21 = swift_allocObject();
  v1[23] = v21;
  *(v21 + 16) = _swiftEmptyArrayStorage;
  v22 = OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction;
  v23 = swift_task_alloc();
  v24 = *(v19 + v22);
  v1[24] = v23;
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  *(v23 + 40) = v21;
  v25 = swift_task_alloc();
  v1[25] = v25;
  *v25 = v1;
  v25[1] = sub_1000423D8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000423D8()
{

  return _swift_task_switch(sub_1000424F0, 0, 0);
}

uint64_t sub_1000424F0()
{
  (*(v0 + 160))(*(v0 + 136), *(v0 + 152), *(v0 + 120));

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 184);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    swift_beginAccess();
    *(v4 + 4) = *(*(v3 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Calling ack with %ld acks from check in", v4, 0xCu);
  }

  else
  {
  }

  v5 = *(v0 + 184);
  v6 = *(v0 + 112);
  v7 = (*(v0 + 176))(*(v0 + 136), *(v0 + 120));
  (*((swift_isaMask & *v6) + 0xA8))(v7);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_100001F3C((v0 + 16), v8);
  swift_beginAccess();
  v10 = *(v5 + 16);
  *(v0 + 208) = v10;

  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_100042700;

  return dispatch thunk of AckHandler.ack(data:)(v10, v8, v9);
}

uint64_t sub_100042700()
{

  return _swift_task_switch(sub_100042818, 0, 0);
}

uint64_t sub_100042818()
{
  sub_100001E74((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000428A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v6[19] = v8;
  v9 = *(v8 - 8);
  v6[20] = v9;
  v6[21] = *(v9 + 64);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100042A28, 0, 0);
}

uint64_t sub_100042A28()
{
  v72 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 136);
    v6 = *(v3 + 16);
    v3 += 16;
    v5 = v6;
    v7 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v8 = v1 + v7;
    v59 = (v4 + 16);
    v70 = (v3 - 8);
    v58 = (v4 + 8);
    v56 = *(v3 + 56);
    v57 = **(v0 + 72);
    v60 = v7;
    v55 = (*(v0 + 168) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v3 + 16);
    v61 = v6;
    do
    {
      v68 = v8;
      v69 = v2;
      v14 = *(v0 + 184);
      v13 = *(v0 + 192);
      v16 = *(v0 + 144);
      v15 = *(v0 + 152);
      v17 = *(v0 + 128);
      v5(v13);
      v18 = sub_100049C1C();
      (*v59)(v16, v18, v17);
      (v5)(v14, v13, v15);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 184);
      if (v21)
      {
        v23 = *(v0 + 176);
        v24 = *(v0 + 152);
        v63 = *(v0 + 128);
        v65 = *(v0 + 144);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v71 = v26;
        *v25 = 136315138;
        (v5)(v23, v22, v24);
        v27 = String.init<A>(describing:)();
        v29 = v28;
        v67 = *v70;
        (*v70)(v22, v24);
        v30 = sub_10001FEC8(v27, v29, &v71);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v19, v20, "Adding action %s to group", v25, 0xCu);
        sub_100001E74(v26);

        (*v58)(v65, v63);
      }

      else
      {
        v32 = *(v0 + 144);
        v31 = *(v0 + 152);
        v33 = *(v0 + 128);

        v67 = *v70;
        (*v70)(v22, v31);
        (*v58)(v32, v33);
      }

      v34 = *(v0 + 192);
      v35 = *(v0 + 176);
      v36 = *(v0 + 152);
      v37 = *(v0 + 120);
      v66 = *(v0 + 112);
      v38 = *(v0 + 96);
      v39 = *(v0 + 104);
      v62 = v37;
      v64 = *(v0 + 88);
      v40 = type metadata accessor for TaskPriority();
      v41 = *(v40 - 8);
      (*(v41 + 56))(v37, 1, 1, v40);
      (v5)(v35, v34, v36);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      v43 = (v42 + 16);
      *(v42 + 24) = 0;
      (*v54)(v42 + v60, v35, v36);
      v44 = (v42 + v55);
      *v44 = v64;
      v44[1] = v38;
      *(v42 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;
      sub_10001CB74(v62, v66, &qword_1000A7920, &qword_10007AE70);
      v45 = (*(v41 + 48))(v66, 1, v40);

      v46 = *(v0 + 112);
      if (v45 == 1)
      {
        sub_1000035B8(*(v0 + 112), &qword_1000A7920, &qword_10007AE70);
        if (*v43)
        {
          goto LABEL_12;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v41 + 8))(v46, v40);
        if (*v43)
        {
LABEL_12:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v47 = dispatch thunk of Actor.unownedExecutor.getter();
          v48 = v49;
          swift_unknownObjectRelease();
          goto LABEL_13;
        }
      }

      v47 = 0;
      v48 = 0;
LABEL_13:
      v50 = swift_allocObject();
      *(v50 + 16) = &unk_10007E638;
      *(v50 + 24) = v42;

      if (v48 | v47)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v47;
        *(v0 + 40) = v48;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v0 + 192);
      v11 = *(v0 + 152);
      v12 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v9;
      *(v0 + 64) = v57;
      swift_task_create();

      sub_1000035B8(v12, &qword_1000A7920, &qword_10007AE70);
      v67(v10, v11);
      v8 = v68 + v56;
      v2 = v69 - 1;
      v5 = v61;
    }

    while (v69 != 1);
  }

  v51 = swift_task_alloc();
  *(v0 + 200) = v51;
  v52 = sub_10001A078(&qword_1000A7928, &qword_10007E648);
  *v51 = v0;
  v51[1] = sub_100043050;

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v52);
}

uint64_t sub_100043050()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000431FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100043224, 0, 0);
}

uint64_t sub_100043224()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_10004331C;
  v4 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000018, 0x800000010008C140, sub_1000455B8, v1, &type metadata for () + 8);
}

uint64_t sub_10004331C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004342C(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v58 = a4;
  v59 = a3;
  v51 = a1;
  v6 = sub_10001A078(&qword_1000A7930, &qword_10007E650);
  v54 = *(v6 - 8);
  v55 = v6;
  v52 = *(v54 + 64);
  __chkstk_darwin(v6);
  v53 = &v44[-v7];
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = v11;
  __chkstk_darwin(v10);
  v14 = &v44[-v13];
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_100049C1C();
  (*(v16 + 16))(v18, v19, v15);
  v60 = v9;
  v20 = *(v9 + 16);
  v57 = a2;
  v21 = a2;
  v22 = v20;
  v20(v14, v21, v8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v45 = v24;
    v26 = v25;
    v46 = swift_slowAlloc();
    v61 = v46;
    *v26 = 136315138;
    v22(v12, v14, v8);
    v27 = String.init<A>(describing:)();
    v47 = v15;
    v48 = v22;
    v28 = v27;
    v29 = v12;
    v30 = v8;
    v32 = v31;
    (*(v60 + 8))(v14, v30);
    v33 = sub_10001FEC8(v28, v32, &v61);
    v8 = v30;
    v12 = v29;

    *(v26 + 4) = v33;
    v22 = v48;
    _os_log_impl(&_mh_execute_header, v23, v45, "Handling action %s", v26, 0xCu);
    sub_100001E74(v46);

    (*(v16 + 8))(v18, v47);
  }

  else
  {

    (*(v60 + 8))(v14, v8);
    (*(v16 + 8))(v18, v15);
  }

  v49 = v8;
  v34 = v57;
  v22(v12, v57, v8);
  v36 = v53;
  v35 = v54;
  v37 = v55;
  (*(v54 + 16))(v53, v51, v55);
  v38 = v60;
  v39 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v40 = (v50 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v35 + 80) + v40 + 8) & ~*(v35 + 80);
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v39, v12, v49);
  *(v42 + v40) = v56;
  (*(v35 + 32))(v42 + v41, v36, v37);

  v59(v34, sub_1000455C4, v42);
}

uint64_t sub_1000438EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a5;
  v80 = a4;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ActionType();
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v81 = *(v77 - 8);
  v13 = __chkstk_darwin(v77);
  v62 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v61 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v63 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v75 = &v61 - v21;
  __chkstk_darwin(v20);
  v23 = &v61 - v22;
  v24 = sub_100049C1C();
  v25 = *(v17 + 16);
  v73 = v24;
  v74 = v25;
  (v25)(v23);
  v67 = a2;
  v26 = a2 & 1;
  sub_1000456C4(a1, a2 & 1);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  sub_1000456D0(a1, v26);
  v29 = os_log_type_enabled(v27, v28);
  v68 = a1;
  v69 = v10;
  v79 = a3;
  v76 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v82[0] = v31;
    v82[1] = a1;
    *v30 = 136315138;
    v83 = v26;
    sub_1000456C4(a1, v26);
    sub_10001A078(&qword_1000A7938, &qword_10007E658);
    v32 = String.init<A>(describing:)();
    v34 = sub_10001FEC8(v32, v33, v82);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Action handler result: %s", v30, 0xCu);
    sub_100001E74(v31);

    a3 = v79;
  }

  v35 = *(v17 + 8);
  v35(v23, v16);
  v36 = v16;
  v37 = Com_Apple_Sse_Ocean_Ndo_Api_Action.requiresAck.getter();
  v38 = (v81 + 16);
  v39 = v77;
  v40 = v72;
  if (v37)
  {
    v74(v75, v73, v36);
    (*v38)(v40, a3, v39);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      v44 = v40;
      v45 = v64;
      Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.getter();
      v46 = Com_Apple_Sse_Ocean_Ndo_Api_ActionType.rawValue.getter();
      (*(v65 + 8))(v45, v66);
      (*(v81 + 8))(v44, v39);
      *(v43 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "%ld requires ack, adding to pending acks", v43, 0xCu);
    }

    else
    {
      (*(v81 + 8))(v40, v39);
    }

    v54 = v69;

    v35(v75, v36);
    Com_Apple_Sse_Ocean_Ndo_Api_Action.ackData(for:)();
    v55 = v80;
    swift_beginAccess();
    v56 = *(v55 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 16) = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_1000442EC(0, v56[2] + 1, 1, v56);
      *(v80 + 16) = v56;
    }

    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      v56 = sub_1000442EC((v58 > 1), v59 + 1, 1, v56);
    }

    v56[2] = v59 + 1;
    (*(v70 + 32))(v56 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v59, v54, v71);
    *(v80 + 16) = v56;
    swift_endAccess();
  }

  else
  {
    v47 = v63;
    v74(v63, v73, v36);
    v48 = v62;
    (*v38)(v62, a3, v39);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      v52 = v64;
      Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.getter();
      v53 = Com_Apple_Sse_Ocean_Ndo_Api_ActionType.rawValue.getter();
      (*(v65 + 8))(v52, v66);
      (*(v81 + 8))(v48, v39);
      *(v51 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "%ld does not require an ack", v51, 0xCu);
    }

    else
    {
      (*(v81 + 8))(v48, v39);
    }

    v35(v47, v36);
  }

  sub_10001A078(&qword_1000A7930, &qword_10007E650);
  return CheckedContinuation.resume(returning:)();
}

id NDOAppleCareNotificationsHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOAppleCareNotificationsHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000441F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100045B00;

  return v6(a1);
}

void *sub_1000442EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(&unk_1000A7940, &qword_10007E660);
  v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1000444C4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100044508(a1, v4);
}

unint64_t sub_100044508(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004582C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100045744(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t _s8ndoagent32NDOAppleCareNotificationsHandlerC18handleNotification_8forTopicySDys11AnyHashableVypG_SStF_0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001A078(&qword_1000A78B0, qword_10007E5C0);
  __chkstk_darwin(v4 - 8);
  v82 = &v76 - v5;
  v6 = type metadata accessor for NotificationData();
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v85 = &v76 - v14;
  v15 = __chkstk_darwin(v13);
  v84 = &v76 - v16;
  v17 = __chkstk_darwin(v15);
  v83 = &v76 - v18;
  __chkstk_darwin(v17);
  v20 = &v76 - v19;
  v21 = sub_100049C1C();
  v22 = *(v9 + 16);
  v87 = v21;
  v88 = v22;
  v89 = v9 + 16;
  (v22)(v20);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v86 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v79 = v8;
    v27 = v26;
    v28 = swift_slowAlloc();
    v78 = v12;
    v29 = v28;
    *&v92 = v28;
    *v27 = 136315138;
    v30 = Dictionary.description.getter();
    v32 = sub_10001FEC8(v30, v31, &v92);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Processing notification:%s", v27, 0xCu);
    sub_100001E74(v29);
    v12 = v78;

    v8 = v79;
  }

  v33 = *(v9 + 8);
  v34 = v33(v20, v8);
  v35 = (*(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_primaryAccountAltDSIDProvider))(v34);
  if (!v36)
  {
    v88(v12, v87, v8);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "No primary icloud account alt dsid. Not handling notification", v49, 2u);
    }

    v46 = v12;
    goto LABEL_18;
  }

  v37 = v35;
  v38 = v36;
  v90 = 0x6469736461;
  v91 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v39 = v86;
  if (!*(v86 + 16) || (v40 = sub_1000444C4(&v92), (v41 & 1) == 0))
  {
    sub_100045744(&v92);
    goto LABEL_11;
  }

  sub_100020798(*(v39 + 56) + 32 * v40, &v94);
  sub_100045744(&v92);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v37 != v90 || v38 != v91)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_21;
    }

LABEL_12:
    v42 = v85;
    v88(v85, v87, v8);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "altDsid in notification does not match primary account. Not handling notification", v45, 2u);
    }

    v46 = v42;
    goto LABEL_18;
  }

LABEL_21:
  v90 = 0x61746144707061;
  v91 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v39 + 16) || (v53 = sub_1000444C4(&v92), (v54 & 1) == 0))
  {
    sub_100045744(&v92);
    goto LABEL_27;
  }

  sub_100020798(*(v39 + 56) + 32 * v53, &v94);
  sub_100045744(&v92);
  sub_100045798();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v58 = v84;
    v88(v84, v87, v8);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "appData missing in notification payload. Not handling notification", v61, 2u);
    }

    v46 = v58;
LABEL_18:
    v50 = v8;
    return v33(v46, v50);
  }

  v55 = v8;
  v56 = v90;
  *&v94 = 0x6F69746341707061;
  *(&v94 + 1) = 0xE90000000000006ELL;
  v57 = [v90 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v57)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v92 = v94;
  v93 = v95;
  if (!*(&v95 + 1))
  {
    sub_1000035B8(&v92, &qword_1000A6FD8, &unk_10007DAC0);
LABEL_37:
    v62 = v83;
    v88(v83, v87, v55);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Unsupported notification action. Not handling notification", v65, 2u);
    }

    v46 = v62;
    v50 = v55;
    return v33(v46, v50);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v90 == 0x4E495F4B43454843 && v91 == 0xE800000000000000)
  {

    goto LABEL_41;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v66 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_41:
  *&v94 = 0x61446E6F69746361;
  *(&v94 + 1) = 0xEA00000000006174;
  v67 = [v56 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v67)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v92 = v94;
  v93 = v95;
  v77 = v2;
  if (*(&v95 + 1))
  {
    sub_10001A078(&unk_1000A7960, &qword_10007F360);
    if (swift_dynamicCast())
    {
      goto LABEL_49;
    }
  }

  else
  {
    sub_1000035B8(&v92, &qword_1000A6FD8, &unk_10007DAC0);
  }

  sub_100001F80(_swiftEmptyArrayStorage);
LABEL_49:
  strcpy(&v92, "notificationId");
  HIBYTE(v92) = -18;
  v68 = [v56 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v68)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v92 = v94;
  v93 = v95;
  if (*(&v95 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1000035B8(&v92, &qword_1000A6FD8, &unk_10007DAC0);
  }

  *&v92 = 0xD000000000000013;
  *(&v92 + 1) = 0x800000010008C160;
  v69 = [v56 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v69)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v92 = v94;
  v93 = v95;
  if (*(&v95 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1000035B8(&v92, &qword_1000A6FD8, &unk_10007DAC0);
  }

  v70 = v80;
  NotificationData.init(passthroughData:notificationID:notificationContext:)();
  v71 = v81;
  v72 = v82;
  (*(v81 + 16))(v82, v70, v6);
  v73 = (*(v71 + 56))(v72, 0, 1, v6);
  (*((swift_isaMask & *v77) + 0x90))(&v92, v73);
  sub_100001F3C(&v92, *(&v93 + 1));
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  v75[3] = 0;
  v75[4] = 0;
  v75[2] = v74;

  dispatch thunk of NDODeviceCheckInHandler.checkIn(with:trigger:completion:)();

  sub_1000035B8(v72, &qword_1000A78B0, qword_10007E5C0);
  (*(v71 + 8))(v70, v6);

  return sub_100001E74(&v92);
}

uint64_t sub_100045318(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001D068;

  return sub_1000428A0(v9, a2, v5, v6, v8, v7);
}

uint64_t sub_1000453D4(uint64_t a1)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10001D068;

  return sub_1000431FC(a1, v12, v13, v1 + v5, v9, v10, v11);
}

uint64_t sub_100045500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C2DC;

  return sub_10001C6CC(a1, v4);
}

uint64_t sub_1000455C4(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10001A078(&qword_1000A7930, &qword_10007E650) - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_1000438EC(a1, a2 & 1, v2 + v6, v9, v10);
}

uint64_t sub_1000456C4(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_1000456D0(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_1000456DC()
{
  result = qword_1000A7008;
  if (!qword_1000A7008)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7008);
  }

  return result;
}

unint64_t sub_100045798()
{
  result = qword_1000A7950;
  if (!qword_1000A7950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A7950);
  }

  return result;
}

uint64_t sub_1000457E4()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045888()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001C2DC;

  return sub_100041474(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100045930()
{
  v2 = *(type metadata accessor for CheckInData() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001D068;

  return sub_100040D7C(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_100045A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001D068;

  return sub_1000441F4(a1, v4);
}

__n128 NDOPlacardModel.init(iconUrl:title:subtitle:subtitleLinkText:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = *a10;
  v11 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v11;
  *(a9 + 96) = *(a10 + 32);
  return result;
}

uint64_t sub_100045B38()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x656C746974627573;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_100045BD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000462F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100045BF8(uint64_t a1)
{
  v2 = sub_100046594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045C34(uint64_t a1)
{
  v2 = sub_100046594();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOPlacardModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A79F0, &qword_10007E6C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100001F3C(a1, a1[3]);
  sub_100046594();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + 80);
    v12 = *(v3 + 64);
    v13 = v9;
    v14 = *(v3 + 96);
    v11[15] = 4;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NDOPlacardModel.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int NDOPlacardModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

__n128 NDOPlacardModel.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000465E8(a2, v7);
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

Swift::Int sub_100046010()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000460E4(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000461A0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100046288(uint64_t a1, uint64_t a2)
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
  return _s8ndoagent15NDOPlacardModelV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_1000462F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010008C180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _s8ndoagent15NDOPlacardModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)())) && (a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v6 = *(a1 + 5);
    v12[0] = *(a1 + 4);
    v12[1] = v6;
    v13 = *(a1 + 96);
    v7 = *(a2 + 80);
    v10[0] = *(a2 + 64);
    v10[1] = v7;
    v11 = *(a2 + 96);
    v8 = static NDOAction.__derived_enum_equals(_:_:)(v12, v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_100046594()
{
  result = qword_1000AC660[0];
  if (!qword_1000AC660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC660);
  }

  return result;
}

uint64_t sub_1000465E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7A00, &unk_10007EA30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_100046594();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v10;
  LOBYTE(v43[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v12;
  v31 = v11;
  LOBYTE(v43[0]) = 2;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v13;
  LOBYTE(v43[0]) = 3;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v14;
  v49 = 4;
  sub_10001E490();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v27 = *(&v45 + 1);
  v28 = v45;
  v25 = *(&v46 + 1);
  v26 = v46;
  v48 = v47;
  *&v36 = v9;
  v15 = v35;
  *(&v36 + 1) = v35;
  v16 = v31;
  *&v37 = v31;
  v17 = v34;
  *(&v37 + 1) = v34;
  *&v38 = v30;
  v18 = v33;
  *(&v38 + 1) = v33;
  *&v39 = v29;
  v19 = v32;
  *(&v39 + 1) = v32;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  sub_100046CE8(&v36, v43);
  sub_100001E74(a1);
  v43[0] = v9;
  v43[1] = v15;
  v43[2] = v16;
  v43[3] = v17;
  v43[4] = v30;
  v43[5] = v18;
  v43[6] = v29;
  v43[7] = v19;
  v43[8] = v28;
  v43[9] = v27;
  v43[10] = v26;
  v43[11] = v25;
  v44 = v48;
  result = sub_100046D20(v43);
  v21 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v21;
  *(a2 + 96) = v42;
  v22 = v37;
  *a2 = v36;
  *(a2 + 16) = v22;
  v23 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v23;
  return result;
}

unint64_t sub_100046A9C()
{
  result = qword_1000A79F8;
  if (!qword_1000A79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A79F8);
  }

  return result;
}

__n128 sub_100046AF0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100046B1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_100046B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100046BE4()
{
  result = qword_1000AC970[0];
  if (!qword_1000AC970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC970);
  }

  return result;
}

unint64_t sub_100046C3C()
{
  result = qword_1000ACA80;
  if (!qword_1000ACA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACA80);
  }

  return result;
}

unint64_t sub_100046C94()
{
  result = qword_1000ACA88[0];
  if (!qword_1000ACA88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ACA88);
  }

  return result;
}

uint64_t sub_100046D58()
{
  if (*v0)
  {
    return 0x736B6E696CLL;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_100046D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
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

uint64_t sub_100046E68(uint64_t a1)
{
  v2 = sub_100047248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046EA4(uint64_t a1)
{
  v2 = sub_100047248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NDODWFooterModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 != a4 || a2 != a5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_100046F50(a3, a6);
}

uint64_t sub_100046F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a2 + 48;
    for (i = a1 + 48; ; i += 56)
    {
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *(i + 16);
      v14[0] = *i;
      v14[1] = v7;
      v15 = *(i + 32);
      v8 = *(v3 - 16);
      v9 = *(v3 - 8);
      v10 = *(v3 + 16);
      v16[0] = *v3;
      v16[1] = v10;
      v17 = *(v3 + 32);
      if ((v5 != v8 || v6 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      sub_10001D168(v14, v13);

      sub_10001D168(v16, v13);
      v11 = static NDOAction.__derived_enum_equals(_:_:)(v14, v16);

      sub_100048154(v16);

      sub_100048154(v14);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t NDODWFooterModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_10001A078(&qword_1000A7A08, &qword_10007EA40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100001F3C(a1, a1[3]);
  sub_100047248();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_10001A078(&qword_1000A7A10, &qword_10007EA48);
    sub_100048088(&qword_1000A7A18, sub_10004729C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100047248()
{
  result = qword_1000ACB10;
  if (!qword_1000ACB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB10);
  }

  return result;
}

unint64_t sub_10004729C()
{
  result = qword_1000A7A20;
  if (!qword_1000A7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7A20);
  }

  return result;
}

void NDODWFooterModel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();
  v5 = *(a4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a4 + 80);
    do
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v6 += 56;

      sub_100021230(v7, v8, v9, v10, v11);
      String.hash(into:)();
      sub_1000287C0();
      dispatch thunk of Hashable.hash(into:)();

      sub_10002B180(v7, v8, v9, v10, v11);
      --v5;
    }

    while (v5);
  }
}

Swift::Int NDODWFooterModel.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  NDODWFooterModel.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

uint64_t NDODWFooterModel.init(from:)(void *a1)
{
  result = sub_100047858(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_100047470()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  NDODWFooterModel.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000474D8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  NDODWFooterModel.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_100047530@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100047858(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100047580(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_100046F50(v2, v3);
}

uint64_t sub_1000475F4(uint64_t a1)
{
  v2 = sub_100047A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100047630(uint64_t a1)
{
  v2 = sub_100047A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWFooterModel.Link.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7A28, &qword_10007EA50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100001F3C(a1, a1[3]);
  sub_100047A8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = v9;
    v14 = *(v3 + 48);
    v11[15] = 1;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double NDODWFooterModel.Link.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100047AE0(a2, v6);
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

uint64_t sub_100047858(void *a1)
{
  v3 = sub_10001A078(&qword_1000A7A48, &unk_10007EFB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100047248();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10001A078(&qword_1000A7A10, &qword_10007EA48);
    v9[15] = 1;
    sub_100048088(&qword_1000A7A50, sub_100048100, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100001E74(a1);
  return v7;
}

unint64_t sub_100047A8C()
{
  result = qword_1000ACB18[0];
  if (!qword_1000ACB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ACB18);
  }

  return result;
}

uint64_t sub_100047AE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7A40, &qword_10007EFA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_100047A8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v18) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_10001E490();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  v16 = v19;
  v17 = v18;
  result = sub_100001E74(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  v15 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v15;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_100047CF0()
{
  result = qword_1000A7A30;
  if (!qword_1000A7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7A30);
  }

  return result;
}

unint64_t sub_100047D48()
{
  result = qword_1000A7A38;
  if (!qword_1000A7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7A38);
  }

  return result;
}

__n128 sub_100047D9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100047DB0(uint64_t a1, int a2)
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

uint64_t sub_100047DF8(uint64_t result, int a2, int a3)
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

unint64_t sub_100047E7C()
{
  result = qword_1000AD020[0];
  if (!qword_1000AD020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD020);
  }

  return result;
}

unint64_t sub_100047ED4()
{
  result = qword_1000AD230[0];
  if (!qword_1000AD230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD230);
  }

  return result;
}

unint64_t sub_100047F2C()
{
  result = qword_1000AD340;
  if (!qword_1000AD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD340);
  }

  return result;
}

unint64_t sub_100047F84()
{
  result = qword_1000AD348[0];
  if (!qword_1000AD348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD348);
  }

  return result;
}

unint64_t sub_100047FDC()
{
  result = qword_1000AD3D0;
  if (!qword_1000AD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD3D0);
  }

  return result;
}

unint64_t sub_100048034()
{
  result = qword_1000AD3D8[0];
  if (!qword_1000AD3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD3D8);
  }

  return result;
}

uint64_t sub_100048088(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A7A10, &qword_10007EA48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048100()
{
  result = qword_1000A7A58;
  if (!qword_1000A7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7A58);
  }

  return result;
}

id static NDODeviceServicesComposition.makeAirPodsDataCollectionHandler()()
{
  v0 = objc_allocWithZone(NDOAirPodsDataCollectionHandler);

  return [v0 init];
}

uint64_t static NDODeviceServicesComposition.load(request:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10005C67C();
  swift_beginAccess();
  sub_100001E10(v5, v8);
  sub_100001F3C(v8, v8[3]);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  dispatch thunk of NDOURLClient.load(request:with:)();

  return sub_100001E74(v8);
}

void sub_1000484B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a4)
    {
LABEL_3:
      v9 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, isa, a3);
}

uint64_t static NDODeviceServicesComposition.isAccCheckInDisabled()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000485F4;

  return sub_100048FFC();
}

uint64_t sub_1000485F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t *sub_1000486F0()
{
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  return qword_1000B1E28;
}

uint64_t sub_1000488AC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100048954;

  return sub_100048FFC();
}

uint64_t sub_100048954(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100048A7C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NDOCompositionLayer();
  static NDOConstants.localPlistURL.getter();
  v4 = sub_10005C67C();
  swift_beginAccess();
  sub_100001E10(v4, v9);
  v5 = sub_10005C9CC(v3, v9);
  sub_100001E74(v9);
  (*(v1 + 8))(v3, v0);
  v10[3] = type metadata accessor for NDOPostProcessingURLClient();
  v10[4] = &protocol witness table for NDOPostProcessingURLClient;
  v10[0] = v5;
  v6 = sub_10005C220();
  swift_beginAccess();
  sub_10001EC4C(v6, v9);
  sub_100020BC4(v10, v9, qword_1000B1E28);
  sub_100001E74(v9);
  return sub_100001E74(v10);
}

uint64_t sub_100048BF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001E10(qword_1000B1E28, a1);
}

uint64_t sub_100048C70(uint64_t *a1)
{
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000492B8(qword_1000B1E28, a1);
  swift_endAccess();
  return sub_100001E74(a1);
}

uint64_t (*sub_100048D00(uint64_t a1))(uint64_t a1)
{
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id NDODeviceServicesComposition.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesComposition();
  return objc_msgSendSuper2(&v2, "init");
}

id NDODeviceServicesComposition.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NDODeviceServicesComposition();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100048E34(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1E28, v9);
  sub_100001F3C(v9, v9[3]);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  dispatch thunk of NDOLoader.load(with:)();

  return sub_100001E74(v9);
}

uint64_t sub_100048FFC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = sub_10001A078(&qword_1000A7A88, &unk_10007F050);
  *v1 = v0;
  v1[1] = sub_1000490E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000016, 0x800000010008C1F0, sub_100048E34, 0, v2);
}

uint64_t sub_1000490E4()
{

  return _swift_task_switch(sub_1000491E0, 0, 0);
}

uint64_t sub_1000491E0()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    *(v0 + 32) = v1;
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    sub_1000496C8(v1, 1);
    v2 = 0;
  }

  else
  {
    v3 = v1;
    v2 = NSDictionary.isAccCheckInDisabled.getter();
    sub_1000496C8(v1, 0);
    sub_1000496C8(v1, 0);
  }

  v4 = *(v0 + 8);

  return v4(v2 & 1);
}

uint64_t *sub_1000492B8(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1000494F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C2DC;

  return sub_1000488AC(v2);
}

uint64_t sub_1000495A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049614(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049684(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    a1 = 0;
    a2 = 0xF000000000000000;
    a3 = 0;
  }

  else
  {
    v5 = 0;
  }

  return (*(v4 + 16))(a1, a2, a3, v5);
}

void sub_1000496C8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000496D4(uint64_t *a1)
{
  sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  sub_100049780(*a1, *(a1 + 8));
  sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  return CheckedContinuation.resume(returning:)();
}

id sub_100049780(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100049790()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  static NDODeviceServicesInternalDebugHelpers.preferences = v2;
}

uint64_t *NDODeviceServicesInternalDebugHelpers.preferences.unsafeMutableAddressor()
{
  if (qword_1000AD468 != -1)
  {
    swift_once();
  }

  return &static NDODeviceServicesInternalDebugHelpers.preferences;
}

id static NDODeviceServicesInternalDebugHelpers.preferences.getter()
{
  if (qword_1000AD468 != -1)
  {
    swift_once();
  }

  v1 = static NDODeviceServicesInternalDebugHelpers.preferences;

  return v1;
}

uint64_t static NDODeviceServicesInternalDebugHelpers.getLocalURLOverridesForDeviceServices()()
{
  if (![objc_opt_self() isInternal])
  {
    return 0;
  }

  if (qword_1000AD468 != -1)
  {
    swift_once();
  }

  v0 = static NDODeviceServicesInternalDebugHelpers.preferences;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id NDODeviceServicesInternalDebugHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, "init");
}

id NDODeviceServicesInternalDebugHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100049BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100027DE0(v0, qword_1000B1E58);
  sub_100027B34(v0, qword_1000B1E58);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100049C1C()
{
  if (qword_1000AD470 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100027B34(v0, qword_1000B1E58);
}

uint64_t sub_100049C80@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AD470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100027B34(v2, qword_1000B1E58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100049D54(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_100049D80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDOWarrantyRequestGenerator(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NDOWarrantyRequestGenerator(uint64_t a1)
{
  result = qword_1000AD478;
  if (!qword_1000AD478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100049E48(uint64_t a1)
{
  v3 = *(type metadata accessor for NDOWarrantyRequestGenerator(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100049F0C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOWarrantyRequestGenerator(0) + 24);

  return sub_100001E10(v3, a1);
}

uint64_t NDOWarrantyRequestGenerator.init(serialNumbers:warrantyURL:payloadProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for NDOWarrantyRequestGenerator(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return sub_100005734(a3, v10);
}

NSURLRequest_optional __swiftcall NDOWarrantyRequestGenerator.generateRequest(isRetry:)(Swift::Bool isRetry)
{
  v46 = isRetry;
  v1 = type metadata accessor for JSONEncodingOptions();
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v42 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest();
  v39 = *(v47 - 8);
  v3 = __chkstk_darwin(v47);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = v37 - v5;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody();
  __chkstk_darwin(v6 - 8);
  v37[2] = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NDOWarrantyRequestGenerator(0);
  v13 = objc_allocWithZone(NSMutableURLRequest);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = [v13 initWithURL:v15];

  v18 = String._bridgeToObjectiveC()();
  [v17 setHTTPMethod:v18];

  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  [v17 setValue:v19 forHTTPHeaderField:v20];

  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = v39;
  v38 = v17;
  [v17 setValue:v21 forHTTPHeaderField:v22];

  Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.init()();
  v24 = (v37[1] + *(v12 + 24));
  sub_100001F3C(v24, v24[3]);
  v25 = v40;
  dispatch thunk of RequestPayloadProvider.requestMeta()();
  Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.meta.setter();
  sub_100001F3C(v24, v24[3]);
  v26 = v42;
  dispatch thunk of RequestPayloadProvider.requestCommon()();
  Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.common.setter();
  Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.init()();

  Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.interestedSerials.setter();
  v27 = v23;
  (*(v23 + 16))(v41, v25, v47);
  Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.data.setter();
  JSONEncodingOptions.init()();
  sub_10004A560();
  v28 = Message.jsonUTF8Data(options:)();
  v29 = v26;
  v31 = v30;
  (*(v44 + 8))(v29, v45);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100003EBC(v28, v31);
  v33 = v38;
  [(objc_class *)v38 setHTTPBody:isa];

  sub_100001F3C(v24, v24[3]);
  dispatch thunk of RequestPayloadProvider.addHeaders(to:isRetry:)();
  (*(v27 + 8))(v25, v47);
  (*(v43 + 8))(v11, v9);
  v36 = v33;
  result.value._internal = v34;
  result.value.super.isa = v36;
  result.is_nil = v35;
  return result;
}

unint64_t sub_10004A560()
{
  result = qword_1000A7AC0;
  if (!qword_1000A7AC0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7AC0);
  }

  return result;
}

void sub_10004A5E0(uint64_t a1)
{
  sub_10004A67C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_100029A34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004A67C()
{
  if (!qword_1000A7B20)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A7B20);
    }
  }
}

uint64_t sub_10004A6CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10005BD64(sub_10004A7D0, v4);
}

uint64_t sub_10004A74C(ndoagent::NDODWCoverageModel::CoverageLink::Action::Benefits a1)
{
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v2 = a1.label._countAndFlagsBits;
  if (a1.label._countAndFlagsBits)
  {
    object = a1.label._object;

    v4._countAndFlagsBits = v2;
    v4._object = object;
    a1 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v4, v5);
    v2 = a1.label._countAndFlagsBits;
    v6 = a1.label._object;
  }

  else
  {
    v6 = 0;
  }

  countAndFlagsBits(v2, v6, a1.value._countAndFlagsBits, a1.value._object);

  return sub_100003430(v2, v6);
}

uint64_t sub_10004A7D8(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = &v28 - v6;
  v7 = sub_10001A078(&qword_1000A7B58, &qword_10007F0F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  static NDOResponseMapper.DeviceList.loadLocalData()();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000035B8(v9, &qword_1000A7B58, &qword_10007F0F8);
    return a1(0);
  }

  else
  {
    v28 = v5;
    v29 = v4;
    v18 = *(v11 + 32);
    v30 = v16;
    v18(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    v18((v20 + v19), v14, v10);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_10004B460;
    *(v21 + 24) = v20;
    v22 = a2;

    sub_10005BD64(sub_10004F6F0, v21);

    v23 = sub_10005BF18();
    swift_beginAccess();
    v25 = v28;
    v24 = v29;
    v26 = v31;
    (*(v28 + 16))(v31, v23, v29);
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = v22;

    swift_getOpaqueTypeConformance2();
    dispatch thunk of NDOLoader.load(with:)();

    (*(v25 + 8))(v26, v24);
    return (*(v11 + 8))(v30, v10);
  }
}

uint64_t sub_10004ABCC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  v73 = a3;
  v74 = a5;
  v76 = type metadata accessor for NDOLocalCoverageCentralResponse(0);
  __chkstk_darwin(v76);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v14 = __chkstk_darwin(v13 - 8);
  v75 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v72 = &v66 - v17;
  __chkstk_darwin(v16);
  v19 = &v66 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v25 = &v66 - v24;
  if (a1)
  {
    v67 = v20;
    v68 = v23;
    v66 = v21;
    v71 = a4;

    v26 = v74;
    v70 = a1;
    v74 = a2;
    v69 = sub_10002F0FC(v26, a1, a2);
    v27 = type metadata accessor for Date();
    v28 = *(*(v27 - 8) + 56);
    v28(v19, 1, 1, v27);
    v29 = [objc_opt_self() defaultManager];
    static NDOConstants.localDeviceListURL.getter();
    URL.path.getter();
    (*(v10 + 8))(v12, v9);
    v30 = String._bridgeToObjectiveC()();

    v78[0] = 0;
    v31 = [v29 attributesOfItemAtPath:v30 error:v78];

    v32 = v78[0];
    if (v31)
    {
      type metadata accessor for FileAttributeKey();
      sub_10004F6A8(&qword_1000A7B68, type metadata accessor for FileAttributeKey, &unk_10007F288);
      v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v32;

      if (*(v33 + 16) && (v35 = sub_10004E35C(NSFileModificationDate), (v36 & 1) != 0))
      {
        sub_100020798(*(v33 + 56) + 32 * v35, v78);
        sub_1000035B8(v19, &qword_1000A72A0, &qword_10007C010);

        v37 = v72;
        v38 = swift_dynamicCast() ^ 1;
        v39 = v37;
      }

      else
      {

        sub_1000035B8(v19, &qword_1000A72A0, &qword_10007C010);
        v37 = v72;
        v39 = v72;
        v38 = 1;
      }

      v28(v39, v38, 1, v27);
      v47 = v70;
      v48 = v77;
      v49 = v74;
      sub_1000243BC(v37, v19);
    }

    else
    {
      v50 = v78[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v51 = sub_100049C1C();
      v53 = v66;
      v52 = v67;
      (*(v66 + 16))(v68, v51, v67);
      swift_errorRetain();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        swift_errorRetain();
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v58;
        *v57 = v58;
        _os_log_impl(&_mh_execute_header, v54, v55, "Failed to read attributes of local device list, error: %@", v56, 0xCu);
        sub_1000035B8(v57, &qword_1000A6F40, &qword_10007E690);
      }

      else
      {
      }

      v47 = v70;
      v48 = v77;
      (*(v53 + 8))(v68, v52);
      v49 = v74;
    }

    v59 = v75;
    sub_10001CB74(v19, v75, &qword_1000A72A0, &qword_10007C010);
    NDOLocalCoverageCentralResponse.init(sections:date:)(v69, v59, v48);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10004F6A8(&qword_1000A7B90, type metadata accessor for NDOLocalCoverageCentralResponse, &protocol conformance descriptor for NDOLocalCoverageCentralResponse);
    v60 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v62 = v61;

    v63 = objc_allocWithZone(NSData);
    sub_100034F60(v60, v62);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v65 = [v63 initWithData:isa];

    sub_100003EBC(v60, v62);
    v73(v65);
    sub_100003430(v47, v49);

    sub_100003EBC(v60, v62);
    sub_10004F570(v48, type metadata accessor for NDOLocalCoverageCentralResponse);
    return sub_1000035B8(v19, &qword_1000A72A0, &qword_10007C010);
  }

  else
  {
    v40 = sub_100049C1C();
    (*(v21 + 16))(v25, v40, v20);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v73;
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Cannot create presentation model generator", v45, 2u);
    }

    (*(v21 + 8))(v25, v20);
    return (v44)(0);
  }
}

uint64_t sub_10004B48C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v32 = a3;
  v33 = a2;
  v29 = a1;
  v3 = type metadata accessor for Logger();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001A078(&unk_1000A7EA0, &qword_10007F110);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  sub_10001CB74(v29, v8, &unk_1000A7EA0, &qword_10007F110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000035B8(v8, &unk_1000A7EA0, &qword_10007F110);
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = swift_allocObject();
    v16(&v18[v17], v13, v9);
    v19._countAndFlagsBits = sub_10004F4FC;
    v19._object = v18;
    v34 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v19, v20);
    (*(v10 + 8))(v15, v9, v34.value._countAndFlagsBits, v34.value._object);
  }

  v21 = sub_100049C1C();
  v23 = v30;
  v22 = v31;
  (*(v30 + 16))(v5, v21, v31);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Unable to encode device list sections", v26, 2u);
  }

  (*(v23 + 8))(v5, v22);
  return v33(0);
}

uint64_t sub_10004B854(uint64_t a1, uint64_t a2)
{
  v5 = sub_10005EA4C();
  swift_beginAccess();
  sub_100001E10(v5, v8);
  sub_100001F3C(v8, v8[3]);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;

  dispatch thunk of NDOLoader.load(with:)();

  return sub_100001E74(v8);
}

uint64_t sub_10004B930(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v5 = type metadata accessor for Logger();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A078(&qword_1000A7B70, &unk_10007F100);
  __chkstk_darwin(v8);
  v10 = (&v33 - v9);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  sub_10001CB74(a1, v10, &qword_1000A7B70, &unk_10007F100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v36;
    v38 = *v10;
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    v19 = sub_100049C1C();
    v20 = v33;
    v21 = v34;
    (*(v33 + 16))(v7, v19, v34);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to get remote device list, error: %@", v24, 0xCu);
      sub_1000035B8(v25, &qword_1000A6F40, &qword_10007E690);
    }

    (*(v20 + 8))(v7, v21);
    v18(0);
  }

  else
  {
    v28 = *(v12 + 32);
    v28(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v30 = swift_allocObject();
    v31 = v37;
    *(v30 + 16) = v36;
    *(v30 + 24) = v31;
    v28((v30 + v29), v15, v11);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_10004F364;
    *(v32 + 24) = v30;

    sub_10005BD64(sub_10004F6F0, v32);

    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_10004BD88(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  if (a1)
  {
    v27 = a4;
    v28 = a3;

    v15 = sub_10002F0FC(a5, a1, a2);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v29 = v15;
    sub_10001A078(&qword_1000A7B78, &qword_100081550);
    sub_10004F42C(&qword_1000A7B80, &qword_1000A7B78, &qword_100081550, sub_10004F4A8);
    v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v22 = v21;

    v23 = objc_allocWithZone(NSData);
    sub_100034F60(v20, v22);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25 = [v23 initWithData:isa];

    sub_100003EBC(v20, v22);
    v28(v25);

    sub_100003EBC(v20, v22);
    return sub_100003430(a1, a2);
  }

  else
  {
    v16 = sub_100049C1C();
    (*(v11 + 16))(v14, v16, v10);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cannot create presentation model generator", v19, 2u);
    }

    (*(v11 + 8))(v14, v10);
    return (a3)(0);
  }
}

uint64_t sub_10004C26C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v6 = type metadata accessor for Logger();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = __chkstk_darwin(v6);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v40 - v9;
  v10 = type metadata accessor for JSONDecodingOptions();
  __chkstk_darwin(v10 - 8);
  v48 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v43 = *(v48 - 8);
  v11 = *(v43 + 64);
  v12 = __chkstk_darwin(v48);
  v13 = __chkstk_darwin(v12);
  v45 = &v40 - v14;
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)();
  v21 = Data.init(contentsOf:options:)();
  v23 = v22;
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v16;
  v47 = a2;
  v24 = v21;
  (*(v18 + 8))(v20, v17);
  sub_100034F60(v24, v23);
  JSONDecodingOptions.init()();
  sub_10004F6A8(&qword_1000A7298, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
  v25 = v45;
  Message.init(jsonUTF8Data:options:)();
  v50 = v23;
  v26 = v42;
  v27 = v43;
  v28 = *(v43 + 32);
  v29 = v48;
  v28(v42, v25, v48);
  v30 = v41;
  (*(v27 + 16))(v41, v26, v29);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v33 = v52;
  *(v32 + 16) = v51;
  *(v32 + 24) = v33;
  v34 = v30;
  v35 = v48;
  v28((v32 + v31), v34, v48);
  v36 = (v32 + ((v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  v37 = v47;
  *v36 = v46;
  v36[1] = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_10004E330;
  *(v38 + 24) = v32;

  sub_10005BD64(sub_10004F6F0, v38);

  sub_100003EBC(v24, v50);
  return (*(v27 + 8))(v42, v35);
}

uint64_t sub_10004C968(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a6;
  v78 = a7;
  v83 = a4;
  v84 = a3;
  v81 = type metadata accessor for NDOLocalDeviceWarrantyResponse(0);
  __chkstk_darwin(v81);
  v82 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v16 = __chkstk_darwin(v15 - 8);
  v79 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v76 = &v70 - v19;
  __chkstk_darwin(v18);
  v21 = &v70 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v25 = __chkstk_darwin(v24);
  v80 = &v70 - v26;
  __chkstk_darwin(v25);
  v29 = &v70 - v28;
  if (a1)
  {
    v70 = v27;
    v72 = v23;
    v73 = v22;

    v74 = a1;
    v75 = a2;
    v71 = sub_10002B2DC(a5, a1, a2);
    v30 = type metadata accessor for Date();
    v31 = *(*(v30 - 8) + 56);
    v31(v21, 1, 1, v30);
    v32 = [objc_opt_self() defaultManager];
    static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)();
    URL.path.getter();
    (*(v12 + 8))(v14, v11);
    v33 = String._bridgeToObjectiveC()();

    v85[0] = 0;
    v34 = [v32 attributesOfItemAtPath:v33 error:v85];

    v35 = v85[0];
    v36 = v21;
    if (v34)
    {
      type metadata accessor for FileAttributeKey();
      sub_10004F6A8(&qword_1000A7B68, type metadata accessor for FileAttributeKey, &unk_10007F288);
      v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v35;

      if (*(v37 + 16) && (v39 = sub_10004E35C(NSFileModificationDate), (v40 & 1) != 0))
      {
        sub_100020798(*(v37 + 56) + 32 * v39, v85);
        sub_1000035B8(v21, &qword_1000A72A0, &qword_10007C010);

        v41 = v76;
        v42 = swift_dynamicCast() ^ 1;
        v43 = v41;
      }

      else
      {

        sub_1000035B8(v21, &qword_1000A72A0, &qword_10007C010);
        v41 = v76;
        v43 = v76;
        v42 = 1;
      }

      v31(v43, v42, 1, v30);
      v52 = v74;
      v51 = v75;
      sub_1000243BC(v41, v21);
      v53 = v82;
    }

    else
    {
      v54 = v85[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v55 = sub_100049C1C();
      v56 = v72;
      v57 = v73;
      (*(v72 + 16))(v70, v55, v73);
      swift_errorRetain();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        swift_errorRetain();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 4) = v62;
        *v61 = v62;
        _os_log_impl(&_mh_execute_header, v58, v59, "Failed to read attributes of local device warranty, error: %@", v60, 0xCu);
        sub_1000035B8(v61, &qword_1000A6F40, &qword_10007E690);
      }

      else
      {
      }

      v52 = v74;
      v51 = v75;
      v53 = v82;
      (*(v56 + 8))(v70, v57);
    }

    v63 = v79;
    sub_10001CB74(v36, v79, &qword_1000A72A0, &qword_10007C010);
    NDOLocalDeviceWarrantyResponse.init(sections:date:)(v71, v63, v53);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10004F6A8(&qword_1000A7B60, type metadata accessor for NDOLocalDeviceWarrantyResponse, &protocol conformance descriptor for NDOLocalDeviceWarrantyResponse);
    v64 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v66 = v65;

    v67 = objc_allocWithZone(NSData);
    sub_100034F60(v64, v66);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v69 = [v67 initWithData:isa];

    sub_100003EBC(v64, v66);
    v84(v69);

    sub_100003430(v52, v51);
    sub_100003EBC(v64, v66);
    sub_10004F570(v53, type metadata accessor for NDOLocalDeviceWarrantyResponse);
    return sub_1000035B8(v36, &qword_1000A72A0, &qword_10007C010);
  }

  else
  {
    v44 = sub_100049C1C();
    (*(v23 + 16))(v29, v44, v22);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v84;
    if (v47)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Cannot create presentation model generator", v49, 2u);
    }

    (*(v23 + 8))(v29, v22);
    return (v48)(0);
  }
}

uint64_t sub_10004D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10006F214();
  swift_beginAccess();
  sub_100001E10(v10, v14);
  sub_100001F3C(v14, v14[3]);
  sub_10001A078(&qword_1000A6FA0, &qword_10007D9D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10007AE00;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v5;
  swift_bridgeObjectRetain_n();

  dispatch thunk of WarrantyDownloader.loadWarranty(forDeviceSerials:additionalHeaders:completion:)();

  return sub_100001E74(v14);
}

uint64_t sub_10004D4AC(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a7;
  v69 = a6;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v65 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v56 - v16;
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v66 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v22 = v56 - v21;
  __chkstk_darwin(v20);
  v67 = a3;
  if (a2)
  {
    v70 = a1;
    swift_errorRetain();
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    v26 = sub_100049C1C();
    (*(v13 + 16))(v17, v26, v12);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_10004F210(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v12;
      v31 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get remote device warranty, error: %@", v29, 0xCu);
      sub_1000035B8(v31, &qword_1000A6F40, &qword_10007E690);
      v12 = v30;
    }

    (*(v13 + 8))(v17, v12);
    v67(0);
    return sub_10004F210(a1, 1);
  }

  else
  {
    v58 = v25;
    v59 = v24;
    v60 = v56 - v23;
    v61 = v13;
    v62 = v12;
    v63 = a4;
    v34 = *(a1 + 16);
    if (v34)
    {
      v68 = *(v66 + 16);
      v35 = *(v66 + 80);
      v56[1] = v35;
      v57 = (v35 + 32) & ~v35;
      v36 = a1 + v57;
      v37 = (v66 + 8);
      v38 = *(v66 + 72);
      while (1)
      {
        v68(v22, v36, v18);
        if (Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.getter() == a5 && v39 == v69)
        {
          break;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v40)
        {
          goto LABEL_15;
        }

        (*v37)(v22, v18);
        v36 += v38;
        if (!--v34)
        {
          goto LABEL_11;
        }
      }

LABEL_15:
      v49 = v66 + 32;
      v48 = *(v66 + 32);
      v50 = v60;
      v48(v60, v22, v18);
      v51 = v59;
      v68(v59, v50, v18);
      v52 = v57;
      v53 = swift_allocObject();
      v54 = v63;
      *(v53 + 16) = v67;
      *(v53 + 24) = v54;
      v48((v53 + v52), v51, v18);
      v55 = swift_allocObject();
      *(v55 + 16) = sub_10004F21C;
      *(v55 + 24) = v53;

      sub_10005BD64(sub_10004F6F0, v55);

      return (*(v49 - 24))(v50, v18);
    }

    else
    {
LABEL_11:
      v41 = sub_100049C1C();
      v43 = v61;
      v42 = v62;
      v44 = v65;
      (*(v61 + 16))(v65, v41, v62);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Device warranty response did not contain the requested serial number", v47, 2u);
      }

      (*(v43 + 8))(v44, v42);
      return (v67)(0);
    }
  }
}

uint64_t sub_10004DA7C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  if (a1)
  {
    v27 = a4;
    v28 = a3;

    v15 = sub_10002B2DC(a5, a1, a2);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v29 = v15;
    sub_10001A078(&qword_1000A72B0, &qword_10007C020);
    sub_10004F42C(&qword_1000A72B8, &qword_1000A72B0, &qword_10007C020, sub_10002482C);
    v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v22 = v21;

    v23 = objc_allocWithZone(NSData);
    sub_100034F60(v20, v22);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25 = [v23 initWithData:isa];

    sub_100003EBC(v20, v22);
    v28(v25);

    sub_100003EBC(v20, v22);
    return sub_100003430(a1, a2);
  }

  else
  {
    v16 = sub_100049C1C();
    (*(v11 + 16))(v14, v16, v10);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cannot create presentation model generator", v19, 2u);
    }

    (*(v11 + 8))(v14, v10);
    return (a3)(0);
  }
}

uint64_t sub_10004DF30()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10004DF6C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10004DFC0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10004E03C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10004E0B4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10004E134@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10004E178(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10004E200@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10004E248@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004E274(uint64_t a1)
{
  v2 = sub_10004F6A8(&qword_1000A7B68, type metadata accessor for FileAttributeKey, &unk_10007F288);
  v3 = sub_10004F6A8(&qword_1000A7BB8, type metadata accessor for FileAttributeKey, &unk_10007F1DC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10004E35C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10004E3F0(a1, v2);
}

unint64_t sub_10004E3F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10004E4F4(uint64_t a1, void (**a2)(void, void))
{
  v30 = a1;
  v3 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v31 = &v27 - v5;
  v6 = sub_10001A078(&qword_1000A7B58, &qword_10007F0F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  _Block_copy(a2);
  static NDOResponseMapper.DeviceList.loadLocalData()();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000035B8(v8, &qword_1000A7B58, &qword_10007F0F8);
    a2[2](a2, 0);
  }

  else
  {
    v28 = v4;
    v29 = v3;
    v17 = *(v10 + 32);
    v17(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_10004F6F4;
    *(v19 + 24) = v16;
    v17((v19 + v18), v13, v9);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_10004F700;
    *(v20 + 24) = v19;

    sub_10005BD64(sub_10004F6F0, v20);

    v21 = sub_10005BF18();
    swift_beginAccess();
    v23 = v28;
    v22 = v29;
    v24 = v31;
    (*(v28 + 16))(v31, v21, v29);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10004F6F4;
    *(v25 + 24) = v16;

    swift_getOpaqueTypeConformance2();
    dispatch thunk of NDOLoader.load(with:)();

    (*(v23 + 8))(v24, v22);
    (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_10004E91C(uint64_t a1, char *a2, uint64_t a3, const void *a4)
{
  v46 = a3;
  v54 = type metadata accessor for Logger();
  v52 = *(v54 - 8);
  v7 = __chkstk_darwin(v54);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v42 - v9;
  v10 = type metadata accessor for JSONDecodingOptions();
  __chkstk_darwin(v10 - 8);
  v51 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v45 = *(v51 - 8);
  v11 = *(v45 + 64);
  v12 = __chkstk_darwin(v51);
  v13 = __chkstk_darwin(v12);
  v48 = &v42 - v14;
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = swift_allocObject();
  *(v55 + 16) = a4;
  v53 = a4;
  _Block_copy(a4);
  v49 = a1;
  static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)();
  v21 = Data.init(contentsOf:options:)();
  v23 = v22;
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  v24 = v21;
  (*(v18 + 8))(v20, v17);
  sub_100034F60(v24, v23);
  JSONDecodingOptions.init()();
  sub_10004F6A8(&qword_1000A7298, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
  v25 = v48;
  Message.init(jsonUTF8Data:options:)();
  v44 = v23;
  v26 = v45;
  v27 = *(v45 + 32);
  v28 = v16;
  v42 = v16;
  v29 = v25;
  v30 = v51;
  v27(v16, v29, v51);
  v31 = v43;
  (*(v26 + 16))(v43, v28, v30);
  v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v55;
  *(v34 + 16) = sub_10004F6F4;
  *(v34 + 24) = v35;
  v36 = v34 + v32;
  v37 = v51;
  v27(v36, v31, v51);
  v38 = (v34 + v33);
  v39 = v50;
  *v38 = v49;
  v38[1] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_10004F6FC;
  *(v40 + 24) = v34;

  sub_10005BD64(sub_10004F6F0, v40);

  sub_100003EBC(v24, v44);
  (*(v26 + 8))(v42, v37);
}

uint64_t sub_10004F080()
{
  v1 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10004F15C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_10004C968(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t sub_10004F210(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_1000A7B98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000A7B98);
    }
  }
}

uint64_t sub_10004F298(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10004F390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9, v10);
}

uint64_t sub_10004F42C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004F4A8()
{
  result = qword_1000A7B88;
  if (!qword_1000A7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7B88);
  }

  return result;
}

uint64_t sub_10004F4FC(uint64_t a1, void *a2)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.urlString(for:)(v4).value._countAndFlagsBits;
}

uint64_t sub_10004F570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004F6A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004F724()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId);

  return v1;
}

uint64_t sub_10004F77C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId);

  return v1;
}

id sub_10004F7DC(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId];
  *v6 = 0xD000000000000034;
  *(v6 + 1) = 0x800000010008C2B0;
  v7 = &v5[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId];
  *v7 = 0xD000000000000032;
  *(v7 + 1) = 0x800000010008C2F0;
  *&v5[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper] = a1;
  sub_10001EC4C(a2, &v5[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore]);
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100001E74(a2);
  return v8;
}

id sub_10004F8AC(uint64_t a1, void *a2)
{
  v4 = &v2[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId];
  *v4 = 0xD000000000000034;
  *(v4 + 1) = 0x800000010008C2B0;
  v5 = &v2[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId];
  *v5 = 0xD000000000000032;
  *(v5 + 1) = 0x800000010008C2F0;
  *&v2[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper] = a1;
  sub_10001EC4C(a2, &v2[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore]);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for NDOCheckInScheduler();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_100001E74(a2);
  return v6;
}

uint64_t sub_10004F98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v44 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v37 = &v37 - v13;
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = sub_100049C1C();
  v40 = *(v9 + 16);
  v41 = v16;
  v40(v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Registering checkIn tasks", v19, 2u);
  }

  v39 = *(v9 + 8);
  v39(v15, v8);
  v20 = *(v5 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper);
  v42 = v5;
  v21 = *(v5 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId);
  v22 = *(v5 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId + 8);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = *(*v20 + 120);

  LOBYTE(v21) = v24(v21, v22, sub_10004FDB4, v23);

  if ((v21 & 1) == 0)
  {
    v25 = v37;
    (v40)(v37, v41, v8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to register checkIn on boot", v28, 2u);
    }

    v39(v25, v8);
  }

  v29 = *(v42 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId);
  v30 = *(v42 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId + 8);
  v31 = swift_allocObject();
  *(v31 + 16) = v43;
  *(v31 + 24) = v44;

  LOBYTE(v29) = v24(v29, v30, sub_10004FFD0, v31);

  if ((v29 & 1) == 0)
  {
    v33 = v38;
    (v40)(v38, v41, v8);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to register runtime checkIn", v36, 2u);
    }

    return (v39)(v33, v8);
  }

  return result;
}

id sub_10004FDD8(void *a1, void (*a2)(void), uint64_t a3, const char *a4, ...)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100049C1C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25[1] = a3;
    v17 = a2;
    v18 = a4;
    v19 = v16;
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v13;
    *v20 = v13;
    v21 = v13;
    v22 = v18;
    a2 = v17;
    _os_log_impl(&_mh_execute_header, v14, v15, v22, v19, 0xCu);
    sub_1000035B8(v20, &qword_1000A6F40, &qword_10007E690);
  }

  v23 = (*(v9 + 8))(v11, v8);
  a2(v23);
  return [v13 setTaskCompleted];
}

uint64_t sub_10004FFF4()
{
  v1 = type metadata accessor for NDOKeyValueStoreKey();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (((*(**(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper) + 128))(*(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId), *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_100001F3C((v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore), *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore + 24));
  (*(v2 + 104))(v4, enum case for NDOKeyValueStoreKey.nextCheckInEpoch(_:), v1);
  dispatch thunk of NDOKeyValueStoreReader.object(for:)();
  (*(v2 + 8))(v4, v1);
  if (!v18)
  {
    sub_1000035B8(v17, &qword_1000A6FD8, &unk_10007DAC0);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_9;
  }

  v12 = swift_dynamicCast();
  (*(v9 + 56))(v7, v12 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_9:
    sub_1000035B8(v7, &qword_1000A72A0, &qword_10007C010);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  Date.timeIntervalSince1970.getter();
  v14 = v13;
  v15 = v13;
  result = (*(v9 + 8))(v11, v8);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v14 > -9.22337204e18)
  {
    if (v14 < 9.22337204e18)
    {
      return v14;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100050394(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for Logger();
  v14[3] = *(v6 - 8);
  v14[4] = v6;
  __chkstk_darwin(v6);
  v14[2] = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NDOKeyValueStoreKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v1 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper) + 136))(*(v2 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId), *(v2 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId + 8), a1);
  sub_100001F3C((v2 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore), *(v2 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore + 24));
  v15[3] = v4;
  v12 = sub_100027B84(v15);
  (*(v5 + 16))(v12, a1, v4);
  (*(v9 + 104))(v11, enum case for NDOKeyValueStoreKey.nextCheckInEpoch(_:), v8);
  dispatch thunk of NDOKeyValueStoreWriter.setObject(_:for:)();
  (*(v9 + 8))(v11, v8);
  return sub_1000035B8(v15, &qword_1000A6FD8, &unk_10007DAC0);
}

id sub_100050894()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOCheckInScheduler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NDOAction.url.getter()
{
  if (*(v0 + 32) > 6u)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_100050984()
{
  v1 = *v0;
  v2 = 0x6265577472617473;
  v3 = 0x656A655272657375;
  if (v1 != 6)
  {
    v3 = 0x6553646E61707865;
  }

  v4 = 0x437373696D736964;
  if (v1 != 4)
  {
    v4 = 0x6D73694472657375;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x687461506E65706FLL;
  if (v1 != 2)
  {
    v5 = 0x6157656369766564;
  }

  if (*v0)
  {
    v2 = 0x736D417472617473;
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

uint64_t sub_100050AB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100052494(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100050AD8(uint64_t a1)
{
  v2 = sub_10005295C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050B14(uint64_t a1)
{
  v2 = sub_10005295C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050B50(uint64_t a1)
{
  v2 = sub_100052B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050B8C(uint64_t a1)
{
  v2 = sub_100052B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050BC8(uint64_t a1)
{
  v2 = sub_100052B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050C04(uint64_t a1)
{
  v2 = sub_100052B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050C40(uint64_t a1)
{
  v2 = sub_1000529B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050C7C(uint64_t a1)
{
  v2 = sub_1000529B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050CB8(uint64_t a1)
{
  v2 = sub_100052BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050CF4(uint64_t a1)
{
  v2 = sub_100052BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050D30(uint64_t a1)
{
  v2 = sub_100052BFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050D6C(uint64_t a1)
{
  v2 = sub_100052BFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050DA8(uint64_t a1)
{
  v2 = sub_100052C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050DE4(uint64_t a1)
{
  v2 = sub_100052C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050E20(uint64_t a1)
{
  v2 = sub_100052AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050E5C(uint64_t a1)
{
  v2 = sub_100052AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050E98(uint64_t a1)
{
  v2 = sub_100052A04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050ED4(uint64_t a1)
{
  v2 = sub_100052A04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOAction.encode(to:)(void *a1)
{
  v2 = sub_10001A078(&qword_1000A7C08, &qword_10007F310);
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v57 = &v42 - v3;
  v4 = sub_10001A078(&qword_1000A7C10, &qword_10007F318);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v58 = &v42 - v5;
  v6 = sub_10001A078(&qword_1000A7C18, &qword_10007F320);
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v42 - v7;
  v8 = sub_10001A078(&qword_1000A7C20, &qword_10007F328);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = &v42 - v9;
  v50 = sub_10001A078(&qword_1000A7C28, &qword_10007F330);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v42 - v10;
  v47 = sub_10001A078(&qword_1000A7C30, &qword_10007F338);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v42 - v11;
  v45 = sub_10001A078(&qword_1000A7C38, &qword_10007F340);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v14 = &v42 - v13;
  v15 = sub_10001A078(&qword_1000A7C40, &qword_10007F348);
  v43 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v18 = sub_10001A078(&qword_1000A7C48, &qword_10007F350);
  v19 = *(v18 - 8);
  v64 = v18;
  v65 = v19;
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  sub_100001F3C(a1, a1[3]);
  sub_10005295C();
  v22 = v21;
  v23 = v63;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = *(v23 + 32);
  if (v24 > 3)
  {
    if (*(v23 + 32) > 5u)
    {
      v25 = v64;
      if (v24 != 6)
      {
        LOBYTE(v66) = 7;
        sub_1000529B0();
        v41 = v57;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v59 + 8))(v41, v60);
        return (*(v65 + 8))(v22, v25);
      }

      LOBYTE(v66) = 6;
      sub_100052A04();
      v27 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v23[1];
      v66 = *v23;
      v67 = v35;
      sub_100052A58();
      v29 = v62;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v30 = v61;
    }

    else
    {
      v25 = v64;
      if (v24 == 4)
      {
        LOBYTE(v66) = 4;
        sub_100052B00();
        v27 = v51;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v23[1];
        v66 = *v23;
        v67 = v28;
        sub_100052A58();
        v29 = v53;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v30 = v52;
      }

      else
      {
        LOBYTE(v66) = 5;
        sub_100052AAC();
        v27 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v39 = v23[1];
        v66 = *v23;
        v67 = v39;
        sub_100052A58();
        v29 = v56;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v30 = v55;
      }
    }
  }

  else
  {
    if (*(v23 + 32) <= 1u)
    {
      if (*(v23 + 32))
      {
        LOBYTE(v66) = 1;
        sub_100052BFC();
        v36 = v64;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v37 = v23[1];
        v66 = *v23;
        v67 = v37;
        sub_100052A58();
        v38 = v45;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v44 + 8))(v14, v38);
        return (*(v65 + 8))(v21, v36);
      }

      LOBYTE(v66) = 0;
      sub_100052C50();
      v25 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v23[1];
      v66 = *v23;
      v67 = v26;
      sub_100052A58();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v17, v15);
      return (*(v65 + 8))(v21, v25);
    }

    if (v24 == 2)
    {
      LOBYTE(v66) = 2;
      sub_100052BA8();
      v31 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v23[1];
      v66 = *v23;
      v67 = v32;
      sub_100052A58();
      v33 = v47;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v46 + 8))(v12, v33);
      return (*(v65 + 8))(v21, v31);
    }

    LOBYTE(v66) = 3;
    sub_100052B54();
    v27 = v48;
    v25 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = v23[1];
    v66 = *v23;
    v67 = v40;
    sub_100052A58();
    v29 = v50;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v30 = v49;
  }

  (*(v30 + 8))(v27, v29);
  return (*(v65 + 8))(v21, v25);
}

void NDOAction.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (v6 > 3)
  {
    if (*(v1 + 32) > 5u)
    {
      if (v6 != 6)
      {
        Hasher._combine(_:)(7uLL);
        return;
      }

      v7 = 6;
    }

    else if (v6 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  else if (*(v1 + 32) > 1u)
  {
    if (v6 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = v6 != 0;
  }

  Hasher._combine(_:)(v7);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(a1, v5);

  sub_100052328(a1, v4);
}

Swift::Int NDOAction.hashValue.getter()
{
  Hasher.init(_seed:)();
  NDOAction.hash(into:)(v1);
  return Hasher._finalize()();
}

double NDOAction.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  *&result = sub_100052CA4(a2, v6).n128_u64[0];
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

Swift::Int sub_100051A5C(uint64_t a1)
{
  Hasher.init(_seed:)();
  NDOAction.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL sub_100051AB0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s8ndoagent9NDOActionO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7);
}

unint64_t sub_100051B04()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x4C79615079646F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_100051B64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100053ABC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100051B98(uint64_t a1)
{
  v2 = sub_100053A68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051BD4(uint64_t a1)
{
  v2 = sub_100053A68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100051C10(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_10001CEA0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t NDOActionData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = sub_10001A078(&qword_1000A7C58, &qword_10007F358);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_100001F3C(a1, a1[3]);
  sub_100053A68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v11 = v14;
    v17 = v15;
    v16 = 1;
    sub_10001A078(&unk_1000A7960, &qword_10007F360);
    sub_100054C08(&qword_1000A7C60, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v11;
    v16 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void NDOActionData.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(a1, a4);

  sub_100052328(a1, a5);
}

Swift::Int NDOActionData.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(v8, a3);
  sub_100052328(v8, a4);
  return Hasher._finalize()();
}

uint64_t NDOActionData.init(from:)(void *a1)
{
  result = sub_100053BE0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_100052108()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(v5, v3);
  sub_100052328(v5, v2);
  return Hasher._finalize()();
}

void sub_10005219C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(a1, v3);

  sub_100052328(a1, v4);
}

Swift::Int sub_10005222C(uint64_t a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(v6, v4);
  sub_100052328(v6, v3);
  return Hasher._finalize()();
}

uint64_t sub_1000522BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100053BE0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_100052328(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        String.hash(into:)();

        String.hash(into:)();

        v7 ^= Hasher._finalize()();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_100052494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6265577472617473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D417472617473 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x687461506E65706FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6157656369766564 && a2 == 0xEE0079746E617272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437373696D736964 && a2 == 0xEE006F6D6F725063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D73694472657375 && a2 == 0xEB00000000737369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656A655272657375 && a2 == 0xEA00000000007463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6553646E61707865 && a2 == 0xED00006E6F697463)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

BOOL _s8ndoagent9NDOActionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        if (a2[2].i8[0] == 7)
        {
          v12 = vorrq_s8(*a2, a2[1]);
          if (!*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
          {
            return 1;
          }
        }

        return 0;
      }

      if (a2[2].i8[0] != 6)
      {
        return 0;
      }
    }

    else if (v8 == 4)
    {
      if (a2[2].i8[0] != 4)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0] != 5)
    {
      return 0;
    }
  }

  else if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (a2[2].i8[0] != 2)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0] != 3)
    {
      return 0;
    }
  }

  else if (v8)
  {
    if (a2[2].i8[0] != 1)
    {
      return 0;
    }
  }

  else if (a2[2].i8[0])
  {
    return 0;
  }

  v9 = a2->i64[1];
  v10 = a2[1].i64[0];
  v11 = a2[1].i64[1];
  if (!v5)
  {
    if (!v9)
    {
      return (sub_100051C10(v6, v10) & 1) != 0 && (sub_100051C10(v7, v11) & 1) != 0;
    }

    return 0;
  }

  if (!v9 || (v4 != a2->i64[0] || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return (sub_100051C10(v6, v10) & 1) != 0 && (sub_100051C10(v7, v11) & 1) != 0;
}

uint64_t _s8ndoagent13NDOActionDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v10 = a3;
      v11 = a7;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v10;
      a7 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if ((sub_100051C10(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_100051C10(a4, a8);
}

unint64_t sub_10005295C()
{
  result = qword_1000AD790;
  if (!qword_1000AD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD790);
  }

  return result;
}

unint64_t sub_1000529B0()
{
  result = qword_1000AD798;
  if (!qword_1000AD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD798);
  }

  return result;
}

unint64_t sub_100052A04()
{
  result = qword_1000AD7A0;
  if (!qword_1000AD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7A0);
  }

  return result;
}

unint64_t sub_100052A58()
{
  result = qword_1000A7C50;
  if (!qword_1000A7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7C50);
  }

  return result;
}

unint64_t sub_100052AAC()
{
  result = qword_1000AD7A8;
  if (!qword_1000AD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7A8);
  }

  return result;
}

unint64_t sub_100052B00()
{
  result = qword_1000AD7B0;
  if (!qword_1000AD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7B0);
  }

  return result;
}

unint64_t sub_100052B54()
{
  result = qword_1000AD7B8;
  if (!qword_1000AD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7B8);
  }

  return result;
}

unint64_t sub_100052BA8()
{
  result = qword_1000AD7C0;
  if (!qword_1000AD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7C0);
  }

  return result;
}

unint64_t sub_100052BFC()
{
  result = qword_1000AD7C8;
  if (!qword_1000AD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7C8);
  }

  return result;
}

unint64_t sub_100052C50()
{
  result = qword_1000AD7D0;
  if (!qword_1000AD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7D0);
  }

  return result;
}

__n128 sub_100052CA4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v72 = sub_10001A078(&qword_1000A7C80, &qword_100080188);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v81.n128_u64[0] = v56 - v3;
  v4 = sub_10001A078(&qword_1000A7C88, &qword_100080190);
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v80 = v56 - v5;
  v6 = sub_10001A078(&qword_1000A7C90, &qword_100080198);
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v77 = v56 - v7;
  v67 = sub_10001A078(&qword_1000A7C98, &qword_1000801A0);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = v56 - v8;
  v66 = sub_10001A078(&qword_1000A7CA0, &qword_1000801A8);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v76 = v56 - v9;
  v64 = sub_10001A078(&qword_1000A7CA8, &qword_1000801B0);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v75 = v56 - v10;
  v62 = sub_10001A078(&qword_1000A7CB0, &qword_1000801B8);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v12 = v56 - v11;
  v13 = sub_10001A078(&qword_1000A7CB8, &qword_1000801C0);
  v60 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v56 - v14;
  v16 = sub_10001A078(&qword_1000A7CC0, &qword_1000801C8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v56 - v18;
  v20 = a1[3];
  v85 = a1;
  sub_100001F3C(a1, v20);
  sub_10005295C();
  v21 = v82;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    goto LABEL_12;
  }

  v58 = v13;
  v22 = v79;
  v59 = 0;
  v23 = v80;
  v24 = v81.n128_u64[0];
  *&v82 = v17;
  v25 = KeyedDecodingContainer.allKeys.getter();
  if (*(v25 + 16) != 1 || (v26 = *(v25 + 32), v26 == 8))
  {
    v29 = v19;
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    sub_10001A078(&qword_1000A7260, &unk_1000801D0);
    *v32 = &type metadata for NDOAction;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v30);
    swift_willThrow();
    goto LABEL_10;
  }

  if (*(v25 + 32) <= 3u)
  {
    v27 = v59;
    if (*(v25 + 32) <= 1u)
    {
      v81.n128_u64[0] = v19;
      if (!v26)
      {
        v57 = 0;
        LOBYTE(v83) = 0;
        sub_100052C50();
        v28 = v81.n128_u64[0];
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v27)
        {
          (*(v82 + 8))(v28, v16);
LABEL_11:
          swift_unknownObjectRelease();
LABEL_12:
          sub_100001E74(v85);
          return result;
        }

        sub_100054C74();
        v53 = v58;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v60 + 8))(v15, v53);
        (*(v82 + 8))(v28, v16);
        swift_unknownObjectRelease();
        goto LABEL_44;
      }

      LOBYTE(v83) = 1;
      sub_100052BFC();
      v29 = v81.n128_u64[0];
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v27)
      {
        sub_100054C74();
        v54 = v62;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v57 = v26;
        (*(v61 + 8))(v12, v54);
        (*(v82 + 8))(v81.n128_u64[0], v16);
        swift_unknownObjectRelease();
LABEL_44:
        v81 = v84;
        v82 = v83;
        v35 = v78;
        goto LABEL_45;
      }

LABEL_10:
      (*(v82 + 8))(v29, v16);
      goto LABEL_11;
    }

    v57 = *(v25 + 32);
    v34 = v26 == 2;
    v35 = v78;
    if (v34)
    {
      LOBYTE(v83) = 2;
      sub_100052BA8();
      v49 = v75;
      v40 = v27;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v82;
      if (!v40)
      {
        sub_100054C74();
        v41 = v64;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v42 = &v86;
LABEL_22:
        (*(*(v42 - 32) + 8))(v49, v41);
        (*(v38 + 8))(v19, v16);
LABEL_42:
        swift_unknownObjectRelease();
        v55 = v84;
        v82 = v83;
        goto LABEL_43;
      }
    }

    else
    {
      LOBYTE(v83) = 3;
      sub_100052B54();
      v49 = v76;
      v50 = v27;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v82;
      if (!v50)
      {
        sub_100054C74();
        v41 = v66;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v42 = &v87;
        goto LABEL_22;
      }
    }

LABEL_35:
    (*(v38 + 8))(v19, v16);
    goto LABEL_11;
  }

  v57 = *(v25 + 32);
  v56[1] = v25;
  if (v26 <= 5)
  {
    v34 = v26 == 4;
    v35 = v78;
    if (v34)
    {
      LOBYTE(v83) = 4;
      sub_100052B00();
      v36 = v22;
      v37 = v59;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v82;
      if (v37)
      {
        goto LABEL_35;
      }

      sub_100054C74();
      v39 = v67;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v68 + 8))(v36, v39);
    }

    else
    {
      LOBYTE(v83) = 5;
      sub_100052AAC();
      v46 = v77;
      v47 = v59;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v82;
      if (v47)
      {
        goto LABEL_35;
      }

      sub_100054C74();
      v48 = v71;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v70 + 8))(v46, v48);
    }

    (*(v38 + 8))(v19, v16);
    goto LABEL_42;
  }

  v34 = v26 == 6;
  v35 = v78;
  if (v34)
  {
    LOBYTE(v83) = 6;
    sub_100052A04();
    v43 = v59;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v44 = v82;
    if (!v43)
    {
      sub_100054C74();
      v45 = v74;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v73 + 8))(v23, v45);
      (*(v44 + 8))(v19, v16);
      goto LABEL_42;
    }

LABEL_37:
    (*(v82 + 8))(v19, v16);
    goto LABEL_11;
  }

  LOBYTE(v83) = 7;
  sub_1000529B0();
  v51 = v59;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v52 = v82;
  if (v51)
  {
    goto LABEL_37;
  }

  (*(v69 + 8))(v24, v72);
  (*(v52 + 8))(v19, v16);
  swift_unknownObjectRelease();
  v55 = 0uLL;
  v82 = 0u;
LABEL_43:
  v81 = v55;
LABEL_45:
  sub_100001E74(v85);
  result = v81;
  *v35 = v82;
  *(v35 + 16) = result;
  *(v35 + 32) = v57;
  return result;
}

unint64_t sub_100053A68()
{
  result = qword_1000AD7D8[0];
  if (!qword_1000AD7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD7D8);
  }

  return result;
}

uint64_t sub_100053ABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008C3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C79615079646F62 && a2 == 0xEB0000000064616FLL)
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

uint64_t sub_100053BE0(void *a1)
{
  v2 = sub_10001A078(&qword_1000A7C70, &qword_100080180);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100001F3C(a1, a1[3]);
  sub_100053A68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_10001A078(&unk_1000A7960, &qword_10007F360);
  v9 = 1;
  v8 = sub_100054C08(&qword_1000A7C78, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = 2;
  v8 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100001E74(a1);
  return v7;
}

unint64_t sub_100053E74()
{
  result = qword_1000A7C68;
  if (!qword_1000A7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7C68);
  }

  return result;
}

__n128 sub_100053EC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100053EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100053F24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100053F6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100053F98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100053FE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOActionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOActionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100054214()
{
  result = qword_1000ADDE0[0];
  if (!qword_1000ADDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ADDE0);
  }

  return result;
}

unint64_t sub_10005426C()
{
  result = qword_1000ADFF0[0];
  if (!qword_1000ADFF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ADFF0);
  }

  return result;
}

unint64_t sub_1000542C4()
{
  result = qword_1000AE200[0];
  if (!qword_1000AE200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE200);
  }

  return result;
}

unint64_t sub_10005431C()
{
  result = qword_1000AE410[0];
  if (!qword_1000AE410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE410);
  }

  return result;
}

unint64_t sub_100054374()
{
  result = qword_1000AE620[0];
  if (!qword_1000AE620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE620);
  }

  return result;
}

unint64_t sub_1000543CC()
{
  result = qword_1000AE830[0];
  if (!qword_1000AE830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE830);
  }

  return result;
}

unint64_t sub_100054424()
{
  result = qword_1000AEA40[0];
  if (!qword_1000AEA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AEA40);
  }

  return result;
}

unint64_t sub_10005447C()
{
  result = qword_1000AEC50[0];
  if (!qword_1000AEC50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AEC50);
  }

  return result;
}

unint64_t sub_1000544D4()
{
  result = qword_1000AEE60[0];
  if (!qword_1000AEE60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AEE60);
  }

  return result;
}

unint64_t sub_10005452C()
{
  result = qword_1000AEF70;
  if (!qword_1000AEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF70);
  }

  return result;
}

unint64_t sub_100054584()
{
  result = qword_1000AEF78;
  if (!qword_1000AEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF78);
  }

  return result;
}

unint64_t sub_1000545DC()
{
  result = qword_1000AF000;
  if (!qword_1000AF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF000);
  }

  return result;
}

unint64_t sub_100054634()
{
  result = qword_1000AF008[0];
  if (!qword_1000AF008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF008);
  }

  return result;
}

unint64_t sub_10005468C()
{
  result = qword_1000AF090;
  if (!qword_1000AF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF090);
  }

  return result;
}

unint64_t sub_1000546E4()
{
  result = qword_1000AF098[0];
  if (!qword_1000AF098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF098);
  }

  return result;
}

unint64_t sub_10005473C()
{
  result = qword_1000AF120;
  if (!qword_1000AF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF120);
  }

  return result;
}

unint64_t sub_100054794()
{
  result = qword_1000AF128[0];
  if (!qword_1000AF128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF128);
  }

  return result;
}

unint64_t sub_1000547EC()
{
  result = qword_1000AF1B0;
  if (!qword_1000AF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1B0);
  }

  return result;
}

unint64_t sub_100054844()
{
  result = qword_1000AF1B8[0];
  if (!qword_1000AF1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF1B8);
  }

  return result;
}

unint64_t sub_10005489C()
{
  result = qword_1000AF240;
  if (!qword_1000AF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF240);
  }

  return result;
}

unint64_t sub_1000548F4()
{
  result = qword_1000AF248[0];
  if (!qword_1000AF248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF248);
  }

  return result;
}

unint64_t sub_10005494C()
{
  result = qword_1000AF2D0;
  if (!qword_1000AF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2D0);
  }

  return result;
}

unint64_t sub_1000549A4()
{
  result = qword_1000AF2D8[0];
  if (!qword_1000AF2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF2D8);
  }

  return result;
}

unint64_t sub_1000549FC()
{
  result = qword_1000AF360;
  if (!qword_1000AF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF360);
  }

  return result;
}

unint64_t sub_100054A54()
{
  result = qword_1000AF368[0];
  if (!qword_1000AF368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF368);
  }

  return result;
}

unint64_t sub_100054AAC()
{
  result = qword_1000AF3F0;
  if (!qword_1000AF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3F0);
  }

  return result;
}

unint64_t sub_100054B04()
{
  result = qword_1000AF3F8[0];
  if (!qword_1000AF3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF3F8);
  }

  return result;
}

unint64_t sub_100054B5C()
{
  result = qword_1000AF480;
  if (!qword_1000AF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF480);
  }

  return result;
}

unint64_t sub_100054BB4()
{
  result = qword_1000AF488[0];
  if (!qword_1000AF488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF488);
  }

  return result;
}

uint64_t sub_100054C08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&unk_1000A7960, &qword_10007F360);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100054C74()
{
  result = qword_1000A7CC8;
  if (!qword_1000A7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7CC8);
  }

  return result;
}

void NDOItem.action.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v18[6] = *(v1 + 96);
  v18[7] = v3;
  v18[8] = *(v1 + 128);
  v19 = *(v1 + 144);
  v4 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v4;
  v5 = *(v1 + 80);
  v18[4] = *(v1 + 64);
  v18[5] = v5;
  v6 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v6;
  v7 = sub_100038CF0(v18);
  v8 = sub_10000574C(v18);
  v9 = qword_100080FD8[v7];
  v10 = qword_100080FF8[v7];
  v11 = qword_100081018[v7];
  v12 = qword_100081058[v7];
  v13 = *(v8 + qword_100081038[v7]);
  v14 = *(v8 + v11);
  v15 = *(v8 + v10);
  v16 = *(v8 + v9);
  v17 = *(v8 + v12);
  sub_100021230(v16, v15, v14, v13, v17);
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  *(a1 + 24) = v13;
  *(a1 + 32) = v17;
}

uint64_t sub_100054DB8()
{
  v1 = 0x656369766564;
  v2 = 0x64726163616C70;
  if (*v0 != 2)
  {
    v2 = 0x6F6D6F7270;
  }

  if (*v0)
  {
    v1 = 1802398060;
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

uint64_t sub_100054E24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100055B10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100054E4C(uint64_t a1)
{
  v2 = sub_100055FD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054E88(uint64_t a1)
{
  v2 = sub_100055FD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054EC4(uint64_t a1)
{
  v2 = sub_1000561C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054F00(uint64_t a1)
{
  v2 = sub_1000561C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054F3C(uint64_t a1)
{
  v2 = sub_100056174();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054F78(uint64_t a1)
{
  v2 = sub_100056174();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054FB4(uint64_t a1)
{
  v2 = sub_1000560CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054FF0(uint64_t a1)
{
  v2 = sub_1000560CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005502C(uint64_t a1)
{
  v2 = sub_100056024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100055068(uint64_t a1)
{
  v2 = sub_100056024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOItem.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10001A078(&qword_1000A7CD0, &qword_1000801E0);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v43 - v5;
  v6 = sub_10001A078(&qword_1000A7CD8, &qword_1000801E8);
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = &v43 - v7;
  v8 = sub_10001A078(&qword_1000A7CE0, &qword_1000801F0);
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_10001A078(&qword_1000A7CE8, &qword_1000801F8);
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_10001A078(&qword_1000A7CF0, &qword_100080200);
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  sub_100001F3C(a1, a1[3]);
  sub_100055FD0();
  v52 = v16;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *(v2 + 112);
  v65[6] = *(v2 + 96);
  v65[7] = v17;
  v65[8] = *(v2 + 128);
  v66 = *(v2 + 144);
  v18 = *(v2 + 48);
  v65[2] = *(v2 + 32);
  v65[3] = v18;
  v19 = *(v2 + 80);
  v65[4] = *(v2 + 64);
  v65[5] = v19;
  v20 = *(v2 + 16);
  v65[0] = *v2;
  v65[1] = v20;
  v21 = sub_100038CF0(v65);
  v22 = sub_10000574C(v65);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v28 = *(v22 + 80);
      v83 = *(v22 + 64);
      v84 = v28;
      v85 = *(v22 + 96);
      v29 = *(v22 + 16);
      v79 = *v22;
      v80 = v29;
      v30 = *(v22 + 48);
      v81 = *(v22 + 32);
      v82 = v30;
      LOBYTE(v55) = 2;
      sub_1000560CC();
      v31 = v46;
      v26 = v54;
      v27 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v59 = v83;
      v60 = v84;
      LOBYTE(v61) = v85;
      v55 = v79;
      v56 = v80;
      v57 = v81;
      v58 = v82;
      sub_100056120();
      v32 = v48;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v33 = v47;
    }

    else
    {
      v39 = *(v22 + 112);
      v92 = *(v22 + 96);
      v93 = v39;
      v94 = *(v22 + 128);
      v95 = *(v22 + 144);
      v40 = *(v22 + 48);
      v88 = *(v22 + 32);
      v89 = v40;
      v41 = *(v22 + 80);
      v90 = *(v22 + 64);
      v91 = v41;
      v42 = *(v22 + 16);
      v86 = *v22;
      v87 = v42;
      LOBYTE(v55) = 3;
      sub_100056024();
      v31 = v49;
      v26 = v54;
      v27 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v92;
      v62 = v93;
      v63 = v94;
      v64 = v95;
      v57 = v88;
      v58 = v89;
      v59 = v90;
      v60 = v91;
      v55 = v86;
      v56 = v87;
      sub_100056078();
      v32 = v51;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v33 = v50;
    }

    (*(v33 + 8))(v31, v32);
  }

  else
  {
    if (v21)
    {
      v34 = *(v22 + 16);
      v75 = *v22;
      v76 = v34;
      v77 = *(v22 + 32);
      v78 = *(v22 + 48);
      LOBYTE(v55) = 1;
      sub_100056174();
      v35 = v54;
      v36 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v75;
      v56 = v76;
      v57 = v77;
      LOBYTE(v58) = v78;
      sub_1000226E0();
      v37 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v44 + 8))(v10, v37);
      return (*(v53 + 8))(v36, v35);
    }

    v23 = *(v22 + 80);
    v71 = *(v22 + 64);
    v72 = v23;
    v73 = *(v22 + 96);
    v74 = *(v22 + 112);
    v24 = *(v22 + 16);
    v67 = *v22;
    v68 = v24;
    v25 = *(v22 + 48);
    v69 = *(v22 + 32);
    v70 = v25;
    LOBYTE(v55) = 0;
    sub_1000561C8();
    v26 = v54;
    v27 = v52;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v71;
    v60 = v72;
    v61 = v73;
    LOBYTE(v62) = v74;
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v58 = v70;
    sub_10005621C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v43 + 8))(v13, v11);
  }

  return (*(v53 + 8))(v27, v26);
}