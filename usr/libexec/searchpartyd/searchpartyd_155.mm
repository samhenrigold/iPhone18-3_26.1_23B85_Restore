uint64_t sub_1010FCC1C(uint64_t a1)
{
  v3 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1010E78A8(a1, v1 + v4, *v5, *(v5 + 8));
}

uint64_t sub_1010FCCB0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1010E4930(a1, a2, v6);
}

uint64_t sub_1010FCD30(uint64_t a1)
{
  v4 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1010E4B20(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1010FCE68@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010E3D48(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1010FCE90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016C7DD0, &unk_101406148);
  result = sub_1010E8050(a1, a1 + *(v4 + 48));
  *a2 = result;
  return result;
}

double sub_1010FCF60@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 40);

  return result;
}

uint64_t sub_1010FCFCC(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v46 = &v38[-v6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v45 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v38[-v12];
  v44 = v14;
  __chkstk_darwin(v11);
  v16 = &v38[-v15];
  v17 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177AD20);
  v19 = *(v8 + 16);
  v19(v13, v16, v7);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v42 = v16;
    v23 = v22;
    v40 = swift_slowAlloc();
    v48 = v40;
    *v23 = 136315394;
    *(v23 + 4) = sub_1000136BC(0xD000000000000026, 0x800000010137B520, &v48);
    *(v23 + 12) = 2082;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v39 = v21;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v19;
    v25 = a3;
    v27 = v26;
    v43 = *(v8 + 8);
    v43(v13, v7);
    v28 = sub_1000136BC(v24, v27, &v48);
    a3 = v25;
    v19 = v41;

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v39, "%s %{public}s", v23, 0x16u);
    swift_arrayDestroy();

    v16 = v42;
  }

  else
  {

    v43 = *(v8 + 8);
    v43(v13, v7);
  }

  v29 = type metadata accessor for TaskPriority();
  v30 = v46;
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  v31 = v45;
  v19(v45, v16, v7);
  v32 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v33 = v16;
  v34 = (v44 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  (*(v8 + 32))(v35 + v32, v31, v7);
  v36 = (v35 + v34);
  *v36 = v47;
  v36[1] = a3;

  sub_10025EDD4(0, 0, v30, &unk_101406250, v35);

  return (v43)(v33, v7);
}

uint64_t sub_1010FD488(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1010EF708(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1010FD664(uint64_t a1)
{
  result = type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1010FD6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1010FD754(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1010FD800(uint64_t a1)
{
  sub_101101098(319, &qword_1016B64C8, &type metadata for HashedAdvertisement, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_101101098(319, &qword_1016B6880, &type metadata for FetchedLocation, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100395648(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1010FD900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1010FD9CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1010FDA98(void *a1, char a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016C83E0, &qword_101406B58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_1011016C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2 & 1;
  v14 = 0;
  sub_10110194C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_1000BC4D4(&qword_1016C83A0, &qword_101406B40);
    sub_1011019A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1010FDD04(uint64_t a1)
{
  v2 = sub_1011016C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FDD40(uint64_t a1)
{
  v2 = sub_1011016C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FDDC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xEC0000006F666E49;
  }

  if (*a2)
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xEC0000006F666E49;
  }

  else
  {
    v6 = 0xE200000000000000;
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

Swift::Int sub_1010FDE6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1010FDEEC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1010FDF58(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1010FDFE0(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006F666E49;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1010FE028(uint64_t a1)
{
  v2 = sub_101101D74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FE064(uint64_t a1)
{
  v2 = sub_101101D74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FE0A0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_1000BC4D4(&qword_1016C8468, &qword_101406F70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_101101D74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_100017D5C(a2, a3);
  sub_10049EBA4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, v16);
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    sub_1000BC4D4(&qword_1016C8450, &qword_101406F68);
    sub_101101DC8(&qword_1016C8470, &qword_1016C8478, &unk_101406344, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1010FE2A0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8260, &qword_1014064A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_101100D94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_100017D5C(v12, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v12, v13);
  if (!v2)
  {
    type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Date();
    sub_101100C10(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1010FE47C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for Date();
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016C8250, &qword_101406498);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_101100D94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v19 = v8;
  v12 = v22;
  v11 = v23;
  v13 = v10;
  v26 = 0;
  sub_1000E307C();
  v14 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v13;
  *v13 = v25;
  LOBYTE(v25) = 1;
  sub_101100C10(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v14);
  v15 = v18;
  (*(v20 + 32))(&v18[*(v19 + 20)], v5, v11);
  sub_101100D2C(v15, v21, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
  sub_100007BAC(a1);
  return sub_101100C78(v15, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
}

uint64_t sub_1010FE7C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000BC4D4(&qword_1016C8240, &unk_101406480);
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for KeyDropFetchResponse.RawLocationPayload(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_101100CD8();
  v12 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100007BAC(a1);
  }

  v18 = v5;
  v22 = a1;
  v24 = 0;
  sub_1000E307C();
  v13 = v21;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *v11 = v23;
  v24 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v11 + 1) = v23;
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v24 = 2;
  sub_1006476FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v22;
  v17 = 0;
  *(v11 + 4) = v23;
  type metadata accessor for UUID();
  LOBYTE(v23) = 3;
  sub_101100C10(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = v18;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10012C154(v15, &v11[*(v9 + 28)]);
  sub_1000BC4D4(&qword_1016B6918, &qword_101406490);
  v24 = 4;
  sub_100B7804C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  MEMORY[8](v8, v13);
  *&v11[*(v9 + 32)] = v23;
  sub_101100D2C(v11, v19, type metadata accessor for KeyDropFetchResponse.RawLocationPayload);
  sub_100007BAC(v14);
  return sub_101100C78(v11, type metadata accessor for KeyDropFetchResponse.RawLocationPayload);
}

void *sub_1010FECB0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10110020C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1010FED00(uint64_t a1)
{
  v2 = sub_101100D94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FED3C(uint64_t a1)
{
  v2 = sub_101100D94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FEDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEF64616F6C796150)
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

uint64_t sub_1010FEE94(uint64_t a1)
{
  v2 = sub_101101844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FEED0(uint64_t a1)
{
  v2 = sub_101101844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FEF38@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1010FEF70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F697461636F6CLL;
  v4 = 0x64496572616873;
  if (v1 != 3)
  {
    v4 = 0x656B636150766C74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7972636544636F6CLL;
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

uint64_t sub_1010FF018@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101100658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1010FF040(uint64_t a1)
{
  v2 = sub_101100CD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FF07C(uint64_t a1)
{
  v2 = sub_101100CD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FF0D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for KeyDropFetchResponse.RawLocationPayload(0);
  __chkstk_darwin(v5);
  v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001F280(a1, v19);
  sub_1010FE7C8(v19, v7);
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v9 = v7[2];
  v10 = v7[3];
  a2[2] = v9;
  a2[3] = v10;
  v11 = *(v5 + 28);
  v12 = type metadata accessor for KeyDropFetchResponse.LocationPayload(0);
  sub_100015794(v7 + v11, a2 + *(v12 + 28));
  v13 = v7[4];
  v14 = *(v7 + *(v5 + 32));
  sub_100017D5C(v9, v10);
  v15 = sub_100B9C7B8(v13, v14);
  sub_100007BAC(a1);
  a2[4] = v15;
  v16 = v7[1];
  if (v16 >> 60 == 15)
  {
    v17 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    v17 = *v7;
    sub_100017D5C(*v7, v7[1]);
  }

  result = sub_101100C78(v7, type metadata accessor for KeyDropFetchResponse.RawLocationPayload);
  *a2 = v17;
  a2[1] = v16;
  return result;
}

uint64_t sub_1010FF254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000101349FC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61636F4C6E736361 && a2 == 0xED0000736E6F6974)
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

uint64_t sub_1010FF344(uint64_t a1)
{
  v2 = sub_101100A04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FF380(uint64_t a1)
{
  v2 = sub_101100A04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FF3BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_101100814(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1010FF3EC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEA00000000007354;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (*a2)
  {
    v3 = 0xEA00000000007354;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int sub_1010FF480()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1010FF4F4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1010FF554(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1010FF5D0(void *a1@<X8>)
{
  v2 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0xEA00000000007354;
  }

  *a1 = 0x6E6F697461636F6CLL;
  a1[1] = v2;
}

uint64_t sub_1010FF60C@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
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

uint64_t sub_1010FF66C(uint64_t a1)
{
  v2 = sub_101100BBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FF6A8(uint64_t a1)
{
  v2 = sub_101100BBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FF6E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = type metadata accessor for Date();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016C8228, &qword_101406470);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  __chkstk_darwin(v6);
  v9 = v19 - v8;
  v10 = type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(0);
  __chkstk_darwin(v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_101100BBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v20 = v12;
  v13 = v22;
  LOBYTE(v26) = 1;
  sub_101100C10(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v25;
  v15 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19[1] = v10;
  v16 = *(v10 + 20);
  v17 = v20;
  (*(v13 + 32))(v20 + v16, v5, v14);
  v27 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 8))(v9, v15);
  *v17 = v26;
  sub_101100D2C(v17, v21, type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo);
  sub_100007BAC(a1);
  return sub_101100C78(v17, type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo);
}

uint64_t sub_1010FFA64(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8238, &qword_101406478);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_101100BBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_100017D5C(v12, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v12, v13);
  if (!v2)
  {
    type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Date();
    sub_101100C10(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1010FFC40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016C8210, &qword_101406468);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  Response = type metadata accessor for KeyDropImportedLocationFetchResponse(0);
  __chkstk_darwin(Response - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_101100B00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_101100C10(&qword_1016C8220, type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo, &unk_1014063E4);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_101100B54(v13, v11, type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo);
    sub_101100B54(v11, v12, type metadata accessor for KeyDropImportedLocationFetchResponse);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_1010FFF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t sub_1010FFF90(uint64_t a1)
{
  v2 = sub_101100B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FFFCC(uint64_t a1)
{
  v2 = sub_101100B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101100020(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C8388, &qword_101406B38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_1000035D0(a1, a1[3]);
  sub_1011016C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_101101718();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  sub_1000BC4D4(&qword_1016C83A0, &qword_101406B40);
  v8[15] = 1;
  sub_10110176C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100007BAC(a1);
  return v6;
}

void *sub_10110020C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C8440, &qword_101406F60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_101101D74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016C8450, &qword_101406F68);
    v13 = 1;
    sub_101101DC8(&qword_1016C8458, &qword_1016C8460, &unk_10140636C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v11;
    v9 = v12;
    sub_100017D5C(v11, v12);

    sub_100007BAC(a1);
    sub_100016590(v7, v9);
  }

  return v7;
}

uint64_t sub_10110046C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C83B8, &qword_101406B48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_1000035D0(a1, a1[3]);
  sub_101101844();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_101101718();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  sub_1000BC4D4(&qword_1016C83C8, &qword_101406B50);
  v8[15] = 1;
  sub_101101898();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100007BAC(a1);
  return v6;
}

uint64_t sub_101100658(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972636544636F6CLL && a2 == 0xED000079654B7470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64496572616873 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656B636150766C74 && a2 == 0xEA00000000007374)
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

uint64_t sub_101100814(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C81F0, &qword_101406460);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_101100A04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_101100A58();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v7 = v10;
  v9 = 1;
  sub_101100AAC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_101100A04()
{
  result = qword_1016C81F8;
  if (!qword_1016C81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C81F8);
  }

  return result;
}

unint64_t sub_101100A58()
{
  result = qword_1016C8200;
  if (!qword_1016C8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8200);
  }

  return result;
}

unint64_t sub_101100AAC()
{
  result = qword_1016C8208;
  if (!qword_1016C8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8208);
  }

  return result;
}

unint64_t sub_101100B00()
{
  result = qword_1016C8218;
  if (!qword_1016C8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8218);
  }

  return result;
}

uint64_t sub_101100B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_101100BBC()
{
  result = qword_1016C8230;
  if (!qword_1016C8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8230);
  }

  return result;
}

uint64_t sub_101100C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_101100C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_101100CD8()
{
  result = qword_1016C8248;
  if (!qword_1016C8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8248);
  }

  return result;
}

uint64_t sub_101100D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_101100D94()
{
  result = qword_1016C8258;
  if (!qword_1016C8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8258);
  }

  return result;
}

uint64_t sub_101100E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_101100EEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_101100F9C(uint64_t a1)
{
  sub_101101098(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_101101098(319, &unk_10169F500, &type metadata for Data, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100395648(319);
      if (v3 <= 0x3F)
      {
        sub_1011010E8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_101101098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1011010E8(uint64_t a1)
{
  if (!qword_1016C82D0)
  {
    sub_1000BC580(&qword_1016B6918, &qword_101406490);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016C82D0);
    }
  }
}

unint64_t sub_1011011A0()
{
  result = qword_1016C8310;
  if (!qword_1016C8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8310);
  }

  return result;
}

unint64_t sub_1011011F8()
{
  result = qword_1016C8318;
  if (!qword_1016C8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8318);
  }

  return result;
}

unint64_t sub_101101250()
{
  result = qword_1016C8320;
  if (!qword_1016C8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8320);
  }

  return result;
}

unint64_t sub_1011012A8()
{
  result = qword_1016C8328;
  if (!qword_1016C8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8328);
  }

  return result;
}

unint64_t sub_101101300()
{
  result = qword_1016C8330;
  if (!qword_1016C8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8330);
  }

  return result;
}

unint64_t sub_101101358()
{
  result = qword_1016C8338;
  if (!qword_1016C8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8338);
  }

  return result;
}

unint64_t sub_1011013B0()
{
  result = qword_1016C8340;
  if (!qword_1016C8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8340);
  }

  return result;
}

unint64_t sub_101101408()
{
  result = qword_1016C8348;
  if (!qword_1016C8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8348);
  }

  return result;
}

unint64_t sub_101101460()
{
  result = qword_1016C8350;
  if (!qword_1016C8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8350);
  }

  return result;
}

unint64_t sub_1011014B8()
{
  result = qword_1016C8358;
  if (!qword_1016C8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8358);
  }

  return result;
}

unint64_t sub_101101510()
{
  result = qword_1016C8360;
  if (!qword_1016C8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8360);
  }

  return result;
}

unint64_t sub_101101568()
{
  result = qword_1016C8368;
  if (!qword_1016C8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8368);
  }

  return result;
}

unint64_t sub_1011015C0()
{
  result = qword_1016C8370;
  if (!qword_1016C8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8370);
  }

  return result;
}

unint64_t sub_101101618()
{
  result = qword_1016C8378;
  if (!qword_1016C8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8378);
  }

  return result;
}

unint64_t sub_101101670()
{
  result = qword_1016C8380;
  if (!qword_1016C8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8380);
  }

  return result;
}

unint64_t sub_1011016C4()
{
  result = qword_1016C8390;
  if (!qword_1016C8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8390);
  }

  return result;
}

unint64_t sub_101101718()
{
  result = qword_1016C8398;
  if (!qword_1016C8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8398);
  }

  return result;
}

unint64_t sub_10110176C()
{
  result = qword_1016C83A8;
  if (!qword_1016C83A8)
  {
    sub_1000BC580(&qword_1016C83A0, &qword_101406B40);
    sub_1011017F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83A8);
  }

  return result;
}

unint64_t sub_1011017F0()
{
  result = qword_1016C83B0;
  if (!qword_1016C83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83B0);
  }

  return result;
}

unint64_t sub_101101844()
{
  result = qword_1016C83C0;
  if (!qword_1016C83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83C0);
  }

  return result;
}

unint64_t sub_101101898()
{
  result = qword_1016C83D0;
  if (!qword_1016C83D0)
  {
    sub_1000BC580(&qword_1016C83C8, &qword_101406B50);
    sub_101100C10(&qword_1016C83D8, type metadata accessor for KeyDropFetchResponse.LocationPayload, &unk_101406394);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83D0);
  }

  return result;
}

unint64_t sub_10110194C()
{
  result = qword_1016C83E8;
  if (!qword_1016C83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83E8);
  }

  return result;
}

unint64_t sub_1011019A0()
{
  result = qword_1016C83F0;
  if (!qword_1016C83F0)
  {
    sub_1000BC580(&qword_1016C83A0, &qword_101406B40);
    sub_101101A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83F0);
  }

  return result;
}

unint64_t sub_101101A24()
{
  result = qword_1016C83F8;
  if (!qword_1016C83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83F8);
  }

  return result;
}

unint64_t sub_101101ABC()
{
  result = qword_1016C8400;
  if (!qword_1016C8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8400);
  }

  return result;
}

unint64_t sub_101101B14()
{
  result = qword_1016C8408;
  if (!qword_1016C8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8408);
  }

  return result;
}

unint64_t sub_101101B6C()
{
  result = qword_1016C8410;
  if (!qword_1016C8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8410);
  }

  return result;
}

unint64_t sub_101101BC4()
{
  result = qword_1016C8418;
  if (!qword_1016C8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8418);
  }

  return result;
}

unint64_t sub_101101C1C()
{
  result = qword_1016C8420;
  if (!qword_1016C8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8420);
  }

  return result;
}

unint64_t sub_101101C74()
{
  result = qword_1016C8428;
  if (!qword_1016C8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8428);
  }

  return result;
}

unint64_t sub_101101CCC()
{
  result = qword_1016C8430;
  if (!qword_1016C8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8430);
  }

  return result;
}

unint64_t sub_101101D20()
{
  result = qword_1016C8438;
  if (!qword_1016C8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8438);
  }

  return result;
}

unint64_t sub_101101D74()
{
  result = qword_1016C8448;
  if (!qword_1016C8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8448);
  }

  return result;
}

uint64_t sub_101101DC8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C8450, &qword_101406F68);
    sub_101100C10(a2, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101101E78()
{
  result = qword_1016C8480;
  if (!qword_1016C8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8480);
  }

  return result;
}

unint64_t sub_101101ED0()
{
  result = qword_1016C8488;
  if (!qword_1016C8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8488);
  }

  return result;
}

unint64_t sub_101101F28()
{
  result = qword_1016C8490;
  if (!qword_1016C8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8490);
  }

  return result;
}

uint64_t sub_101101F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_101101FB0, 0, 0);
}

uint64_t sub_101101FB0()
{
  v1 = v0[4];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
  sub_10110338C();
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[6] = v2;
  v0[7] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[5];
  v7 = v0[3];

  v8 = swift_task_alloc();
  v0[8] = v8;
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v4;
  v8[5] = v5;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_101102178;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001CLL, 0x800000010137B570, sub_101103488, v8, &type metadata for () + 1);
}

uint64_t sub_101102178()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1007788DC;
  }

  else
  {

    v2 = sub_101102294;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101102294()
{
  sub_100016590(v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

void sub_1011022F8(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_100E76834;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_1016674D8;
  v12 = _Block_copy(aBlock);

  [a2 setWithUserIdentifier:isa beaconsData:v9 completion:v12];
  _Block_release(v12);
}

void sub_1011024E4(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016C84B8, &qword_101407108);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_10110322C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101667488;
  v10 = _Block_copy(aBlock);

  [a2 beaconInfoWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_101102694(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
      sub_1011032F4(&qword_1016C84C0, &qword_1016C84B0, &qword_101407100, &protocol conformance descriptor for <A> [A]);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016C84B8, &qword_101407108);
      CheckedContinuation.resume(returning:)();
      return sub_100006654(a1, a2);
    }

    sub_100991400();
    swift_allocError();
    *v3 = 1;
  }

  sub_1000BC4D4(&qword_1016C84B8, &qword_101407108);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_101102874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_101102898, 0, 0);
}

uint64_t sub_101102898()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for BeaconIdentifier(0);
  sub_101103440(&qword_1016A9138, type metadata accessor for BeaconIdentifier, &unk_1013BEF04);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  v0[5] = v1;
  v0[6] = v2;

  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  *v6 = v0;
  v6[1] = sub_100777B50;
  v8 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001DLL, 0x800000010137B550, sub_101103118, v5, v7);
}

void sub_101102A7C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016C8498, &qword_1014070F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_101103124;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101667438;
  v11 = _Block_copy(aBlock);

  [a2 beaconInfoWithBeaconIdentifierData:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_101102C4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v7 = __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  if (a3)
  {
    v16 = a3;
    swift_errorRetain();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1011032F4(&qword_1016C84A0, &qword_10169E368, &qword_1013D6690, &protocol conformance descriptor for <A> A?);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_10110314C(v11, v9);
      sub_1000BC4D4(&qword_1016C8498, &qword_1014070F8);
      CheckedContinuation.resume(returning:)();
      sub_100006654(a1, a2);
      return sub_1011031BC(v11);
    }

    sub_100991400();
    v12 = swift_allocError();
    *v13 = 1;
    v16 = v12;
  }

  sub_1000BC4D4(&qword_1016C8498, &qword_1014070F8);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_101102E94(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_101101F8C(a1, a2, v6);
}

uint64_t sub_101102F64()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
  *v3 = v0;
  v3[1] = sub_10077ECC8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x6E496E6F63616562, 0xEC00000029286F66, sub_101103224, v2, v4);
}

uint64_t sub_101103068(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_101102874(a1, a2, v6);
}

uint64_t sub_10110314C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011031BC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101103254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_1000BC4D4(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_1011032F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    sub_101103440(&qword_1016C84A8, type metadata accessor for KeyGenerationBeaconInfo, &unk_1013CFFF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10110338C()
{
  result = qword_1016C84C8;
  if (!qword_1016C84C8)
  {
    sub_1000BC580(&qword_1016C84B0, &qword_101407100);
    sub_101103440(&qword_1016C84D0, type metadata accessor for KeyGenerationBeaconInfo, &unk_1013CFFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C84C8);
  }

  return result;
}

uint64_t sub_101103440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1011034B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CharacteristicUUID(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*a1 + 40) UUID];
  sub_100B699C8(v5);

  LOBYTE(v6) = static UUID.== infix(_:_:)();
  sub_100A297E0(v5, type metadata accessor for CharacteristicUUID);
  return v6 & 1;
}

uint64_t sub_10110358C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for CharacteristicUUID(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = [*(*a1 + 40) UUID];
  sub_100B699C8(v9);

  v11 = a2[3];
  v12 = a2[4];
  sub_1000035D0(a2, v11);
  (*(v12 + 8))(v11, v12);
  LOBYTE(v10) = static UUID.== infix(_:_:)();
  sub_100A297E0(v7, type metadata accessor for CharacteristicUUID);
  sub_100A297E0(v9, type metadata accessor for CharacteristicUUID);
  return v10 & 1;
}

void sub_1011036D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CharacteristicUUID(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a3;
  v24 = a1;
  v25 = a2;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = *&Strong[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

  v13 = *(a4 + 16);
  if (v13)
  {
    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = objc_opt_self();
    v15 = a4 + 32;
    do
    {
      sub_10001F280(v15, v26);
      v16 = v27;
      v17 = v28;
      sub_1000035D0(v26, v27);
      (*(v17 + 8))(v16, v17);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v19 = type metadata accessor for UUID();
      (*(*(v19 - 8) + 8))(v10, v19);
      v20 = [v14 UUIDWithNSUUID:isa];

      sub_100007BAC(v26);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  sub_101103DC0();
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v12 discoverCharacteristics:v21 forService:*(a3 + 32)];
}

double sub_101103930(uint64_t a1, void (*a2)(void *, __n128), uint64_t a3)
{
  if (*(a1 + 48))
  {
    v5[0] = a1;
    v6 = 260;

    (a2)(v5);
    sub_101103E0C(v5);
  }

  else
  {
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
  }

  return result;
}

double sub_1011039A8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 40);

  return result;
}

uint64_t sub_101103A04()
{
  swift_unknownObjectUnownedDestroy();

  sub_1000BB27C(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Service()
{
  return objc_opt_self();
}

{
  return type metadata accessor for Service();
}

Swift::Int sub_101103A80()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_101103AF0(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(*v1 + 32);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101103B5C()
{
  v1 = type metadata accessor for ServiceUUID(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v13 = v0;
  type metadata accessor for Service();
  sub_101103D60(&unk_1016C8610, &unk_1014071A8);
  v5._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = [*(v0 + 32) UUID];
  sub_100B699C8(v3);

  _print_unlocked<A, B>(_:_:)();
  sub_100A297E0(v3, type metadata accessor for ServiceUUID);
  v10._countAndFlagsBits = 15913;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  return v14;
}

uint64_t sub_101103D60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Service();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101103DC0()
{
  result = qword_1016A9120;
  if (!qword_1016A9120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016A9120);
  }

  return result;
}

uint64_t sub_101103E0C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_101103E74(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v64 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v79 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = CKRecord.recordType.getter();
  v80 = v7;
  if (v16 == 0xD000000000000014 && 0x80000001014072B0 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      sub_10110596C();
      swift_allocError();
      *v46 = 0;
      goto LABEL_16;
    }
  }

  v77 = a2;
  v81 = v15;
  v19 = [a1 recordID];
  v20 = [v19 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    sub_1002EA198(v9);
    sub_10110596C();
    swift_allocError();
    *v22 = 1;
LABEL_16:
    swift_willThrow();

    return;
  }

  v76 = v11;
  v74 = *(v11 + 32);
  v74(v81, v9, v10);
  v23 = [a1 encryptedValues];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];

  if (!v25 || (v75 = v23, v84 = v25, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    sub_10110596C();
    swift_allocError();
    *v47 = 4;
    swift_willThrow();
LABEL_19:
    swift_unknownObjectRelease();

LABEL_20:
    (*(v76 + 8))(v81, v10);
    return;
  }

  v72 = v82;
  v26 = v83;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v75 objectForKeyedSubscript:v27];

  if (!v28 || (v73 = v26, v84 = v28, (swift_dynamicCast() & 1) == 0))
  {

    sub_10110596C();
    swift_allocError();
    *v48 = 3;
    swift_willThrow();
    goto LABEL_19;
  }

  v70 = v82;
  v71 = v83;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v75 objectForKeyedSubscript:v29];

  if (!v30 || (v84 = v30, (swift_dynamicCast() & 1) == 0))
  {

    sub_10110596C();
    swift_allocError();
    *v49 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v70, v71);
    goto LABEL_20;
  }

  v68 = v82;
  v69 = v83;
  v31 = objc_autoreleasePoolPush();
  v32 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v32];
  [v32 finishEncoding];
  v33 = [v32 encodedData];
  v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v35;

  objc_autoreleasePoolPop(v31);
  v36 = v77;
  v37 = v67;
  *v77 = v34;
  *(v36 + 8) = v37;
  v38 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v39 = v76;
  v40 = *(v76 + 16);
  v66 = *(v38 + 20);
  v67 = v38;
  v65 = v40;
  v40(v36 + v66, v81, v10);
  v41 = v80;
  UUID.init(uuidString:)();

  v42 = v21(v41, 1, v10);
  if (v42 == 1)
  {
    sub_1002EA198(v41);
    sub_10110596C();
    swift_allocError();
    *v43 = 5;
    swift_willThrow();
    sub_100016590(v68, v69);
    swift_unknownObjectRelease();

    sub_100016590(v70, v71);
    v44 = *(v39 + 8);
    v44(v81, v10);
    v45 = v67;
  }

  else
  {
    v50 = v79;
    v74(v79, v41, v10);
    v45 = v67;
    v65(v77 + v67[6], v50, v10);
    v52 = v70;
    v51 = v71;
    sub_100017D5C(v70, v71);
    v53 = v78;
    v54 = sub_10049C0AC(v52, v51);
    if (!v53)
    {
      LODWORD(v80) = v42;
      v56 = (v77 + v45[7]);
      *v56 = v54;
      v56[1] = v55;
      v57 = sub_10049BD68(v68, v69);
      v58 = v76;
      v61 = v60;
      swift_unknownObjectRelease();

      sub_100016590(v52, v51);
      v62 = *(v58 + 8);
      v62(v79, v10);
      v62(v81, v10);
      v63 = (v77 + v45[8]);
      *v63 = v57;
      v63[1] = v61;
      return;
    }

    sub_100016590(v68, v69);
    swift_unknownObjectRelease();

    sub_100016590(v52, v51);
    v44 = *(v76 + 8);
    v44(v50, v10);
    v44(v81, v10);
  }

  v59 = v77;
  sub_100016590(*v77, *(v77 + 8));
  v44((v59 + v66), v10);
  if (v42 != 1)
  {
    v44((v77 + v45[6]), v10);
  }
}

unint64_t sub_101104768()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  v4 = 0x654B63696C627570;
  if (v1 != 3)
  {
    v4 = 0x4B65746176697270;
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

uint64_t sub_101104814@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101105EA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10110483C(uint64_t a1)
{
  v2 = sub_101105B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101104878(uint64_t a1)
{
  v2 = sub_101105B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011048B8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C680);
  sub_1000076D4(v0, qword_10177C680);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_101104A14(id *a1)
{
  v2 = v1;
  v3 = *a1;
  [*a1 encryptedValues];
  swift_getObjectType();
  v4 = static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = v3;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Updating OwnedDeviceKeyRecord record: %@", 40, 2, v6);

  CKRecordKeyValueSetting.subscript.getter();
  v12 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v13 = UUID.uuidString.getter();
  if (!v27)
  {

LABEL_9:
    v26 = UUID.uuidString.getter();
    v27 = v16;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_10;
  }

  if (v26 == v13 && v27 == v14)
  {

    goto LABEL_10;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  CKRecordKeyValueSetting.subscript.getter();
  v17 = v2 + *(v12 + 32);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (v27 >> 60 == 15)
  {
    if (v19 >> 60 == 15)
    {
      sub_100017D5C(*v17, *(v17 + 8));
      sub_100006654(v26, v27);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v19 >> 60 == 15)
  {
LABEL_14:
    sub_100017D5C(*v17, *(v17 + 8));
    sub_100006654(v26, v27);
    sub_100006654(v18, v19);
LABEL_15:
    v26 = *v17;
    v27 = *(v17 + 8);
    sub_100017D5C(*v17, v27);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_16;
  }

  sub_100017D5C(*v17, *(v17 + 8));
  sub_100017D5C(v18, v19);
  sub_10002E98C(v26, v27);
  v25 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v26, v27, v18, v19);
  sub_100016590(v18, v19);
  sub_100006654(v26, v27);
  sub_100006654(v18, v19);
  sub_100006654(v26, v27);
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_16:
  CKRecordKeyValueSetting.subscript.getter();
  v20 = v2 + *(v12 + 28);
  v22 = *v20;
  v21 = *(v20 + 8);
  if (v27 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      sub_100017D5C(*v20, *(v20 + 8));
      swift_unknownObjectRelease();
      return sub_100006654(v26, v27);
    }
  }

  else if (v21 >> 60 != 15)
  {
    sub_100017D5C(*v20, *(v20 + 8));
    sub_100017D5C(v22, v21);
    sub_10002E98C(v26, v27);
    v24 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v26, v27, v22, v21);
    sub_100016590(v22, v21);
    sub_100006654(v26, v27);
    sub_100006654(v22, v21);
    sub_100006654(v26, v27);
    if (v24)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_21;
  }

  sub_100017D5C(*v20, *(v20 + 8));
  sub_100006654(v26, v27);
  sub_100006654(v22, v21);
LABEL_21:
  sub_100017D5C(*v20, *(v20 + 8));
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

uint64_t sub_101104F50(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8660, &qword_1014072F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_101105B0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v18 = 0;
  sub_100017D5C(v16, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v16, v17);
    v10 = type metadata accessor for OwnedDeviceKeyRecord(0);
    LOBYTE(v16) = 1;
    type metadata accessor for UUID();
    sub_101105C20(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + *(v10 + 28));
    v12 = v11[1];
    v16 = *v11;
    v17 = v12;
    v18 = 3;
    sub_100017D5C(v16, v12);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, v17);
    v14 = (v3 + *(v10 + 32));
    v15 = v14[1];
    v16 = *v14;
    v17 = v15;
    v18 = 4;
    sub_100017D5C(v16, v15);
    sub_10049DF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v16, v17);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101105220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = sub_1000BC4D4(&qword_1016C8650, &qword_1014072F0);
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for OwnedDeviceKeyRecord(0);
  __chkstk_darwin(v13);
  v15 = (v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_101105B0C();
  v32 = v12;
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(a1);
  }

  v17 = v9;
  v33 = v7;
  v35 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v15 = v34;
  LOBYTE(v34) = 1;
  sub_101105C20(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v13;
  v19 = v18;
  v20 = v15 + *(v13 + 20);
  v25[0] = *(v29 + 32);
  (v25[0])(v20, v17, v18);
  LOBYTE(v34) = 2;
  v21 = v33;
  v25[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v26;
  (v25[0])(v15 + *(v26 + 24), v21, v19);
  v35 = 3;
  sub_10049E3BC();
  v23 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + *(v22 + 28)) = v34;
  v35 = 4;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 8))(v32, v23);
  *(v15 + *(v22 + 32)) = v34;
  sub_101105B60(v15, v27);
  sub_100007BAC(a1);
  return sub_101105BC4(v15);
}

uint64_t sub_101105770()
{
  if (qword_101695268 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  sub_1000076D4(v0, qword_10177C680);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_101105844(uint64_t a1)
{
  *(a1 + 8) = sub_101105C20(&unk_1016C8620, type metadata accessor for OwnedDeviceKeyRecord, &unk_101407268);
  result = sub_101105C20(&unk_1016B1570, type metadata accessor for OwnedDeviceKeyRecord, &unk_101407240);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for OwnedDeviceKeyRecord(uint64_t a1)
{
  result = qword_1016C86C0;
  if (!qword_1016C86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101105914(uint64_t a1)
{
  result = sub_101105C20(&unk_1016C8630, type metadata accessor for OwnedDeviceKeyRecord, &unk_101407290);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10110596C()
{
  result = qword_1016C8640;
  if (!qword_1016C8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8640);
  }

  return result;
}

BOOL sub_1011059C0(uint64_t a1, uint64_t a2)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = type metadata accessor for OwnedDeviceKeyRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *v8;
  v10 = v8[1];
  sub_100017D5C(v6, v7);
  sub_100017D5C(v9, v10);
  v11 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7, v9, v10);
  sub_100016590(v9, v10);
  sub_100016590(v6, v7);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v4 + 32);
  v13 = a1 + v12;
  v14 = *(a1 + v12);
  v15 = *(v13 + 8);
  v16 = (a2 + v12);
  v17 = *v16;
  v18 = v16[1];
  sub_100017D5C(v14, v15);
  sub_100017D5C(v17, v18);
  v19 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v14, v15, v17, v18);
  sub_100016590(v17, v18);
  sub_100016590(v14, v15);
  return v19;
}

unint64_t sub_101105B0C()
{
  result = qword_1016C8658;
  if (!qword_1016C8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8658);
  }

  return result;
}

uint64_t sub_101105B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedDeviceKeyRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101105BC4(uint64_t a1)
{
  v2 = type metadata accessor for OwnedDeviceKeyRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101105C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_101105CB0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_101105D44()
{
  result = qword_1016C8708;
  if (!qword_1016C8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8708);
  }

  return result;
}

unint64_t sub_101105D9C()
{
  result = qword_1016C8710;
  if (!qword_1016C8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8710);
  }

  return result;
}

unint64_t sub_101105DF4()
{
  result = qword_1016C8718;
  if (!qword_1016C8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8718);
  }

  return result;
}

unint64_t sub_101105E4C()
{
  result = qword_1016C8720;
  if (!qword_1016C8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8720);
  }

  return result;
}

uint64_t sub_101105EA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010137B600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_101106080@<X0>(_DWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_101106130(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1011060AC(uint64_t a1)
{
  *(a1 + 8) = sub_1011060DC();
  result = sub_10030FCD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1011060DC()
{
  result = qword_1016C8730;
  if (!qword_1016C8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8730);
  }

  return result;
}

uint64_t sub_101106130(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_100101824();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryDecodingError.decodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_101106310@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1011063C0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10110633C(uint64_t a1)
{
  *(a1 + 8) = sub_10110636C();
  result = sub_100422278();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10110636C()
{
  result = qword_1016C8738;
  if (!qword_1016C8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8738);
  }

  return result;
}

uint64_t sub_1011063C0(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryDecodingError.decodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

__n128 sub_101106590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1011065B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1011065FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_101106664@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      static Date.trustedNow.getter(v8);
      Date.addingTimeInterval(_:)();
      (*(v5 + 8))(v8, v4);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      sub_101074054(v22);
      v12 = v16;
      v13 = 1;
      v15 = 60.0;
    }

    else
    {
      static Date.trustedNow.getter(v8);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      sub_1010748F4(v22);

      Date.addingTimeInterval(_:)();
      (*(v5 + 8))(v8, v4);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101074060(v22);
      v12 = v18;
      v13 = 1;
      v15 = 25.0;
    }

    v14 = 1;
  }

  else if (a1)
  {
    static Date.distantPast.getter();
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074054(v22);
    v12 = v17;
    v14 = 0;
    v13 = 1;
    v15 = 25.0;
  }

  else
  {
    static Date.distantFuture.getter();
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074054(v22);
    v12 = v11;
    v13 = 0;
    v14 = 1;
    v15 = -1.0;
  }

  *a2 = v14;
  *(a2 + 1) = v13;
  *(a2 + 8) = v15;
  Configuration = type metadata accessor for LocationFetchConfiguration(0);
  result = (*(v5 + 32))(a2 + *(Configuration + 28), v10, v4);
  *(a2 + *(Configuration + 32)) = v12;
  return result;
}

uint64_t sub_101106A80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10062CFC0(a3, v3[4]);
  v12 = v3[3];
  v34 = a2;
  v33 = &v34;
  sub_1002EFACC(sub_1002EFAF0, v32, v12);
  v13 = v3[1];
  if (*(v13 + 16))
  {
    v14 = sub_1005C8A30(a1, v13);
    v15 = v14 && v11;
    v16 = v14;
  }

  else
  {
    v16 = 1;
    v15 = v11;
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B368);
  (*(v8 + 16))(v10, a1, v7);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v16;
    v22 = v21;
    v34 = v21;
    *v20 = 67110147;
    *(v20 + 4) = v15 & 1;
    *(v20 + 8) = 2160;
    *(v20 + 10) = 1752392040;
    *(v20 + 18) = 2081;
    sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v11;
    v24 = v15;
    v26 = v25;
    (*(v8 + 8))(v10, v7);
    v27 = sub_1000136BC(v23, v26, &v34);
    v15 = v24;

    *(v20 + 20) = v27;
    *(v20 + 28) = 1024;
    *(v20 + 30) = v31;
    *(v20 + 34) = 1024;
    *(v20 + 36) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Session includes(%{BOOL}d) beacon %{private,mask.hash}s.\nbeaconIncluded %{BOOL}d, locationSourceIncluded %{BOOL}d.", v20, 0x28u);
    sub_100007BAC(v22);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  return v15 & 1;
}

uint64_t sub_101106DA0(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = sub_10062CFC0(a2, v3[4]);
  v7 = v3[3];
  v16 = a3;
  v15[2] = &v16;
  sub_1002EFACC(sub_1002EF830, v15, v7);
  if (*(v3[1] + 16))
  {

    v9 = sub_10000954C(v8);

    v10 = a1[3];
    v11 = a1[4];
    sub_1000035D0(a1, v10);
    v12 = (*(v11 + 16))(v10, v11);
    sub_101106EB4(v9, v12);
    LOBYTE(v10) = v13;

    v6 &= v10;
  }

  return v6 & 1;
}

void sub_101106EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v14 = a2 + 56;
    v15 = 1 << *(a2 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a2 + 56);
    v37 = v5 + 32;
    v38 = (v15 + 63) >> 6;
    v41 = a1 + 56;
    v42 = v5 + 16;
    v43 = (v5 + 8);

    v18 = 0;
    v32 = a2 + 56;
    v33 = v13;
    v36 = a2;
    v34 = v5;
    v19 = v38;
    if (v17)
    {
      while (1)
      {
        v20 = v18;
LABEL_10:
        v21 = *(v5 + 72);
        v22 = *(a2 + 48) + v21 * (__clz(__rbit64(v17)) | (v20 << 6));
        v39 = *(v5 + 16);
        v40 = v21;
        v39(v13, v22, v4);
        (*(v5 + 32))(v11, v13, v4);
        v23 = *(a1 + 16);
        v35 = v43 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v24 = v11;
        if (!v23)
        {
          break;
        }

        sub_1000096E8(&qword_1016967B0, &protocol conformance descriptor for UUID);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v26 = -1 << *(a1 + 32);
        v27 = v25 & ~v26;
        if (((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          break;
        }

        v28 = a1;
        v17 &= v17 - 1;
        v29 = ~v26;
        while (1)
        {
          v39(v8, *(v28 + 48) + v27 * v40, v4);
          sub_1000096E8(&qword_1016984A0, &protocol conformance descriptor for UUID);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          v31 = *v43;
          (*v43)(v8, v4);
          if (v30)
          {
            break;
          }

          v27 = (v27 + 1) & v29;
          if (((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            v31(v24, v4);
            goto LABEL_18;
          }
        }

        v11 = v24;
        v31(v24, v4);
        v18 = v20;
        a2 = v36;
        a1 = v28;
        v13 = v33;
        v5 = v34;
        v14 = v32;
        v19 = v38;
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      (*v43)(v11, v4);
LABEL_18:
    }

    else
    {
LABEL_7:
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v19)
        {
          goto LABEL_18;
        }

        v17 = *(v14 + 8 * v20);
        ++v18;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_101107284(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_101107324()
{
  result = qword_1016C87E8;
  if (!qword_1016C87E8)
  {
    sub_1000BC580(&qword_1016C87F0, qword_101407738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C87E8);
  }

  return result;
}

unint64_t sub_10110738C()
{
  result = qword_1016C87F8;
  if (!qword_1016C87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C87F8);
  }

  return result;
}

unint64_t sub_1011073E0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E65644972657375;
    v6 = 0x65644970756F7267;
    if (a1 != 2)
    {
      v6 = 0x6574614465736162;
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
    v1 = 0x754E6C6169726573;
    v2 = 0x42646567616E616DLL;
    if (a1 != 7)
    {
      v2 = 0x644974726170;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1701667182;
    if (a1 != 4)
    {
      v3 = 0x6449726F646E6576;
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

uint64_t sub_101107520(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C88E8, &qword_101407B50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1011097EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[31] = 0;
  type metadata accessor for UUID();
  sub_101109900(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
    v8[30] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[29] = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[28] = 3;
    type metadata accessor for Date();
    sub_101109900(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[27] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[26] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[25] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[24] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[15] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_10110787C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  sub_101109900(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  dispatch thunk of Hashable.hash(into:)();
  sub_100015794(v1 + v9[6], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for Date();
  sub_101109900(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v9[9]));
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v9[11]));
  Hasher._combine(_:)(*(v1 + v9[12]));
}

uint64_t sub_101107B3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Date();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v44 = &v38 - v6;
  v7 = type metadata accessor for UUID();
  v47 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v38 - v11;
  v51 = sub_1000BC4D4(&qword_1016C88D8, &qword_101407B48);
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1011097EC();
  v50 = v13;
  v17 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(a1);
  }

  v18 = v10;
  v52 = v16;
  v61 = 0;
  sub_101109900(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v7;
  v20 = *(v47 + 32);
  v20(v52, v49, v19);
  v60 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = v19;
  v41 = v14;
  v21 = v20;
  v22 = v14;
  v21(&v52[*(v14 + 20)], v18, v19);
  v59 = 2;
  v23 = v44;
  v38 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v39 = a1;
  v24 = v22;
  v25 = v52;
  sub_10012C154(v23, &v52[v22[6]]);
  v58 = 3;
  sub_101109900(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = v43;
  v27 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v45 + 32))(v25 + v24[7], v26, v27);
  v57 = 4;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v48;
  v30 = (v25 + v24[8]);
  *v30 = v28;
  v30[1] = v31;
  v56 = 5;
  *(v25 + v24[9]) = KeyedDecodingContainer.decode(_:forKey:)();
  v55 = 6;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = (v25 + v24[10]);
  *v33 = v32;
  v33[1] = v34;
  v54 = 7;
  *(v25 + v24[11]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v53 = 8;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 0;
  LOBYTE(v27) = v35;
  (*(v29 + 8))(v50, v51);
  v36 = v42;
  *(v25 + *(v41 + 48)) = v27;
  sub_101109840(v25, v36);
  sub_100007BAC(v39);
  return sub_1011098A4(v25);
}

uint64_t sub_1011082F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101108FCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10110831C(uint64_t a1)
{
  v2 = sub_1011097EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101108358(uint64_t a1)
{
  v2 = sub_1011097EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1011083C4()
{
  Hasher.init(_seed:)();
  sub_10110787C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_101108408(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10110787C(v2);
  return Hasher._finalize()();
}

uint64_t sub_101108448()
{
  _StringGuts.grow(_:)(29);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x203A74766461202CLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  sub_100019D9C();
  v2._countAndFlagsBits = RawRepresentable<>.hexString.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A6B746C202CLL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = Data.subdata(in:)();
  v6 = v5;
  v7 = Data.hexString.getter();
  v9 = v8;
  sub_100016590(v4, v6);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  return 0x203A7865646E693CLL;
}

uint64_t sub_101108598(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C88D0, &qword_101407B40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_1011096E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = *v3;
  v11[0] = 0;
  sub_10028EAF0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 16);
    v13 = *(v3 + 16);
    v12 = 2;
    sub_101109734(&v15, v11);
    sub_1002E6E8C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 32);
    v14 = v13;
    v12 = 3;
    sub_101109790(&v14, v11);
    sub_10049F978();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1011087C8()
{
  v1 = 0x65636E6575716573;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x697463656E6E6F63;
  }

  if (*v0)
  {
    v1 = 0x7865646E69;
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

uint64_t sub_101108850@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011092CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_101108878(uint64_t a1)
{
  v2 = sub_1011096E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011088B4(uint64_t a1)
{
  v2 = sub_1011096E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1011088F0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10110943C(a2, v6);
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

BOOL sub_101108950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v31 = v14;
  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  sub_100015794(a1 + v15, v13);
  sub_100015794(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_100015794(v13, v10);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v16], v4);
      sub_101109900(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_10000B3A8(v13, &qword_1016AF880, &unk_10138CE20);
    return 0;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
LABEL_10:
  v20 = v31;
  if (static Date.== infix(_:_:)())
  {
    if (v21 = v20[8], v22 = *(a1 + v21), v23 = *(a1 + v21 + 8), v24 = (a2 + v21), v22 == *v24) && v23 == v24[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (*(a1 + v20[9]) == *(a2 + v20[9]))
      {
        if (v25 = v20[10], v26 = *(a1 + v25), v27 = *(a1 + v25 + 8), v28 = (a2 + v25), v26 == *v28) && v27 == v28[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          if (*(a1 + v20[11]) == *(a2 + v20[11]))
          {
            return *(a1 + v20[12]) == *(a2 + v20[12]);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for ManagedCBPeripheralBeaconInfo(uint64_t a1)
{
  result = qword_1016C8858;
  if (!qword_1016C8858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101108D98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_101108DDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_101108E64(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100395648(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_101108F78()
{
  result = qword_1016C88B8;
  if (!qword_1016C88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88B8);
  }

  return result;
}

uint64_t sub_101108FCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574614465736162 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x42646567616E616DLL && a2 == 0xEF794D646E694679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1011092CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101351250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xED000079654B6E6FLL)
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

uint64_t sub_10110943C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C88C0, &qword_101407B38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1011096E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v19 = 0;
  sub_10028EA9C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  LOBYTE(v17) = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 2;
  sub_1002E6D90();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v17;
  v15 = v18;
  v19 = 3;
  sub_10049F924();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v17;
  v12 = v18;
  v13 = v15;
  sub_100017D5C(v10, v15);
  sub_100017D5C(v11, v12);
  sub_100007BAC(a1);
  sub_100016590(v10, v13);
  result = sub_100016590(v11, v12);
  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v10;
  *(a2 + 24) = v13;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

unint64_t sub_1011096E0()
{
  result = qword_1016C88C8;
  if (!qword_1016C88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88C8);
  }

  return result;
}

unint64_t sub_1011097EC()
{
  result = qword_1016C88E0;
  if (!qword_1016C88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88E0);
  }

  return result;
}

uint64_t sub_101109840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011098A4(uint64_t a1)
{
  v2 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101109900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10110996C()
{
  result = qword_1016C88F0;
  if (!qword_1016C88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88F0);
  }

  return result;
}

unint64_t sub_1011099C4()
{
  result = qword_1016C88F8;
  if (!qword_1016C88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88F8);
  }

  return result;
}

unint64_t sub_101109A1C()
{
  result = qword_1016C8900;
  if (!qword_1016C8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8900);
  }

  return result;
}

unint64_t sub_101109A74()
{
  result = qword_1016C8908;
  if (!qword_1016C8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8908);
  }

  return result;
}

unint64_t sub_101109ACC()
{
  result = qword_1016C8910;
  if (!qword_1016C8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8910);
  }

  return result;
}

unint64_t sub_101109B24()
{
  result = qword_1016C8918;
  if (!qword_1016C8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8918);
  }

  return result;
}

uint64_t sub_101109B78()
{
  _StringGuts.grow(_:)(89);
  v1._countAndFlagsBits = 0x54646E6553706174;
  v1._object = 0xEB00000000203A73;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x492065726168530ALL;
  v3._object = 0xEB00000000203A44;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 8));
  v4._countAndFlagsBits = 0x726F74697369760ALL;
  v4._object = 0xEF203A746E756F43;
  String.append(_:)(v4);
  sub_1000BC4D4(&qword_101697E58, &qword_1013C8210);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._object = 0x800000010137B720;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x800000010137B740;
  String.append(_:)(v8);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  return 0;
}

uint64_t sub_101109D6C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C8930, &qword_101407E38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10110A5F8();
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
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_101109F50()
{
  v1 = *v0;
  v2 = 0x54646E6553706174;
  v3 = 0x43726F7469736976;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64496572616873;
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

uint64_t sub_101109FFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10110A1B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10110A024(uint64_t a1)
{
  v2 = sub_10110A5F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10110A060(uint64_t a1)
{
  v2 = sub_10110A5F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10110A09C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10110A37C(a2, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 31) = *&v7[15];
  }

  return result;
}

__n128 sub_10110A100(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10110A114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_10110A15C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10110A1B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54646E6553706174 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496572616873 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43726F7469736976 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010137B760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134DAF0 == a2)
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

uint64_t sub_10110A37C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C8920, &qword_101407E30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10110A5F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v27 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v22 = v10;
  v25 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v14;
  v20 = v13;
  v24 = 3;
  HIDWORD(v19) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  v17 = v22;
  *a2 = v9;
  *(a2 + 8) = v17;
  v18 = v20;
  *(a2 + 16) = v12;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21 & 1;
  *(a2 + 33) = BYTE4(v19);
  *(a2 + 34) = v15;
  return result;
}

unint64_t sub_10110A5F8()
{
  result = qword_1016C8928;
  if (!qword_1016C8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8928);
  }

  return result;
}

unint64_t sub_10110A660()
{
  result = qword_1016C8938;
  if (!qword_1016C8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8938);
  }

  return result;
}

unint64_t sub_10110A6B8()
{
  result = qword_1016C8940;
  if (!qword_1016C8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8940);
  }

  return result;
}

unint64_t sub_10110A710()
{
  result = qword_1016C8948;
  if (!qword_1016C8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8948);
  }

  return result;
}

uint64_t sub_10110A764(int64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E752ELL;
      case 1:
        return 0x79646165726C612ELL;
      case 2:
        return 0xD000000000000012;
    }

LABEL_13:
    _StringGuts.grow(_:)(29);
    v3._countAndFlagsBits = 0xD00000000000001BLL;
    v3._object = 0x8000000101379890;
    String.append(_:)(v3);
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    sub_10108890C(a1);
    return 0;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x6F707075736E752ELL;
    }

    if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    goto LABEL_13;
  }

  if (a1 == 3)
  {
    return 0x676E697373696D2ELL;
  }

  else
  {
    return 0x6544654D746F6E2ELL;
  }
}

unint64_t sub_10110A934(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7A696C616E69662ELL;
    v7 = 0xD000000000000017;
    if (a1 != 10)
    {
      v7 = 0x64696C61766E692ELL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000014;
    v9 = 0x43676E6972696170;
    if (a1 != 7)
    {
      v9 = 0x656966697265762ELL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74616974696E692ELL;
    v2 = 0xD000000000000014;
    v3 = 0xD000000000000016;
    if (a1 == 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000018;
    if (a1 == 1)
    {
      v4 = 0xD000000000000019;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_10110AADC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10110EB90(*a1);
  *a2 = result;
  return result;
}

void *sub_10110ABC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor;
  v9 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  *(v3 + v8) = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  *(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 0;
  v10 = v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_contributorContext) = 0;
  v11 = static Data.random(bytes:)();
  v13 = v12;
  type metadata accessor for AccessoryPairingInfo(0);
  swift_allocObject();
  sub_100017D5C(v11, v13);
  v14 = sub_10024C9E8(v11, v13);
  if (v14)
  {
    *(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) = v14;
    *(v3 + 24) = a3;
    v15 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_accessoryIdentifier;
    v16 = type metadata accessor for UUID();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v4 + v15, a1, v16);
    *(v4 + 16) = a2;
    v18 = qword_101694FA8;

    v19 = a3;

    if (v18 != -1)
    {
      swift_once();
    }

    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v24)
    {
      (*(v17 + 8))(a1, v16);
      sub_100016590(v11, v13);
    }

    else
    {
      CurrentLocationMonitor.requestLocation()();

      sub_100016590(v11, v13);
      (*(v17 + 8))(a1, v16);
    }
  }

  else
  {
    v20 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v23 = v20;
      swift_once();
      v20 = v23;
    }

    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10177C410, "Missing critical information to init pairing coordinator.", 57, 2, _swiftEmptyArrayStorage);

    sub_100016590(v11, v13);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 8))(a1, v21);

    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext, &qword_101697380, &unk_10138BEF0);

    type metadata accessor for AccessoryPairingCoordinator(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_10110AF9C(uint64_t a1)
{
  v2 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C410, "AccessoryPairingCoordinator.deinit()", 36, 2, _swiftEmptyArrayStorage);

  v3 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_accessoryIdentifier;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  sub_10000B3A8(v1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext, &qword_101697380, &unk_10138BEF0);

  return v1;
}

uint64_t sub_10110B0C8(uint64_t a1)
{
  sub_10110AF9C(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryPairingCoordinator(uint64_t a1)
{
  result = qword_1016C8988;
  if (!qword_1016C8988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10110B174(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10110B248()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 24);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v8 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v10 = UUID.uuidString.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v8, "invalidatePairingSync accessory %@.", 35, 2, v9);

  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  swift_allocObject();

  return Future.init(_:)();
}

id sub_10110B46C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v75 = type metadata accessor for AccessoryUnpairData(0);
  __chkstk_darwin(v75);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = __chkstk_darwin(v8 - 8);
  v76 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v60 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v60 - v18;
  v19 = sub_100EF9784();
  v21 = v20;
  v77 = a3;
  v22 = *(a3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v23 = v22[16];
  if (!v23)
  {

LABEL_14:
    v43 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v59 = v43;
      swift_once();
      v43 = v59;
    }

    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, qword_10177C410, "Insufficient info to remove pairing lock.", 41, 2, _swiftEmptyArrayStorage);
    v80 = 6;
    v81 = 0u;
    v82 = 0u;
    v83 = 267;
    a1(&v80);

    return sub_10000B3A8(&v80, &qword_1016B1CA0, &qword_1013918C0);
  }

  v78 = a1;
  v24 = a2;
  v73 = v22[15];
  v74 = v19;
  v25 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_1000D2A70(v22 + v25, v12, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
LABEL_13:
    a1 = v78;
    goto LABEL_14;
  }

  v26 = *(v14 + 32);
  v27 = v79;
  v70 = v14 + 32;
  v71 = v7;
  v69 = v26;
  v26(v79, v12, v13);
  v28 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v28 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    v42 = *(v14 + 8);

    v42(v27, v13);

    goto LABEL_13;
  }

  v72 = v14;

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v30 = result;
  v67 = v24;
  uniqueChipID = MobileGestalt_get_uniqueChipID();

  result = MobileGestalt_get_current_device();
  v31 = v78;
  v32 = v71;
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v33 = result;
  v66 = v21;
  chipID = MobileGestalt_get_chipID();

  (*(v72 + 16))(v17, v79, v13);
  v80 = uniqueChipID;
  uniqueChipID = dispatch thunk of CustomStringConvertible.description.getter();
  v65 = v35;
  v80 = chipID;
  v64 = dispatch thunk of CustomStringConvertible.description.getter();
  v63 = v36;
  v37 = v22[12];
  v62 = v22[11];
  v38 = v22[14];
  v39 = v67;
  if (v38 >> 60 == 15)
  {
    v40 = v37;

    v61 = 0;
    v41 = 0;
  }

  else
  {
    v80 = v22[13];
    *&v81 = v38;
    sub_1002313AC();
    v40 = v37;

    v61 = RawRepresentable<>.hexString.getter();
    v41 = v44;
  }

  v69(v32, v17, v13);
  v45 = v75;
  v46 = (v32 + *(v75 + 20));
  v47 = v74;
  *v46 = v73;
  v46[1] = v23;
  v48 = (v32 + v45[6]);
  *v48 = v47;
  v48[1] = v66;
  v49 = (v32 + v45[7]);
  v50 = v65;
  *v49 = uniqueChipID;
  v49[1] = v50;
  v51 = (v32 + v45[8]);
  v52 = v63;
  *v51 = v64;
  v51[1] = v52;
  v53 = (v32 + v45[9]);
  *v53 = v62;
  v53[1] = v40;
  v54 = (v32 + v45[10]);
  *v54 = v61;
  v54[1] = v41;
  v56 = v76;
  v55 = v77;
  v57 = v72;
  (*(v72 + 56))(v76, 1, 1, v13);
  v58 = swift_allocObject();
  v58[2] = v31;
  v58[3] = v39;
  v58[4] = v55;

  sub_100416BFC(v56, v32, sub_10110ECC8, v58);

  sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
  sub_10110EDA4(v32, type metadata accessor for AccessoryUnpairData);
  return (*(v57 + 8))(v79, v13);
}

uint64_t sub_10110BB18(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    v6 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v7 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    v13[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100008C00();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Failed to remove pairing lock due to %@.", 40, 2, v8, v13[0]);

    v13[0] = a1;
    v14 = 256;
    swift_errorRetain();
    a2(v13);
  }

  else
  {
    *(a4 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 11;
    HIBYTE(v14) = 0;
    (a2)(v13, a2, a3);
  }

  return sub_10000B3A8(v13, &qword_1016B1CA0, &qword_1013918C0);
}

uint64_t sub_10110BCB8(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v57 = a2;
  v50 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin(v5);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v4;
  v16 = *(v4 + 24);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v47 = v8;
    v12 = v60;
    v15 = static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  v21 = v58;
  v22 = UUID.uuidString.getter();
  v24 = v23;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100008C00();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v19, "completeFinalizePairing for accessory %@. Setting state to finalized to ignore timeout", 86, 2, v20);

  *(v21 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 9;
  v25 = v21;
  sub_1000BC488();
  v26 = v47;
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v47);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v26);
  v28 = swift_allocObject();
  v29 = v49;
  v28[2] = v48;
  v28[3] = v29;
  v30 = v50;
  v28[4] = v50;
  aBlock[4] = sub_10110EC20;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101667DD0;
  v31 = _Block_copy(aBlock);

  v32 = v30;
  v33 = v51;
  static DispatchQoS.unspecified.getter();
  v60[0] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v34 = v53;
  v35 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v55 + 8))(v34, v35);
  (*(v52 + 8))(v33, v54);

  sub_10024DED0(v59);

  v36 = v59[5];
  v12[4] = v59[4];
  v12[5] = v36;
  v37 = v59[7];
  v12[6] = v59[6];
  v12[7] = v37;
  v38 = v59[1];
  *v12 = v59[0];
  v12[1] = v38;
  v39 = v59[3];
  v12[2] = v59[2];
  v12[3] = v39;
  result = sub_10058B134(v60);
  if (result != 1)
  {
    v41 = v12[5];
    v12[12] = v12[4];
    v12[13] = v41;
    v42 = v12[7];
    v12[14] = v12[6];
    v12[15] = v42;
    v43 = v12[1];
    v12[8] = *v12;
    v12[9] = v43;
    v44 = v12[3];
    v12[10] = v12[2];
    v12[11] = v44;
    v45 = type metadata accessor for Transaction();
    __chkstk_darwin(v45);
    *(&v46 - 2) = v25;
    *(&v46 - 1) = aBlock;
    static Transaction.named<A>(_:with:)();
    return sub_10000B3A8(v59, &qword_1016C8AE0, &qword_101408148);
  }

  return result;
}

uint64_t sub_10110C300(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryPairingLockAckResponse(0);
  v3 = __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v26 - v6;
  v8 = sub_1000BC4D4(&qword_10169F840, &unk_1013A1790);
  __chkstk_darwin(v8);
  v10 = (v26 - v9);
  Transaction.capture()();
  sub_1000D2A70(a1, v10, &qword_10169F840, &unk_1013A1790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v26[1] = v11;
    type metadata accessor for SPPairingSessionError(0);
    v15 = v11;
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "#Durian: Ack register failed with error - %@", 44, 2, v14);
  }

  else
  {
    sub_10110ED3C(v10, v7, type metadata accessor for AccessoryPairingLockAckResponse);
    v20 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v21 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    sub_10110ECD4(v7, v5, type metadata accessor for AccessoryPairingLockAckResponse);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100008C00();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Ack register was success. %@", 28, 2, v22);

    return sub_10110EDA4(v7, type metadata accessor for AccessoryPairingLockAckResponse);
  }
}

uint64_t sub_10110C658(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v16 = 0x7365547265646E75;
  v17 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v18 & 1) == 0)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074624(v16);
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v12 = *(v6 + 8);
  v12(v9, v5);
  v13 = type metadata accessor for Transaction();
  __chkstk_darwin(v13);
  *(&v15 - 4) = v2;
  *(&v15 - 3) = v11;
  *(&v15 - 2) = a1;
  *(&v15 - 1) = a2;
  static Transaction.named<A>(_:with:)();
  return (v12)(v11, v5);
}

unint64_t sub_10110C914()
{
  result = qword_1016C8AD0;
  if (!qword_1016C8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8AD0);
  }

  return result;
}

uint64_t sub_10110C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v19[0] = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(a2 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a4;
  v16 = v19[0];
  v15[4] = a5;
  v15[5] = v16;
  aBlock[4] = sub_10110EC14;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101667CE0;
  v17 = _Block_copy(aBlock);

  sub_100012908(a4, a5);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_10110CC40(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v56 = a3;
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v49 = a2;
    v52 = v4;
    Transaction.capture()();
    v15 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState;
    v16 = *(v14 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState);
    v17 = static os_log_type_t.default.getter();
    v50 = v7;
    v51 = v6;
    if (v16 >= 9)
    {
      v48 = v17;
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v47 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10138BBE0;
      v33 = UUID.uuidString.getter();
      v35 = v34;
      *(v32 + 56) = &type metadata for String;
      v36 = sub_100008C00();
      *(v32 + 64) = v36;
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      v37 = sub_10110A934(*(v14 + v15));
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v36;
      *(v32 + 72) = v37;
      *(v32 + 80) = v38;
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v47, "Pairing accessory %@ state %@. Ignore timeout.", 46, 2, v32);

      sub_1000BC488();
      (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
      v39 = static OS_dispatch_queue.global(qos:)();
      (*(v10 + 8))(v12, v9);
      v40 = swift_allocObject();
      v41 = v49;
      v42 = v56;
      *(v40 + 16) = v49;
      *(v40 + 24) = v42;
      v62 = sub_100FCB39C;
      v63 = v40;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100006684;
      v61 = &unk_101667D30;
      v43 = _Block_copy(&aBlock);
      sub_100012908(v41, v42);
      v29 = v53;
      static DispatchQoS.unspecified.getter();
      v57 = _swiftEmptyArrayStorage;
      sub_10046EAC4();
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_10013A8AC();
      v45 = v54;
      v44 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v43);

      (*(v52 + 8))(v45, v44);
    }

    else
    {
      v18 = v17;
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v19 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_101385D80;
      v21 = UUID.uuidString.getter();
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_100008C00();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Pairing accessory %@ should have completed by now. Bailing...", 61, 2, v20);

      sub_10110B248();

      sub_1000BC488();
      (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
      v24 = static OS_dispatch_queue.global(qos:)();
      (*(v10 + 8))(v12, v9);
      v25 = swift_allocObject();
      v26 = v49;
      v27 = v56;
      *(v25 + 16) = v49;
      *(v25 + 24) = v27;
      v62 = sub_100FCB3A4;
      v63 = v25;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100006684;
      v61 = &unk_101667D80;
      v28 = _Block_copy(&aBlock);
      sub_100012908(v26, v27);
      v29 = v53;
      static DispatchQoS.unspecified.getter();
      v57 = _swiftEmptyArrayStorage;
      sub_10046EAC4();
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_10013A8AC();
      v31 = v54;
      v30 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v52 + 8))(v31, v30);
    }

    (*(v50 + 8))(v29, v51);
  }

  else if (a2)
  {
    return a2(0);
  }

  return result;
}

uint64_t sub_10110D354@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1006072D4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10110D3E0(void *a1, uint64_t a2)
{
  v91 = a2;
  v101 = a1;
  v102 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v98 = *(v102 - 8);
  v2 = __chkstk_darwin(v102);
  v93 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v105 = &v86 - v5;
  v6 = __chkstk_darwin(v4);
  v104 = &v86 - v7;
  __chkstk_darwin(v6);
  v97 = &v86 - v8;
  v9 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v103 = &v86 - v13;
  v14 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v14 - 8);
  v16 = &v86 - v15;
  v17 = type metadata accessor for OwnedBeaconGroup(0);
  v18 = *(v17 - 1);
  __chkstk_darwin(v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v21 = __DataStorage.init(length:)();
  sub_1000D2A70(v101, v16, &unk_1016AF8B0, &unk_1013A0700);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000B3A8(v16, &unk_1016AF8B0, &unk_1013A0700);
    swift_allocObject();
    __DataStorage.init(length:)();

    return 0x6000000000;
  }

  sub_10110ED3C(v16, v20, type metadata accessor for OwnedBeaconGroup);
  if (v91 > 3u)
  {
    v79 = v91;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_1000076D4(v80, qword_10177C418);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 134218240;
      *(v83 + 4) = 4;
      *(v83 + 12) = 256;
      *(v83 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v81, v82, "pairingPart > %ld! (%hhu", v83, 0xFu);
    }

    swift_allocObject();
    __DataStorage.init(length:)();

    sub_10110EDA4(v20, type metadata accessor for OwnedBeaconGroup);
    return 0x6000000000;
  }

  v86 = v21;
  v22 = v21 | 0x4000000000000000;
  v23 = 0x2000000000;
  sub_100017D5C(0x2000000000, v22);
  v24 = sub_100A5B734(0, 1, 1, _swiftEmptyArrayStorage);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  v27 = v24;
  v28 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
LABEL_50:
    v27 = sub_100A5B734((v25 > 1), v28, 1, v27);
  }

  *(v27 + 2) = v28;
  v29 = &v27[16 * v26];
  *(v29 + 4) = v23;
  *(v29 + 5) = v22;
  sub_100017D5C(0x2000000000, v22);
  v30 = *(v27 + 3);
  v31 = v26 + 2;
  if ((v26 + 2) > (v30 >> 1))
  {
    v27 = sub_100A5B734((v30 > 1), v26 + 2, 1, v27);
  }

  *(v27 + 2) = v31;
  v32 = &v27[16 * v28];
  *(v32 + 4) = v23;
  *(v32 + 5) = v22;
  sub_100017D5C(0x2000000000, v22);
  v33 = *(v27 + 3);
  v34 = v26 + 3;
  if ((v26 + 3) > (v33 >> 1))
  {
    v27 = sub_100A5B734((v33 > 1), v26 + 3, 1, v27);
  }

  *(v27 + 2) = v34;
  v35 = &v27[16 * v31];
  *(v35 + 4) = v23;
  *(v35 + 5) = v22;
  sub_100017D5C(0x2000000000, v22);
  v36 = *(v27 + 3);
  if ((v26 + 4) > (v36 >> 1))
  {
    v27 = sub_100A5B734((v36 > 1), v26 + 4, 1, v27);
  }

  *(v27 + 2) = v26 + 4;
  v88 = v27 + 32;
  v37 = &v27[16 * v34 + 32];
  *v37 = 0x2000000000;
  *(v37 + 1) = v22;
  v89 = v27;
  v107 = v27;
  v38 = *(v17 + 10);
  v87 = v20;
  v39 = *(v20 + v38);
  v26 = v39 + 64;
  v40 = 1 << *(v39 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v20 = v41 & *(v39 + 64);
  v23 = (v40 + 63) >> 6;
  v96 = v39;

  v42 = 0;
  v27 = &qword_1016A4190;
  *&v43 = 136446210;
  v90 = v43;
  v44 = v104;
  v28 = v105;
  v100 = v26;
  v101 = v12;
  while (1)
  {
    if (!v20)
    {
      if (v23 <= (v42 + 1))
      {
        v45 = v42 + 1;
      }

      else
      {
        v45 = v23;
      }

      v22 = v45 - 1;
      while (1)
      {
        v25 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v25 >= v23)
        {
          v73 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
          (*(*(v73 - 8) + 56))(v12, 1, 1, v73);
          v20 = 0;
          v42 = v22;
          goto LABEL_27;
        }

        v20 = *(v26 + 8 * v25);
        ++v42;
        if (v20)
        {
          v42 = v25;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = v42;
LABEL_26:
    v46 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v47 = v46 | (v25 << 6);
    v48 = v97;
    v49 = (*(v96 + 48) + 16 * v47);
    v50 = *v49;
    v51 = v49[1];
    sub_10110ECD4(*(v96 + 56) + *(v98 + 72) * v47, v97, type metadata accessor for OwnedBeaconGroup.PairingState);
    v52 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v53 = *(v52 + 48);
    v12 = v101;
    *v101 = v50;
    *(v12 + 8) = v51;
    sub_10110ED3C(v48, v12 + v53, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v52 - 8) + 56))(v12, 0, 1, v52);
    sub_100017D5C(v50, v51);
    v44 = v104;
    v28 = v105;
LABEL_27:
    v17 = v12;
    v54 = v103;
    sub_101072210(v12, v103);
    v55 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      break;
    }

    sub_100016590(*v54, *(v54 + 8));
    sub_10110ED3C(v54 + *(v55 + 48), v44, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_10110ECD4(v44, v28, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v56 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v12 = v56[12];
      v57 = (v28 + v56[16]);
      v26 = v57[1];
      v99 = *v57;
      if (v26 >> 60 == 15 || (v58 = (v28 + v56[24]), v58[1] == 1))
      {
        v94 = v26;
        v95 = v12;
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177C418);
        v60 = v93;
        sub_10110ECD4(v44, v93, type metadata accessor for OwnedBeaconGroup.PairingState);
        v61 = v60;
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v106 = v65;
          *v64 = v90;
          v66 = v61;
          v67 = sub_10051C934();
          v69 = v68;
          v92 = type metadata accessor for OwnedBeaconGroup.PairingState;
          sub_10110EDA4(v66, type metadata accessor for OwnedBeaconGroup.PairingState);
          v70 = sub_1000136BC(v67, v69, &v106);
          v28 = v105;

          *(v64 + 4) = v70;
          _os_log_impl(&_mh_execute_header, v62, v63, "Missing nonce/partId on %{public}s)", v64, 0xCu);
          sub_100007BAC(v65);
          v44 = v104;

          v17 = v101;

          sub_100006654(v99, v94);
          v71 = v44;
          v72 = v92;
        }

        else
        {

          sub_100006654(v99, v94);
          sub_10110EDA4(v61, type metadata accessor for OwnedBeaconGroup.PairingState);
          v71 = v44;
          v72 = type metadata accessor for OwnedBeaconGroup.PairingState;
        }

        sub_10110EDA4(v71, v72);
        v74 = v28 + v95;
      }

      else
      {
        v22 = *v58;
        sub_10110EDA4(v44, type metadata accessor for OwnedBeaconGroup.PairingState);
        v27 = v89;
        v25 = *(v89 + 2);
        if (v25 <= v22)
        {
          goto LABEL_49;
        }

        v75 = &v88[16 * v22];
        v76 = *v75;
        v77 = v75[1];
        *v75 = v99;
        v75[1] = v26;
        sub_100016590(v76, v77);
        v107 = v27;
        v74 = v28 + v12;
      }

      sub_10000B3A8(v74, &qword_1016A40D0, &unk_10138BE70);
      v78 = type metadata accessor for UUID();
      (*(*(v78 - 8) + 8))(v28, v78);
    }

    else
    {
      sub_10110EDA4(v44, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10110EDA4(v28, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    v27 = &qword_1016A4190;
    v12 = v17;
    v26 = v100;
  }

  sub_10110D354(v91, &v106);
  sub_100016590(v106, *(&v106 + 1));
  v85 = sub_10025FD00(v107);

  sub_10110EDA4(v87, type metadata accessor for OwnedBeaconGroup);
  return v85;
}

uint64_t sub_10110DFBC(uint64_t *a1, int64_t a2)
{
  v106 = a1;
  v107 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v104 = *(v107 - 8);
  v3 = __chkstk_darwin(v107);
  v101 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v109 = &v93 - v6;
  v7 = __chkstk_darwin(v5);
  v110 = &v93 - v8;
  __chkstk_darwin(v7);
  v103 = &v93 - v9;
  v10 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v108 = &v93 - v14;
  v15 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v15 - 8);
  v17 = &v93 - v16;
  v18 = type metadata accessor for OwnedBeaconGroup(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100268BBC(8uLL);
  v24 = v23;
  sub_1000D2A70(v106, v17, &unk_1016AF8B0, &unk_1013A0700);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000B3A8(v17, &unk_1016AF8B0, &unk_1013A0700);
    type metadata accessor for __DataStorage();
    swift_allocObject();
    __DataStorage.init(length:)();
    return 0x1800000000;
  }

  sub_10110ED3C(v17, v21, type metadata accessor for OwnedBeaconGroup);
  if (a2 > 3u)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_1000076D4(v87, qword_10177C418);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 134218240;
      *(v90 + 4) = 4;
      *(v90 + 12) = 256;
      *(v90 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v88, v89, "pairingPart > %ld! (%hhu", v90, 0xFu);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    __DataStorage.init(length:)();
    sub_10110EDA4(v21, type metadata accessor for OwnedBeaconGroup);
    return 0x1800000000;
  }

  v25 = v24 & 0xFFFFFFFFFFFFFFLL;
  v26 = sub_100A5B734(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  v29 = v27 >> 1;
  v30 = v28 + 1;
  if (v27 >> 1 <= v28)
  {
LABEL_49:
    v26 = sub_100A5B734((v27 > 1), v30, 1, v26);
    v27 = *(v26 + 3);
    v29 = v27 >> 1;
  }

  *(v26 + 2) = v30;
  v31 = &v26[16 * v28];
  *(v31 + 4) = v22;
  *(v31 + 5) = v25;
  v32 = (v28 + 2);
  if (v29 < v28 + 2)
  {
    v26 = sub_100A5B734((v27 > 1), v28 + 2, 1, v26);
  }

  *(v26 + 2) = v32;
  v33 = &v26[16 * v30];
  *(v33 + 4) = v22;
  *(v33 + 5) = v25;
  v34 = *(v26 + 3);
  v35 = (v28 + 3);
  if (v28 + 3 > (v34 >> 1))
  {
    v26 = sub_100A5B734((v34 > 1), v28 + 3, 1, v26);
  }

  *(v26 + 2) = v35;
  v36 = &v26[16 * v32];
  *(v36 + 4) = v22;
  *(v36 + 5) = v25;
  v37 = *(v26 + 3);
  v94 = a2;
  if (v28 + 4 > (v37 >> 1))
  {
    v26 = sub_100A5B734((v37 > 1), v28 + 4, 1, v26);
  }

  *(v26 + 2) = v28 + 4;
  v95 = v26 + 32;
  v96 = v26;
  v38 = &v26[16 * v35 + 32];
  *v38 = v22;
  v38[1] = v25;
  v112 = v26;
  v39 = *(v18 + 40);
  v93 = v21;
  v40 = *(v21 + v39);
  v22 = (v40 + 64);
  v41 = 1 << *(v40 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v21 = v42 & *(v40 + 64);
  a2 = (v41 + 63) >> 6;
  v102 = v40;

  v25 = 0;
  v43 = &qword_1016A4190;
  v28 = &unk_1013A3550;
  *&v44 = 136446210;
  v97 = v44;
  v45 = v109;
  v30 = v110;
  v105 = v22;
  v106 = v13;
  while (1)
  {
    if (!v21)
    {
      if (a2 <= v25 + 1)
      {
        v46 = v25 + 1;
      }

      else
      {
        v46 = a2;
      }

      v18 = v46 - 1;
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= a2)
        {
          v77 = sub_1000BC4D4(v43, &unk_1013A3550);
          (*(*(v77 - 8) + 56))(v13, 1, 1, v77);
          v21 = 0;
          v25 = v18;
          goto LABEL_27;
        }

        v21 = v22[v27];
        ++v25;
        if (v21)
        {
          v25 = v27;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v27 = v25;
LABEL_26:
    v47 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v48 = v47 | (v27 << 6);
    v49 = v103;
    v50 = (*(v102 + 48) + 16 * v48);
    v51 = *v50;
    v52 = v50[1];
    sub_10110ECD4(*(v102 + 56) + *(v104 + 72) * v48, v103, type metadata accessor for OwnedBeaconGroup.PairingState);
    v53 = sub_1000BC4D4(v43, &unk_1013A3550);
    v54 = *(v53 + 48);
    v55 = v106;
    *v106 = v51;
    v55[1] = v52;
    v56 = v49;
    v13 = v55;
    sub_10110ED3C(v56, v55 + v54, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v53 - 8) + 56))(v13, 0, 1, v53);
    sub_100017D5C(v51, v52);
    v45 = v109;
    v30 = v110;
LABEL_27:
    v57 = v43;
    v22 = v13;
    v58 = v108;
    sub_101072210(v13, v108);
    v59 = v57;
    v60 = sub_1000BC4D4(v57, &unk_1013A3550);
    if ((*(*(v60 - 8) + 48))(v58, 1, v60) == 1)
    {
      break;
    }

    sub_100016590(*v58, *(v58 + 8));
    sub_10110ED3C(v58 + *(v60 + 48), v30, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_10110ECD4(v30, v45, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v62 = v61[12];
      sub_100006654(*(v45 + v61[16]), *(v45 + v61[16] + 8));
      v63 = v45 + v61[20];
      if ((*(v63 + 8) & 1) != 0 || (v64 = (v45 + v61[24]), v64[1] == 1))
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_1000076D4(v65, qword_10177C418);
        v66 = v101;
        sub_10110ECD4(v30, v101, type metadata accessor for OwnedBeaconGroup.PairingState);
        v67 = Logger.logObject.getter();
        v68 = v66;
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v69))
        {
          v70 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v111 = v98;
          *v70 = v97;
          v71 = sub_10051C934();
          v100 = v62;
          v73 = v72;
          v99 = type metadata accessor for OwnedBeaconGroup.PairingState;
          sub_10110EDA4(v68, type metadata accessor for OwnedBeaconGroup.PairingState);
          v74 = sub_1000136BC(v71, v73, &v111);
          v62 = v100;

          *(v70 + 4) = v74;
          _os_log_impl(&_mh_execute_header, v67, v69, "Missing epoch/partId on %{public}s", v70, 0xCu);
          sub_100007BAC(v98);
          v22 = v106;

          v45 = v109;

          v30 = v110;
          v75 = v110;
          v76 = v99;
        }

        else
        {

          sub_10110EDA4(v68, type metadata accessor for OwnedBeaconGroup.PairingState);
          v30 = v110;
          v75 = v110;
          v76 = type metadata accessor for OwnedBeaconGroup.PairingState;
        }

        sub_10110EDA4(v75, v76);
        v43 = v59;
        sub_10000B3A8(v62 + v45, &qword_1016A40D0, &unk_10138BE70);
        v78 = type metadata accessor for UUID();
        (*(*(v78 - 8) + 8))(v45, v78);
      }

      else
      {
        v43 = v59;
        v13 = v62;
        v28 = *v64;
        *&v111 = *v63;
        sub_100102194();
        v18 = FixedWidthInteger.data.getter();
        v79 = v30;
        v30 = v80;
        sub_10110EDA4(v79, type metadata accessor for OwnedBeaconGroup.PairingState);
        v81 = v96;
        v27 = *(v96 + 2);
        if (v27 <= v28)
        {
          goto LABEL_48;
        }

        v82 = &v95[16 * v28];
        v83 = *v82;
        v84 = v82[1];
        *v82 = v18;
        v82[1] = v30;
        v85 = v81;
        sub_100016590(v83, v84);
        v112 = v85;
        sub_10000B3A8(v13 + v45, &qword_1016A40D0, &unk_10138BE70);
        v86 = type metadata accessor for UUID();
        (*(*(v86 - 8) + 8))(v45, v86);
        v30 = v110;
      }
    }

    else
    {
      sub_10110EDA4(v30, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10110EDA4(v45, type metadata accessor for OwnedBeaconGroup.PairingState);
      v43 = v59;
    }

    v13 = v22;
    v22 = v105;
    v28 = &unk_1013A3550;
  }

  sub_10110D354(v94, &v111);
  sub_100016590(v111, *(&v111 + 1));
  v92 = sub_10025FD00(v112);
  sub_10110EDA4(v93, type metadata accessor for OwnedBeaconGroup);
  return v92;
}

unint64_t sub_10110EB90(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

unint64_t sub_10110EBA0()
{
  result = qword_1016C8AD8;
  if (!qword_1016C8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8AD8);
  }

  return result;
}

uint64_t sub_10110EC54(uint64_t a1)
{
  v3 = *(v1 + 24);

  sub_100418510(v3, sub_10110ECB8, a1);
}

uint64_t sub_10110ECD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10110ED3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10110EDA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10110EE20(uint64_t a1, void *a2)
{
  v42 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v40 = *(v42 - 8);
  v4 = __chkstk_darwin(v42);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v41 = v37 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return result;
  }

  v39 = type metadata accessor for MACAddress();
  v10 = *(v39 - 8);
  v11 = *(v10 + 56);
  v37[1] = v10 + 56;
  v38 = v11;
  v12 = (a1 + 40);
  while (1)
  {
    v43 = v9;
    v14 = *(v12 - 1);
    v15 = *v12;
    v17 = v41;
    v16 = v42;
    v38(&v41[*(v42 + 24)], 1, 1, v39);
    *v17 = 255;
    *(v17 + *(v16 + 28)) = 0;
    v18 = v17;
    v19 = v6;
    sub_10002AEB4(v18, v6, type metadata accessor for MultipartAccessoryPairingInfo);
    sub_100017D5C(v14, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = a2;
    v22 = *a2;
    v44 = v22;
    v24 = sub_100771E30(v14, v15);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v44;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1010052AC();
        v31 = v44;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_100FE68A8(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_100771E30(v14, v15);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
      v31 = v44;
      if (v28)
      {
LABEL_3:
        v13 = v31[7] + *(v40 + 72) * v24;
        v6 = v19;
        sub_1008374C4(v19, v13);
        result = sub_100016590(v14, v15);
        goto LABEL_4;
      }
    }

    v31[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v31[6] + 16 * v24);
    *v32 = v14;
    v32[1] = v15;
    v33 = v31[7] + *(v40 + 72) * v24;
    v6 = v19;
    result = sub_10002AEB4(v19, v33, type metadata accessor for MultipartAccessoryPairingInfo);
    v34 = v31[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_18;
    }

    v31[2] = v36;
LABEL_4:
    v12 += 2;
    *v21 = v31;
    a2 = v21;
    v9 = v43 - 1;
    if (v43 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10110F124@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v8 + 32);
    v38(v10, v6, v7);
    if (a1)
    {
      v12 = 0x7FFF;
    }

    else
    {
      v12 = 31743;
    }

    v37 = v12;
    v13 = type metadata accessor for AccessoryProductInfo(0);
    v14 = v13[5];
    v15 = enum case for ServerStatusCode.success(_:);
    v16 = type metadata accessor for ServerStatusCode();
    (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
    v36 = UUID.uuidString.getter();
    v18 = v17;
    v19 = *(v8 + 56);
    v19(a2 + v13[17], 1, 1, v7);
    v19(a2 + v13[18], 1, 1, v7);
    v20 = v13[21];
    v21 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);
    v22 = *(v8 + 16);
    v22(a2 + v13[38], v10, v7);
    v22(a2 + v13[39], v10, v7);
    v22(a2 + v13[40], v10, v7);
    v22(a2 + v13[41], v10, v7);
    v22(a2 + v13[42], v10, v7);
    *a2 = 0;
    *(a2 + 8) = 1;
    *(a2 + v13[6]) = 1;
    *(a2 + v13[7]) = 0;
    *(a2 + v13[8]) = 2;
    v23 = (a2 + v13[9]);
    *v23 = v36;
    v23[1] = v18;
    *(a2 + v13[10]) = 2;
    *(a2 + v13[11]) = 1;
    *(a2 + v13[12]) = 2;
    v24 = (a2 + v13[13]);
    *v24 = 0x726F737365636361;
    v24[1] = 0xE900000000000079;
    v25 = (a2 + v13[14]);
    *v25 = 0x656C707041;
    v25[1] = 0xE500000000000000;
    v26 = a2 + v13[15];
    *v26 = 0;
    *(v26 + 8) = 1;
    v27 = (a2 + v13[16]);
    *v27 = 0;
    v27[1] = 0;
    v28 = (a2 + v13[19]);
    *v28 = 0x302E302E31;
    v28[1] = 0xE500000000000000;
    *(a2 + v13[20]) = 0;
    *(a2 + v13[22]) = v37;
    *(a2 + v13[23]) = 0;
    *(a2 + v13[24]) = xmmword_10138BBF0;
    *(a2 + v13[25]) = xmmword_10138BBF0;
    v22(a2 + v13[26], v10, v7);
    v22(a2 + v13[27], v10, v7);
    v22(a2 + v13[28], v10, v7);
    v22(a2 + v13[29], v10, v7);
    v22(a2 + v13[30], v10, v7);
    v22(a2 + v13[31], v10, v7);
    v29 = (a2 + v13[32]);
    *v29 = 0;
    v29[1] = 0;
    *(a2 + v13[33]) = _swiftEmptyArrayStorage;
    v30 = (a2 + v13[34]);
    *v30 = 0;
    v30[1] = 0;
    *(a2 + v13[35]) = _swiftEmptyArrayStorage;
    v31 = a2 + v13[36];
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    v32 = a2 + v13[37];
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 1;
    result = (v38)(a2 + v13[43], v10, v7);
    *(a2 + v13[44]) = 2;
    *(a2 + v13[45]) = 2;
    *(a2 + v13[46]) = 2;
    v33 = (a2 + v13[47]);
    *v33 = 0;
    v33[1] = 0;
    v34 = (a2 + v13[48]);
    *v34 = 0;
    v34[1] = 0;
  }

  return result;
}

uint64_t sub_10110F67C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v108 = a2;
  v106 = a1;
  v105 = type metadata accessor for PairingConfig(0);
  __chkstk_darwin(v105);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v103);
  v104 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v7 - 8);
  v114 = &v89 - v8;
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v9 - 8);
  v113 = &v89 - v10;
  v111 = type metadata accessor for OwnedBeaconRecord(0);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AccessoryProductInfo(0);
  v112 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v89 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v109 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v116 = &v89 - v25;
  v26 = static Data.random(bytes:)();
  v28 = v27;
  sub_10111441C(v117);
  if (*(&v117[0] + 1) >> 60 == 15)
  {
    goto LABEL_6;
  }

  v98 = v5;
  v118[0] = v117[0];
  v118[1] = v117[1];
  v118[2] = v117[2];
  v118[3] = v117[3];
  v118[4] = v117[4];
  type metadata accessor for AccessoryPairingInfo(0);
  swift_allocObject();
  sub_100017D5C(v26, v28);
  v102 = v26;
  v29 = sub_10024C9E8(v26, v28);
  if (!v29)
  {
    sub_10000B3A8(v117, &qword_101697328, &unk_10138BEA0);
    v26 = v102;
LABEL_6:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177C418);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Missing critical information to simulate pairing.", v54, 2u);
    }

    sub_100016590(v26, v28);

    return 0;
  }

  v30 = v29;
  v93 = v3;
  v97 = v28;
  v115 = v21;
  v31 = v22;
  v32 = Data.init(stringLiteral:)();
  v100 = v12;
  v34 = v33;
  v35 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v36 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  v37 = v116;
  UUID.init()();
  *(v30 + 15) = String.randomString(length:)(12);

  v38 = *(v22 + 16);
  v92 = v22 + 16;
  v91 = v38;
  v38(v20, v37, v115);
  (*(v22 + 56))(v20, 0, 1, v115);
  v39 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_1010AD394(v20, v30 + v39);
  swift_endAccess();
  *(v30 + 11) = xmmword_1013B8B00;

  sub_100017D5C(v32, v34);
  v95 = v32;
  v96 = v34;
  v40 = v34;
  v41 = v100;
  v42 = sub_100314594(v32, v40);
  v43 = v30[13];
  v44 = v30[14];
  v30[13] = v42;
  v30[14] = v45;
  sub_100006654(v43, v44);
  v94 = v36;
  CurrentLocationMonitor.requestLocation()();
  sub_10110F124(0, v14);
  v101 = v14;
  v46 = v114;
  sub_101114B5C(v14, v114, type metadata accessor for AccessoryProductInfo);
  v112 = *(v112 + 56);
  (v112)(v46, 0, 1, v41);
  v47 = v30 + v39;
  v48 = v115;
  sub_1000D2A70(v47, v18, &qword_1016980D0, &unk_10138F3B0);
  v49 = (*(v31 + 48))(v18, 1, v48);
  v99 = v31;
  if (v49 == 1)
  {
    sub_10000B3A8(v46, &qword_101697268, &qword_101394FE0);
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    v50 = v110;
  }

  else
  {
    v56 = v109;
    (*(v31 + 32))(v109, v18, v48);
    v57 = v30[16];
    v50 = v110;
    if (v57)
    {
      v58 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v58 = v30[15] & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        v89 = v30[15];
        v59 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v60 = v104;
        v61 = &v104[v59[12]];
        v62 = &v104[v59[16]];
        v63 = &v104[v59[20]];
        v90 = v59[24];
        v64 = &v104[v59[28]];
        v65 = v109;
        v91(v104, v109, v115);
        *v61 = 0;
        *(v61 + 1) = 0;
        *v62 = 0;
        *(v62 + 1) = 0;
        *v63 = v89;
        *(v63 + 1) = v57;
        v48 = v115;
        *(v60 + v90) = 256;
        *v64 = 0;
        *(v64 + 1) = 0;
        swift_storeEnumTagMultiPayload();

        v66 = v113;
        v67 = v114;
        sub_10012B4BC(v118, v30, v114, v60, v113);
        sub_1000362DC(v60, type metadata accessor for StableIdentifier);
        (*(v99 + 8))(v65, v48);
        sub_10000B3A8(v67, &qword_101697268, &qword_101394FE0);
        v68 = v111;
        v41 = v100;
        goto LABEL_21;
      }

      (*(v99 + 8))(v109, v48);
    }

    else
    {
      (*(v31 + 8))(v56, v48);
    }

    sub_10000B3A8(v46, &qword_101697268, &qword_101394FE0);
    v41 = v100;
  }

  v66 = v113;
  v68 = v111;
  (*(v50 + 56))(v113, 1, 1, v111);
LABEL_21:
  if ((*(v50 + 48))(v66, 1, v68) == 1)
  {
    sub_10000B3A8(v66, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000076D4(v69, qword_10177C418);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v97;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "failed to generateOwnedBeaconRecord.", v74, 2u);
    }

    sub_10000B3A8(v117, &qword_101697328, &unk_10138BEA0);

    sub_100016590(v95, v96);
    sub_100016590(v102, v73);
    sub_1000362DC(v101, type metadata accessor for AccessoryProductInfo);
    (*(v99 + 8))(v116, v48);
    return 0;
  }

  v75 = v107;
  sub_10002AEB4(v66, v107, type metadata accessor for OwnedBeaconRecord);
  v76 = v41;
  v77 = dispatch_group_create();
  v78 = swift_allocObject();
  *(v78 + 16) = 1;
  v79 = *(v105 + 28);
  v80 = v98;
  sub_101114B5C(v101, &v98[v79], type metadata accessor for AccessoryProductInfo);
  (v112)(v80 + v79, 0, 1, v76);
  v81 = v108;
  *v80 = v106;
  *(v80 + 8) = v81;
  *(v80 + 16) = xmmword_1013DB390;
  *(v80 + 32) = 0xA400000000000000;

  dispatch_group_enter(v77);
  v82 = swift_allocObject();
  v83 = v93;
  v84 = v82;
  v82[2] = v77;
  v82[3] = v78;
  v85 = v94;
  v82[4] = v94;
  v82[5] = v83;
  v86 = v77;

  v87 = v85;

  sub_100B093F8(v75, v80, sub_101114AC8, v84);

  OS_dispatch_group.wait()();
  sub_10000B3A8(v117, &qword_101697328, &unk_10138BEA0);

  sub_100016590(v95, v96);
  sub_100016590(v102, v97);
  sub_1000362DC(v80, type metadata accessor for PairingConfig);
  sub_1000362DC(v75, type metadata accessor for OwnedBeaconRecord);
  sub_1000362DC(v101, type metadata accessor for AccessoryProductInfo);
  (*(v99 + 8))(v116, v115);
  swift_beginAccess();
  v88 = *(v78 + 16);

  return v88;
}

unsigned __int8 *sub_101110550(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v152) = a3;
  v151 = a2;
  v149 = a1;
  v4 = *v3;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v153 = &v135 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v139 = *(v140 - 8);
  v11 = __chkstk_darwin(v140);
  v141 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v142 = &v135 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v135 - v16;
  __chkstk_darwin(v15);
  v143 = (&v135 - v17);
  v18 = type metadata accessor for String.Encoding();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = static Data.random(bytes:)();
  v24 = v23;
  type metadata accessor for AccessoryPairingInfo(0);
  swift_allocObject();
  sub_100017D5C(v22, v24);
  v156 = v22;
  v157 = v24;
  v25 = sub_10024C9E8(v22, v24);
  v26 = v25;
  if (!v25)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_1000076D4(v75, qword_10177C418);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Missing critical information to simulate pairing.", v78, 2u);
    }

    sub_100016590(v156, v157);

    return (v26 != 0);
  }

  v146 = v10;
  v145 = v4;
  v147 = v25;
  v155 = v8;
  v148 = v7;
  v27 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v144 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  p_object = &v162[0]._object;
  v162[0] = String.randomString(length:)(12);
  v29 = 0;
  v162[1] = String.randomString(length:)(12);
  v30 = (v19 + 8);
  v31 = _swiftEmptyArrayStorage;
  v137 = &v162[0]._object;
  do
  {
    v154 = v31;
    v32 = &p_object[2 * v29++];
    while (1)
    {

      static String.Encoding.utf8.getter();
      v33 = String.data(using:allowLossyConversion:)();
      v35 = v34;
      (*v30)(v21, v18);
      if (v35 >> 60 != 15)
      {
        break;
      }

LABEL_5:
      v32 += 2;
      if (++v29 == 3)
      {
        v31 = v154;
        goto LABEL_16;
      }
    }

    countAndFlagsBits = v33;
    v160 = v35;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {

      sub_100006654(v33, v35);
      goto LABEL_5;
    }

    v36 = Data.trimmed.getter();
    v136 = v37;

    sub_100006654(v33, v35);
    v31 = v154;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_100A5B840(0, *(v31 + 2) + 1, 1, v31);
    }

    p_object = v137;
    v39 = *(v31 + 2);
    v38 = *(v31 + 3);
    if (v39 >= v38 >> 1)
    {
      v31 = sub_100A5B840((v38 > 1), v39 + 1, 1, v31);
    }

    *(v31 + 2) = v39 + 1;
    v40 = &v31[16 * v39];
    v41 = v136;
    *(v40 + 4) = v36;
    *(v40 + 5) = v41;
  }

  while (v29 != 2);
LABEL_16:
  swift_arrayDestroy();
  v161 = _swiftEmptyDictionarySingleton;
  sub_10110EE20(v31, &v161);
  v154 = 0;

  v42 = static Data.random(bytes:)();
  v44 = v42;
  v45 = v43;
  v46 = v148;
  v47 = v155;
  v26 = v147;
  v48 = v146;
  if ((v152 & 1) == 0)
  {
    goto LABEL_28;
  }

  countAndFlagsBits = v42;
  v160 = v43;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    goto LABEL_28;
  }

  v49 = Data.trimmed.getter();
  v51 = v161;
  if (v161[2])
  {
    v137 = v49;
    v152 = v50;
    v52 = sub_100771E30(v49, v50);
    if (v53)
    {
      v54 = v51[7] + *(v139 + 72) * v52;
      v55 = v138;
      sub_101114B5C(v54, v138, type metadata accessor for MultipartAccessoryPairingInfo);
      v56 = v55;
      v57 = v143;
      sub_10002AEB4(v56, v143, type metadata accessor for MultipartAccessoryPairingInfo);
      v58 = *v57;
      v59 = v47;
      v60 = v48;
      v61 = v46;
      v62 = v45;
      v139 = v44;
      v63 = v140;
      v64 = *(v140 + 24);
      v65 = v142;
      MACAddress.init(stringLiteral:)();
      v66 = type metadata accessor for MACAddress();
      v67 = v65 + v64;
      v45 = v62;
      v46 = v61;
      v48 = v60;
      v47 = v59;
      (*(*(v66 - 8) + 56))(v67, 0, 1, v66);
      *v65 = v58;
      *(v65 + *(v63 + 28)) = 0;
      v68 = v141;
      sub_101114B5C(v65, v141, type metadata accessor for MultipartAccessoryPairingInfo);
      v69 = v161;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      countAndFlagsBits = v69;
      v71 = v68;
      v72 = v137;
      v73 = v152;
      sub_100FFA7D4(v71, v137, v152, isUniquelyReferenced_nonNull_native);
      sub_100016590(v72, v73);
      v74 = v65;
      v44 = v139;
      sub_1000362DC(v74, type metadata accessor for MultipartAccessoryPairingInfo);
      sub_1000362DC(v143, type metadata accessor for MultipartAccessoryPairingInfo);
      v161 = countAndFlagsBits;
      goto LABEL_28;
    }

    v49 = v137;
    v50 = v152;
  }

  sub_100016590(v49, v50);
LABEL_28:
  UUID.init()();
  *(v26 + 11) = xmmword_1013B8B00;

  v79 = sub_100314604(76, 8206);
  v80 = v26[13];
  v81 = v26[14];
  v26[13] = v79;
  v26[14] = v82;
  sub_100006654(v80, v81);
  v83 = v153;
  (*(v47 + 16))(v153, v48, v46);
  (*(v47 + 56))(v83, 0, 1, v46);
  v84 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_1010AD394(v83, v26 + v84);
  swift_endAccess();
  v86 = String.randomString(length:)(8);
  result = v86._countAndFlagsBits;
  v87 = (v86._object >> 56) & 0xF;
  v88 = v86._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v86._object & 0x2000000000000000) != 0)
  {
    v89 = (v86._object >> 56) & 0xF;
  }

  else
  {
    v89 = v86._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v89)
  {
    v109 = v48;
    v111 = v46;

LABEL_91:
    v112 = 0;
    v113 = 0xF000000000000000;
    goto LABEL_95;
  }

  if ((v86._object & 0x1000000000000000) != 0)
  {
    v158 = 0;
    v91 = sub_1010DDF3C(v86._countAndFlagsBits, v86._object, 10);
    v115 = v114;

    v109 = v48;
    if (v115)
    {
      goto LABEL_90;
    }

    goto LABEL_94;
  }

  if ((v86._object & 0x2000000000000000) != 0)
  {
    countAndFlagsBits = v86._countAndFlagsBits;
    v160 = v86._object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(v86._countAndFlagsBits) == 43)
    {
      if (!v87)
      {
LABEL_104:
        __break(1u);
        return result;
      }

      v88 = v87 - 1;
      if (v87 != 1)
      {
        v91 = 0;
        v101 = &countAndFlagsBits + 1;
        while (1)
        {
          v102 = *v101 - 48;
          if (v102 > 9)
          {
            break;
          }

          v103 = 10 * v91;
          if ((v91 * 10) >> 64 != (10 * v91) >> 63)
          {
            break;
          }

          v91 = v103 + v102;
          if (__OFADD__(v103, v102))
          {
            break;
          }

          ++v101;
          if (!--v88)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (LOBYTE(v86._countAndFlagsBits) == 45)
    {
      if (!v87)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v88 = v87 - 1;
      if (v87 != 1)
      {
        v91 = 0;
        v95 = &countAndFlagsBits + 1;
        while (1)
        {
          v96 = *v95 - 48;
          if (v96 > 9)
          {
            break;
          }

          v97 = 10 * v91;
          if ((v91 * 10) >> 64 != (10 * v91) >> 63)
          {
            break;
          }

          v91 = v97 - v96;
          if (__OFSUB__(v97, v96))
          {
            break;
          }

          ++v95;
          if (!--v88)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (v87)
    {
      v91 = 0;
      p_countAndFlagsBits = &countAndFlagsBits;
      while (1)
      {
        v107 = *p_countAndFlagsBits - 48;
        if (v107 > 9)
        {
          break;
        }

        v108 = 10 * v91;
        if ((v91 * 10) >> 64 != (10 * v91) >> 63)
        {
          break;
        }

        v91 = v108 + v107;
        if (__OFADD__(v108, v107))
        {
          break;
        }

        p_countAndFlagsBits = (p_countAndFlagsBits + 1);
        if (!--v87)
        {
          goto LABEL_87;
        }
      }
    }

LABEL_88:
    v91 = 0;
    LOBYTE(v88) = 1;
    goto LABEL_89;
  }

  if ((v86._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    result = ((v86._object & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    v88 = v134;
  }

  v90 = *result;
  if (v90 == 43)
  {
    if (v88 < 1)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (!--v88)
    {
      goto LABEL_88;
    }

    v91 = 0;
    if (!result)
    {
      goto LABEL_87;
    }

    v98 = result + 1;
    while (1)
    {
      v99 = *v98 - 48;
      if (v99 > 9)
      {
        goto LABEL_88;
      }

      v100 = 10 * v91;
      if ((v91 * 10) >> 64 != (10 * v91) >> 63)
      {
        goto LABEL_88;
      }

      v91 = v100 + v99;
      if (__OFADD__(v100, v99))
      {
        goto LABEL_88;
      }

      ++v98;
      if (!--v88)
      {
        goto LABEL_89;
      }
    }
  }

  if (v90 != 45)
  {
    if (!v88)
    {
      goto LABEL_88;
    }

    v91 = 0;
    if (!result)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v104 = *result - 48;
      if (v104 > 9)
      {
        goto LABEL_88;
      }

      v105 = 10 * v91;
      if ((v91 * 10) >> 64 != (10 * v91) >> 63)
      {
        goto LABEL_88;
      }

      v91 = v105 + v104;
      if (__OFADD__(v105, v104))
      {
        goto LABEL_88;
      }

      ++result;
      if (!--v88)
      {
        goto LABEL_89;
      }
    }
  }

  if (v88 < 1)
  {
    __break(1u);
    goto LABEL_102;
  }

  if (!--v88)
  {
    goto LABEL_88;
  }

  v91 = 0;
  if (result)
  {
    v92 = result + 1;
    while (1)
    {
      v93 = *v92 - 48;
      if (v93 > 9)
      {
        goto LABEL_88;
      }

      v94 = 10 * v91;
      if ((v91 * 10) >> 64 != (10 * v91) >> 63)
      {
        goto LABEL_88;
      }

      v91 = v94 - v93;
      if (__OFSUB__(v94, v93))
      {
        goto LABEL_88;
      }

      ++v92;
      if (!--v88)
      {
        goto LABEL_89;
      }
    }
  }

LABEL_87:
  LOBYTE(v88) = 0;
LABEL_89:
  v158 = v88;
  v109 = v48;
  v110 = v88;

  if (v110)
  {
LABEL_90:
    v111 = v46;
    goto LABEL_91;
  }

LABEL_94:
  v111 = v46;
  countAndFlagsBits = v91;
  sub_1000C3258();
  v112 = FixedWidthInteger.data.getter();
LABEL_95:
  v116 = (v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v117 = *(v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v118 = *(v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  *v116 = v112;
  v116[1] = v113;
  sub_100006654(v117, v118);
  v119 = String.randomString(length:)(16);
  v121 = sub_1010DB10C(v119._countAndFlagsBits, v119._object, v120);
  if (v122)
  {
    v123 = 0;
    v124 = 0xF000000000000000;
  }

  else
  {
    countAndFlagsBits = v121;
    sub_1000C3258();
    v123 = FixedWidthInteger.data.getter();
  }

  v125 = (v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v126 = *(v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v127 = *(v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  *v125 = v123;
  v125[1] = v124;
  sub_100006654(v126, v127);
  v128 = v144;
  CurrentLocationMonitor.requestLocation()();
  v129 = swift_allocObject();
  *(v129 + 16) = 0;
  LOBYTE(countAndFlagsBits) = 0;
  v130 = v161;
  v131 = __chkstk_darwin(v129);
  *(&v135 - 10) = v26;
  *(&v135 - 9) = &countAndFlagsBits;
  v132 = v149;
  *(&v135 - 8) = v150;
  *(&v135 - 7) = v132;
  *(&v135 - 6) = v151;
  *(&v135 - 5) = &v161;
  *(&v135 - 4) = v109;
  *(&v135 - 3) = v128;
  v133 = v145;
  *(&v135 - 2) = v131;
  *(&v135 - 1) = v133;

  sub_1005C6358(sub_101114B1C, (&v135 - 12), v130);
  sub_100016590(v156, v157);
  sub_100016590(v44, v45);

  (*(v155 + 8))(v109, v111);

  return (v26 != 0);
}

void sub_101111354(objc_class *a1, void *a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v62 = a8;
  v65 = a7;
  v67 = a6;
  v66 = a5;
  v68 = a4;
  v69 = a1;
  v61 = type metadata accessor for PairingConfig(0);
  __chkstk_darwin(v61);
  v13 = (&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for AccessoryProductInfo(0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v63 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MACAddress();
  v64 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v21 - 8);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  __chkstk_darwin(v24);
  v26 = (&v59 - v25);
  sub_10111441C(v72);
  if (*(&v72[0] + 1) >> 60 != 15)
  {
    v73[0] = v72[0];
    v73[1] = v72[1];
    v73[2] = v72[2];
    v73[3] = v72[3];
    v73[4] = v72[4];
    sub_1000D2A70(v69, v26, &qword_101696E38, &qword_1013D8510);
    v27 = *(v24 + 48);
    v28 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v29 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
    *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber) = *v26;
    sub_100006654(v28, v29);
    sub_1000362DC(v26 + v27, type metadata accessor for MultipartAccessoryPairingInfo);
    v30 = a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId;
    *v30 = *a3;
    v30[1] = 0;
    v31 = *a3 + 1;
    if ((v31 >> 8))
    {
      __break(1u);
    }

    else
    {
      v32 = (*a3 + 1);
      *a3 = v31;
      v33 = 0xE700000000000000;
      v34 = 0x6E776F6E6B6E55;
      if (v31 == 2)
      {
        v34 = 1702060355;
        v33 = 0xE400000000000000;
      }

      v35 = v32 == 1;
      if (v32 == 1)
      {
        v36 = 0x7468676952;
      }

      else
      {
        v36 = v34;
      }

      v69 = v36;
      if (v35)
      {
        v37 = 0xE500000000000000;
      }

      else
      {
        v37 = v33;
      }

      MACAddress.init(stringLiteral:)();
      v38 = *v65;

      v39 = v68;
      v40 = v70;
      sub_100B8BFA0(v23, v20, v73, a2, v66, v67, v17, v38);
      v41 = (v64 + 8);
      v70 = v40;
      if (!v40)
      {
        v67 = a10;
        v66 = a9;

        (*v41)(v17, v15);
        sub_1000362DC(v20, type metadata accessor for OwnedBeaconGroup);
        v51 = dispatch_group_create();
        v52 = v63;
        sub_10110F124(0, v63);
        v53 = *(v61 + 28);
        sub_101114B5C(v52, v13 + v53, type metadata accessor for AccessoryProductInfo);
        (*(v59 + 56))(v13 + v53, 0, 1, v60);
        v13->isa = v69;
        v13[1].isa = v37;
        *&v13[2].isa = xmmword_1013DB390;
        v13[4].isa = 0xA400000000000000;
        dispatch_group_enter(v51);
        v54 = swift_allocObject();
        v55 = v66;
        v54[2] = v51;
        v54[3] = v55;
        v56 = v67;
        v54[4] = v39;
        v54[5] = v56;
        v57 = v51;
        v58 = v55;

        sub_100B093F8(v23, v13, sub_101114BC4, v54);

        OS_dispatch_group.wait()();
        sub_10000B3A8(v72, &qword_101697328, &unk_10138BEA0);

        sub_1000362DC(v13, type metadata accessor for PairingConfig);
        sub_1000362DC(v52, type metadata accessor for AccessoryProductInfo);
        sub_1000362DC(v23, type metadata accessor for OwnedBeaconRecord);
        swift_beginAccess();
        *(v56 + 16) = 1;
        return;
      }

      (*v41)(v17, v15);

      if (qword_1016950D0 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
LABEL_13:
    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177C418);
    v43 = v70;
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v71[0] = v47;
      *v46 = 136315138;
      v74 = v43;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v48 = String.init<A>(describing:)();
      v50 = sub_1000136BC(v48, v49, v71);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to generateOwnedBeaconRecord. %s", v46, 0xCu);
      sub_100007BAC(v47);

      sub_10000B3A8(v72, &qword_101697328, &unk_10138BEA0);
    }

    else
    {
      sub_10000B3A8(v72, &qword_101697328, &unk_10138BEA0);
    }
  }
}

void sub_101111B98(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v46 = a6;
  v47 = a5;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  v15 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v15);
  v17 = (&v45 - v16);
  sub_1000D2A70(a1, &v45 - v16, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C418);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = a3;
      v24 = swift_slowAlloc();
      v49[0] = v24;
      *v22 = 136315138;
      v48 = v18;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v25 = String.init<A>(describing:)();
      v27 = sub_1000136BC(v25, v26, v49);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to save beacon record %s", v22, 0xCu);
      sub_100007BAC(v24);
      a3 = v23;
    }

    else
    {
    }
  }

  else
  {
    sub_10002AEB4(v17, v14, type metadata accessor for OwnedBeaconRecord);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C418);
    sub_101114B5C(v14, v12, type metadata accessor for OwnedBeaconRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v45 = a3;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49[0] = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      type metadata accessor for UUID();
      sub_101114AD4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000362DC(v12, type metadata accessor for OwnedBeaconRecord);
      v37 = sub_1000136BC(v34, v36, v49);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "New beacon record has been created. %{private,mask.hash}s", v32, 0x16u);
      sub_100007BAC(v33);
    }

    else
    {

      sub_1000362DC(v12, type metadata accessor for OwnedBeaconRecord);
    }

    v38 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v39 = *(a4 + v38);
    if (v39)
    {
      v40 = &v14[*(v9 + 20)];
      v41 = v46;
      swift_beginAccess();
      v42 = *(v41 + 16);
      v43 = type metadata accessor for Transaction();
      __chkstk_darwin(v43);
      LOBYTE((&v45)[-4]) = v42;
      *(&v45 - 3) = v39;
      *(&v45 - 2) = v40;
      *(&v45 - 1) = v47;
      v44 = v39;
      static Transaction.named<A>(_:with:)();
    }

    sub_1000362DC(v14, type metadata accessor for OwnedBeaconRecord);
    a3 = v45;
  }

  dispatch_group_leave(a3);
}

void sub_101112140(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v43 = a3;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v15);
  v17 = (&v41 - v16);
  sub_1000D2A70(a1, &v41 - v16, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C418);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45[0] = v23;
      *v22 = 136315138;
      v44 = v18;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v24 = String.init<A>(describing:)();
      v26 = sub_1000136BC(v24, v25, v45);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to save beacon record %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {
    }

    swift_beginAccess();
    *(a4 + 16) = 0;
  }

  else
  {
    sub_10002AEB4(v17, v14, type metadata accessor for OwnedBeaconRecord);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C418);
    sub_101114B5C(v14, v12, type metadata accessor for OwnedBeaconRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      type metadata accessor for UUID();
      sub_101114AD4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1000362DC(v12, type metadata accessor for OwnedBeaconRecord);
      v35 = sub_1000136BC(v32, v34, v45);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "New beacon record has been created. %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      sub_1000362DC(v12, type metadata accessor for OwnedBeaconRecord);
    }

    v36 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v37 = *(a5 + v36);
    if (v37)
    {
      v38 = &v14[*(v9 + 20)];
      v39 = type metadata accessor for Transaction();
      __chkstk_darwin(v39);
      *(&v41 - 32) = 0;
      *(&v41 - 3) = v37;
      *(&v41 - 2) = v38;
      *(&v41 - 1) = v42;
      v40 = v37;
      static Transaction.named<A>(_:with:)();
    }

    sub_1000362DC(v14, type metadata accessor for OwnedBeaconRecord);
  }

  dispatch_group_leave(v43);
}

uint64_t sub_1011126D4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v31 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v29[1] = v10;
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BeaconEstimatedLocation(0);
  __chkstk_darwin(v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 coordinate];
  v15 = v14;
  if (a2)
  {
    v15 = v14 + 0.1;
    [a3 coordinate];
    v17 = v16 + 0.1;
  }

  else
  {
    [a3 coordinate];
    v17 = v18;
  }

  UUID.init()();
  v19 = *(v9 + 16);
  v19(&v13[v11[6]], a4, v8);
  [a3 horizontalAccuracy];
  v21 = v20;
  v22 = [a3 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v11[12];
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(&v13[v23], 1, 1, v24);
  *v13 = xmmword_10138C660;
  *&v13[v11[7]] = v15;
  *&v13[v11[8]] = v17;
  *&v13[v11[9]] = v21;
  v13[v11[11]] = 1;
  *&v13[v11[13]] = 0;
  v25 = v30;
  v19(v30, a4, v8);
  v26 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  (*(v9 + 32))(v27 + v26, v25, v8);

  sub_100A9DA2C(v13, sub_101112E3C, v27);

  return sub_1000362DC(v13, type metadata accessor for BeaconEstimatedLocation);
}

void sub_1011129F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  __chkstk_darwin(v9);
  v11 = (&v30 - v10);
  Transaction.capture()();
  sub_1000D2A70(a1, v11, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C418);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v12;
      v31 = v17;
      *v16 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000136BC(v18, v19, &v31);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Saving BeaconEstimatedLocation from CL error: %s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    (*(v6 + 16))(v8, a3, v5);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      v26 = UUID.uuidString.getter();
      v28 = v27;
      (*(v6 + 8))(v8, v5);
      v29 = sub_1000136BC(v26, v28, &v31);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Saved BeaconEstimatedLocation from CL for beacon %{private,mask.hash}s", v24, 0x16u);
      sub_100007BAC(v25);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    sub_10000B3A8(v11, &qword_10169F438, &unk_1013B3300);
  }
}

void sub_101112E3C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1011129F4(a1, v4, v5);
}

uint64_t sub_101112EB0(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v91 = a4;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v81 - v13;
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v20 = *a1;
  v19 = a1[1];
  v21 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    v89 = a3;
    v90 = a1;
    if (!v21)
    {
      *(&v88 + 1) = a2;
      v18 = v20 >> 40;
      v82 = v16;
      v83 = v19 >> 8;
      v84 = v19 >> 16;
      v85 = v19 >> 24;
      v86 = HIDWORD(v19);
      v87 = v19 >> 40;
      *&v88 = HIWORD(v19);

      sub_100016590(v20, v19);
      *&v95 = v20;
      BYTE8(v95) = v19;
      BYTE9(v95) = v83;
      BYTE10(v95) = v84;
      BYTE11(v95) = v85;
      BYTE12(v95) = v86;
      BYTE13(v95) = v87;
      BYTE14(v95) = v88;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      swift_retain_n();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        a3 = v90;
        goto LABEL_27;
      }

      v26 = __DataStorage._bytes.getter();
      a3 = v90;
      if (!v26 || !__OFSUB__(0, __DataStorage._offset.getter()))
      {
        swift_allocObject();
        __DataStorage.init(bytes:length:copy:deallocator:offset:)();

LABEL_27:

        result = __DataStorage._bytes.getter();
        if (result)
        {
          LODWORD(a1) = result;
          if (!__OFSUB__(0, __DataStorage._offset.getter()))
          {
            __DataStorage._length.getter();
            v94 = 0;
            v28 = CCCKGContributorFinish();
            if (!v28)
            {
LABEL_36:

              v37 = v95;
              v38 = DWORD2(v95) | ((WORD6(v95) | (BYTE14(v95) << 16)) << 32);

              *a3 = v37;
              *(a3 + 8) = v38;
              return result;
            }

            LODWORD(a1) = v28;
            v18 = static os_log_type_t.error.getter();
            if (qword_101694BE0 == -1)
            {
LABEL_31:
              v29 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v30 = swift_allocObject();
              *(v30 + 16) = xmmword_101385D80;
              *(v30 + 56) = &type metadata for Int32;
              *(v30 + 64) = &protocol witness table for Int32;
              *(v30 + 32) = a1;
              os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v29, "CCCKGContributorFinish: Error finishing contribution. Status: %d.", v81);

              v31 = v82;
              CryptoError.init(rawValue:)();
              v32 = type metadata accessor for CryptoError();
              sub_101114AD4(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              swift_allocError();
              v34 = v33;
              v35 = *(v32 - 8);
              v36 = *(v35 + 48);
              if (v36(v31, 1, v32) == 1)
              {
                (*(v35 + 104))(v34, enum case for CryptoError.unspecifiedError(_:), v32);
                if (v36(v31, 1, v32) != 1)
                {
                  sub_10000B3A8(v31, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v35 + 32))(v34, v31, v32);
              }

              swift_willThrow();
              goto LABEL_36;
            }

LABEL_90:
            swift_once();
            goto LABEL_31;
          }

          goto LABEL_84;
        }

        goto LABEL_98;
      }

      goto LABEL_92;
    }

    v25 = v19 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100017D5C(v20, v19);
    sub_100016590(v20, v19);
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);

    a3 = v20;
    v18 = v20 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      LODWORD(a1) = HIDWORD(v20) - v20;
      if (v18 < v20)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v20, __DataStorage._offset.getter()))
      {
        goto LABEL_94;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v49 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v25 = v49;
    }

    if (v18 < v20)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
      goto LABEL_101;
    }

    v18 = result;
    v50 = __DataStorage._offset.getter();
    v51 = v20 - v50;
    if (__OFSUB__(v20, v50))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    __DataStorage._length.getter();
    type metadata accessor for __DataStorage();
    swift_allocObject();
    a3 = __DataStorage.init(length:)();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(&v88 + 1) = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
LABEL_96:
        __break(1u);
      }

      swift_allocObject();
      v69 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      a3 = v69;
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
LABEL_102:
      __break(1u);
      return result;
    }

    LODWORD(a1) = result;
    if (__OFSUB__(0, __DataStorage._offset.getter()))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    __DataStorage._length.getter();
    *&v95 = 0;
    v70 = CCCKGContributorFinish();
    if (v70)
    {
      v71 = v70;
      *(&v88 + 1) = a2;
      v72 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v73 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      *(v74 + 56) = &type metadata for Int32;
      *(v74 + 64) = &protocol witness table for Int32;
      *(v74 + 32) = v71;
      os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v73, "CCCKGContributorFinish: Error finishing contribution. Status: %d.", v81);

      CryptoError.init(rawValue:)();
      v75 = type metadata accessor for CryptoError();
      sub_101114AD4(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v93 = swift_allocError();
      v77 = v76;
      v78 = *(v75 - 8);
      v79 = *(v78 + 48);
      if (v79(v14, 1, v75) == 1)
      {
        (*(v78 + 104))(v77, enum case for CryptoError.unspecifiedError(_:), v75);
        if (v79(v14, 1, v75) != 1)
        {
          sub_10000B3A8(v14, &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v78 + 32))(v77, v14, v75);
      }

      swift_willThrow();

      v80 = v90;
      *v90 = v20;
      v80[1] = v25 | 0x4000000000000000;
      return result;
    }

    v65 = v25 | 0x4000000000000000;
    v66 = v90;
    *v90 = v20;
LABEL_80:
    v66[1] = v65;
    return result;
  }

  if (v21 == 2)
  {

    sub_100016590(v20, v19);
    *&v95 = v20;
    *(&v95 + 1) = v19 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v22 = v95;
    v23 = *(v95 + 16);
    v24 = __DataStorage._bytes.getter();
    if (!v24)
    {

      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v18 = v24;
    if (__OFSUB__(v23, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v88 = v22;
    v89 = a3;
    v90 = a1;
    __DataStorage._length.getter();
    type metadata accessor for __DataStorage();
    swift_allocObject();
    a3 = __DataStorage.init(length:)();
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_95;
      }

      swift_allocObject();
      v53 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      a3 = v53;
    }

    result = __DataStorage._bytes.getter();
    v54 = *(&v88 + 1);
    if (!result)
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    LODWORD(a1) = result;
    if (__OFSUB__(0, __DataStorage._offset.getter()))
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    __DataStorage._length.getter();
    v94 = 0;
    v55 = CCCKGContributorFinish();
    if (!v55)
    {

      v65 = v54 | 0x8000000000000000;
      v66 = v90;
      *v90 = v88;
      goto LABEL_80;
    }

    v56 = v55;
    v57 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v58 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_101385D80;
    *(v59 + 56) = &type metadata for Int32;
    *(v59 + 64) = &protocol witness table for Int32;
    *(v59 + 32) = v56;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "CCCKGContributorFinish: Error finishing contribution. Status: %d.", v81);

    CryptoError.init(rawValue:)();
    v60 = type metadata accessor for CryptoError();
    sub_101114AD4(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v62 = v61;
    v63 = *(v60 - 8);
    v64 = *(v63 + 48);
    if (v64(v11, 1, v60) == 1)
    {
      (*(v63 + 104))(v62, enum case for CryptoError.unspecifiedError(_:), v60);
      if (v64(v11, 1, v60) != 1)
      {
        sub_10000B3A8(v11, &qword_10169C9A0, &unk_1013D5A40);
      }
    }

    else
    {
      (*(v63 + 32))(v62, v11, v60);
    }

    swift_willThrow();

    v67 = *(&v88 + 1) | 0x8000000000000000;
    v68 = v90;
    *v90 = v88;
    v68[1] = v67;
  }

  else
  {
    type metadata accessor for __DataStorage();
    *&v95 = 0;
    *(&v95 + 7) = 0;
    swift_allocObject();

    __DataStorage.init(length:)();
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_93;
      }

      swift_allocObject();
      __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    LODWORD(a1) = result;
    if (__OFSUB__(0, __DataStorage._offset.getter()))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    __DataStorage._length.getter();
    v94 = 0;
    v39 = CCCKGContributorFinish();
    if (v39)
    {
      v40 = v39;
      v41 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v42 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_101385D80;
      *(v43 + 56) = &type metadata for Int32;
      *(v43 + 64) = &protocol witness table for Int32;
      *(v43 + 32) = v40;
      os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "CCCKGContributorFinish: Error finishing contribution. Status: %d.", v81);

      CryptoError.init(rawValue:)();
      v44 = type metadata accessor for CryptoError();
      sub_101114AD4(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      swift_allocError();
      v46 = v45;
      v47 = *(v44 - 8);
      v48 = *(v47 + 48);
      if (v48(v18, 1, v44) == 1)
      {
        (*(v47 + 104))(v46, enum case for CryptoError.unspecifiedError(_:), v44);
        if (v48(v18, 1, v44) != 1)
        {
          sub_10000B3A8(v18, &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v47 + 32))(v46, v18, v44);
      }

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_101114090@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:

    sub_101114270(v8, v9, a3, a4);
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  swift_retain_n();
  v11 = CCCKGGetShareSize();
  v12 = CCCKGGetOpeningSize();
  v15[0] = sub_100845C88(v12);
  v15[1] = v13;

  sub_101112EB0(v15, a3, v14, v11, v12);
  if (v4)
  {
    sub_100016590(v15[0], v15[1]);
  }

  else
  {

    *a4 = *v15;
  }

  return result;
}

uint64_t sub_101114270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v9 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    sub_100A78DFC(v9, a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_101114324(unint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_101114090(a2, a3, a1, &v7);
  sub_100496254(v7, *(&v7 + 1), &v7);
  return v7;
}

void sub_10111441C(__int128 *a1@<X8>)
{
  v2 = sub_100A78AB4();
  v4 = v3;
  v6 = v5;
  sub_100017D5C(v2, v3);
  sub_1004A4714(v2, v4, &v35);
  v7 = v35;
  v8 = type metadata accessor for CollaborativeKeyGen.v1.ContributorContext();
  sub_100016590(v2, v4);
  v35 = v7;
  v36 = v6;
  *&v37 = 0;
  *(&v37 + 1) = v8;
  *&v38 = &off_101645BB0;
  sub_1000BC4D4(&qword_1016C8AE8, &qword_101408158);
  sub_1000BC4D4(&qword_1016C8AF0, &unk_101408160);
  if (swift_dynamicCast())
  {
    v10 = v40;
    v9 = v41;
    v11 = v42;
    sub_100017D5C(v40, v41);
    v16 = sub_100A7491C(v10, v9);
    v18 = v17;
    v20 = v19;
    sub_100016590(v10, v9);
    sub_100017D5C(v16, v18);
    sub_10049613C(v16, v18, &v35);
    v34 = v35;
    v26 = sub_101114324(v11, v35, *(&v35 + 1));
    if (v27 >> 60 != 15)
    {
      v31 = v27;
      v32 = v26;
      sub_100017D5C(v26, v27);
      log = CCCKGGetOpeningSize();

      sub_1003F141C(v32, v31, v20, log, &v35);
      sub_100016590(v34, *(&v34 + 1));

      sub_100006654(v32, v31);
      sub_100006654(v32, v31);
      sub_100016590(v10, v9);
      sub_100016590(v16, v18);

      v21 = v35;
      v22 = v36;
      v23 = v37;
      v24 = v38;
      v25 = v39;
      goto LABEL_8;
    }

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C418);
    v13 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v13, v29, "Unable to fake C3 from accessory.", v30, 2u);
    }

    sub_100016590(v16, v18);

    sub_100016590(v34, *(&v34 + 1));

    sub_100016590(v10, v9);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C418);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to fake C1 from accessory.", v15, 2u);
    }
  }

  v21 = xmmword_10138BBF0;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
LABEL_8:
  *a1 = v21;
  a1[1] = v22;
  a1[2] = v23;
  a1[3] = v24;
  a1[4] = v25;
}

uint64_t sub_101114AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_101114B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101114BE8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1684628325;
    v6 = 0x754E6C6169726573;
    if (a1 != 2)
    {
      v6 = 0x64616F6C796170;
    }

    if (a1)
    {
      v5 = 0x644970696863;
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
    v1 = 0x657261776D726966;
    v2 = 0x44746375646F7270;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x734D6E654779656BLL;
    if (a1 != 4)
    {
      v3 = 0x7372655663657073;
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

uint64_t sub_101114D2C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8B00, &qword_101408428);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_101116980();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 48);
    v13 = *(v3 + 48);
    v12 = 3;
    sub_1001022C4(&v15, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 64);
    v14 = v13;
    v12 = 4;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101115038@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101116AEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_101115060(uint64_t a1)
{
  v2 = sub_101116980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10111509C(uint64_t a1)
{
  v2 = sub_101116980();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10111512C@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[2];
  v32 = a1[3];
  v33 = v8;
  v20 = v8;
  v21 = v32;
  v9 = a1[4];
  v10 = *a1;
  v30 = a1[1];
  v31 = v9;
  v22 = v9;
  v23 = v30;
  v29 = v10;
  v28 = a1[7];
  v11 = a1[7];
  v12 = *(a1 + 17);
  v24 = v10;
  v26 = v11;
  if (v12 >> 60 == 15)
  {
    sub_1008CCDD0(&v33, &v27);
    sub_1008CCDD0(&v32, &v27);
    sub_1008CCDD0(&v31, &v27);
    sub_1001022C4(&v30, &v27);
    sub_1001022C4(&v29, &v27);
    sub_100EF5DC4(&v28, &v27);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    *&v27 = *(a1 + 16);
    *(&v27 + 1) = v12;
    sub_1008CCDD0(&v33, v19);
    sub_1008CCDD0(&v32, v19);
    sub_1008CCDD0(&v31, v19);
    sub_1001022C4(&v30, v19);
    sub_1001022C4(&v29, v19);
    sub_100EF5DC4(&v28, v19);
    sub_1002313AC();
    v13 = RawRepresentable<>.hexString.getter();
    v14 = v15;
  }

  v27 = a1[9];
  v25 = v27;
  sub_1008CCDD0(&v27, v19);
  v16 = v25;
  *(a4 + 64) = v24;
  *(a4 + 80) = v16;
  *(a4 + 96) = v26;
  v17 = v21;
  *a4 = v20;
  *(a4 + 16) = v17;
  result = v23;
  *(a4 + 32) = v22;
  *(a4 + 48) = result;
  *(a4 + 112) = v13;
  *(a4 + 120) = v14;
  *(a4 + 128) = a2;
  *(a4 + 136) = a3;
  return result;
}

uint64_t sub_1011152C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[143] = a4;
  v4[142] = a3;
  v4[141] = a2;
  v4[140] = a1;
  v5 = type metadata accessor for HashAlgorithm();
  v4[144] = v5;
  v4[145] = *(v5 - 8);
  v4[146] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v4[147] = v6;
  v4[148] = *(v6 - 8);
  v4[149] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[150] = v7;
  v4[151] = *(v7 - 8);
  v4[152] = swift_task_alloc();

  return _swift_task_switch(sub_101115444, 0, 0);
}

void sub_101115444()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 1216);
  v7 = *(v0 + 1208);
  v8 = *(v0 + 1200);
  v9 = *(v0 + 1192);
  v50 = *(v0 + 1184);
  v51 = *(v0 + 1176);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 1096) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 1104) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  static Locale.current.getter();
  v29 = Locale.acceptLanguageCode.getter();
  v31 = v30;
  (*(v50 + 8))(v9, v51);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v29, v31, 0x4C2D747065636341, 0xEF65676175676E61, v32);
  v33 = v24;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v39);
    }
  }

  *(v0 + 1224) = v33;
  v40 = *(v0 + 1136);
  v41 = *(v0 + 1128);
  v42 = *(v0 + 1120);
  sub_10041ACEC(v42, v0 + 16);
  sub_10111512C(v42, v41, v40, v0 + 176);
  sub_1011167A4(v42);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 1232) = JSONEncoder.init()();
  v43 = *(v0 + 288);
  *(v0 + 416) = *(v0 + 272);
  *(v0 + 432) = v43;
  *(v0 + 448) = *(v0 + 304);
  v44 = *(v0 + 224);
  *(v0 + 352) = *(v0 + 208);
  *(v0 + 368) = v44;
  v45 = *(v0 + 256);
  *(v0 + 384) = *(v0 + 240);
  *(v0 + 400) = v45;
  v46 = *(v0 + 192);
  *(v0 + 320) = *(v0 + 176);
  *(v0 + 336) = v46;
  sub_1011167F8();
  v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 1240) = 0;
  *(v0 + 1248) = v47;
  *(v0 + 1256) = v48;
  sub_100017D5C(v47, v48);
  v49 = swift_task_alloc();
  *(v0 + 1264) = v49;
  *v49 = v0;
  v49[1] = sub_101115B00;

  sub_100EA272C();
}

uint64_t sub_101115B00(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1272) = a1;
  *(v3 + 1280) = a2;

  return _swift_task_switch(sub_101115C04, 0, 0);
}

uint64_t sub_101115C04()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);
  *(v0 + 1080) = v2;
  *(v0 + 1088) = v1;
  *(v0 + 1064) = &type metadata for Data;
  *(v0 + 1072) = &protocol witness table for Data;
  *(v0 + 1040) = *(v0 + 1248);
  v6 = sub_1000035D0((v0 + 1040), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 1080);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 1040));
  *(v0 + 1288) = *(v0 + 1080);
  *(v0 + 1296) = *(v0 + 1088);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 1304) = v9;
  *(v0 + 1312) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 1320) = v12;
  *v12 = v0;
  v12[1] = sub_101115DBC;
  v13 = *(v0 + 1144);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_101115DBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1328) = v1;

  if (v1)
  {
    v5 = sub_101116300;
  }

  else
  {
    v6 = v4[164];
    v7 = v4[163];
    v4[167] = a1;
    sub_100016590(v7, v6);
    v5 = sub_101115EF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101115EF0()
{
  v49 = v0;
  v1 = v0[167];
  v2 = v0[162];
  v3 = v0[161];
  v4 = v0[153];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v48);

  sub_100016590(v3, v2);
  v6 = v48;
  v7 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    v43 = v7;
    swift_once();
    v7 = v43;
  }

  v45 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C410, "Pairing lock header:", 20, 2, _swiftEmptyArrayStorage);
  v8 = v6 + 8;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v6[8];
  v12 = (63 - v10) >> 6;
  v46 = v6;

  for (i = 0; v11; v7 = )
  {
    v14 = i;
    v15 = v46;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v47 = *v22;

    v24 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    v6 = &type metadata for String;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v47;
    *(v25 + 80) = v23;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v45, "%@: %@", 6, 2, v25);
  }

  v15 = v46;
  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++i;
    if (v11)
    {
      i = v14;
      goto LABEL_11;
    }
  }

  v27 = *(v44 + 1256);
  v28 = *(v44 + 1248);
  v29 = *(v44 + 1120);

  v30 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  v32 = *(v44 + 288);
  *(v44 + 848) = *(v44 + 272);
  *(v44 + 864) = v32;
  *(v44 + 880) = *(v44 + 304);
  v33 = *(v44 + 224);
  *(v44 + 784) = *(v44 + 208);
  *(v44 + 800) = v33;
  v34 = *(v44 + 256);
  *(v44 + 816) = *(v44 + 240);
  *(v44 + 832) = v34;
  v35 = *(v44 + 192);
  *(v44 + 752) = *(v44 + 176);
  *(v44 + 768) = v35;
  sub_10111684C(v44 + 176, v44 + 896);
  v36 = String.init<A>(describing:)();
  v38 = v37;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_100008C00();
  *(v31 + 32) = v36;
  *(v31 + 40) = v38;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v45, "Pairing lock body %@", 20, 2, v31);

  sub_1011167A4(v29);

  sub_101116884(v44 + 176);

  sub_100017D5C(v28, v27);

  sub_100016590(v28, v27);
  v39 = *(v44 + 1256);
  v40 = *(v44 + 1248);

  v41 = *(v44 + 8);

  return v41(v46, v40, v39);
}

uint64_t sub_101116300()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1288);
  sub_100016590(*(v0 + 1304), *(v0 + 1312));
  sub_100016590(v2, v1);
  v3 = static os_log_type_t.error.getter();
  v4 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = *(v0 + 1328);
  v6 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v0 + 1112) = v5;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v47 = sub_100008C00();
  *(v7 + 64) = v47;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v6, "Failed to generate attestation header: %@", 41, 2, v7);

  v45 = v0;
  v0 = *(v0 + 1224);
  v11 = static os_log_type_t.debug.getter();
  if (*(v4 + 200) != -1)
  {
    v43 = v11;
    swift_once();
    v11 = v43;
  }

  v46 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C410, "Pairing lock header:", 20, 2, _swiftEmptyArrayStorage, 1, 2);
  v3 = v0 + 64;
  v12 = -1;
  v13 = -1 << *(v0 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v4 = v12 & *(v0 + 64);
  v14 = (63 - v13) >> 6;
  v48 = v0;

  v15 = 0;
  while (v4)
  {
    v16 = v15;
    v17 = v48;
LABEL_13:
    v18 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v19 = (v16 << 10) | (16 * v18);
    v20 = *(v17 + 56);
    v21 = (*(v17 + 48) + v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = (v20 + v19);
    v0 = *v24;
    v25 = v24[1];

    v26 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10138BBE0;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v47;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v47;
    *(v27 + 72) = v0;
    *(v27 + 80) = v25;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v46, "%@: %@", 6, 2, v27);
  }

  v17 = v48;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v16 >= v14)
    {
      break;
    }

    v4 = *(v3 + 8 * v16);
    ++v15;
    if (v4)
    {
      v15 = v16;
      goto LABEL_13;
    }
  }

  v28 = *(v45 + 1256);
  v29 = *(v45 + 1248);
  v30 = *(v45 + 1120);

  v31 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = v44;
  v33 = *(v45 + 288);
  *(v45 + 848) = *(v45 + 272);
  *(v45 + 864) = v33;
  *(v45 + 880) = *(v45 + 304);
  v34 = *(v45 + 224);
  *(v45 + 784) = *(v45 + 208);
  *(v45 + 800) = v34;
  v35 = *(v45 + 256);
  *(v45 + 816) = *(v45 + 240);
  *(v45 + 832) = v35;
  v36 = *(v45 + 192);
  *(v45 + 752) = *(v45 + 176);
  *(v45 + 768) = v36;
  sub_10111684C(v45 + 176, v45 + 896);
  v37 = String.init<A>(describing:)();
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = v47;
  *(v32 + 32) = v37;
  *(v32 + 40) = v38;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v46, "Pairing lock body %@", 20, 2, v32);

  sub_1011167A4(v30);

  sub_101116884(v45 + 176);

  sub_100017D5C(v29, v28);

  sub_100016590(v29, v28);
  v39 = *(v45 + 1256);
  v40 = *(v45 + 1248);

  v41 = *(v45 + 8);

  return v41(v48, v40, v39);
}