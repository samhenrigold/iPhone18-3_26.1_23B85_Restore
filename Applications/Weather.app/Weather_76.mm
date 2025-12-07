unint64_t sub_100810514()
{
  result = qword_100CDBAA0;
  if (!qword_100CDBAA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDBA98, &unk_100A88958);
    v4[0] = sub_1008105CC();
    v4[1] = sub_100006F64(&unk_100CE1690, &qword_100CAF750, &qword_100A57BC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDBAA0);
  }

  return result;
}

unint64_t sub_1008105CC()
{
  result = qword_100CDBAA8;
  if (!qword_100CDBAA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDBAB0, &unk_100A88A00);
    v4[0] = sub_1003325F0();
    v4[1] = sub_100006F64(&qword_100CA53B8, &qword_100CA53C0, &unk_100A2F5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDBAA8);
  }

  return result;
}

uint64_t SearchLocation.init(searchCompletion:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v57 - v6;
  v8 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  v64 = v12 - v13;
  __chkstk_darwin(v14);
  v16 = v57 - v15;
  __chkstk_darwin(v17);
  v19 = v57 - v18;
  *a2 = a1;
  v20 = a1;
  v21 = [v20 title];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  a2[1] = v22;
  a2[2] = v24;
  v25 = [v20 subtitle];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  a2[3] = v26;
  a2[4] = v28;
  v29 = [v20 w_calloutTitle];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  a2[5] = v30;
  a2[6] = v32;
  v65 = 0;
  v66 = 0;
  if (![v20 w_getCoordinate:&v65])
  {

    v53 = type metadata accessor for SearchLocation(0);
    v54 = a2 + *(v53 + 36);
    *v54 = 0;
    *(v54 + 1) = 0;
    v54[16] = 1;
    v55 = *(v53 + 32);
LABEL_9:
    v50 = type metadata accessor for Location();
    v51 = a2 + v55;
    v52 = 1;
    return sub_10001B350(v51, v52, 1, v50);
  }

  v63 = v7;
  v33 = v65;
  v34 = v66;
  v35 = type metadata accessor for SearchLocation(0);
  v36 = a2 + *(v35 + 36);
  *v36 = v33;
  *(v36 + 1) = v34;
  v36[16] = 0;
  v37 = [v20 w_mapItem];
  v38 = [v37 timeZone];

  if (!v38)
  {

LABEL_8:
    v55 = *(v35 + 32);
    goto LABEL_9;
  }

  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v10 + 32))(v19, v16, v8);
  v39 = sub_10081261C([v20 w_mapItem]);
  if (!v40)
  {

    (*(v10 + 8))(v19, v8);
    goto LABEL_8;
  }

  v62 = v39;
  v61 = sub_100811428(v20, v39, v40);
  v58 = *(v35 + 32);
  v59 = v41;
  v57[3] = CLLocationCoordinate2D.id.getter();
  v60 = v42;
  (*(v10 + 16))(v64, v19, v8);
  v43 = v63;
  static WeatherClock.date.getter();
  v44 = type metadata accessor for Date();
  sub_10001B350(v43, 0, 1, v44);
  v45 = [v20 title];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57[1] = v47;
  v57[2] = v46;

  v48 = [v20 subtitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v58;
  Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
  (*(v10 + 8))(v19, v8);
  v50 = type metadata accessor for Location();
  v51 = a2 + v49;
  v52 = 0;
  return sub_10001B350(v51, v52, 1, v50);
}

uint64_t static SearchLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  v80 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v78 = v8 - v7;
  v81 = sub_10022C350(&qword_100CDBAD8, &qword_100A88A58);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v84 = &v76 - v10;
  v11 = sub_10022C350(&qword_100CDBAE0, &qword_100A88A60);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003C38();
  v79 = v13 - v14;
  __chkstk_darwin(v15);
  v82 = &v76 - v16;
  __chkstk_darwin(v17);
  v83 = &v76 - v18;
  v19 = type metadata accessor for Location();
  sub_1000037C4();
  v85 = v20;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  v29 = sub_10022C350(&qword_100CAEE78, &qword_100A3E918);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &v76 - v31;
  v33 = *a1;
  v34 = *a2;
  if (*a1)
  {
    if (!v34)
    {
      goto LABEL_41;
    }

    v77 = v4;
    sub_10000A42C();
    v35 = v34;
    v36 = v33;
    v37 = static NSObject.== infix(_:_:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v77 = v4;
    if (v34)
    {
LABEL_41:
      v66 = 0;
      return v66 & 1;
    }
  }

  v38 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_41;
  }

  v39 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_41;
  }

  v40 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_41;
  }

  v76 = type metadata accessor for SearchLocation(0);
  v41 = *(v76 + 32);
  v42 = *(v29 + 48);
  sub_1005C1F54(a1 + v41, v32, &qword_100CA65D8, &unk_100A3D9D0);
  sub_1005C1F54(a2 + v41, &v32[v42], &qword_100CA65D8, &unk_100A3D9D0);
  sub_1000038B4(v32, 1, v19);
  if (v38)
  {
    sub_1000038B4(&v32[v42], 1, v19);
    if (v38)
    {
      sub_1000180EC(v32, &qword_100CA65D8, &unk_100A3D9D0);
      goto LABEL_31;
    }

LABEL_29:
    v44 = &qword_100CAEE78;
    v45 = &qword_100A3E918;
    v46 = v32;
LABEL_40:
    sub_1000180EC(v46, v44, v45);
    goto LABEL_41;
  }

  sub_1005C1F54(v32, v28, &qword_100CA65D8, &unk_100A3D9D0);
  sub_1000038B4(&v32[v42], 1, v19);
  if (v43)
  {
    (*(v85 + 8))(v28, v19);
    goto LABEL_29;
  }

  v47 = v85;
  (*(v85 + 32))(v24, &v32[v42], v19);
  sub_10001F920();
  sub_100812BA8(v48, v49, &protocol conformance descriptor for Location);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v47 + 8);
  v51(v24, v19);
  v51(v28, v19);
  sub_1000180EC(v32, &qword_100CA65D8, &unk_100A3D9D0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_31:
  v52 = v76;
  sub_10004EB70(a1 + *(v76 + 36));
  v53 = v83;
  LocationCoordinate.init(_:)();
  sub_10004EB70(a2 + *(v52 + 36));
  v54 = v82;
  LocationCoordinate.init(_:)();
  v55 = *(v81 + 48);
  v56 = v84;
  sub_100016AFC();
  sub_1005C1F54(v57, v58, v59, v60);
  sub_100016AFC();
  sub_1005C1F54(v61, v62, v63, v64);
  v65 = v77;
  sub_1000038B4(v56, 1, v77);
  if (!v38)
  {
    v67 = v79;
    sub_1005C1F54(v56, v79, &qword_100CDBAE0, &qword_100A88A60);
    sub_1000038B4(v56 + v55, 1, v65);
    if (!v68)
    {
      v70 = v80;
      v71 = v56 + v55;
      v72 = v78;
      (*(v80 + 32))(v78, v71, v65);
      sub_100009034();
      sub_100812BA8(v73, v74, &protocol conformance descriptor for LocationCoordinate);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = *(v70 + 8);
      v75(v72, v65);
      sub_1000180EC(v54, &qword_100CDBAE0, &qword_100A88A60);
      sub_1000180EC(v53, &qword_100CDBAE0, &qword_100A88A60);
      v75(v67, v65);
      sub_1000180EC(v56, &qword_100CDBAE0, &qword_100A88A60);
      return v66 & 1;
    }

    sub_10001775C(v54);
    sub_10001775C(v53);
    (*(v80 + 8))(v67, v65);
    goto LABEL_39;
  }

  sub_10001775C(v54);
  sub_10001775C(v53);
  sub_1000038B4(v56 + v55, 1, v65);
  if (!v38)
  {
LABEL_39:
    v44 = &qword_100CDBAD8;
    v45 = &qword_100A88A58;
    v46 = v56;
    goto LABEL_40;
  }

  sub_1000180EC(v56, &qword_100CDBAE0, &qword_100A88A60);
  v66 = 1;
  return v66 & 1;
}

uint64_t SearchLocation.init(searchCompletion:title:subtitle:calloutTitle:location:coordinate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v14 = type metadata accessor for SearchLocation(0);
  result = sub_1003541A8(a8, a9 + *(v14 + 32));
  v16 = a9 + *(v14 + 36);
  *v16 = a10;
  *(v16 + 1) = a11;
  v16[16] = a12 & 1;
  return result;
}

id SearchLocation.searchCompletion.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_100811428(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 w_mapItem];
  v7 = [v6 wc_weatherDisplayName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == a2 && v10 == a3)
  {

    return 0;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 0;
  }

  v13 = [a1 w_mapItem];
  v14 = [v13 wc_weatherDisplayName];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v15;
}

uint64_t SearchLocation.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v2 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3B030;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100ADFDC0;
  v7 = *v1;
  v8 = sub_10022C350(&qword_100CDBAE8, &qword_100A88A68);
  *(inited + 48) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v9 = *(v1 + 16);
  *(inited + 96) = *(v1 + 8);
  *(inited + 104) = v9;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x656C746974627573;
  *(inited + 136) = 0xE800000000000000;
  v10 = *(v1 + 32);
  *(inited + 144) = *(v1 + 24);
  *(inited + 152) = v10;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "calloutTitle");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v11 = *(v1 + 48);
  *(inited + 192) = *(v1 + 40);
  *(inited + 200) = v11;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6E6F697461636F6CLL;
  *(inited + 232) = 0xE800000000000000;
  *(inited + 264) = sub_10022C350(&qword_100CA6078, &unk_100A30870);
  v12 = type metadata accessor for SearchLocation(0);
  sub_1005C1F54(v1 + *(v12 + 32), v5, &qword_100CA65D8, &unk_100A3D9D0);
  v13 = type metadata accessor for Location();
  sub_1000038B4(v5, 1, v13);
  if (v14)
  {
    v15 = v7;

    sub_1000180EC(v5, &qword_100CA65D8, &unk_100A3D9D0);
    v19 = 0;
    v21 = 0;
  }

  else
  {
    sub_10001F920();
    sub_100812BA8(v16, v17, &protocol conformance descriptor for Location);
    v18 = v7;

    v19 = ShortDescribable.description.getter();
    v21 = v20;
    (*(*(v13 - 8) + 8))(v5, v13);
  }

  *(inited + 240) = v19;
  *(inited + 248) = v21;
  Dictionary.init(dictionaryLiteral:)();
  v22 = sub_10022C350(&qword_100CDBAF0, &qword_100A88A70);
  v23 = v25;
  v25[3] = v22;
  v23[4] = sub_10081268C();
  sub_100042FB0(v23);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100811888(uint64_t a1)
{
  sub_100812BA8(&qword_100CDBC18, type metadata accessor for SearchLocation, protocol conformance descriptor for SearchLocation);

  return ShortDescribable.description.getter();
}

uint64_t SearchLocation.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  v40 = v4;
  v41 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v39 = v6 - v5;
  v7 = sub_10022C350(&qword_100CDBAE0, &qword_100A88A60);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003C38();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Location();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v38 - v24;
  v26 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    v27 = v26;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v28 = type metadata accessor for SearchLocation(0);
  sub_1005C1F54(v2 + *(v28 + 32), v25, &qword_100CA65D8, &unk_100A3D9D0);
  sub_1000038B4(v25, 1, v15);
  if (v29)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v17 + 32))(v21, v25, v15);
    Hasher._combine(_:)(1u);
    sub_10001F920();
    sub_100812BA8(v30, v31, &protocol conformance descriptor for Location);
    dispatch thunk of Hashable.hash(into:)();
    (*(v17 + 8))(v21, v15);
  }

  sub_10004EB70(v2 + *(v28 + 36));
  LocationCoordinate.init(_:)();
  sub_1005C1F54(v14, v11, &qword_100CDBAE0, &qword_100A88A60);
  v32 = v41;
  sub_1000038B4(v11, 1, v41);
  if (v29)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v34 = v39;
    v33 = v40;
    (*(v40 + 32))(v39, v11, v32);
    Hasher._combine(_:)(1u);
    sub_100009034();
    sub_100812BA8(v35, v36, &protocol conformance descriptor for LocationCoordinate);
    dispatch thunk of Hashable.hash(into:)();
    (*(v33 + 8))(v34, v32);
  }

  return sub_1000180EC(v14, &qword_100CDBAE0, &qword_100A88A60);
}

Swift::Int SearchLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  SearchLocation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100811D14(uint64_t a1)
{
  Hasher.init(_seed:)();
  SearchLocation.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t SearchLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v25 = sub_10022C350(&qword_100CDBB08, &qword_100A88A78);
  sub_1000037C4();
  v8 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v26 = type metadata accessor for SearchLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = (v14 - v13);
  v16 = a1[3];
  v27 = a1;
  sub_1000161C0(a1, v16);
  sub_1008126F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(v27);
  }

  *v15 = 0;
  LOBYTE(v28) = 0;
  sub_100075070();
  v15[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[2] = v17;
  LOBYTE(v28) = 1;
  sub_100075070();
  v15[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[4] = v18;
  LOBYTE(v28) = 2;
  sub_100075070();
  v15[5] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[6] = v19;
  LOBYTE(v28) = 4;
  sub_100812804(&qword_100CDBB18, &qword_100CAF9E0, &protocol conformance descriptor for Location);
  sub_100075070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v26;
  sub_1003541A8(v6, v15 + *(v26 + 32));
  sub_10022C350(&qword_100CD6698, &qword_100A7F3B0);
  v30 = 5;
  sub_100812880(&qword_100CDBB20, &qword_100CD3020, &protocol conformance descriptor for CLLocationCoordinate2D);
  sub_100075070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v11, v25);
  v21 = v29;
  v22 = v15 + *(v20 + 36);
  *v22 = v28;
  v22[16] = v21;
  sub_100812744(v15, v24);
  sub_100006F14(v27);
  return sub_1008127A8(v15);
}

uint64_t SearchLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDBB28, &qword_100A88A80);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_1008126F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v12 = v3[2];
  LOBYTE(v22) = 0;
  sub_100004BB8(v11, v12);
  if (!v2)
  {
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v22) = 1;
    sub_100004BB8(v13, v14);
    v15 = v3[5];
    v16 = v3[6];
    LOBYTE(v22) = 2;
    sub_100004BB8(v15, v16);
    v17 = type metadata accessor for SearchLocation(0);
    LOBYTE(v22) = 4;
    sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
    sub_100812804(&qword_100CDBB30, &qword_100CAFA08, &protocol conformance descriptor for Location);
    sub_100016AFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v3 + *(v17 + 36);
    v19 = v18[16];
    v22 = *v18;
    v23 = v19;
    v21[15] = 5;
    sub_10022C350(&qword_100CD6698, &qword_100A7F3B0);
    sub_100812880(&qword_100CDBB38, &qword_100CD3040, &protocol conformance descriptor for CLLocationCoordinate2D);
    sub_100016AFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_100812444(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C452D0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1008124B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100812444(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1008124E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100214874(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10081251C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100812490(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100812544(uint64_t a1)
{
  v2 = sub_1008126F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100812580(uint64_t a1)
{
  v2 = sub_1008126F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081261C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10081268C()
{
  result = qword_100CDBAF8;
  if (!qword_100CDBAF8)
  {
    v3 = sub_10022E824(&qword_100CDBAF0, &qword_100A88A70);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CDBAF8);
  }

  return result;
}

unint64_t sub_1008126F0()
{
  result = qword_100CDBB10;
  if (!qword_100CDBB10)
  {
    result = swift_getWitnessTable(byte_100A88CF8, &type metadata for SearchLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBB10);
  }

  return result;
}

uint64_t sub_100812744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008127A8(uint64_t a1)
{
  v2 = type metadata accessor for SearchLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100812804(unint64_t *a1, unint64_t *a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA65D8, &unk_100A3D9D0);
    sub_10001F920();
    v8 = sub_100812BA8(a2, v7, a3);
    result = sub_100069A94(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100812880(unint64_t *a1, unint64_t *a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CD6698, &qword_100A7F3B0);
    v7 = sub_100812BA8(a2, type metadata accessor for CLLocationCoordinate2D, a3);
    result = sub_100069A94(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100812AA4()
{
  result = qword_100CDBC00;
  if (!qword_100CDBC00)
  {
    result = swift_getWitnessTable("1(\x1B", &type metadata for SearchLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBC00);
  }

  return result;
}

unint64_t sub_100812AFC()
{
  result = qword_100CDBC08;
  if (!qword_100CDBC08)
  {
    result = swift_getWitnessTable(byte_100A88C08, &type metadata for SearchLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBC08);
  }

  return result;
}

unint64_t sub_100812B54()
{
  result = qword_100CDBC10;
  if (!qword_100CDBC10)
  {
    result = swift_getWitnessTable(byte_100A88C30, &type metadata for SearchLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBC10);
  }

  return result;
}

uint64_t sub_100812BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100812C20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100812CBC(void *a1)
{
  v2 = sub_10022C350(&qword_100CDBCC8, &qword_100A88E80);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_100813384();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_10001F938();
  sub_1008134A0(v8, v9, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_100812E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v22 = v5;
  __chkstk_darwin(v6);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CDBCB8, &qword_100A88E78);
  sub_1000037C4();
  v23 = v9;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100813384();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v22;
    v17 = v24;
    sub_10001F938();
    sub_1008134A0(v18, v19, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v12, v8);
    (*(v16 + 32))(v15, v25, v4);
    sub_1008133D8(v15, v17);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10081307C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100812C20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1008130A8(uint64_t a1)
{
  v2 = sub_100813384();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008130E4(uint64_t a1)
{
  v2 = sub_100813384();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100813154@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0x54746E6572727563;
  *(inited + 40) = 0xEB00000000656D69;
  v4 = type metadata accessor for Date();
  *(inited + 72) = v4;
  v5 = sub_100042FB0((inited + 48));
  (*(*(v4 - 8) + 16))(v5, v1, v4);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CDBCD0, &qword_100A88E88);
  a1[4] = sub_10081343C();
  sub_100042FB0(a1);
  type metadata accessor for TimeState(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1008132A0(uint64_t a1)
{
  sub_1008134A0(&qword_100CDBCE0, type metadata accessor for TimeState, byte_100A88DCC);

  return ShortDescribable.description.getter();
}

unint64_t sub_100813384()
{
  result = qword_100CDBCC0;
  if (!qword_100CDBCC0)
  {
    result = swift_getWitnessTable(byte_100A88F54, &type metadata for TimeState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBCC0);
  }

  return result;
}

uint64_t sub_1008133D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10081343C()
{
  result = qword_100CDBCD8;
  if (!qword_100CDBCD8)
  {
    v3 = sub_10022E824(&qword_100CDBCD0, &qword_100A88E88);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CDBCD8);
  }

  return result;
}

uint64_t sub_1008134A0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for TimeState.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100813598()
{
  result = qword_100CDBCE8;
  if (!qword_100CDBCE8)
  {
    result = swift_getWitnessTable(byte_100A88F2C, &type metadata for TimeState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBCE8);
  }

  return result;
}

unint64_t sub_1008135F0()
{
  result = qword_100CDBCF0;
  if (!qword_100CDBCF0)
  {
    result = swift_getWitnessTable("E*\x1B", &type metadata for TimeState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBCF0);
  }

  return result;
}

unint64_t sub_100813648()
{
  result = qword_100CDBCF8;
  if (!qword_100CDBCF8)
  {
    result = swift_getWitnessTable("\r)\x1B", &type metadata for TimeState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBCF8);
  }

  return result;
}

uint64_t sub_10081369C@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CDBD08, &qword_100A89048);
  a1[4] = sub_1008137E0();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10081374C(uint64_t a1)
{
  sub_100813844();

  return ShortDescribable.description.getter();
}

unint64_t sub_10081378C()
{
  result = qword_100CDBD00;
  if (!qword_100CDBD00)
  {
    result = swift_getWitnessTable("!(\x1B", &type metadata for LocationViewState, v0, v1);
    atomic_store(result, &qword_100CDBD00);
  }

  return result;
}

unint64_t sub_1008137E0()
{
  result = qword_100CDBD10;
  if (!qword_100CDBD10)
  {
    v3 = sub_10022E824(&qword_100CDBD08, &qword_100A89048);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CDBD10);
  }

  return result;
}

unint64_t sub_100813844()
{
  result = qword_100CDBD18;
  if (!qword_100CDBD18)
  {
    result = swift_getWitnessTable(byte_100A88FD8, &type metadata for LocationViewState, v0, v1);
    atomic_store(result, &qword_100CDBD18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100813974(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayKind();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  switch(sub_1004CA0C4(a1, a2))
  {
    case 1u:
      if (qword_100CA2870 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90E48;
      goto LABEL_50;
    case 2u:
      sub_10000685C();
      sub_100003B48();
      v44 = 32;
      goto LABEL_62;
    case 3u:
      sub_10000685C();
      sub_100003B48();
      v44 = 36;
      goto LABEL_62;
    case 4u:
      if (qword_100CA2878 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90E58;
      goto LABEL_50;
    case 5u:
      if (qword_100CA2880 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90E68;
      goto LABEL_50;
    case 6u:
      sub_10000685C();
      sub_100003B48();
      v44 = 42;
      goto LABEL_62;
    case 7u:
      if (qword_100CA2888 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90E78;
      goto LABEL_50;
    case 8u:
      if (qword_100CA2890 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90E88;
      goto LABEL_50;
    case 9u:
      if (qword_100CA2898 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90E98;
      goto LABEL_50;
    case 0xAu:
      sub_100003B48();
      v45 = 118;
      goto LABEL_64;
    case 0xBu:
      if (qword_100CA28A0 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90EA8;
      goto LABEL_50;
    case 0xCu:
      if (qword_100CA28A8 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90EB8;
      goto LABEL_50;
    case 0xDu:
      if (qword_100CA28B0 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90EC8;
      goto LABEL_50;
    case 0xEu:
      if (qword_100CA28B8 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90ED8;
      goto LABEL_50;
    case 0xFu:
      v41 = sub_10000FA34();
      v42(v41);
      v12 = 15;
      goto LABEL_53;
    case 0x10u:
      v25 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_100003A9C();
      (*(v26 + 104))(v7, v25);
      v27 = sub_10000FA34();
      v28(v27);
      v12 = 16;
      goto LABEL_53;
    case 0x11u:
      v37 = enum case for WeatherMapPrecipitationOverlayKind.radar(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_100003A9C();
      (*(v38 + 104))(v7, v37);
      v39 = sub_10000FA34();
      v40(v39);
      v12 = 17;
      goto LABEL_53;
    case 0x12u:
      v14 = sub_10000FA34();
      v15(v14);
      v12 = 18;
      goto LABEL_53;
    case 0x13u:
      v29 = sub_10000FA34();
      v30(v29);
      v12 = 19;
LABEL_53:
      v35 = v7;
      v36 = 1;
      goto LABEL_54;
    case 0x14u:
      v10 = sub_10000FA34();
      v11(v10);
      v12 = 20;
      goto LABEL_43;
    case 0x15u:
      v31 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_100003A9C();
      (*(v32 + 104))(v7, v31);
      v33 = sub_10000FA34();
      v34(v33);
      v12 = 21;
      goto LABEL_43;
    case 0x16u:
      v16 = sub_10000FA34();
      v17(v16);
      v12 = 22;
      goto LABEL_43;
    case 0x17u:
      v18 = sub_10000FA34();
      v19(v18);
      v12 = 23;
LABEL_43:
      v35 = v7;
      v36 = 0;
LABEL_54:
      v13 = sub_10099733C(v12, v35, v36);
      (*(v5 + 8))(v7, v4);
      goto LABEL_55;
    case 0x18u:
      if (qword_100CA28C0 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90EE8;
LABEL_50:
      v13 = *v9;

      goto LABEL_55;
    case 0x19u:
      sub_10000685C();
      sub_100003B48();
      v44 = 110;
      goto LABEL_62;
    case 0x1Au:
      sub_100003B48();
      v45 = 112;
LABEL_64:
      v46 = v45;
      goto LABEL_65;
    case 0x1Bu:
      sub_100997704(v8);
      v13 = 27;
      goto LABEL_55;
    case 0x1Cu:
      sub_1009979E0(v8);
      v13 = 28;
      goto LABEL_55;
    case 0x1Du:
      if (qword_100CA2788 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000703C(v20, qword_100D90CF0);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v47 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100078694(a1, a2, &v47);
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to find PerformanceTest with name: %s", v23, 0xCu);
        sub_100006F14(v24);
      }

      v13 = 0;
LABEL_55:
      result = v13;
      break;
    default:
      sub_10000685C();
      sub_100003B48();
      v44 = 30;
LABEL_62:
      v46 = v44;
LABEL_65:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1008141BC()
{
  result = sub_100814D80(sub_100814200, 0);
  byte_100D90E48 = 1;
  qword_100D90E50 = result;
  return result;
}

uint64_t sub_100814200(double a1, double a2, double a3, double a4)
{
  v4 = a4 + -240.0;
  v5 = (a4 + -240.0) * 3.0;
  sub_10022C350(&qword_100CCD900, &unk_100A6E5E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2D320;
  *(v6 + 56) = &type metadata for Down;
  *(v6 + 64) = &off_100C4F728;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  *(v7 + 16) = 1;
  *(v7 + 24) = xmmword_100A89070;
  *(v7 + 40) = 0x4072C00000000000;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v6 + 96) = &type metadata for Up;
  *(v6 + 104) = &off_100C52C20;
  v8 = swift_allocObject();
  *(v6 + 72) = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = xmmword_100A89070;
  *(v8 + 40) = 0x4072C00000000000;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  return v6;
}

uint64_t sub_100814310()
{
  result = sub_10081433C();
  byte_100D90E58 = 4;
  qword_100D90E60 = result;
  return result;
}

uint64_t sub_10081433C()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v9[15];
  *v2 = 2;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v0 + 20)) = 0;
  sub_100814574();
  v5 = v4;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A30470;
  *(v6 + 56) = &type metadata for Mica;
  *(v6 + 64) = &off_100C63A98;
  *(v6 + 32) = 0;
  *(v6 + 96) = &type metadata for Delay;
  *(v6 + 104) = &off_100C500F8;
  *(v6 + 72) = 0x3FF0000000000000;
  *(v6 + 136) = &type metadata for UpdateWeather;
  *(v6 + 144) = &off_100C7B258;
  *(v6 + 112) = v3;
  *(v6 + 176) = &type metadata for Delay;
  *(v6 + 184) = &off_100C500F8;
  *(v6 + 152) = 0x3FF0000000000000;
  *(v6 + 216) = v0;
  *(v6 + 224) = &off_100C5FB58;
  v7 = sub_100042FB0((v6 + 192));
  sub_100815D68(v2, v7, type metadata accessor for Navigate);
  *(v6 + 256) = &type metadata for Delay;
  *(v6 + 264) = &off_100C500F8;
  *(v6 + 232) = 0x3FF0000000000000;
  *(v6 + 296) = &type metadata for Sidebar;
  *(v6 + 304) = &off_100C700F0;
  *(v6 + 272) = 1;
  *(v6 + 336) = &type metadata for Delay;
  *(v6 + 344) = &off_100C500F8;
  *(v6 + 312) = 0x3FF0000000000000;
  *(v6 + 376) = &type metadata for Measure;
  *(v6 + 384) = &off_100C4E718;
  *(v6 + 352) = v5;
  *(v6 + 416) = &type metadata for Mica;
  *(v6 + 424) = &off_100C63A98;
  *(v6 + 392) = 1;
  sub_100639624(v2, type metadata accessor for Navigate);
  return v6;
}

double sub_100814574()
{
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100A2D320;
  *(v0 + 56) = &type metadata for Swipe;
  *(v0 + 64) = &off_100C5E1A0;
  *(v0 + 32) = sub_100815DC4;
  *(v0 + 40) = 0;
  *(v0 + 96) = &type metadata for Delay;
  *(v0 + 104) = &off_100C500F8;
  *(v0 + 72) = 0x3FF0000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2D320;
  *(v1 + 56) = &type metadata for Swipe;
  *(v1 + 64) = &off_100C5E1A0;
  *(v1 + 32) = sub_1008146F8;
  *(v1 + 40) = 0;
  *(v1 + 96) = &type metadata for Delay;
  *(v1 + 104) = &off_100C500F8;
  *(v1 + 72) = 0x3FF0000000000000;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A2D320;
  *(v2 + 56) = &type metadata for Swipe;
  *(v2 + 64) = &off_100C5E1A0;
  *(v2 + 32) = sub_100815DC4;
  *(v2 + 40) = 0;
  *(v2 + 96) = &type metadata for Delay;
  *(v2 + 104) = &off_100C500F8;
  *(v2 + 72) = 0x3FF0000000000000;
  v3 = swift_allocObject();
  *&result = 3;
  *(v3 + 16) = xmmword_100A3BBA0;
  *(v3 + 56) = &type metadata for Repeat;
  *(v3 + 64) = &off_100C6E4D8;
  *(v3 + 32) = 2;
  *(v3 + 40) = v0;
  *(v3 + 96) = &type metadata for Repeat;
  *(v3 + 104) = &off_100C6E4D8;
  *(v3 + 72) = 4;
  *(v3 + 80) = v1;
  *(v3 + 136) = &type metadata for Repeat;
  *(v3 + 144) = &off_100C6E4D8;
  *(v3 + 112) = 2;
  *(v3 + 120) = v2;
  return result;
}

uint64_t sub_100814710(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v12 = sub_10022C350(&qword_100CCD908, &unk_100A890B0);
  v13 = sub_100019478(v12);
  *(v13 + 16) = xmmword_100A2C3F0;
  *(v13 + 56) = a1;
  *(v13 + 64) = a2;
  v14 = sub_100019478(&unk_100C6F268);
  *(v13 + 32) = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = a7;
  *(v14 + 48) = a6;
  *(v14 + 56) = 1;
  *(v14 + 64) = 0x3FF0000000000000;
  return v13;
}

uint64_t sub_1008147A8(double a1)
{
  result = sub_1008147D4(a1);
  byte_100D90E68 = 5;
  qword_100D90E70 = result;
  return result;
}

uint64_t sub_1008147D4(double a1)
{
  v1 = type metadata accessor for DispatchAction(0);
  __chkstk_darwin(v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v4 = v10[15];
  static Location.cupertino.getter();
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction(0);
  swift_storeEnumTagMultiPayload();
  v3[*(v1 + 20)] = 0;
  v6 = sub_100814A28(v5);
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A30470;
  *(v7 + 56) = &type metadata for Mica;
  *(v7 + 64) = &off_100C63A98;
  *(v7 + 32) = 0;
  *(v7 + 96) = &type metadata for Delay;
  *(v7 + 104) = &off_100C500F8;
  *(v7 + 72) = 0x3FF0000000000000;
  *(v7 + 136) = &type metadata for UpdateWeather;
  *(v7 + 144) = &off_100C7B258;
  *(v7 + 112) = v4;
  *(v7 + 176) = &type metadata for Delay;
  *(v7 + 184) = &off_100C500F8;
  *(v7 + 152) = 0x3FF0000000000000;
  *(v7 + 216) = v1;
  *(v7 + 224) = &off_100C798F0;
  v8 = sub_100042FB0((v7 + 192));
  sub_100815D68(v3, v8, type metadata accessor for DispatchAction);
  *(v7 + 256) = &type metadata for Delay;
  *(v7 + 264) = &off_100C500F8;
  *(v7 + 232) = 0x3FF0000000000000;
  *(v7 + 296) = &type metadata for Sidebar;
  *(v7 + 304) = &off_100C700F0;
  *(v7 + 272) = 0;
  *(v7 + 336) = &type metadata for Delay;
  *(v7 + 344) = &off_100C500F8;
  *(v7 + 312) = 0x4008000000000000;
  *(v7 + 376) = &type metadata for Measure;
  *(v7 + 384) = &off_100C4E718;
  *(v7 + 352) = v6;
  *(v7 + 416) = &type metadata for Mica;
  *(v7 + 424) = &off_100C63A98;
  *(v7 + 392) = 1;
  sub_100639624(v3, type metadata accessor for DispatchAction);
  return v7;
}

uint64_t sub_100814A28(double a1)
{
  v1 = type metadata accessor for DispatchAction(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Location.newYork.getter();
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction(0);
  swift_storeEnumTagMultiPayload();
  v3[*(v1 + 20)] = 0;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2D320;
  *(v4 + 56) = v1;
  *(v4 + 64) = &off_100C798F0;
  v5 = sub_100042FB0((v4 + 32));
  sub_100815D68(v3, v5, type metadata accessor for DispatchAction);
  *(v4 + 96) = &type metadata for Delay;
  *(v4 + 104) = &off_100C500F8;
  *(v4 + 72) = 0x4008000000000000;
  sub_100639624(v3, type metadata accessor for DispatchAction);
  return v4;
}

void sub_100814B70()
{
  sub_100814B9C();
  byte_100D90E78 = 7;
  qword_100D90E80 = v0;
}

double sub_100814B9C()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100A2D320;
  *(v0 + 56) = &type metadata for Rotate;
  *(v0 + 64) = &off_100C601A8;
  *(v0 + 32) = 3;
  *(v0 + 96) = &type metadata for Delay;
  *(v0 + 104) = &off_100C500F8;
  *(v0 + 72) = 0x3FF0000000000000;
  v1 = swift_allocObject();
  *&result = 8;
  *(v1 + 16) = xmmword_100A3ECD0;
  *(v1 + 56) = &type metadata for Mica;
  *(v1 + 64) = &off_100C63A98;
  *(v1 + 32) = 0;
  *(v1 + 96) = &type metadata for Delay;
  *(v1 + 104) = &off_100C500F8;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 136) = &type metadata for UpdateWeather;
  *(v1 + 144) = &off_100C7B258;
  *(v1 + 112) = v3;
  *(v1 + 176) = &type metadata for Delay;
  *(v1 + 184) = &off_100C500F8;
  *(v1 + 152) = 0x3FF0000000000000;
  *(v1 + 216) = &type metadata for Sidebar;
  *(v1 + 224) = &off_100C700F0;
  *(v1 + 192) = 1;
  *(v1 + 256) = &type metadata for Delay;
  *(v1 + 264) = &off_100C500F8;
  *(v1 + 232) = 0x3FF0000000000000;
  *(v1 + 296) = &type metadata for Measure;
  *(v1 + 304) = &off_100C4E718;
  *(v1 + 272) = v0;
  *(v1 + 336) = &type metadata for Mica;
  *(v1 + 344) = &off_100C63A98;
  *(v1 + 312) = 1;
  return result;
}

uint64_t sub_100814D3C()
{
  result = sub_100814D80(sub_100814FD8, 1);
  byte_100D90E88 = 8;
  qword_100D90E90 = result;
  return result;
}

uint64_t sub_100814D80(uint64_t a1, int a2)
{
  v14 = a2;
  v3 = type metadata accessor for Navigate(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    sub_10000904C(&qword_100CA2238);
  }

  SettingReader.read<A>(_:)();

  v7 = v15;
  *v6 = 2;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v3 + 20)) = 0;
  v8 = sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v9 = sub_100019478(v8);
  *(v9 + 16) = xmmword_100A2C3F0;
  *(v9 + 56) = &type metadata for Scroll;
  *(v9 + 64) = &off_100C53AA8;
  *(v9 + 32) = a1;
  *(v9 + 40) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A30470;
  *(v10 + 56) = &type metadata for Mica;
  *(v10 + 64) = &off_100C63A98;
  *(v10 + 32) = 0;
  *(v10 + 96) = &type metadata for Delay;
  *(v10 + 104) = &off_100C500F8;
  *(v10 + 72) = 0x3FF0000000000000;
  *(v10 + 136) = &type metadata for UpdateWeather;
  *(v10 + 144) = &off_100C7B258;
  *(v10 + 112) = v7;
  *(v10 + 176) = &type metadata for Delay;
  *(v10 + 184) = &off_100C500F8;
  *(v10 + 152) = 0x3FF0000000000000;
  *(v10 + 216) = v3;
  *(v10 + 224) = &off_100C5FB58;
  v11 = sub_100042FB0((v10 + 192));
  sub_100815D68(v6, v11, type metadata accessor for Navigate);
  *(v10 + 256) = &type metadata for Delay;
  *(v10 + 264) = &off_100C500F8;
  *(v10 + 232) = 0x3FF0000000000000;
  *(v10 + 296) = &type metadata for Sidebar;
  *(v10 + 304) = &off_100C700F0;
  *(v10 + 272) = v14;
  *(v10 + 336) = &type metadata for Delay;
  *(v10 + 344) = &off_100C500F8;
  *(v10 + 312) = 0x3FF0000000000000;
  *(v10 + 376) = &type metadata for Measure;
  *(v10 + 384) = &off_100C4E718;
  *(v10 + 352) = v9;
  *(v10 + 416) = &type metadata for Mica;
  *(v10 + 424) = &off_100C63A98;
  *(v10 + 392) = 1;
  sub_100639624(v6, type metadata accessor for Navigate);
  return v10;
}

uint64_t sub_100814FD8(double a1, double a2, double a3, double a4)
{
  v12 = CGRectInset(*&a1, 10.0, 90.0);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  sub_10022C350(&qword_100CCD900, &unk_100A6E5E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2D320;
  *(v8 + 56) = &type metadata for Down;
  *(v8 + 64) = &off_100C4F728;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = 1;
  *(v9 + 24) = x;
  *(v9 + 32) = y;
  *(v9 + 40) = width;
  *(v9 + 48) = height;
  *(v9 + 56) = height;
  *(v8 + 96) = &type metadata for Up;
  *(v8 + 104) = &off_100C52C20;
  v10 = swift_allocObject();
  *(v8 + 72) = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = x;
  *(v10 + 32) = y;
  *(v10 + 40) = width;
  *(v10 + 48) = height;
  *(v10 + 56) = height;
  return v8;
}

void sub_1008150D4()
{
  sub_100815100();
  byte_100D90E98 = 9;
  qword_100D90EA0 = v0;
}

double sub_100815100()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100A2C3F0;
  *(v0 + 56) = &type metadata for Scroll;
  *(v0 + 64) = &off_100C53AA8;
  *(v0 + 32) = sub_10081529C;
  *(v0 + 40) = 0;
  v1 = swift_allocObject();
  *&result = 8;
  *(v1 + 16) = xmmword_100A3ECD0;
  *(v1 + 56) = &type metadata for Mica;
  *(v1 + 64) = &off_100C63A98;
  *(v1 + 32) = 0;
  *(v1 + 96) = &type metadata for Delay;
  *(v1 + 104) = &off_100C500F8;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 136) = &type metadata for UpdateWeather;
  *(v1 + 144) = &off_100C7B258;
  *(v1 + 112) = v3;
  *(v1 + 176) = &type metadata for Delay;
  *(v1 + 184) = &off_100C500F8;
  *(v1 + 152) = 0x3FF0000000000000;
  *(v1 + 216) = &type metadata for Sidebar;
  *(v1 + 224) = &off_100C700F0;
  *(v1 + 192) = 0;
  *(v1 + 256) = &type metadata for Delay;
  *(v1 + 264) = &off_100C500F8;
  *(v1 + 232) = 0x3FF0000000000000;
  *(v1 + 296) = &type metadata for Measure;
  *(v1 + 304) = &off_100C4E718;
  *(v1 + 272) = v0;
  *(v1 + 336) = &type metadata for Mica;
  *(v1 + 344) = &off_100C63A98;
  *(v1 + 312) = 1;
  return result;
}

uint64_t sub_10081529C(double a1, double a2, double a3, double a4)
{
  v6 = a3 + -5.0;
  sub_10022C350(&qword_100CCD900, &unk_100A6E5E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2D320;
  *(v7 + 56) = &type metadata for Down;
  *(v7 + 64) = &off_100C4F728;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  *(v8 + 16) = 1;
  *(v8 + 24) = v6;
  *(v8 + 32) = a2;
  *(v8 + 40) = 0x4014000000000000;
  *(v8 + 48) = a4;
  *(v8 + 56) = 0x4072C00000000000;
  *(v7 + 96) = &type metadata for Up;
  *(v7 + 104) = &off_100C52C20;
  v9 = swift_allocObject();
  *(v7 + 72) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = v6;
  *(v9 + 32) = a2;
  *(v9 + 40) = 0x4014000000000000;
  *(v9 + 48) = a4;
  *(v9 + 56) = 0x4072C00000000000;
  return v7;
}

void sub_1008153A4()
{
  sub_1008157F4(sub_10081542C, 0);
  byte_100D90EA8 = 11;
  qword_100D90EB0 = v0;
}

void sub_1008153E8()
{
  sub_1008157F4(sub_10081542C, 0);
  byte_100D90EB8 = 12;
  qword_100D90EC0 = v0;
}

double sub_10081542C()
{
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 16) = xmmword_100A3B020;
  *(v0 + 56) = &type metadata for Sidebar;
  *(v0 + 64) = &off_100C700F0;
  *(v0 + 32) = 1;
  *(v0 + 96) = &type metadata for Delay;
  *(v0 + 104) = &off_100C500F8;
  *(v0 + 72) = 0x4000000000000000;
  *(v0 + 136) = &type metadata for Sidebar;
  *(v0 + 144) = &off_100C700F0;
  *(v0 + 112) = 0;
  *(v0 + 176) = &type metadata for Delay;
  *(v0 + 184) = &off_100C500F8;
  *(v0 + 152) = 0x4000000000000000;
  return result;
}

void sub_1008154B4()
{
  sub_1008157F4(sub_10081553C, 1);
  byte_100D90EC8 = 13;
  qword_100D90ED0 = v0;
}

void sub_1008154F8()
{
  sub_1008157F4(sub_10081553C, 1);
  byte_100D90ED8 = 14;
  qword_100D90EE0 = v0;
}

uint64_t sub_10081553C(double a1)
{
  v1 = type metadata accessor for DispatchAction(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
  v9 = &v7[*(v8 + 48)];
  v10 = *(v8 + 64);
  v11 = enum case for WeatherMapOverlayKind.temperature(_:);
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003A9C();
  (*(v12 + 104))(v7, v11);
  type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v13 = type metadata accessor for Date();
  sub_10001B350(&v7[v10], 1, 1, v13);
  type metadata accessor for LocationViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction(0);
  swift_storeEnumTagMultiPayload();
  v7[*(v1 + 20)] = 1;
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v4[*(v1 + 20)] = 1;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A3B020;
  *(v14 + 56) = v1;
  *(v14 + 64) = &off_100C798F0;
  v15 = sub_100042FB0((v14 + 32));
  sub_100815D68(v7, v15, type metadata accessor for DispatchAction);
  *(v14 + 96) = &type metadata for Delay;
  *(v14 + 104) = &off_100C500F8;
  *(v14 + 72) = 0x4000000000000000;
  *(v14 + 136) = v1;
  *(v14 + 144) = &off_100C798F0;
  v16 = sub_100042FB0((v14 + 112));
  sub_100815D68(v4, v16, type metadata accessor for DispatchAction);
  *(v14 + 176) = &type metadata for Delay;
  *(v14 + 184) = &off_100C500F8;
  *(v14 + 152) = 0x4000000000000000;
  sub_100639624(v4, type metadata accessor for DispatchAction);
  sub_100639624(v7, type metadata accessor for DispatchAction);
  return v14;
}

void sub_1008157B0()
{
  sub_1008157F4(sub_10081598C, 1);
  byte_100D90EE8 = 24;
  qword_100D90EF0 = v0;
}

double sub_1008157F4(uint64_t (*a1)(uint64_t), char a2)
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    sub_10000904C(&qword_100CA2238);
  }

  SettingReader.read<A>(_:)();

  v5 = a1(v4);
  v6 = sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v7 = sub_100019478(v6);
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 56) = &type metadata for Repeat;
  *(v7 + 64) = &off_100C6E4D8;
  *(v7 + 32) = 3;
  *(v7 + 40) = v5;
  v8 = swift_allocObject();
  *&result = 8;
  *(v8 + 16) = xmmword_100A3ECD0;
  *(v8 + 56) = &type metadata for Mica;
  *(v8 + 64) = &off_100C63A98;
  *(v8 + 32) = 0;
  *(v8 + 96) = &type metadata for Delay;
  *(v8 + 104) = &off_100C500F8;
  *(v8 + 72) = 0x3FF0000000000000;
  *(v8 + 136) = &type metadata for UpdateWeather;
  *(v8 + 144) = &off_100C7B258;
  *(v8 + 112) = v10;
  *(v8 + 176) = &type metadata for Delay;
  *(v8 + 184) = &off_100C500F8;
  *(v8 + 152) = 0x3FF0000000000000;
  *(v8 + 216) = &type metadata for Sidebar;
  *(v8 + 224) = &off_100C700F0;
  *(v8 + 192) = a2;
  *(v8 + 256) = &type metadata for Delay;
  *(v8 + 264) = &off_100C500F8;
  *(v8 + 232) = 0x4000000000000000;
  *(v8 + 296) = &type metadata for Measure;
  *(v8 + 304) = &off_100C4E718;
  *(v8 + 272) = v7;
  *(v8 + 336) = &type metadata for Mica;
  *(v8 + 344) = &off_100C63A98;
  *(v8 + 312) = 1;
  return result;
}

uint64_t sub_10081598C(double a1)
{
  v1 = type metadata accessor for DispatchAction(0);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
  v14 = &v12[*(v13 + 48)];
  v15 = *(v13 + 64);
  v16 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
  v17 = type metadata accessor for WeatherMapPrecipitationOverlayKind();
  (*(*(v17 - 8) + 104))(v12, v16, v17);
  v18 = enum case for WeatherMapOverlayKind.precipitation(_:);
  v19 = type metadata accessor for WeatherMapOverlayKind();
  (*(*(v19 - 8) + 104))(v12, v18, v19);
  type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v20 = type metadata accessor for Date();
  sub_10001B350(&v12[v15], 1, 1, v20);
  type metadata accessor for LocationViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction(0);
  swift_storeEnumTagMultiPayload();
  v12[*(v1 + 20)] = 1;
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9[*(v1 + 20)] = 0;
  v30 = v6;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6[*(v1 + 20)] = 0;
  v31 = v3;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v3[*(v1 + 20)] = 1;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100A3ECD0;
  *(v21 + 56) = v1;
  *(v21 + 64) = &off_100C798F0;
  v22 = sub_100042FB0((v21 + 32));
  sub_100815D68(v12, v22, type metadata accessor for DispatchAction);
  *(v21 + 96) = &type metadata for Delay;
  *(v21 + 104) = &off_100C500F8;
  *(v21 + 72) = 0x4000000000000000;
  *(v21 + 136) = v1;
  *(v21 + 144) = &off_100C798F0;
  v23 = sub_100042FB0((v21 + 112));
  v24 = v9;
  sub_100815D68(v9, v23, type metadata accessor for DispatchAction);
  *(v21 + 176) = &type metadata for Delay;
  *(v21 + 184) = &off_100C500F8;
  *(v21 + 152) = 0x4000000000000000;
  *(v21 + 216) = v1;
  *(v21 + 224) = &off_100C798F0;
  v25 = sub_100042FB0((v21 + 192));
  v26 = v30;
  sub_100815D68(v30, v25, type metadata accessor for DispatchAction);
  *(v21 + 256) = &type metadata for Delay;
  *(v21 + 264) = &off_100C500F8;
  *(v21 + 232) = 0x4000000000000000;
  *(v21 + 296) = v1;
  *(v21 + 304) = &off_100C798F0;
  v27 = sub_100042FB0((v21 + 272));
  v28 = v31;
  sub_100815D68(v31, v27, type metadata accessor for DispatchAction);
  *(v21 + 336) = &type metadata for Delay;
  *(v21 + 344) = &off_100C500F8;
  *(v21 + 312) = 0x4000000000000000;
  sub_100639624(v28, type metadata accessor for DispatchAction);
  sub_100639624(v26, type metadata accessor for DispatchAction);
  sub_100639624(v24, type metadata accessor for DispatchAction);
  sub_100639624(v12, type metadata accessor for DispatchAction);
  return v21;
}

uint64_t sub_100815D68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void *sub_100815DC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v37;
  if (!v37)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v33;
  if (!v33)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = v36;
  v29 = v38;
  v26 = v34;
  v27 = v35;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728, &unk_100A60C40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v32)
  {
    v7 = sub_10002D7F8(v31, v32);
    v8 = __chkstk_darwin(v7);
    v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for NetworkActivityManager();
    v30[3] = v13;
    v30[4] = &off_100C55440;
    v30[0] = v12;
    v14 = type metadata accessor for ToolbarAddButtonInteractor();
    v15 = swift_allocObject();
    v16 = sub_10002D7F8(v30, v13);
    v17 = __chkstk_darwin(v16);
    v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[11] = v13;
    v15[12] = &off_100C55440;
    v22 = v29;
    v15[2] = v5;
    v15[3] = v22;
    v24 = v26;
    v23 = v27;
    v15[4] = v6;
    v15[5] = v24;
    v15[6] = v23;
    v15[7] = v28;
    v15[8] = v21;
    sub_100006F14(v30);
    result = sub_100006F14(v31);
    a2[3] = v14;
    a2[4] = &off_100C60958;
    *a2 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1008160D0@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1 + 24, sizeof(__dst));
  v3 = *v1;
  v4 = swift_allocObject();
  memcpy((v4 + 16), v1, 0x68uLL);
  sub_100500140(v1, &v6);
  sub_1005B408C(__dst, v3 & 1, LocationSearchEntityFromStringResolver.init(), 0, sub_100816208, v4, a1);
}

double sub_100816210@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, _BYTE *a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, char a15, unsigned __int8 a16, unsigned __int8 a17, __int128 *a18, unsigned __int8 a19)
{
  v80 = a3;
  v81 = a4;
  v79 = a2;
  v74 = a1;
  v25 = a1;
  v26 = a18[1];
  v82 = *a18;
  v83 = v26;
  v27 = *(a18 + 4);
  v28 = *(a18 + 5);
  v29 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v29 - 8);
  v31 = v68 - v30;
  type metadata accessor for Locale();
  sub_1000037C4();
  v76 = v33;
  v77 = v32;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v75 = v35 - v34;
  if (v25 == 2)
  {
    v74 = *v19;
  }

  if (v79 == 5)
  {
    v79 = v19[1];
  }

  if (v80 == 5)
  {
    v80 = v19[2];
  }

  if (v81 == 5)
  {
    v81 = v19[3];
  }

  sub_100817D64(a5, v31);
  v36 = v77;
  if (sub_100024D10(v31, 1, v77) == 1)
  {
    v37 = type metadata accessor for EnvironmentState(0);
    (*(v76 + 16))(v75, &v19[*(v37 + 32)], v36);
    if (sub_100024D10(v31, 1, v36) != 1)
    {
      sub_1001235D8(v31);
    }

    if (a7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (*(v76 + 32))(v75, v31, v36);
    if (a7)
    {
LABEL_13:
      v69 = a7;
      goto LABEL_16;
    }
  }

  v38 = &v19[*(type metadata accessor for EnvironmentState(0) + 36)];
  a6 = *v38;
  v69 = v38[1];

LABEL_16:
  v39 = a10;
  if (a8 == 2)
  {
    a8 = v19[*(type metadata accessor for EnvironmentState(0) + 40)];
  }

  v40 = a11;
  if (a10 == 2)
  {
    v39 = v19[*(type metadata accessor for EnvironmentState(0) + 44)];
  }

  v78 = a12;
  if (a11 == 2)
  {
    v40 = v19[*(type metadata accessor for EnvironmentState(0) + 48)];
  }

  v73 = a14;
  if (v78 == 2)
  {
    v78 = v19[*(type metadata accessor for EnvironmentState(0) + 52)];
  }

  v41 = a13;
  if (a15)
  {
    v42 = type metadata accessor for EnvironmentState(0);
    v41 = a13;
    v73 = *&v19[*(v42 + 56)];
  }

  v43 = a16;
  v71 = a8;
  if (v41 == 2)
  {
    v41 = v19[*(type metadata accessor for EnvironmentState(0) + 60)];
  }

  v44 = a17;
  v68[3] = v41;
  if (a16 == 2)
  {
    v43 = v19[*(type metadata accessor for EnvironmentState(0) + 64)];
  }

  v72 = a7;
  if (a17 == 2)
  {
    v44 = v19[*(type metadata accessor for EnvironmentState(0) + 68)];
  }

  v46 = v82;
  v45 = v83;
  v68[4] = v40;
  v68[5] = v39;
  v47 = a19;
  v70 = a6;
  v68[2] = v43;
  if (v82 == 1)
  {
    v48 = &v19[*(type metadata accessor for EnvironmentState(0) + 72)];
    v46 = *v48;
    v45 = *(v48 + 1);
    v50 = *(v48 + 4);
    v49 = *(v48 + 5);
  }

  else
  {
    v50 = v27;
    v49 = v28;
  }

  v51 = v46;
  v82 = v46;
  v83 = v45;
  v52 = *(&v46 + 1);
  v53 = v45;
  v54 = v49;
  v55 = v49;
  v56 = v51;
  v57 = v52;
  v58 = v53;
  v59 = *(&v53 + 1);
  v60 = v50;
  if (a19 == 3)
  {
    v47 = v19[*(type metadata accessor for EnvironmentState(0) + 76)];
  }

  *a9 = v74 & 1;
  v61 = v80;
  a9[1] = v79;
  a9[2] = v61;
  a9[3] = v81;
  v62 = type metadata accessor for EnvironmentState(0);
  (*(v76 + 32))(&a9[v62[8]], v75, v77);
  v63 = &a9[v62[9]];
  v64 = v69;
  *v63 = v70;
  v63[1] = v64;
  sub_100028BF8(v62[10]);
  sub_100028BF8(v62[11]);
  sub_100028BF8(v62[12]);
  sub_100028BF8(v62[13]);
  *&a9[v62[14]] = v73;
  sub_100028BF8(v62[15]);
  sub_100028BF8(v62[16]);
  a9[v62[17]] = v44 & 1;
  v65 = &a9[v62[18]];
  v66 = v83;
  *v65 = v82;
  *(v65 + 1) = v66;
  *(v65 + 4) = v50;
  *(v65 + 5) = v54;
  a9[v62[19]] = v47;

  return result;
}

uint64_t sub_1008166D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x8000000100ADFFB0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000100AD5B50 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001FLL && 0x8000000100AD59B0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000100ADFFD0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000100AD5B10 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x8000000100AD5AD0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x8000000100AD5A50 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000021 && 0x8000000100ADFFF0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x636E75614C707061 && a2 == 0xEE00746E756F4368;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001BLL && 0x8000000100AE0020 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x8000000100AE0040 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x8000000100AE0060 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x72756769666E6F63 && a2 == 0xEF7374696E556465;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000010 && 0x8000000100AE0080 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
        }
      }
    }
  }
}

unint64_t sub_100816B90(char a1)
{
  result = 0x6B726F7774656ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x656C61636F6CLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x636E75614C707061;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x72756769666E6F63;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_100816D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008166D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100816DC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100816B88();
  *a1 = result;
  return result;
}

uint64_t sub_100816DE8(uint64_t a1)
{
  v2 = sub_100817DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100816E24(uint64_t a1)
{
  v2 = sub_100817DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100816E60(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDBF58, &qword_100A89368);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100817DD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17[0]) = 0;
  sub_10001CE34();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v17[0]) = v3[1];
    v18 = 1;
    sub_100817F78();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = v3[2];
    v18 = 2;
    sub_10058EA84();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = v3[3];
    v18 = 3;
    sub_100817FCC();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = type metadata accessor for EnvironmentState(0);
    LOBYTE(v17[0]) = 4;
    type metadata accessor for Locale();
    sub_1000232E4();
    sub_1008180C8(v12, v13, &protocol conformance descriptor for Locale);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(11);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(12);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = &v3[*(v11 + 72)];
    v15 = v14[1];
    v17[0] = *v14;
    v17[1] = v15;
    v17[2] = v14[2];
    v18 = 14;
    sub_100818020();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = v3[*(v11 + 76)];
    v18 = 15;
    sub_100818074();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_100817234(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  sub_1000037C4();
  v26 = v6;
  v27 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v9 = v8 - v7;
  v25 = sub_10022C350(&qword_100CDBF20, &qword_100A89360);
  sub_1000037C4();
  __chkstk_darwin(v10);
  v29 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v29);
  sub_1000037D8();
  v28 = (v12 - v11);
  sub_1000161C0(a1, a1[3]);
  sub_100817DD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10000463C();
    *v28 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100817E28();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28[1] = 0;
    sub_10058EA30();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28[2] = 0;
    sub_100817E7C();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28[3] = 0;
    LOBYTE(v30) = 4;
    sub_1000232E4();
    sub_1008180C8(v13, v14, &protocol conformance descriptor for Locale);
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 32))(&v28[v29[8]], v9, v27);
    sub_100010CA0(5);
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = &v28[v29[9]];
    *v16 = v15;
    v16[1] = v17;
    sub_100010CA0(6);
    v28[v29[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100010CA0(7);
    v28[v29[11]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100010CA0(8);
    v28[v29[12]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100010CA0(9);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100013D00(v18, v29[13]);
    sub_10000906C(10);
    *&v28[v29[14]] = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000906C(11);
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100013D00(v19, v29[15]);
    sub_10000906C(12);
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100013D00(v20, v29[16]);
    sub_10000906C(13);
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100013D00(v21, v29[17]);
    sub_100817ED0();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = &v28[v29[18]];
    *v22 = v30;
    v22[1] = v31;
    v22[2] = v32;
    sub_100817F24();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = sub_10007507C();
    v24(v23, v25);
    v28[v29[19]] = 4;
    sub_1000690C8(v28, a2);
    sub_100006F14(a1);
    sub_10006912C(v28);
  }
}

uint64_t sub_1008178D4@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A55570;
  sub_1000103C4();
  *(v4 + 32) = 0xD00000000000001CLL;
  *(v4 + 40) = v5;
  *(v4 + 48) = *v1;
  sub_1000103C4();
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 80) = 0xD000000000000015;
  *(v6 + 88) = v7;
  *(v6 + 96) = v1[1];
  sub_1000103C4();
  *(v8 + 120) = v9;
  *(v8 + 128) = 0xD00000000000001FLL;
  *(v8 + 136) = v10;
  *(v8 + 144) = v1[2];
  *(v8 + 168) = &type metadata for PredictedLocationsAuthorizationState;
  *(v8 + 176) = 0x6B726F7774656ELL;
  *(v8 + 184) = 0xE700000000000000;
  *(v8 + 192) = v1[3];
  *(v8 + 216) = &type metadata for NetworkState;
  *(v8 + 224) = 0x656C61636F6CLL;
  *(v8 + 232) = 0xE600000000000000;
  v11 = type metadata accessor for EnvironmentState(0);
  v12 = v11[8];
  v13 = type metadata accessor for Locale();
  *(inited + 264) = v13;
  v14 = sub_100042FB0((inited + 240));
  (*(*(v13 - 8) + 16))(v14, &v1[v12], v13);
  sub_1000103C4();
  *(inited + 272) = 0xD000000000000015;
  *(inited + 280) = v15;
  v16 = &v1[v11[9]];
  v17 = v16[1];
  *(inited + 288) = *v16;
  *(inited + 296) = v17;
  sub_1000103C4();
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0xD000000000000015;
  *(inited + 328) = v18;
  *(inited + 336) = v1[v11[10]];
  sub_1000103C4();
  *(inited + 360) = &type metadata for Bool;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = v19;
  *(inited + 384) = v1[v11[11]];
  sub_1000103C4();
  *(inited + 408) = &type metadata for Bool;
  *(inited + 416) = 0xD000000000000012;
  *(inited + 424) = v20;
  *(inited + 432) = v1[v11[12]];
  sub_1000103C4();
  *(inited + 456) = &type metadata for Bool;
  *(inited + 464) = 0xD000000000000021;
  *(inited + 472) = v21;
  *(inited + 480) = v1[v11[13]];
  sub_1000103C4();
  *(inited + 504) = &type metadata for Bool;
  *(inited + 512) = 0xD00000000000001BLL;
  *(inited + 520) = v22;
  LOBYTE(v22) = v1[v11[15]];
  *(inited + 552) = &type metadata for Bool;
  *(inited + 528) = v22;
  strcpy((inited + 560), "appLaunchCount");
  *(inited + 575) = -18;
  v23 = *&v1[v11[14]];
  *(inited + 600) = &type metadata for Int;
  *(inited + 576) = v23;
  sub_1000103C4();
  *(inited + 608) = 0xD000000000000014;
  *(inited + 616) = v24;
  LOBYTE(v24) = v1[v11[16]];
  *(inited + 648) = &type metadata for Bool;
  *(inited + 624) = v24;
  sub_1000103C4();
  *(inited + 656) = 0xD000000000000013;
  *(inited + 664) = v25;
  LOBYTE(v25) = v1[v11[17]];
  *(inited + 696) = &type metadata for Bool;
  *(inited + 672) = v25;
  sub_1000103C4();
  *(inited + 704) = 0xD000000000000010;
  *(inited + 712) = v26;
  LOBYTE(v26) = v1[v11[19]];
  *(inited + 744) = &type metadata for WindowFocusState;
  *(inited + 720) = v26;

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CBCED8, &unk_100A63660);
  a1[4] = sub_100056774();
  sub_100042FB0(a1);
  type metadata accessor for MainAction(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100817C80(uint64_t a1)
{
  sub_1008180C8(&qword_100CDBF88, type metadata accessor for EnvironmentState, byte_100A892AC);

  return ShortDescribable.description.getter();
}

uint64_t sub_100817D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100817DD4()
{
  result = qword_100CDBF28;
  if (!qword_100CDBF28)
  {
    result = swift_getWitnessTable(byte_100A89434, &type metadata for EnvironmentState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBF28);
  }

  return result;
}

unint64_t sub_100817E28()
{
  result = qword_100CDBF30;
  if (!qword_100CDBF30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationAuthorizationState, &type metadata for LocationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CDBF30);
  }

  return result;
}

unint64_t sub_100817E7C()
{
  result = qword_100CDBF38;
  if (!qword_100CDBF38)
  {
    result = swift_getWitnessTable(byte_100A73668, &type metadata for NetworkState, v0, v1);
    atomic_store(result, &qword_100CDBF38);
  }

  return result;
}

unint64_t sub_100817ED0()
{
  result = qword_100CDBF48;
  if (!qword_100CDBF48)
  {
    result = swift_getWitnessTable(byte_100A8B070, &type metadata for ConfiguredUnitsState, v0, v1);
    atomic_store(result, &qword_100CDBF48);
  }

  return result;
}

unint64_t sub_100817F24()
{
  result = qword_100CDBF50;
  if (!qword_100CDBF50)
  {
    result = swift_getWitnessTable(a5j, &type metadata for WindowFocusState, v0, v1);
    atomic_store(result, &qword_100CDBF50);
  }

  return result;
}

unint64_t sub_100817F78()
{
  result = qword_100CDBF60;
  if (!qword_100CDBF60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationAuthorizationState, &type metadata for LocationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CDBF60);
  }

  return result;
}

unint64_t sub_100817FCC()
{
  result = qword_100CDBF68;
  if (!qword_100CDBF68)
  {
    result = swift_getWitnessTable(a1_33, &type metadata for NetworkState, v0, v1);
    atomic_store(result, &qword_100CDBF68);
  }

  return result;
}

unint64_t sub_100818020()
{
  result = qword_100CDBF78;
  if (!qword_100CDBF78)
  {
    result = swift_getWitnessTable(")\b\x1B", &type metadata for ConfiguredUnitsState, v0, v1);
    atomic_store(result, &qword_100CDBF78);
  }

  return result;
}

unint64_t sub_100818074()
{
  result = qword_100CDBF80;
  if (!qword_100CDBF80)
  {
    result = swift_getWitnessTable(aMj_1, &type metadata for WindowFocusState, v0, v1);
    atomic_store(result, &qword_100CDBF80);
  }

  return result;
}

uint64_t sub_1008180C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t getEnumTagSinglePayload for EnvironmentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EnvironmentState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100818278()
{
  result = qword_100CDBF90;
  if (!qword_100CDBF90)
  {
    result = swift_getWitnessTable(byte_100A8940C, &type metadata for EnvironmentState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBF90);
  }

  return result;
}

unint64_t sub_1008182D0()
{
  result = qword_100CDBF98;
  if (!qword_100CDBF98)
  {
    result = swift_getWitnessTable("e%\x1B", &type metadata for EnvironmentState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBF98);
  }

  return result;
}

unint64_t sub_100818328()
{
  result = qword_100CDBFA0;
  if (!qword_100CDBFA0)
  {
    result = swift_getWitnessTable("-$\x1B", &type metadata for EnvironmentState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDBFA0);
  }

  return result;
}

uint64_t sub_10081837C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 120) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  sub_10022C350(&qword_100CD1720, &qword_100A76B28);
  *(v7 + 72) = swift_task_alloc();
  v9 = type metadata accessor for LocationDisplayContext();
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1008184D8, 0, 0);
}

uint64_t sub_1008184D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[3];
  LocationDisplayContext.init(canActAsLocationOfInterest:)();
  sub_1000161C0((v5 + 72), *(v5 + 96));
  (*(v2 + 16))(v4, v1, v3);
  sub_10001B350(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1008185F0;
  sub_100008B5C();

  return dispatch thunk of SavedLocationsManagerType.addLocationWithChecks(_:locationDisplayContext:)();
}

uint64_t sub_1008185F0()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = *(v2 + 72);
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_1000180EC(v3, &qword_100CD1720, &qword_100A76B28);
  if (v0)
  {
    v7 = sub_100818804;
  }

  else
  {
    v7 = sub_100818720;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100818720()
{
  sub_100008188();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  sub_1000161C0((v0[3] + 32), *(v0[3] + 56));
  v5 = *(v4 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v6 = type metadata accessor for LocationsState(0);
  sub_1004C75B0(*(*(v5 + *(v6 + 20)) + 16));
  (*(v2 + 8))(v1, v3);

  sub_100003B14();

  return v7();
}

uint64_t sub_100818804()
{
  v18 = v0;
  (*(v0[11] + 8))(v0[12], v0[10]);
  static Logger.savedLocations.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v4 = v0[7];
    v16 = v0[8];
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v0[2] = v3;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220, &qword_100A4A330);
    v8 = String.init<A>(describing:)();
    v10 = sub_100078694(v8, v9, &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "addLocation: Could not add location with error: %{private,mask.hash}s", v6, 0x16u);
    sub_100006F14(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];

    (*(v12 + 8))(v11, v13);
  }

  sub_100003B14();

  return v14();
}

uint64_t sub_100818A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100818A4C, 0, 0);
}

uint64_t sub_100818A4C()
{
  sub_100013494();
  sub_10003C8D0(v2[2]);
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100197C14;
  v4 = v2[3];

  return dispatch thunk of SavedLocationsManagerType.removeLocation(at:)(v4, v0, v1);
}

uint64_t sub_100818AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100818B1C, 0, 0);
}

uint64_t sub_100818B1C()
{
  sub_100013494();
  sub_10003C8D0(v2[2]);
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100818BC8;
  v5 = v2[3];
  v4 = v2[4];

  return dispatch thunk of SavedLocationsManagerType.moveLocation(from:to:)(v5, v4, v0, v1);
}

uint64_t sub_100818BC8()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_100818CA8(void *a1)
{
  v91 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v91);
  v80 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v79 = v73 - v5;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v84 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = v73 - v9;
  v86 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v86);
  v87 = (v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v11 - 8);
  v88 = v73 - v12;
  v97 = type metadata accessor for Location.Identifier();
  v13 = *(v97 - 8);
  __chkstk_darwin(v97);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v98 = v73 - v17;
  v18 = type metadata accessor for MainAction(0);
  v96 = *(v18 - 8);
  __chkstk_darwin(v18);
  v92 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (v73 - v21);
  __chkstk_darwin(v23);
  v25 = v73 - v24;
  v26 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v26);
  v90 = v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v73 - v29;
  v89 = a1[8];
  sub_100050ED0(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v73 - v29, type metadata accessor for ViewState);
  v85 = v26;
  v31 = *&v30[*(v26 + 36) + 8];
  result = sub_10004FBA0(v30, type metadata accessor for ViewState);
  if (v31 == 1)
  {
    return result;
  }

  v95 = a1[5];
  v94 = *(v95 + 16);
  if (!v94)
  {
    return result;
  }

  v33 = 0;
  v78 = 0;
  v93 = v95 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
  v73[0] = v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v77 = v90 + 8;
  v76 = (v13 + 32);
  v34 = (v13 + 8);
  v75 = v1;
  v74 = a1;
  v73[2] = v18;
  while (1)
  {
    if (v33 >= *(v95 + 16))
    {
      __break(1u);
      return result;
    }

    sub_100050ED0(v93 + *(v96 + 72) * v33, v25, type metadata accessor for MainAction);
    sub_100050ED0(v25, v22, type metadata accessor for MainAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = type metadata accessor for MainAction;
    if (EnumCaseMultiPayload != 3)
    {
      break;
    }

    type metadata accessor for LocationsAction(0);
    v37 = swift_getEnumCaseMultiPayload();
    v36 = type metadata accessor for LocationsAction;
    if (v37 != 4)
    {
      break;
    }

    v38 = *v22;
    sub_100819AF4(a1, *v22);
    if ((v39 & 1) == 0)
    {
      return sub_10004FBA0(v25, type metadata accessor for MainAction);
    }

    v40 = *(v91 + 20);
    if (v38 == *(*(a1[7] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + v40) + 16) - 1)
    {
      v38 = *(*(v73[0] + v40) + 16) - 1;
    }

    sub_10081A018(a1, v38);
    v41 = type metadata accessor for MainAction;
    v42 = v25;
LABEL_19:
    result = sub_10004FBA0(v42, v41);
LABEL_20:
    if (++v33 == v94)
    {
      return result;
    }
  }

  v43 = v92;
  sub_10004FBA0(v22, v36);
  sub_100050ED0(v25, v43, type metadata accessor for MainAction);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10004FBA0(v25, type metadata accessor for MainAction);
    v42 = v43;
    v41 = type metadata accessor for MainAction;
    goto LABEL_19;
  }

  type metadata accessor for LocationsAction(0);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10004FBA0(v25, type metadata accessor for MainAction);
    v41 = type metadata accessor for LocationsAction;
    v42 = v43;
    goto LABEL_19;
  }

  sub_10004FBA0(v43, type metadata accessor for LocationsAction);
  v44 = a1[7];
  v45 = v90;
  sub_100050ED0(v44 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v90, type metadata accessor for ViewState);
  v46 = v85;
  v47 = v45 + *(v85 + 20);
  v48 = v87;
  sub_100050ED0(v47, v87, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004FBA0(v90, type metadata accessor for ViewState);
    sub_10004FBA0(v25, type metadata accessor for MainAction);
    sub_10004FBA0(v48, type metadata accessor for ViewState.SecondaryViewState);
    v72 = v88;
    v50 = v97;
    goto LABEL_37;
  }

  v82 = v44;
  v49 = *v48;
  v50 = v97;
  if (*(v77 + *(v46 + 36)) == 1)
  {
    v51 = [objc_opt_self() currentDevice];
    [v51 userInterfaceIdiom];

    LOBYTE(v51) = *(v90 + *(v46 + 28));
    sub_10004FBA0(v90, type metadata accessor for ViewState);
    if ((v51 & 1) == 0)
    {
      sub_10004FBA0(v25, type metadata accessor for MainAction);

      v72 = v88;
LABEL_37:
      sub_10001B350(v72, 1, 1, v50);
      return sub_1000180EC(v72, &qword_100CADBA0, &qword_100A3D250);
    }
  }

  else
  {
    sub_10004FBA0(v90, type metadata accessor for ViewState);
  }

  v52 = v83;
  sub_100050ED0(v49 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v83, type metadata accessor for LocationViewerActiveLocationState);

  v53 = v84;
  sub_100050ED0(v52, v84, type metadata accessor for LocationViewerActiveLocationState);
  if (sub_100024D10(v53, 1, v50) == 1)
  {
    v54 = v88;
    static CurrentLocation.placeholderIdentifier.getter();
    sub_10004FBA0(v52, type metadata accessor for LocationViewerActiveLocationState);
    v55 = v76;
  }

  else
  {
    sub_10004FBA0(v52, type metadata accessor for LocationViewerActiveLocationState);
    v55 = v76;
    v54 = v88;
    (*v76)(v88, v53, v50);
  }

  sub_10001B350(v54, 0, 1, v50);
  (*v55)(v98, v54, v50);
  v56 = *(v91 + 24);
  v81 = v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v57 = *(*(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + v56) + 16);

  v58 = 0;
  while (v57 != v58)
  {
    type metadata accessor for LocationModel();
    LocationModel.identifier.getter();
    v59 = static Location.Identifier.== infix(_:_:)();
    (*v34)(v15, v97);
    ++v58;
    if (v59)
    {

      goto LABEL_32;
    }
  }

  v73[1] = v73;
  v61 = v82 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v62 = *(v82 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v91 + 24));
  __chkstk_darwin(v60);
  v73[-2] = v98;

  v63 = v78;
  sub_100169CA4(sub_10081B230, &v73[-4], v62);
  v65 = v64;
  v78 = v63;

  if ((v65 & 1) == 0)
  {
    v66 = v79;
    sub_100050ED0(v81, v79, type metadata accessor for LocationsState);
    v67 = v80;
    sub_100050ED0(v61, v80, type metadata accessor for LocationsState);
    sub_1007BD690();
    v69 = v68;
    v71 = v70;
    sub_10004FBA0(v67, type metadata accessor for LocationsState);
    sub_10004FBA0(v66, type metadata accessor for LocationsState);
    if (v71)
    {
LABEL_32:
      a1 = v74;
    }

    else
    {
      a1 = v74;
      sub_10081A018(v74, v69);
    }

    sub_10004FBA0(v25, type metadata accessor for MainAction);
    result = (*v34)(v98, v97);
    goto LABEL_20;
  }

  sub_10004FBA0(v25, type metadata accessor for MainAction);
  return (*v34)(v98, v97);
}

uint64_t sub_1008198F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100819914, 0, 0);
}

uint64_t sub_100819914()
{
  sub_100008188();
  v3 = v2[3];
  sub_10003C8D0(v2[2]);
  v4 = *(v3 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v5 = *(v4 + *(type metadata accessor for LocationsState(0) + 20));
  v2[4] = v5;

  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1008199F8;

  return dispatch thunk of SavedLocationsManagerType.updateSavedLocationTimeZones(_:)(v5, v0, v1);
}

uint64_t sub_1008199F8()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

void sub_100819AF4(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for Location.Identifier();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SavedLocation();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v13);
  v15 = (v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v16);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 56);
  sub_100050ED0(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v18, type metadata accessor for ViewState);
  sub_100050ED0(&v18[v16[5]], v15, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004FBA0(v18, type metadata accessor for ViewState);
    sub_10004FBA0(v15, type metadata accessor for ViewState.SecondaryViewState);
    return;
  }

  v20 = v19;
  v21 = *v15;
  if (*&v18[v16[9] + 8] == 1)
  {
    v22 = [objc_opt_self() currentDevice];
    [v22 userInterfaceIdiom];

    LOBYTE(v22) = v18[v16[7]];
    sub_10004FBA0(v18, type metadata accessor for ViewState);
    if ((v22 & 1) == 0)
    {

      return;
    }
  }

  else
  {
    sub_10004FBA0(v18, type metadata accessor for ViewState);
  }

  v36[1] = a2;
  sub_100050ED0(v21 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v12, type metadata accessor for LocationViewerActiveLocationState);

  v23 = sub_1000E0924();
  v25 = v24;
  sub_10004FBA0(v12, type metadata accessor for LocationViewerActiveLocationState);
  v26 = v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v27 = *(v26 + *(type metadata accessor for LocationsState(0) + 20));
  v28 = *(v27 + 16);
  v29 = (v4 + 8);

  for (i = 0; ; ++i)
  {
    if (v28 == i)
    {
      goto LABEL_18;
    }

    if (i >= *(v27 + 16))
    {
      break;
    }

    sub_100050ED0(v27 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * i, v9, &type metadata accessor for SavedLocation);
    SavedLocation.identifier.getter();
    v31 = Location.Identifier.id.getter();
    v33 = v32;
    (*v29)(v6, v38);
    if (v31 == v23 && v33 == v25)
    {

      sub_10004FBA0(v9, &type metadata accessor for SavedLocation);
LABEL_18:

      return;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10004FBA0(v9, &type metadata accessor for SavedLocation);
    if (v35)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_10081A018(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for SavedLocation();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v3 - 8);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v46 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  v17 = type metadata accessor for CurrentLocation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = *(a1 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v25 = *(v24 + *(type metadata accessor for LocationsState(0) + 20));
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v26 - 1;
    if (v27 >= v49)
    {
      v27 = v49;
    }

    v28 = *(v48 + 80);
    v29 = v50;
    sub_100050ED0(v25 + ((v28 + 32) & ~v28) + *(v48 + 72) * (v27 & ~(v27 >> 63)), v50, &type metadata accessor for SavedLocation);
    sub_100040690();
    v30 = static OS_dispatch_queue.main.getter();
    v31 = v47;
    sub_100050ED0(v29, v47, &type metadata accessor for SavedLocation);
    v32 = swift_allocObject();
    *(v32 + 16) = v55;
    sub_10016DB58(v31, v32 + ((v28 + 24) & ~v28), &type metadata accessor for SavedLocation);
    v60 = sub_10081B250;
    v61 = v32;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1000742F0;
    v59 = &unk_100C6F528;
    v33 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100074390();
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    v34 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v52 + 8))(v10, v34);
    (*(v53 + 8))(v13, v54);
    v35 = &type metadata accessor for SavedLocation;
    v36 = v29;
  }

  else
  {
    v37 = v55;
    v50 = v10;
    sub_100035AD0(v24, v16, &unk_100CE49F0, &unk_100A3AFA0);
    if (sub_100024D10(v16, 1, v17) == 1)
    {
      return sub_1000180EC(v16, &unk_100CE49F0, &unk_100A3AFA0);
    }

    v39 = v23;
    sub_10016DB58(v16, v23, &type metadata accessor for CurrentLocation);
    sub_100040690();
    v49 = static OS_dispatch_queue.main.getter();
    sub_100050ED0(v23, v20, &type metadata accessor for CurrentLocation);
    v40 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    sub_10016DB58(v20, v41 + v40, &type metadata accessor for CurrentLocation);
    v60 = sub_10081B27C;
    v61 = v41;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1000742F0;
    v59 = &unk_100C6F578;
    v42 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100074390();
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    v44 = v50;
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v45 = v49;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    (*(v52 + 8))(v44, v43);
    (*(v53 + 8))(v13, v54);
    v35 = &type metadata accessor for CurrentLocation;
    v36 = v39;
  }

  return sub_10004FBA0(v36, v35);
}

uint64_t sub_10081A734(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Location.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationModel.identifier.getter();
  v6 = static Location.Identifier.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_10081A820(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = *(a1 + 16);
  if (v7)
  {
    v17 = *(a1 + 24);
    sub_10022C350(&qword_100CA3508, &unk_100A2D530);
    v8 = *(type metadata accessor for MainAction(0) - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100A2D320;

    CurrentLocation.identifier.getter();
    type metadata accessor for ListViewAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v12 = v11 + v10 + v9;
    v13 = *(sub_10022C350(&qword_100CBBE20, &unk_100A5C410) + 48);
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    sub_100050ED0(a2, v12, &type metadata accessor for CurrentLocation);
    v14 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v6, 1, 1, v14);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v15 = enum case for LocationModel.current(_:);
    v16 = type metadata accessor for LocationModel();
    (*(*(v16 - 8) + 104))(v12, v15, v16);
    *(v12 + v13) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_100035AD0(v21, v18, &unk_100CD81B0, &unk_100A3B000);
    v19 = v11;
    v20 = 0;
    sub_10004F1B0(v18, v7);
    sub_10002B028(v7);
    sub_1000180EC(v18, &qword_100CA3510, &unk_100A2D540);
    sub_1000180EC(v21, &unk_100CD81B0, &unk_100A3B000);
  }
}

void sub_10081AB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = *(a1 + 16);
  if (v7)
  {
    v17 = *(a1 + 24);
    sub_10022C350(&qword_100CA3508, &unk_100A2D530);
    v8 = *(type metadata accessor for MainAction(0) - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100A2D320;

    SavedLocation.identifier.getter();
    type metadata accessor for ListViewAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v12 = v11 + v10 + v9;
    v13 = *(sub_10022C350(&qword_100CBBE20, &unk_100A5C410) + 48);
    sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
    sub_100050ED0(a2, v12, &type metadata accessor for SavedLocation);
    v14 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v6, 1, 1, v14);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v15 = enum case for LocationModel.saved(_:);
    v16 = type metadata accessor for LocationModel();
    (*(*(v16 - 8) + 104))(v12, v15, v16);
    *(v12 + v13) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_100035AD0(v21, v18, &unk_100CD81B0, &unk_100A3B000);
    v19 = v11;
    v20 = 0;
    sub_10004F1B0(v18, v7);
    sub_10002B028(v7);
    sub_1000180EC(v18, &qword_100CA3510, &unk_100A2D540);
    sub_1000180EC(v21, &unk_100CD81B0, &unk_100A3B000);
  }
}

uint64_t *sub_10081AE48()
{
  sub_10002B028(v0[2]);
  sub_100006F14(v0 + 4);
  sub_100006F14(v0 + 9);
  return v0;
}

uint64_t sub_10081AE78()
{
  sub_10081AE48();

  return swift_deallocClassInstance();
}

uint64_t sub_10081AEAC()
{
  sub_100008188();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v1[1] = sub_1000D8400;
  sub_1000066D8();
  sub_100008B5C();

  return sub_1008198F4(v3, v4, v5, v6, v7);
}

uint64_t sub_10081AF54()
{
  sub_100008188();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = sub_100007F54(v3);
  *v4 = v5;
  v4[1] = sub_1000D8400;
  sub_1000066D8();
  sub_100008B5C();

  return sub_100818AF8(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_10081B004(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10081B050()
{
  sub_100008188();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = sub_100007F54(v2);
  *v3 = v4;
  v3[1] = sub_10006D0B0;
  sub_1000066D8();
  sub_100008B5C();

  return sub_100818A2C(v5, v6, v7, v8, v1);
}

uint64_t sub_10081B0F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Location() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000D8400;

  return sub_10081837C(a1, v8, v9, v10, v11, v1 + v6, v1 + v7);
}

uint64_t sub_10081B2A8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_10081B330()
{
  v1 = *v0;
  v2 = *(v0 + *(type metadata accessor for ViewState(0) + 36) + 8);

  if (v2 == 1 && sub_1000B010C())
  {

    return 0;
  }

  return v1;
}

uint64_t sub_10081B398()
{
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10000C790();
  v3 = type metadata accessor for ViewState(0);
  sub_10001F968();
  sub_1000A078C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100075088();
    sub_1000B005C(v0, v4);
    return 0;
  }

  v5 = *v0;
  if (*(v1 + *(v3 + 36) + 8) == 1 && (sub_1000B010C() & 1) == 0)
  {

    return 0;
  }

  return v5;
}

void sub_10081B470()
{
  sub_10000C778();
  v72 = v3;
  v73 = v4;
  v67 = v5;
  v68 = v6;
  v63 = v7;
  v64 = v8;
  v70 = v9;
  v11 = v10;
  v13 = v12;
  v14 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_10002C698();
  v69 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v71 = v17;
  v18 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  sub_100003810(v18);
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100003CB4();
  v65 = type metadata accessor for DisplayMetrics(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v75 = v21;
  v22 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003C38();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  sub_10000E70C();
  v29 = v28;
  v30 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &v63 - v32;
  v34 = type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000038E4();
  v74 = v36;
  if (v11)
  {
    v66 = v11;
  }

  else
  {
    v66 = *v0;
  }

  sub_1000302D8(v63, v33, &qword_100CA6608, &unk_100A31430);
  v37 = sub_100007FC4();
  sub_1000038B4(v37, v38, v34);
  if (v39)
  {
    type metadata accessor for ViewState(0);
    sub_10001F968();
    v44 = v0;
    sub_1000A078C();
    v40 = sub_100007FC4();
    v42 = sub_100024D10(v40, v41, v34);

    v43 = v72;
    if (v42 != 1)
    {
      sub_1000180EC(v33, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_10001CE5C();
    sub_1000AFEF8();

    v43 = v72;
    v44 = v0;
  }

  v45 = v70;
  if (v70 == 2)
  {
    v45 = *(v44 + *(type metadata accessor for ViewState(0) + 24));
  }

  if (v43 == 2)
  {
    v44 = v0;
    v43 = sub_1000B010C();
  }

  sub_1000302D8(v64, v26, &qword_100CA6600, &unk_100A5C400);
  v46 = type metadata accessor for SearchViewState(0);
  v47 = sub_100016298();
  sub_1000038B4(v47, v48, v46);
  if (v39)
  {
    v49 = type metadata accessor for ViewState(0);
    sub_1000302D8(v44 + *(v49 + 32), v29, &qword_100CA6600, &unk_100A5C400);
    v50 = sub_100016298();
    sub_1000038B4(v50, v51, v46);
    v55 = v69;
    if (!v39)
    {
      sub_1000180EC(v26, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    sub_100019FD0();
    sub_1000AFEF8();
    sub_10000E7B0();
    sub_10001B350(v52, v53, v54, v46);
    v55 = v69;
  }

  sub_1000302D8(v67, v1, &qword_100CA65F8, &dword_100A31420);
  v56 = sub_1000182B8();
  v57 = v65;
  sub_1000038B4(v56, v58, v65);
  v59 = v73;
  if (v39)
  {
    type metadata accessor for ViewState(0);
    sub_100009084();
    sub_1000A078C();
    v60 = sub_1000182B8();
    sub_1000038B4(v60, v61, v57);
    if (!v39)
    {
      sub_1000180EC(v1, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_10000686C();
    sub_1000AFEF8();
  }

  sub_1000302D8(v68, v2, &qword_100CA65F0, &unk_100A5C3F0);
  sub_1000038B4(v2, 1, v55);
  if (v39)
  {
    type metadata accessor for ViewState(0);
    sub_100004BD8();
    sub_1000A078C();
    sub_1000038B4(v2, 1, v55);
    if (!v39)
    {
      sub_1000180EC(v2, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_100010CB8();
    sub_1000AFEF8();
  }

  if (v59 == 2)
  {
    v59 = *(v44 + *(type metadata accessor for ViewState(0) + 44));
  }

  *v13 = v66;
  v62 = type metadata accessor for ViewState(0);
  sub_10001CE5C();
  sub_1000AFEF8();
  *(v13 + v62[6]) = v45 & 1;
  *(v13 + v62[7]) = v43 & 1;
  sub_10011C0F0(v29, v13 + v62[8], &qword_100CA6600, &unk_100A5C400);
  sub_10000686C();
  sub_1000AFEF8();
  sub_100010CB8();
  sub_1000AFEF8();
  *(v13 + v62[11]) = v59 & 1;
  sub_10000536C();
}

uint64_t sub_10081BA14@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for ViewState(0);
  sub_10001F968();
  sub_1000A078C();
  sub_10000C918();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100014F5C();
    sub_1000AFEF8();
    v6 = 0;
  }

  else
  {
    sub_100075088();
    sub_1000B005C(v5, v7);
    v6 = 1;
  }

  v8 = type metadata accessor for VFXTestViewState(0);
  return sub_10001B350(a1, v6, 1, v8);
}

void sub_10081BAEC()
{
  sub_10000C778();
  v112 = v1;
  v117 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v111 = v3;
  v4 = sub_1000038CC();
  v102 = type metadata accessor for DisplayMetrics(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v110 = v6;
  v7 = sub_1000038CC();
  v103 = type metadata accessor for ViewState.SecondaryViewState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v115 = v9;
  v10 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003848();
  v109 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_10000E70C();
  v116 = v14;
  v15 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  v106 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_10000E70C();
  v114 = v19;
  v20 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  v104 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  v108 = &v94 - v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v113 = v26;
  v27 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003C38();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &v94 - v33;
  v105 = v0;
  v35 = *v0;
  v99 = *(*v0 + 16);
  v36 = *(v35 + 24);
  v97 = *(v35 + 25);
  v98 = v36;
  v96 = *(v35 + 26);
  v37 = *(v35 + 40);
  v107 = *(v35 + 32);
  v38 = *(v35 + 56);
  v95 = *(v35 + 48);
  v39 = *(v35 + 72);
  v40 = *(v35 + 80);
  v41 = *(v35 + 88);
  v42 = *(v35 + 89);
  v43 = *(v35 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v100 = v40;
  v93 = v39;
  v101 = v38;
  v92 = v38;
  v44 = v37;
  v45 = v102;
  v46 = v103;
  v47 = sub_100042DA8(v99, v98, v97, v96, v43, v107, v44, v95, v92, 0, v93, v40, v41, v42);
  sub_100003934();
  sub_10001B350(v48, v49, v50, v46);
  v51 = type metadata accessor for SearchViewState(0);
  sub_100003934();
  sub_10001B350(v52, v53, v54, v51);
  sub_100003934();
  sub_10001B350(v55, v56, v57, v45);
  sub_100003934();
  sub_10001B350(v58, v59, v60, v61);
  sub_1000302D8(v34, v31, &qword_100CA6608, &unk_100A31430);
  v62 = v31;
  v63 = sub_1000182B8();
  sub_1000038B4(v63, v64, v46);
  v107 = v47;
  v65 = v45;
  if (v66)
  {
    type metadata accessor for ViewState(0);
    sub_10001F968();
    v67 = v105;
    sub_1000A078C();
    v68 = sub_100024D10(v62, 1, v46);

    v69 = v67;
    if (v68 != 1)
    {
      sub_1000180EC(v62, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_10001CE5C();
    sub_1000AFEF8();

    v69 = v105;
  }

  v70 = type metadata accessor for ViewState(0);
  LODWORD(v105) = *(v69 + v70[6]);
  LODWORD(v103) = sub_1000B010C();

  sub_1000180EC(v34, &qword_100CA6608, &unk_100A31430);
  v71 = v104;
  sub_10011C0F0(v113, v104, &qword_100CA6600, &unk_100A5C400);
  v72 = sub_10000C834();
  sub_1000038B4(v72, v73, v51);
  v74 = v109;
  if (v66)
  {
    v77 = v108;
    sub_1000302D8(v69 + v70[8], v108, &qword_100CA6600, &unk_100A5C400);
    v75 = sub_10000C834();
    sub_1000038B4(v75, v76, v51);
    if (!v66)
    {
      sub_1000180EC(v71, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    sub_100019FD0();
    v77 = v108;
    sub_1000AFEF8();
    sub_10000E7B0();
    sub_10001B350(v78, v79, v80, v51);
  }

  v81 = v106;
  sub_10011C0F0(v114, v106, &qword_100CA65F8, &dword_100A31420);
  v82 = sub_10000C834();
  sub_1000038B4(v82, v83, v65);
  if (v66)
  {
    sub_100009084();
    sub_1000A078C();
    v84 = sub_10000C834();
    sub_1000038B4(v84, v85, v65);
    if (!v66)
    {
      sub_1000180EC(v81, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_10000686C();
    sub_1000AFEF8();
  }

  sub_10011C0F0(v116, v74, &qword_100CA65F0, &unk_100A5C3F0);
  v86 = sub_100016298();
  sub_1000038B4(v86, v87, v117);
  if (v66)
  {
    sub_100004BD8();
    sub_1000A078C();
    v88 = sub_100016298();
    sub_1000038B4(v88, v89, v117);
    if (!v66)
    {
      sub_1000180EC(v74, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_100010CB8();
    sub_1000AFEF8();
  }

  v90 = *(v69 + v70[11]);
  v91 = v112;
  *v112 = v107;
  sub_10001CE5C();
  sub_1000AFEF8();
  *(v91 + v70[6]) = v105;
  *(v91 + v70[7]) = v103;
  sub_10011C0F0(v77, v91 + v70[8], &qword_100CA6600, &unk_100A5C400);
  sub_10000686C();
  sub_1000AFEF8();
  sub_100010CB8();
  sub_1000AFEF8();

  *(v91 + v70[11]) = v90;
  sub_10000536C();
}

uint64_t sub_10081C1F4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ViewState(0);
  v4 = (a1 + v3[8]);
  v5 = type metadata accessor for SearchViewState(0);
  type metadata accessor for SearchViewState.ViewState(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Location();
  sub_100003934();
  sub_10001B350(v6, v7, v8, v9);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v4 + *(v5 + 24)) = 0;
  sub_10000E7B0();
  sub_10001B350(v10, v11, v12, v5);
  v13 = *v1;
  sub_10001F968();
  sub_1000A078C();
  v14 = *(v1 + v3[6]);

  LOBYTE(v5) = sub_1000B010C();
  sub_100009084();
  sub_1000A078C();
  sub_100004BD8();
  result = sub_1000A078C();
  v16 = *(v1 + v3[11]);
  *a1 = v13;
  *(a1 + v3[6]) = v14;
  *(a1 + v3[7]) = v5;
  *(a1 + v3[11]) = v16;
  return result;
}

uint64_t sub_10081C318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10081C3E8(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_10081C42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10081C318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10081C454(uint64_t a1)
{
  v2 = sub_100821860();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081C490(uint64_t a1)
{
  v2 = sub_100821860();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081C4CC(uint64_t a1)
{
  v2 = sub_100821908();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081C508(uint64_t a1)
{
  v2 = sub_100821908();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081C544(uint64_t a1)
{
  v2 = sub_1008218B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081C580(uint64_t a1)
{
  v2 = sub_1008218B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081C5BC()
{
  sub_100003B38();
  type metadata accessor for ListViewState._Storage();
  return sub_1000BAC0C() & 1;
}

void sub_10081C60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v13 = v12;
  v39 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v15 = sub_1000038CC();
  v40 = type metadata accessor for DisplayMetrics(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v17 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_100003CB4();
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  sub_10022C350(&qword_100CDC290, &qword_100A8A158);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v20);
  sub_10001634C();
  v41 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000038E4();
  v23 = v22;
  v42 = v13;
  sub_1000161C0(v13, v13[3]);
  sub_10082111C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100006F14(v13);
  }

  else
  {
    sub_100821170();
    sub_10003BC00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v23 = a10;
    sub_100041BA0();
    sub_100820ECC(v24, v25, byte_100A89E6C);
    sub_10006A87C();
    sub_10003BC00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001CE5C();
    sub_1000AFEF8();
    v43 = 2;
    sub_1008211C4();
    sub_10002170C(&type metadata for ViewState.SecondaryViewOverlayState, &v43);
    *(v23 + v41[6]) = 1;
    v43 = 3;
    sub_100821218();
    sub_10002170C(&type metadata for ViewState.PreferredView, &v43);
    *(v23 + v41[7]) = 1;
    v26 = type metadata accessor for SearchViewState(0);
    sub_100820ECC(&qword_100CDC2C0, type metadata accessor for SearchViewState, asc_100A3FE78);
    sub_10006A87C();
    sub_10003BC00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000E7B0();
    sub_10001B350(v27, v28, v29, v26);
    sub_10011C0F0(v11, v23 + v41[8], &qword_100CA6600, &unk_100A5C400);
    sub_1000372E0();
    sub_100820ECC(v30, v31, aA_66);
    sub_10006A87C();
    sub_10002170C(v40, v32);
    sub_10000686C();
    sub_1000AFEF8();
    sub_100030638();
    sub_100820ECC(v33, v34, aI_63);
    sub_10006A87C();
    sub_10002170C(v39, v35);
    sub_100010CB8();
    sub_1000AFEF8();
    sub_10003BC00();
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = sub_10000EE24();
    v38(v37);
    *(v23 + v41[11]) = v36 & 1;
    sub_1000A078C();
    sub_100006F14(v42);
    sub_1000B005C(v23, type metadata accessor for ViewState);
  }

  sub_10000C8F4();
}

void sub_10081CCB0()
{
  sub_100032568();
  v2 = v1;
  sub_10022C350(&qword_100CDC2D8, &qword_100A8A160);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003CF8();
  sub_10000E890(v2);
  sub_10082111C();
  sub_1000211A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10082126C();
  sub_100005670();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for ViewState(0);
    type metadata accessor for ViewState.SecondaryViewState(0);
    sub_100041BA0();
    v6 = sub_100820ECC(v4, v5, asc_100A89E44);
    sub_10003C8F4(v6);
    sub_1008212C0();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000B010C();
    sub_100821314();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10022C350(&qword_100CA6600, &unk_100A5C400);
    v7 = sub_100821368();
    sub_10003C8F4(v7);
    type metadata accessor for DisplayMetrics(0);
    sub_1000372E0();
    v10 = sub_100820ECC(v8, v9, aY_77);
    sub_10003C8F4(v10);
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100030638();
    v13 = sub_100820ECC(v11, v12, byte_100A426F0);
    sub_10003C8F4(v13);
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v14 = sub_1000231E0();
  v15(v14);
  sub_10008835C();
}

unint64_t sub_10081CF78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45380, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10081CFCC(char a1)
{
  result = 0x7972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6572726566657270;
      break;
    case 4:
      result = 0x686372616573;
      break;
    case 5:
      result = 0x4D79616C70736964;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10081D0F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081CF78(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10081D120()
{
  v1 = sub_10004E6D0();
  result = sub_10081CFCC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_10081D164@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10081CFC4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10081D18C(uint64_t a1)
{
  v2 = sub_10082111C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081D1C8(uint64_t a1)
{
  v2 = sub_10082111C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10081D234()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CDC320, &qword_100A8A168);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_10000E890(v0);
  v3 = sub_10082141C();
  sub_10000FB60(&type metadata for ViewState.PrimaryViewState.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    v8 = 0;
    sub_100821470();
    sub_100031F88(&type metadata for ViewState.PrimaryViewState.CodingType, &v8);
    v7 = 1;
    sub_1008214C4();
    sub_100031F88(&type metadata for ListViewState, &v7);
    v5 = sub_10000565C();
    v6(v5);
    sub_100006F14(v0);
  }

  sub_10008653C();
  sub_10008835C();
}

void sub_10081D38C()
{
  sub_100032568();
  v2 = v1;
  sub_10022C350(&qword_100CDC340, &qword_100A8A170);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003CF8();
  sub_10000E890(v2);
  sub_10082141C();
  sub_1000211A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100821518();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_10082156C();
    sub_100024384();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_1000231E0();
  v5(v4);
  sub_10008835C();
}

BOOL sub_10081D4D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C454B0, v2);

  return v3 != 0;
}

uint64_t sub_10081D550@<X0>(_BYTE *a2@<X8>)
{
  result = sub_10081E260();
  *a2 = result;
  return result;
}

uint64_t sub_10081D588()
{
  v1 = sub_10004E6D0();
  result = sub_100214EDC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10081D5B8@<X0>(_BYTE *a3@<X8>)
{
  result = sub_10081E260();
  *a3 = result;
  return result;
}

uint64_t sub_10081D5E8(uint64_t a1)
{
  v2 = sub_10082141C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081D624(uint64_t a1)
{
  v2 = sub_10082141C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_10081D66C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081D4D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10081D6A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10081D51C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_10081D778(void *a1@<X8>)
{
  sub_10081D234();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10081D7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  type metadata accessor for VFXTestViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_1000037D8();
  sub_10022C350(&qword_100CDC358, &qword_100A8A178);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v30);
  sub_10001634C();
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = (v33 - v32);
  sub_1000161C0(v28, v28[3]);
  sub_1008215C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    a13 = 0;
    sub_100821614();
    sub_1000AF67C(&type metadata for ViewState.SecondaryViewState.CodingType, &a13);
    if (a14)
    {
      a12 = 2;
      sub_1000253F4();
      sub_100820ECC(v35, v36, byte_100A5B7DC);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v37 = sub_1000524AC();
      v38(v37);
      sub_100014F5C();
      sub_1000AFEF8();
    }

    else
    {
      a11 = 1;
      sub_100821668();
      sub_1000AF67C(&type metadata for LocationViewerViewState, &a11);
      v39 = sub_1000524AC();
      v40(v39);
      *v34 = v41;
    }

    swift_storeEnumTagMultiPayload();
    sub_10001CE5C();
    sub_1000AFEF8();
  }

  sub_100006F14(v28);
  sub_10000C8F4();
}

void sub_10081DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v26 = v25;
  type metadata accessor for VFXTestViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000038E4();
  v38 = v28;
  v29 = sub_1000038CC();
  type metadata accessor for ViewState.SecondaryViewState(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000037D8();
  v31 = sub_10022C350(&qword_100CDC380, &qword_100A8A180);
  sub_1000037C4();
  v33 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_100003CF8();
  sub_10000E890(v26);
  sub_1008215C0();
  sub_1000211A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10001F968();
  sub_1000A078C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100014F5C();
    sub_1000AFEF8();
    sub_1000168D0();
    sub_1008216BC();
    sub_100024384();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v23)
    {
      sub_1000253F4();
      sub_100820ECC(v35, v36, byte_100A5B7B4);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    sub_10004EB7C();
    sub_1000B005C(v38, v37);
    (*(v33 + 8))(v24, v31);
  }

  else
  {
    sub_1008216BC();
    sub_100024384();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v23)
    {
      sub_100821710();
      sub_100024384();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v33 + 8))(v24, v31);
  }

  sub_10000C8F4();
}

uint64_t sub_10081DD34(char a1)
{
  if (a1)
  {
    return 0x74736554786676;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

unint64_t sub_10081DD9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100214EFC();
  *a1 = result;
  return result;
}

uint64_t sub_10081DDCC()
{
  v1 = sub_10004E6D0();
  result = sub_100214F3C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_10081DDFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100214EFC();
  *a1 = result;
  return result;
}

uint64_t sub_10081DE24(uint64_t a1)
{
  v2 = sub_1008215C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081DE60(uint64_t a1)
{
  v2 = sub_1008215C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081DEC0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_10081E260();
  *a2 = result;
  return result;
}

uint64_t sub_10081DEF8()
{
  v1 = sub_10004E6D0();
  result = sub_10081DD34(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_10081E000()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CDC3A0, &qword_100A8A188);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_10000E890(v0);
  v3 = sub_100821764();
  sub_10000FB60(&type metadata for ViewState.SecondaryViewOverlayState.CodingKeys, v4, v3);
  if (!v1)
  {
    sub_1008217B8();
    sub_100031F88(&type metadata for ViewState.SecondaryViewOverlayState.CodingType, v5);
    v6 = sub_10000565C();
    v7(v6);
  }

  sub_100006F14(v0);
  sub_10008835C();
}

void sub_10081E114()
{
  sub_100032568();
  v2 = v1;
  v4 = v3;
  v5 = sub_10022C350(&qword_100CDC3B8, &qword_100A8A190);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  sub_1000161C0(v4, v4[3]);
  sub_100821764();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = (v7 + 8);
  if (v2)
  {
    sub_1000168D0();
  }

  sub_10082180C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*v9)(v0, v5);
  sub_10008835C();
}

uint64_t sub_10081E260()
{
  sub_100013984();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  sub_1000379AC();
  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10081E2A4(char a1)
{
  if (a1)
  {
    return 0x6552686372616573;
  }

  else
  {
    return 1701736302;
  }
}

BOOL sub_10081E2E0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100214F98();
  *a1 = result;
  return result;
}

uint64_t sub_10081E314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003A2D08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_10081E33C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100214F98();
  *a1 = result;
  return result;
}

uint64_t sub_10081E368(uint64_t a1)
{
  v2 = sub_100821764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081E3A4(uint64_t a1)
{
  v2 = sub_100821764();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081E404@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10081E260();
  *a1 = result;
  return result;
}

uint64_t sub_10081E43C()
{
  v1 = sub_10004E6D0();
  result = sub_10081E2A4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_10081E514(_BYTE *a1@<X8>)
{
  sub_10081E000();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

void UIInterfaceOrientation.init(from:)()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CDC058, &qword_100A89580);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_10000E890(v0);
  v3 = sub_10081E678();
  sub_10000FB60(&_s10CodingKeysON_1, v4, v3);
  if (!v1)
  {
    sub_10081E6CC();
    sub_100031F88(&_s10CodingTypeON_1, v5);
    v6 = sub_10000565C();
    v7(v6);
  }

  sub_100006F14(v0);
  sub_10008653C();
  sub_10008835C();
}

unint64_t sub_10081E678()
{
  result = qword_100CDC060;
  if (!qword_100CDC060)
  {
    result = swift_getWitnessTable(byte_100A8A0EC, &_s10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_100CDC060);
  }

  return result;
}

unint64_t sub_10081E6CC()
{
  result = qword_100CDC068;
  if (!qword_100CDC068)
  {
    result = swift_getWitnessTable(byte_100A8A0C4, &_s10CodingTypeON_1, v0, v1);
    atomic_store(result, &qword_100CDC068);
  }

  return result;
}

void UIInterfaceOrientation.encode(to:)()
{
  sub_100032568();
  v1 = v0;
  v3 = v2;
  sub_10022C350(&qword_100CDC070, &qword_100A89588);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CF8();
  sub_10000E890(v3);
  sub_10081E678();
  sub_1000211A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
      sub_10081E910();
      sub_100005670();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v5 = sub_1000231E0();
      v6(v5);
      break;
    default:
      sub_1000168D0();
      sub_10081E910();
      sub_100005670();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v7 = sub_1000231E0();
      v8(v7);
      break;
  }

  sub_10008835C();
}

unint64_t sub_10081E910()
{
  result = qword_100CDC078;
  if (!qword_100CDC078)
  {
    result = swift_getWitnessTable(byte_100A8A09C, &_s10CodingTypeON_1, v0, v1);
    atomic_store(result, &qword_100CDC078);
  }

  return result;
}

unint64_t sub_10081E964(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45660, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10081E9B0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x7469617274726F70;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0x70616373646E616CLL;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10081EA58@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100214FE8();
  *a1 = result;
  return result;
}

BOOL sub_10081EA8C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100214FE8();
  *a1 = result;
  return result;
}

uint64_t sub_10081EAB8(uint64_t a1)
{
  v2 = sub_10081E678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081EAF4(uint64_t a1)
{
  v2 = sub_10081E678();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10081EB54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081E964(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10081EB84()
{
  v1 = sub_10004E6D0();
  result = sub_10081E9B0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_10081EC5C(void *a1@<X8>)
{
  UIInterfaceOrientation.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void UIUserInterfaceSizeClass.init(from:)()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CDC080, &qword_100A89590);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_10000E890(v0);
  v3 = sub_10081EDBC();
  sub_10000FB60(&_s10CodingKeysON_0, v4, v3);
  if (!v1)
  {
    sub_10081EE10();
    sub_100031F88(&_s10CodingTypeON_0, v5);
    v6 = sub_10000565C();
    v7(v6);
  }

  sub_100006F14(v0);
  sub_10008653C();
  sub_10008835C();
}

unint64_t sub_10081EDBC()
{
  result = qword_100CDC088;
  if (!qword_100CDC088)
  {
    result = swift_getWitnessTable(byte_100A8A04C, &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_100CDC088);
  }

  return result;
}

unint64_t sub_10081EE10()
{
  result = qword_100CDC090;
  if (!qword_100CDC090)
  {
    result = swift_getWitnessTable(asc_100A8A024, &_s10CodingTypeON_0, v0, v1);
    atomic_store(result, &qword_100CDC090);
  }

  return result;
}

void UIUserInterfaceSizeClass.encode(to:)()
{
  sub_100032568();
  v2 = v1;
  v3 = sub_10022C350(&qword_100CDC098, &unk_100A89598);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003CF8();
  sub_1000161C0(v2, v2[3]);
  sub_10081EDBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10081EFF8();
  sub_100005670();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v0, v3);
  sub_10008835C();
}

unint64_t sub_10081EFF8()
{
  result = qword_100CDC0A0;
  if (!qword_100CDC0A0)
  {
    result = swift_getWitnessTable(aU_0, &_s10CodingTypeON_0, v0, v1);
    atomic_store(result, &qword_100CDC0A0);
  }

  return result;
}

unint64_t sub_10081F04C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45730, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10081F098(char a1)
{
  if (!a1)
  {
    return 0x746361706D6F63;
  }

  if (a1 == 1)
  {
    return 0x72616C75676572;
  }

  return 0x6669636570736E75;
}

void sub_10081F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  v45 = v26;
  v28 = v27;
  sub_10022C350(&qword_100CDC3F8, &qword_100A8A1B8);
  sub_1000037C4();
  v43 = v30;
  v44 = v29;
  sub_100003828();
  __chkstk_darwin(v31);
  sub_100003CB4();
  v42 = sub_10022C350(&qword_100CDC400, &qword_100A8A1C0);
  sub_1000037C4();
  v33 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_10001634C();
  v35 = sub_10022C350(&qword_100CDC408, &unk_100A8A1C8);
  sub_1000037C4();
  v37 = v36;
  sub_100003828();
  __chkstk_darwin(v38);
  v40 = &v42 - v39;
  sub_10000E890(v28);
  sub_100821860();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v41 = (v37 + 8);
  if (v45)
  {
    sub_1000168D0();
    sub_1008218B4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v43 + 8))(v24, v44);
  }

  else
  {
    sub_100821908();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v25, v42);
  }

  (*v41)(v40, v35);
  sub_10000C8F4();
}

void sub_10081F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  a22 = v27;
  a23 = v28;
  v30 = v29;
  v55 = sub_10022C350(&qword_100CDC3C8, &qword_100A8A198);
  sub_1000037C4();
  v53 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_10000C790();
  v33 = sub_10022C350(&qword_100CDC3D0, &qword_100A8A1A0);
  sub_1000037C4();
  v52 = v34;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_10001634C();
  v36 = sub_10022C350(&qword_100CDC3D8, &unk_100A8A1A8);
  sub_1000037C4();
  v54 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_100003CB4();
  sub_10000E890(v30);
  sub_100821860();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_8;
  }

  v56 = v30;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v40 == v41 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v48 = v47;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v48 = &type metadata for ViewState.PreferredView;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    sub_100003B20();
    (*(v49 + 104))(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v25, v36);
    v30 = v56;
LABEL_8:
    sub_100006F14(v30);
LABEL_9:
    sub_10000C8F4();
    return;
  }

  if (v40 < (v41 >> 1))
  {
    v42 = *(v39 + v40);
    sub_100618E7C();
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 == v46 >> 1)
    {
      if (v42)
      {
        sub_1000168D0();
        sub_1008218B4();
        sub_1000059C4(&type metadata for ViewState.PreferredView.SecondaryCodingKeys, &a13);
        swift_unknownObjectRelease();
        (*(v53 + 8))(v23, v55);
      }

      else
      {
        a12 = 0;
        sub_100821908();
        sub_1000059C4(&type metadata for ViewState.PreferredView.PrimaryCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v52 + 8))(v26, v33);
      }

      v50 = sub_100014474();
      v51(v50);
      sub_100006F14(v56);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

BOOL sub_10081F7A8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100215038();
  *a1 = result;
  return result;
}

BOOL sub_10081F7DC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100215038();
  *a1 = result;
  return result;
}

uint64_t sub_10081F808(uint64_t a1)
{
  v2 = sub_10081EDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081F844(uint64_t a1)
{
  v2 = sub_10081EDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10081F8A4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081F04C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10081F8D4()
{
  v1 = sub_10004E6D0();
  result = sub_10081F098(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_10081F9AC(void *a1@<X8>)
{
  UIUserInterfaceSizeClass.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void *initializeBufferWithCopyOfBuffer for ViewState.PrimaryViewState(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for ViewState.PrimaryViewState(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for ViewState.PrimaryViewState(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ViewState.PrimaryViewState(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewState.PrimaryViewState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s10CodingTypeOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10081FC38()
{
  result = qword_100CDC200;
  if (!qword_100CDC200)
  {
    result = swift_getWitnessTable(asc_100A897D4, &_s10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_100CDC200);
  }

  return result;
}

unint64_t sub_10081FC90()
{
  result = qword_100CDC208;
  if (!qword_100CDC208)
  {
    result = swift_getWitnessTable(byte_100A89874, &_s10CodingTypeON_1, v0, v1);
    atomic_store(result, &qword_100CDC208);
  }

  return result;
}

unint64_t sub_10081FCE8()
{
  result = qword_100CDC210;
  if (!qword_100CDC210)
  {
    result = swift_getWitnessTable(byte_100A89964, &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_100CDC210);
  }

  return result;
}

unint64_t sub_10081FD40()
{
  result = qword_100CDC218;
  if (!qword_100CDC218)
  {
    result = swift_getWitnessTable(byte_100A89A04, &_s10CodingTypeON_0, v0, v1);
    atomic_store(result, &qword_100CDC218);
  }

  return result;
}

unint64_t sub_10081FD98()
{
  result = qword_100CDC220;
  if (!qword_100CDC220)
  {
    result = swift_getWitnessTable(byte_100A89F5C, &type metadata for ViewState.SecondaryViewOverlayState, v0, v1);
    atomic_store(result, &qword_100CDC220);
  }

  return result;
}

unint64_t sub_10081FDF0()
{
  result = qword_100CDC228;
  if (!qword_100CDC228)
  {
    result = swift_getWitnessTable(byte_100A89F34, &type metadata for ViewState.PreferredView, v0, v1);
    atomic_store(result, &qword_100CDC228);
  }

  return result;
}

void sub_10081FE90()
{
  sub_10000C778();
  v2 = v0;
  v4 = v3;
  v5 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3ECD0;
  *(inited + 32) = 0x567972616D697270;
  *(inited + 40) = 0xEB00000000776569;
  sub_1008203B0(*v0, v33);
  v8 = v34;
  sub_1000161C0(v33, v34);
  *(inited + 72) = v8;
  sub_100043010((inited + 48));
  sub_100003B20();
  (*(v9 + 16))();
  strcpy((inited + 80), "secondaryView");
  *(inited + 94) = -4864;
  v10 = type metadata accessor for ViewState(0);
  sub_1008204D0();
  v11 = v32;
  sub_1000161C0(v31, v32);
  *(inited + 120) = v11;
  sub_100043010((inited + 96));
  sub_100003B20();
  (*(v12 + 16))();
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x8000000100AE00F0;
  sub_1008207B4();
  v13 = v30;
  sub_1000161C0(v29, v30);
  *(inited + 168) = v13;
  sub_100043010((inited + 144));
  sub_100003B20();
  (*(v14 + 16))();
  strcpy((inited + 176), "preferredView");
  *(inited + 190) = -4864;
  sub_1000B010C();
  sub_100820960();
  v15 = v28;
  sub_1000161C0(v27, v28);
  *(inited + 216) = v15;
  sub_100043010((inited + 192));
  sub_100003B20();
  (*(v16 + 16))();
  *(inited + 224) = 0x6956686372616573;
  *(inited + 232) = 0xEA00000000007765;
  sub_1000302D8(v2 + *(v10 + 32), v1, &qword_100CA6600, &unk_100A5C400);
  v17 = type metadata accessor for SearchViewState(0);
  sub_1000038B4(v1, 1, v17);
  if (v18)
  {
    sub_1000180EC(v1, &qword_100CA6600, &unk_100A5C400);
LABEL_6:
    *(inited + 264) = &type metadata for String;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
    goto LABEL_7;
  }

  sub_100369F88();
  sub_10003A3D0();
  sub_1000B005C(v1, v19);
  v20 = v24;
  sub_1000161C0(v23, v24);
  v26 = v20;
  sub_100043010(&v25);
  sub_100003B20();
  (*(v21 + 16))();
  sub_100006F14(v23);
  if (!v26)
  {
    goto LABEL_6;
  }

  sub_100166170(&v25, (inited + 240));
LABEL_7:
  strcpy((inited + 272), "displayMetrics");
  *(inited + 287) = -18;
  *(inited + 312) = type metadata accessor for DisplayMetrics(0);
  sub_100043010((inited + 288));
  sub_100009084();
  sub_1000A078C();
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x8000000100ABB220;
  *(inited + 360) = type metadata accessor for WeatherMapPresentationState(0);
  sub_100043010((inited + 336));
  sub_100004BD8();
  sub_1000A078C();
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x8000000100ABB240;
  v22 = *(v2 + *(v10 + 44));
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v22;
  sub_100006F14(v27);
  sub_100006F14(v29);
  sub_100006F14(v31);
  sub_100006F14(v33);
  Dictionary.init(dictionaryLiteral:)();
  v4[3] = sub_10022C350(&qword_100CDC410, &qword_100A8A1D8);
  v4[4] = sub_10012EF24(&qword_100CDC418, &qword_100CDC410, &qword_100A8A1D8);
  sub_100043010(v4);
  ShortDescription.init(name:_:)();
  sub_10000536C();
}

uint64_t sub_1008203B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1953720684;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for ListViewState;
  *(inited + 48) = a1;

  Dictionary.init(dictionaryLiteral:)();
  v5 = sub_10000C918();
  a2[3] = sub_10022C350(v5, v6);
  a2[4] = sub_10012EF24(&qword_100CDC458, &qword_100CDC450, &qword_100A8A1F8);
  sub_100043010(a2);
  return ShortDescription.init(name:_:)();
}

void sub_1008204D0()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for VFXTestViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = (v10 - v9);
  v12 = sub_10022C350(&qword_100CDC440, &qword_100A8A1F0);
  sub_1000037C4();
  v14 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100003CF8();
  sub_10001F968();
  sub_1000A078C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100014F5C();
    sub_1000AFEF8();
    sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0x74736554786676;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = v3;
    sub_100043010((inited + 48));
    sub_1000A078C();
    v17 = Dictionary.init(dictionaryLiteral:)();
    sub_100043874(v17);
    sub_10004EB7C();
    sub_1000B005C(v7, v18);
  }

  else
  {
    v19 = *v11;
    sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_100A2C3F0;
    strcpy((v20 + 32), "locationViewer");
    *(v20 + 47) = -18;
    *(v20 + 72) = &type metadata for LocationViewerViewState;
    *(v20 + 48) = v19;

    v21 = Dictionary.init(dictionaryLiteral:)();
    sub_100043874(v21);
  }

  v2[3] = v12;
  v2[4] = sub_10012EF24(&qword_100CDC448, &qword_100CDC440, &qword_100A8A1F0);
  v22 = sub_100043010(v2);
  (*(v14 + 32))(v22, v0, v12);
  sub_10000536C();
}

void sub_1008207B4()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000C918();
  v7 = sub_10022C350(v5, v6);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001320C();
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  v11 = (v2 & 1) == 0;
  if (v2)
  {
    v12 = 0x6552686372616573;
  }

  else
  {
    v12 = 1701736302;
  }

  if (v11)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xED000073746C7573;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  v4[3] = v7;
  v4[4] = sub_10012EF24(&qword_100CDC438, &qword_100CDC430, &qword_100A8A1E8);
  v15 = sub_100043010(v4);
  (*(v9 + 32))(v15, v0, v7);
  sub_10000536C();
}

void sub_100820960()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000C918();
  v7 = sub_10022C350(v5, v6);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001320C();
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  v11 = (v2 & 1) == 0;
  if (v2)
  {
    v12 = 0x7261646E6F636573;
  }

  else
  {
    v12 = 0x7972616D697270;
  }

  if (v11)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE900000000000079;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  v4[3] = v7;
  v4[4] = sub_10012EF24(&qword_100CDC428, &qword_100CDC420, &qword_100A8A1E0);
  v15 = sub_100043010(v4);
  (*(v9 + 32))(v15, v0, v7);
  sub_10000536C();
}

uint64_t sub_100820B14(uint64_t a1)
{
  sub_100820ECC(&qword_100CDC460, type metadata accessor for ViewState, byte_100A89D74);

  return ShortDescribable.description.getter();
}

uint64_t sub_100820B88(uint64_t a1)
{
  sub_10082195C();

  return ShortDescribable.description.getter();
}

uint64_t sub_100820BC8(uint64_t a1)
{
  sub_100820ECC(&qword_100CDC470, type metadata accessor for ViewState.SecondaryViewState, byte_100A89CC4);

  return ShortDescribable.description.getter();
}

uint64_t sub_100820C3C(uint64_t a1)
{
  sub_1008219B0();

  return ShortDescribable.description.getter();
}

uint64_t sub_100820C80(uint64_t a1)
{
  sub_100821A04();

  return ShortDescribable.description.getter();
}

uint64_t sub_100820CBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10077C158(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100820D38()
{
  result = qword_100CDC230;
  if (!qword_100CDC230)
  {
    result = swift_getWitnessTable(byte_100A89BEC, &type metadata for ViewState.PreferredView, v0, v1);
    atomic_store(result, &qword_100CDC230);
  }

  return result;
}

unint64_t sub_100820D90()
{
  result = qword_100CDC238;
  if (!qword_100CDC238)
  {
    result = swift_getWitnessTable(byte_100A89C44, &type metadata for ViewState.SecondaryViewOverlayState, v0, v1);
    atomic_store(result, &qword_100CDC238);
  }

  return result;
}

unint64_t sub_100820E30()
{
  result = qword_100CDC248;
  if (!qword_100CDC248)
  {
    result = swift_getWitnessTable(byte_100A89CF4, &type metadata for ViewState.PrimaryViewState, v0, v1);
    atomic_store(result, &qword_100CDC248);
  }

  return result;
}

uint64_t sub_100820ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100820F18()
{
  result = qword_100CDC250;
  if (!qword_100CDC250)
  {
    result = swift_getWitnessTable("E \x1B", &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_100CDC250);
  }

  return result;
}

unint64_t sub_100820F70()
{
  result = qword_100CDC258;
  if (!qword_100CDC258)
  {
    result = swift_getWitnessTable(asc_100A898C4, &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_100CDC258);
  }

  return result;
}

unint64_t sub_100820FC8()
{
  result = qword_100CDC260;
  if (!qword_100CDC260)
  {
    result = swift_getWitnessTable(byte_100A8970C, &_s10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_100CDC260);
  }

  return result;
}

unint64_t sub_100821020()
{
  result = qword_100CDC268;
  if (!qword_100CDC268)
  {
    result = swift_getWitnessTable(byte_100A89734, &_s10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_100CDC268);
  }

  return result;
}

unint64_t sub_100821074()
{
  result = qword_100CDC270;
  if (!qword_100CDC270)
  {
    result = swift_getWitnessTable(byte_100A897FC, &_s10CodingTypeON_1, v0, v1);
    atomic_store(result, &qword_100CDC270);
  }

  return result;
}

unint64_t sub_1008210C8()
{
  result = qword_100CDC278;
  if (!qword_100CDC278)
  {
    result = swift_getWitnessTable(byte_100A8998C, &_s10CodingTypeON_0, v0, v1);
    atomic_store(result, &qword_100CDC278);
  }

  return result;
}

unint64_t sub_10082111C()
{
  result = qword_100CDC298;
  if (!qword_100CDC298)
  {
    result = swift_getWitnessTable(byte_100A8ABFC, &type metadata for ViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC298);
  }

  return result;
}

unint64_t sub_100821170()
{
  result = qword_100CDC2A0;
  if (!qword_100CDC2A0)
  {
    result = swift_getWitnessTable(byte_100A89EBC, &type metadata for ViewState.PrimaryViewState, v0, v1);
    atomic_store(result, &qword_100CDC2A0);
  }

  return result;
}

unint64_t sub_1008211C4()
{
  result = qword_100CDC2B0;
  if (!qword_100CDC2B0)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for ViewState.SecondaryViewOverlayState, v0, v1);
    atomic_store(result, &qword_100CDC2B0);
  }

  return result;
}

unint64_t sub_100821218()
{
  result = qword_100CDC2B8;
  if (!qword_100CDC2B8)
  {
    result = swift_getWitnessTable(byte_100A89DCC, &type metadata for ViewState.PreferredView, v0, v1);
    atomic_store(result, &qword_100CDC2B8);
  }

  return result;
}

unint64_t sub_10082126C()
{
  result = qword_100CDC2E0;
  if (!qword_100CDC2E0)
  {
    result = swift_getWitnessTable(byte_100A89E94, &type metadata for ViewState.PrimaryViewState, v0, v1);
    atomic_store(result, &qword_100CDC2E0);
  }

  return result;
}

unint64_t sub_1008212C0()
{
  result = qword_100CDC2F0;
  if (!qword_100CDC2F0)
  {
    result = swift_getWitnessTable(asc_100A89DF4, &type metadata for ViewState.SecondaryViewOverlayState, v0, v1);
    atomic_store(result, &qword_100CDC2F0);
  }

  return result;
}

unint64_t sub_100821314()
{
  result = qword_100CDC2F8;
  if (!qword_100CDC2F8)
  {
    result = swift_getWitnessTable(byte_100A89DA4, &type metadata for ViewState.PreferredView, v0, v1);
    atomic_store(result, &qword_100CDC2F8);
  }

  return result;
}

unint64_t sub_100821368()
{
  result = qword_100CDC300;
  if (!qword_100CDC300)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA6600, &unk_100A5C400);
    v4[0] = sub_100820ECC(&qword_100CDC308, type metadata accessor for SearchViewState, asc_100A3FE50);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CDC300);
  }

  return result;
}

unint64_t sub_10082141C()
{
  result = qword_100CDC328;
  if (!qword_100CDC328)
  {
    result = swift_getWitnessTable("E\r\x1B", &type metadata for ViewState.PrimaryViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC328);
  }

  return result;
}

unint64_t sub_100821470()
{
  result = qword_100CDC330;
  if (!qword_100CDC330)
  {
    result = swift_getWitnessTable(byte_100A8AB84, &type metadata for ViewState.PrimaryViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC330);
  }

  return result;
}

unint64_t sub_1008214C4()
{
  result = qword_100CDC338;
  if (!qword_100CDC338)
  {
    result = swift_getWitnessTable(byte_100A386A4, &type metadata for ListViewState, v0, v1);
    atomic_store(result, &qword_100CDC338);
  }

  return result;
}

unint64_t sub_100821518()
{
  result = qword_100CDC348;
  if (!qword_100CDC348)
  {
    result = swift_getWitnessTable(byte_100A8AB5C, &type metadata for ViewState.PrimaryViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC348);
  }

  return result;
}

unint64_t sub_10082156C()
{
  result = qword_100CDC350;
  if (!qword_100CDC350)
  {
    result = swift_getWitnessTable(byte_100A3867C, &type metadata for ListViewState, v0, v1);
    atomic_store(result, &qword_100CDC350);
  }

  return result;
}

unint64_t sub_1008215C0()
{
  result = qword_100CDC360;
  if (!qword_100CDC360)
  {
    result = swift_getWitnessTable(byte_100A8AB0C, &type metadata for ViewState.SecondaryViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC360);
  }

  return result;
}

unint64_t sub_100821614()
{
  result = qword_100CDC368;
  if (!qword_100CDC368)
  {
    result = swift_getWitnessTable(byte_100A8AAE4, &type metadata for ViewState.SecondaryViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC368);
  }

  return result;
}

unint64_t sub_100821668()
{
  result = qword_100CDC378;
  if (!qword_100CDC378)
  {
    result = swift_getWitnessTable(byte_100A33FA0, &type metadata for LocationViewerViewState, v0, v1);
    atomic_store(result, &qword_100CDC378);
  }

  return result;
}

unint64_t sub_1008216BC()
{
  result = qword_100CDC388;
  if (!qword_100CDC388)
  {
    result = swift_getWitnessTable(byte_100A8AABC, &type metadata for ViewState.SecondaryViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC388);
  }

  return result;
}

unint64_t sub_100821710()
{
  result = qword_100CDC398;
  if (!qword_100CDC398)
  {
    result = swift_getWitnessTable(byte_100A33F78, &type metadata for LocationViewerViewState, v0, v1);
    atomic_store(result, &qword_100CDC398);
  }

  return result;
}

unint64_t sub_100821764()
{
  result = qword_100CDC3A8;
  if (!qword_100CDC3A8)
  {
    result = swift_getWitnessTable(byte_100A8AA6C, &type metadata for ViewState.SecondaryViewOverlayState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC3A8);
  }

  return result;
}

unint64_t sub_1008217B8()
{
  result = qword_100CDC3B0;
  if (!qword_100CDC3B0)
  {
    result = swift_getWitnessTable(asc_100A8AA44, &type metadata for ViewState.SecondaryViewOverlayState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC3B0);
  }

  return result;
}

unint64_t sub_10082180C()
{
  result = qword_100CDC3C0;
  if (!qword_100CDC3C0)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for ViewState.SecondaryViewOverlayState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC3C0);
  }

  return result;
}

unint64_t sub_100821860()
{
  result = qword_100CDC3E0;
  if (!qword_100CDC3E0)
  {
    result = swift_getWitnessTable(asc_100A8A9CC, &type metadata for ViewState.PreferredView.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC3E0);
  }

  return result;
}

unint64_t sub_1008218B4()
{
  result = qword_100CDC3E8;
  if (!qword_100CDC3E8)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for ViewState.PreferredView.SecondaryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC3E8);
  }

  return result;
}

unint64_t sub_100821908()
{
  result = qword_100CDC3F0;
  if (!qword_100CDC3F0)
  {
    result = swift_getWitnessTable(byte_100A8A92C, &type metadata for ViewState.PreferredView.PrimaryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC3F0);
  }

  return result;
}

unint64_t sub_10082195C()
{
  result = qword_100CDC468;
  if (!qword_100CDC468)
  {
    result = swift_getWitnessTable(asc_100A89D1C, &type metadata for ViewState.PrimaryViewState, v0, v1);
    atomic_store(result, &qword_100CDC468);
  }

  return result;
}

unint64_t sub_1008219B0()
{
  result = qword_100CDC478;
  if (!qword_100CDC478)
  {
    result = swift_getWitnessTable("\r\x1B\x1B", &type metadata for ViewState.SecondaryViewOverlayState, v0, v1);
    atomic_store(result, &qword_100CDC478);
  }

  return result;
}

unint64_t sub_100821A04()
{
  result = qword_100CDC480;
  if (!qword_100CDC480)
  {
    result = swift_getWitnessTable("e\x1B\x1B", &type metadata for ViewState.PreferredView, v0, v1);
    atomic_store(result, &qword_100CDC480);
  }

  return result;
}

_BYTE *sub_100821AB8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100020E50(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100821B90(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_100821C3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100020E50(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100821DF4()
{
  result = qword_100CDC488;
  if (!qword_100CDC488)
  {
    result = swift_getWitnessTable(byte_100A8A2FC, &type metadata for ViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC488);
  }

  return result;
}

unint64_t sub_100821E4C()
{
  result = qword_100CDC490;
  if (!qword_100CDC490)
  {
    result = swift_getWitnessTable(byte_100A8A3EC, &type metadata for ViewState.PrimaryViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC490);
  }

  return result;
}

unint64_t sub_100821EA4()
{
  result = qword_100CDC498;
  if (!qword_100CDC498)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for ViewState.PrimaryViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC498);
  }

  return result;
}

unint64_t sub_100821EFC()
{
  result = qword_100CDC4A0;
  if (!qword_100CDC4A0)
  {
    result = swift_getWitnessTable(byte_100A8A57C, &type metadata for ViewState.SecondaryViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4A0);
  }

  return result;
}

unint64_t sub_100821F54()
{
  result = qword_100CDC4A8;
  if (!qword_100CDC4A8)
  {
    result = swift_getWitnessTable(byte_100A8A61C, &type metadata for ViewState.SecondaryViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC4A8);
  }

  return result;
}

unint64_t sub_100821FAC()
{
  result = qword_100CDC4B0;
  if (!qword_100CDC4B0)
  {
    result = swift_getWitnessTable(byte_100A8A70C, &type metadata for ViewState.SecondaryViewOverlayState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4B0);
  }

  return result;
}

unint64_t sub_100822004()
{
  result = qword_100CDC4B8;
  if (!qword_100CDC4B8)
  {
    result = swift_getWitnessTable("U\r\x1B", &type metadata for ViewState.SecondaryViewOverlayState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC4B8);
  }

  return result;
}

unint64_t sub_10082205C()
{
  result = qword_100CDC4C0;
  if (!qword_100CDC4C0)
  {
    result = swift_getWitnessTable(byte_100A8A904, &type metadata for ViewState.PreferredView.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4C0);
  }

  return result;
}

unint64_t sub_1008220B4()
{
  result = qword_100CDC4C8;
  if (!qword_100CDC4C8)
  {
    result = swift_getWitnessTable(byte_100A8A824, &type metadata for ViewState.PreferredView.PrimaryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4C8);
  }

  return result;
}

unint64_t sub_10082210C()
{
  result = qword_100CDC4D0;
  if (!qword_100CDC4D0)
  {
    result = swift_getWitnessTable(byte_100A8A84C, &type metadata for ViewState.PreferredView.PrimaryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4D0);
  }

  return result;
}

unint64_t sub_100822164()
{
  result = qword_100CDC4D8;
  if (!qword_100CDC4D8)
  {
    result = swift_getWitnessTable(asc_100A8A7D4, &type metadata for ViewState.PreferredView.SecondaryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4D8);
  }

  return result;
}

unint64_t sub_1008221BC()
{
  result = qword_100CDC4E0;
  if (!qword_100CDC4E0)
  {
    result = swift_getWitnessTable(byte_100A8A7FC, &type metadata for ViewState.PreferredView.SecondaryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4E0);
  }

  return result;
}

unint64_t sub_100822214()
{
  result = qword_100CDC4E8;
  if (!qword_100CDC4E8)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for ViewState.PreferredView.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4E8);
  }

  return result;
}

unint64_t sub_10082226C()
{
  result = qword_100CDC4F0;
  if (!qword_100CDC4F0)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for ViewState.PreferredView.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4F0);
  }

  return result;
}

unint64_t sub_1008222C4()
{
  result = qword_100CDC4F8;
  if (!qword_100CDC4F8)
  {
    result = swift_getWitnessTable(byte_100A8A644, &type metadata for ViewState.SecondaryViewOverlayState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC4F8);
  }

  return result;
}

unint64_t sub_10082231C()
{
  result = qword_100CDC500;
  if (!qword_100CDC500)
  {
    result = swift_getWitnessTable(aE_8, &type metadata for ViewState.SecondaryViewOverlayState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC500);
  }

  return result;
}

unint64_t sub_100822374()
{
  result = qword_100CDC508;
  if (!qword_100CDC508)
  {
    result = swift_getWitnessTable(asc_100A8A4B4, &type metadata for ViewState.SecondaryViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC508);
  }

  return result;
}

unint64_t sub_1008223CC()
{
  result = qword_100CDC510;
  if (!qword_100CDC510)
  {
    result = swift_getWitnessTable(byte_100A8A4DC, &type metadata for ViewState.SecondaryViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC510);
  }

  return result;
}

unint64_t sub_100822424()
{
  result = qword_100CDC518;
  if (!qword_100CDC518)
  {
    result = swift_getWitnessTable(byte_100A8A324, &type metadata for ViewState.PrimaryViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC518);
  }

  return result;
}

unint64_t sub_10082247C()
{
  result = qword_100CDC520;
  if (!qword_100CDC520)
  {
    result = swift_getWitnessTable(byte_100A8A34C, &type metadata for ViewState.PrimaryViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC520);
  }

  return result;
}

unint64_t sub_1008224D4()
{
  result = qword_100CDC528;
  if (!qword_100CDC528)
  {
    result = swift_getWitnessTable(byte_100A8A234, &type metadata for ViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC528);
  }

  return result;
}

unint64_t sub_10082252C()
{
  result = qword_100CDC530;
  if (!qword_100CDC530)
  {
    result = swift_getWitnessTable(aU_5, &type metadata for ViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC530);
  }

  return result;
}

unint64_t sub_100822580()
{
  result = qword_100CDC538;
  if (!qword_100CDC538)
  {
    result = swift_getWitnessTable(byte_100A8A414, &type metadata for ViewState.PrimaryViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC538);
  }

  return result;
}

unint64_t sub_1008225D4()
{
  result = qword_100CDC540;
  if (!qword_100CDC540)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for ViewState.SecondaryViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC540);
  }

  return result;
}

unint64_t sub_100822628()
{
  result = qword_100CDC548;
  if (!qword_100CDC548)
  {
    result = swift_getWitnessTable(byte_100A8A734, &type metadata for ViewState.SecondaryViewOverlayState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDC548);
  }

  return result;
}

BOOL sub_1008226B4(void *a1, void *a2)
{
  type metadata accessor for DetailComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  __chkstk_darwin(v7 - 8);
  v9 = (&v24 - v8);
  v10 = sub_10022C350(&qword_100CAA958, &qword_100A5B780);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = *a1 == *a2 && a1[1] == a2[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = _s11NormalModelVMa(0);
  sub_10001BC88(v17[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[8]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[9]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[10]);
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[11]);
  if ((static AttributedString.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1001CAA30();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[13]);
  if ((static SunriseSunsetDetailChartViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[14]);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[15]);
  if ((static SunEvents.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[16]);
  if ((static OverviewTableViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[17]);
  if ((static DaylightStringBuilder.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[18];
  v20 = *(v10 + 48);
  sub_10066D8E4(a1 + v19, v13);
  sub_10066D8E4(a2 + v19, &v13[v20]);
  sub_100003A40(v13);
  if (v14)
  {
    sub_100003A40(&v13[v20]);
    if (v14)
    {
      sub_1000180EC(v13, &qword_100CA7188, &qword_100A35360);
      return 1;
    }

    goto LABEL_35;
  }

  sub_10066D8E4(v13, v9);
  sub_100003A40(&v13[v20]);
  if (v21)
  {
    sub_10066D954(v9);
LABEL_35:
    sub_1000180EC(v13, &qword_100CAA958, &qword_100A5B780);
    return 0;
  }

  sub_10066D9B0(&v13[v20], v6);
  v23 = sub_100428860(v9, v6);
  sub_10066D954(v6);
  sub_10066D954(v9);
  sub_1000180EC(v13, &qword_100CA7188, &qword_100A35360);
  return (v23 & 1) != 0;
}

uint64_t sub_1008229D4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  sub_100040690();
  v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a1 + 16);
  (*(v9 + 32))(v14 + v13, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  aBlock[4] = sub_100823948;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C6FED0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t AnimatableValueObserverModifier.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v8 = *(v5 - 8);
  (*(v8 + 24))(v2 + *(a2 + 40), a1, v5);
  sub_1008229D4(a2);
  v6 = *(v8 + 8);

  return v6(a1, v5);
}

uint64_t *(*AnimatableValueObserverModifier.animatableData.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_100822E3C;
}

uint64_t *sub_100822E3C(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1008229D4(*result);
  }

  return result;
}

uint64_t AnimatableValueObserverModifier.init(for:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100007FD0();
  v21 = v12;
  (*(v13 + 16))(a6, a1, v14);
  v16 = type metadata accessor for AnimatableValueObserverModifier(0, a4, a5, v15);
  v17 = (a6 + *(v16 + 36));
  *v17 = a2;
  v17[1] = a3;
  v18 = *(v21 + 32);
  v19 = a6 + *(v16 + 40);

  return v18(v19, a1, a4);
}

uint64_t AnimatableValueObserverModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001F980();
  swift_getWitnessTable(v3);
  v4 = type metadata accessor for _ViewModifier_Content();
  sub_100007FD0();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = sub_10001CB30();
  WitnessTable = swift_getWitnessTable(v10, v4);
  sub_1000833D8(a1, v4, WitnessTable);
  sub_1000833D8(v9, v4, WitnessTable);
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_100823078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AnimatableValueObserverModifier(0, a2, a3, a4);
  v6 = *(a1 + *(result + 36));
  if (v6)
  {
    return v6(a1 + *(result + 40));
  }

  return result;
}

void (*sub_1008230CC(void *a1, uint64_t a2))(void *a1)
{
  v4 = sub_10023FBC0(0x28uLL);
  *a1 = v4;
  v4[4] = AnimatableValueObserverModifier.animatableData.modify(v4, a2);
  return sub_10023DD88;
}

uint64_t sub_100823134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnimatableValueObserverModifier<A>, a5);

  return static AnimatableModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1008231C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnimatableValueObserverModifier<A>, a5);

  return static AnimatableModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.animatableValueObserver<A>(for:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29[2] = a6;
  v29[0] = a8;
  v29[1] = a4;
  sub_100007FD0();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AnimatableValueObserverModifier(0, v19, v20, v18);
  sub_100007FD0();
  v23 = v22;
  v25 = __chkstk_darwin(v24);
  v27 = v29 - v26;
  (*(v14 + 16))(v17, a1, a5, v25);
  AnimatableValueObserverModifier.init(for:onChange:)(v17, a2, a3, a5, a7, v27);
  sub_10007A47C(a2);
  View.modifier<A>(_:)();
  return (*(v23 + 8))(v27, v21);
}

uint64_t sub_1008234A0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1000455E4(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_10082353C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 16) & ~*(v5 + 80)) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 >= 0x7FFFFFFE)
      {
        return sub_100024D10(a1, v6, v4);
      }

      v16 = *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1008236D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(v6 - 8) + 64);
  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80)) + v10;
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 < 0x7FFFFFFE)
          {
            v21 = (&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v21 = 0;
              v21[1] = 0;
              *v21 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v21 = a2;
            }
          }

          else
          {

            sub_10001B350(a1, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100823948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AnimatableValueObserverModifier(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100823078(v9, v5, v6, v7);
}

uint64_t sub_1008239CC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100823A20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100823A90(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100823AE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_100823B44@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10002F7A8();
  sub_100006F14(a1);
  *a2 = v5;
  a2[1] = v6;
  result = *&v7;
  a2[2] = v7;
  return result;
}

uint64_t sub_100823BA0(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1000B8CA8();
      v4 = a2;
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

void sub_100823C1C()
{
  sub_10000C778();
  v48 = v1;
  v3 = v2;
  v47 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v44 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v43 = v7 - v6;
  v8 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v45 = &v43 - v10;
  v11 = sub_10022C350(&qword_100CBE7F8, &qword_100A8B0C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v46 = &v43 - v13;
  v14 = type metadata accessor for ConfiguredUnit();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  type metadata accessor for ConfiguredUnitsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_100014B58();
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  v25 = sub_10022C350(&qword_100CDC760, &unk_100A8B0C8);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &v43 - v27;
  v30 = *(v29 + 56);
  sub_100824D34(v3, &v43 - v27);
  sub_100824D34(v48, &v28[v30]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100824D34(v28, v0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = *(v11 + 48);
        v33 = v46;
        sub_100824D98(v0, v46);
        sub_100824D98(&v28[v30], v33 + v32);
        v34 = v47;
        if (sub_100024D10(v33, 1, v47) == 1)
        {
          sub_10000394C(v33 + v32);
          if (!v35)
          {
            goto LABEL_19;
          }

          sub_1000180EC(v33, &qword_100CB6198, &unk_100A49BC0);
        }

        else
        {
          v37 = v45;
          sub_1005B3C14(v33, v45);
          sub_10000394C(v33 + v32);
          if (v35)
          {
            (*(v44 + 8))(v37, v34);
LABEL_19:
            sub_1000180EC(v33, &qword_100CBE7F8, &qword_100A8B0C0);
            goto LABEL_20;
          }

          v39 = v43;
          v38 = v44;
          (*(v44 + 32))(v43, v33 + v32, v34);
          sub_10000909C();
          sub_100824EC8(v40, v41, &protocol conformance descriptor for UnitConfiguration.Temperature);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v42 = *(v38 + 8);
          v42(v39, v34);
          v42(v37, v34);
          sub_1000180EC(v33, &qword_100CB6198, &unk_100A49BC0);
        }

LABEL_20:
        sub_100824E08(v28);
        goto LABEL_14;
      }

      sub_1000180EC(v0, &qword_100CB6198, &unk_100A49BC0);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_100824D34(v28, v24);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v16 + 32))(v20, &v28[v30], v14);
      static ConfiguredUnit.== infix(_:_:)();
      v36 = *(v16 + 8);
      v36(v20, v14);
      v36(v24, v14);
      sub_100824E08(v28);
      goto LABEL_14;
    }

    (*(v16 + 8))(v24, v14);
  }

  sub_1000180EC(v28, &qword_100CDC760, &unk_100A8B0C8);
LABEL_14:
  sub_10000536C();
}

void sub_10082410C(uint64_t a1, void *a2)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v3 = a2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100824188(void *a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v2 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1008241F4()
{
  v1 = *v0;
  v18 = v1;
  if (v1)
  {
    sub_100016DB8();
    v2 = v1;
    sub_1000750A0();
    sub_1000B8D48(&v18);
  }

  else
  {
    sub_100020320();
  }

  v3 = *(v0 + 8);
  v17 = v3;
  if (v3)
  {
    sub_100016DB8();
    v4 = v3;
    sub_1000750A0();
    sub_1000B8D48(&v17);
  }

  else
  {
    sub_100020320();
  }

  v5 = *(v0 + 16);
  v16 = v5;
  if (v5)
  {
    sub_100016DB8();
    v6 = v5;
    sub_1000750A0();
    sub_1000B8D48(&v16);
  }

  else
  {
    sub_100020320();
  }

  v7 = *(v0 + 24);
  v15 = v7;
  if (v7)
  {
    sub_100016DB8();
    v8 = v7;
    sub_1000750A0();
    sub_1000B8D48(&v15);
  }

  else
  {
    sub_100020320();
  }

  v9 = *(v0 + 32);
  v14 = v9;
  if (v9)
  {
    sub_100016DB8();
    v10 = v9;
    sub_1000750A0();
    sub_1000B8D48(&v14);
  }

  else
  {
    sub_100020320();
  }

  v11 = *(v0 + 40);
  v13 = v11;
  if (v11)
  {
    sub_100016DB8();
    v12 = v11;
    sub_1000750A0();
    sub_1000B8D48(&v13);
  }

  else
  {
    sub_100020320();
  }
}

Swift::Int sub_100824318()
{
  Hasher.init(_seed:)();
  sub_1008241F4();
  return Hasher._finalize()();
}

void sub_100824358()
{
  sub_10000C778();
  v2 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v29 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v28 = v6 - v5;
  v7 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ConfiguredUnit();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  type metadata accessor for ConfiguredUnitsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  sub_100824D34(v0, v21 - v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100824D98(v22, v11);
      Hasher._combine(_:)(2uLL);
      sub_1005B3C14(v11, v1);
      if (sub_100024D10(v1, 1, v2) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v25 = v28;
        v24 = v29;
        (*(v29 + 32))(v28, v1, v2);
        Hasher._combine(_:)(1u);
        sub_10000909C();
        sub_100824EC8(v26, v27, &protocol conformance descriptor for UnitConfiguration.Temperature);
        dispatch thunk of Hashable.hash(into:)();
        (*(v24 + 8))(v25, v2);
      }

      sub_1000180EC(v11, &qword_100CB6198, &unk_100A49BC0);
    }

    else
    {
      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v22, v12);
    Hasher._combine(_:)(0);
    sub_100824EC8(&qword_100CDC768, &type metadata accessor for ConfiguredUnit, &protocol conformance descriptor for ConfiguredUnit);
    dispatch thunk of Hashable.hash(into:)();
    (*(v14 + 8))(v18, v12);
  }

  sub_10000536C();
}

Swift::Int sub_100824688()
{
  Hasher.init(_seed:)();
  sub_100824358();
  return Hasher._finalize()();
}

double sub_1008246C8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_100823B44(a1, v6);
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

Swift::Int sub_100824730(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10082410C(v4, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10082477C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1008241F4();
  return Hasher._finalize()();
}

Swift::Int sub_1008247C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100824358();
  return Hasher._finalize()();
}

void sub_1008247FC()
{
  sub_10000C778();
  v2 = v1;
  v3 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for ConfiguredUnit();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for ConfiguredUnitsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_100824D34(v0, v16 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100824D98(v17, v6);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x8000000100AE01A0;
      *(inited + 72) = v3;
      v20 = sub_100042FB0((inited + 48));
      sub_1005B3C14(v6, v20);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000180EC(v6, &qword_100CB6198, &unk_100A49BC0);
    }

    else
    {
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_100A2C3F0;
      *(v23 + 32) = 0x6C6C417465736572;
      *(v23 + 40) = 0xE800000000000000;
      *(v23 + 72) = &type metadata for String;
      *(v23 + 48) = 1702195828;
      *(v23 + 56) = 0xE400000000000000;
      Dictionary.init(dictionaryLiteral:)();
    }
  }

  else
  {
    (*(v9 + 32))(v13, v17, v7);
    sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_100A2C3F0;
    *(v21 + 32) = 1953066613;
    *(v21 + 40) = 0xE400000000000000;
    *(v21 + 72) = v7;
    v22 = sub_100042FB0((v21 + 48));
    (*(v9 + 16))(v22, v13, v7);
    Dictionary.init(dictionaryLiteral:)();
    (*(v9 + 8))(v13, v7);
  }

  v2[3] = sub_10022C350(&qword_100CDC770, &qword_100A8B0D8);
  v2[4] = sub_100824E64();
  sub_100042FB0(v2);
  ShortDescription.init(name:_:)();
  sub_10000536C();
}

uint64_t sub_100824B88(uint64_t a1)
{
  sub_100824EC8(qword_100CDC780, type metadata accessor for ConfiguredUnitsAction, byte_100A8AEE0);

  return ShortDescribable.description.getter();
}

unint64_t sub_100824C88()
{
  result = qword_100CDC750;
  if (!qword_100CDC750)
  {
    result = swift_getWitnessTable(asc_100A8AFF8, &type metadata for ConfiguredUnitsState, v0, v1);
    atomic_store(result, &qword_100CDC750);
  }

  return result;
}

unint64_t sub_100824CE0()
{
  result = qword_100CDC758;
  if (!qword_100CDC758)
  {
    result = swift_getWitnessTable(byte_100A8B020, &type metadata for ConfiguredUnitState, v0, v1);
    atomic_store(result, &qword_100CDC758);
  }

  return result;
}

uint64_t sub_100824D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfiguredUnitsAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100824D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100824E08(uint64_t a1)
{
  v2 = type metadata accessor for ConfiguredUnitsAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100824E64()
{
  result = qword_100CDC778;
  if (!qword_100CDC778)
  {
    v3 = sub_10022E824(&qword_100CDC770, &qword_100A8B0D8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CDC778);
  }

  return result;
}

uint64_t sub_100824EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100824F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100824FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A24(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_severeAlert, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566BE4(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_nextHourPrecipitation, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v252, &v340);
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}