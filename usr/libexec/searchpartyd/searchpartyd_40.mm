uint64_t sub_1004775B4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x657461446E616373;
    v5 = 0x797469726F697270;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0x6E6F697461636F6CLL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7942737574617473;
    if (a1 != 6)
    {
      v1 = 0xD000000000000015;
    }

    v2 = 0xD000000000000012;
    if (a1 != 4)
    {
      v2 = 0x656372756F73;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1004776E8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A0D48, &qword_1013A4AD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100479598();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[31] = 0;
  type metadata accessor for Date();
  sub_100479754(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for BeaconPayloadFile.MetaData(0);
    v11[30] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[29] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[28] = *(v3 + *(v9 + 28));
    v11[27] = 3;
    sub_10047979C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[26] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11[25] = *(v3 + *(v9 + 36));
    v11[24] = 5;
    sub_1004797F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[15] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[14] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[13] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100477A24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Date();
  v31 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v28 - v7;
  v8 = sub_1000BC4D4(&qword_1016A0D30, &qword_1013A4AC8);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100479598();
  v35 = v11;
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100007BAC(a1);
  }

  v29 = v12;
  v36 = v14;
  v47 = 0;
  sub_100479754(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v36;
  v18 = v34;
  v34 = *(v31 + 32);
  (v34)(v36, v18, v3);
  v46 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v6;
  v20 = v29;
  (v34)(v17 + v29[5], v19, v3);
  v45 = 2;
  v21 = v17;
  *(v17 + v20[6]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v43 = 3;
  sub_1004795EC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v33;
  *(v21 + v20[7]) = v44;
  v42 = 4;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v21 + v20[8];
  *v24 = v23;
  *(v24 + 8) = v25 & 1;
  v40 = 5;
  sub_100479640();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v21 + v20[9]) = v41;
  v39 = 6;
  *(v21 + v20[10]) = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = 7;
  *(v21 + v20[11]) = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = 8;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v22 + 8))(v35, v16);
  *(v21 + v20[12]) = v26;
  sub_100479694(v21, v30);
  sub_100007BAC(a1);
  return sub_1004796F8(v21);
}

uint64_t sub_100477FAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100479A7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100477FD4(uint64_t a1)
{
  v2 = sub_100479598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100478010(uint64_t a1)
{
  v2 = sub_100479598();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100478130@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100033DEC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10047815C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData;
  v12 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate;
  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL;
  (*(v5 + 16))(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL, a1, v4);
  v16 = sub_100479344();
  if (v17 >> 60 == 15)
  {
    type metadata accessor for BeaconPayloadFile(0);
    v18 = *(v5 + 8);
    v18(a1, v4);
    v18(v2 + v15, v4);
    sub_10000B3A8(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData, &unk_10169BA78, &unk_101395650);
    sub_10000B3A8(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate, &unk_1016980C0, &unk_10138F3A0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v19 = (v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement);
    *v19 = v16;
    v19[1] = v17;
    v20 = v16;
    v21 = v17;
    sub_100017D5C(v16, v17);
    URL.deletingLastPathComponent()();
    URL.deletingLastPathComponent()();
    sub_100006654(v20, v21);
    v22 = *(v5 + 8);
    v22(a1, v4);
    v22(v8, v4);
    (*(v5 + 32))(v2 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_rootURL, v10, v4);
    v23 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData;
    v24 = type metadata accessor for BeaconPayloadFile.MetaData(0);
    (*(*(v24 - 8) + 56))(v2 + v23, 1, 1, v24);
  }

  return v2;
}

uint64_t sub_1004784B0@<X0>(void *a1@<X8>)
{
  v3 = sub_1000BC4D4(&unk_10169BA78, &unk_101395650);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData;
  swift_beginAccess();
  sub_1000D2A70(v1 + v9, v8, &unk_10169BA78, &unk_101395650);
  v10 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1000D2AD8(v8, a1, &qword_10169BA58, &unk_101395640);
  }

  sub_10000B3A8(v8, &unk_10169BA78, &unk_101395650);
  sub_1004786C0(v1, a1);
  sub_1000D2A70(a1, v6, &qword_10169BA58, &unk_101395640);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10002311C(v6, v1 + v9, &unk_10169BA78, &unk_101395650);
  return swift_endAccess();
}

uint64_t sub_1004786C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D2A70(a1 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData, v6, &qword_10169BA58, &unk_101395640);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &qword_10169BA58, &unk_101395640);
    v12 = URL.extendedAttribute(name:)();
    v14 = v13;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100479754(&qword_1016A0D68, type metadata accessor for BeaconPayloadFile.MetaData, &unk_1013A4A9C);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100016590(v12, v14);
  }

  else
  {
    sub_100479898(v6, v10);
    sub_100479898(v10, a2);
  }

  return (*(v8 + 56))(a2, 0, 1, v7);
}

uint64_t sub_10047895C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  __chkstk_darwin(v6 - 8);
  v8 = (&v23 - v7);
  v9 = sub_1000BC4D4(&unk_1016980C0, &unk_10138F3A0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate;
  swift_beginAccess();
  sub_1000D2A70(v1 + v15, v14, &unk_1016980C0, &unk_10138F3A0);
  v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_1000D2AD8(v14, v24, &unk_101696900, &unk_10138B1E0);
  }

  sub_10000B3A8(v14, &unk_1016980C0, &unk_10138F3A0);
  sub_1004784B0(v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_10000B3A8(v8, &qword_10169BA58, &unk_101395640);
    v18 = type metadata accessor for Date();
    v19 = v24;
    (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
  }

  else
  {
    sub_100479694(v8, v5);
    sub_10000B3A8(v8, &qword_10169BA58, &unk_101395640);
    v21 = type metadata accessor for Date();
    v22 = *(v21 - 8);
    v19 = v24;
    (*(v22 + 16))(v24, v5, v21);
    sub_1004796F8(v5);
    (*(v22 + 56))(v19, 0, 1, v21);
  }

  sub_1000D2A70(v19, v12, &unk_101696900, &unk_10138B1E0);
  (*(v17 + 56))(v12, 0, 1, v16);
  swift_beginAccess();
  sub_10002311C(v12, v1 + v15, &unk_1016980C0, &unk_10138F3A0);
  return swift_endAccess();
}

uint64_t sub_100478D50()
{
  v1 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_rootURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_100016590(*(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement), *(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement + 8));
  v3(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL, v2);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData, &qword_10169BA58, &unk_101395640);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData, &unk_10169BA78, &unk_101395650);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate, &unk_1016980C0, &unk_10138F3A0);

  return swift_deallocClassInstance();
}

void sub_100478EB8(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100479034(319);
    if (v2 <= 0x3F)
    {
      sub_1002ECE54(319, &qword_1016A0B78, &qword_10169BA58, &unk_101395640);
      if (v3 <= 0x3F)
      {
        sub_1002ECE54(319, &unk_1016A0B80, &unk_101696900, &unk_10138B1E0);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100479034(uint64_t a1)
{
  if (!qword_1016A0B70)
  {
    type metadata accessor for BeaconPayloadFile.MetaData(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016A0B70);
    }
  }
}

void sub_1004790D4(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &unk_1016A0CD8, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_10169D5F0, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004791C8()
{
  result = qword_1016A0D28;
  if (!qword_1016A0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D28);
  }

  return result;
}

uint64_t sub_10047921C(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v5 = v4[8];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }

LABEL_11:
    if (*(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]) || *(a1 + v4[11]) != *(a2 + v4[11]))
    {
      return 0;
    }

    v10 = v4[12];
    v11 = *(a1 + v10);
    v12 = *(a2 + v10);
    if (v11 == 2)
    {
      if (v12 != 2)
      {
        return 0;
      }
    }

    else if (v12 == 2 || ((v12 ^ v11) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v9)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_100479344()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.deletingLastPathComponent()();
  v4 = URL.lastPathComponent.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v13[0] = v4;
  v13[1] = v6;
  sub_1000DF96C();
  v7 = Data.init<A>(hexString:)();
  if (v8 >> 60 == 15)
  {
    return 0;
  }

  v9 = v7;
  v10 = v8;
  sub_100017D5C(v7, v8);
  sub_1004A4714(v9, v10, v13);
  sub_100006654(v9, v10);
  return v13[0];
}

unint64_t sub_100479598()
{
  result = qword_1016A0D38;
  if (!qword_1016A0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D38);
  }

  return result;
}

unint64_t sub_1004795EC()
{
  result = qword_1016A0D40;
  if (!qword_1016A0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D40);
  }

  return result;
}

unint64_t sub_100479640()
{
  result = qword_1016BA0E0;
  if (!qword_1016BA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0E0);
  }

  return result;
}

uint64_t sub_100479694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004796F8(uint64_t a1)
{
  v2 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100479754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10047979C()
{
  result = qword_1016A0D50;
  if (!qword_1016A0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D50);
  }

  return result;
}

unint64_t sub_1004797F0()
{
  result = qword_1016A0D58;
  if (!qword_1016A0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D58);
  }

  return result;
}

unint64_t sub_100479844()
{
  result = qword_1016A0D60;
  if (!qword_1016A0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D60);
  }

  return result;
}

uint64_t sub_100479898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100479920()
{
  result = qword_1016A0D70;
  if (!qword_1016A0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D70);
  }

  return result;
}

unint64_t sub_100479978()
{
  result = qword_1016A0D78;
  if (!qword_1016A0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D78);
  }

  return result;
}

unint64_t sub_1004799D0()
{
  result = qword_1016A0D80;
  if (!qword_1016A0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D80);
  }

  return result;
}

unint64_t sub_100479A28()
{
  result = qword_1016A0D88;
  if (!qword_1016A0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D88);
  }

  return result;
}

uint64_t sub_100479A7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461446E616373 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001013559C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101347FC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7942737574617473 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013559E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101355A00 == a2)
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

uint64_t CryptoAdvertisementKeys.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CryptoAdvertisementKeys.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoAdvertisementKeys(0) + 20);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for CryptoAdvertisementKeys(uint64_t a1)
{
  result = qword_1016A0E20;
  if (!qword_1016A0E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptoAdvertisementKeys.privateKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoAdvertisementKeys(0) + 24);
  v2 = *v1;
  sub_10002E98C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoAdvertisementKeys.advertisement.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoAdvertisementKeys(0) + 28);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

Swift::Int sub_100479EFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100479F90(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10047A010(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10047A0A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10047B320(*a1);
  *a2 = result;
  return result;
}

void sub_10047A0D0(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 68;
  v4 = 0xE200000000000000;
  v5 = 21072;
  if (*v1 != 2)
  {
    v5 = 65;
    v4 = 0xE100000000000000;
  }

  if (*v1)
  {
    v3 = 21840;
    v2 = 0xE200000000000000;
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

uint64_t sub_10047A120()
{
  v1 = 68;
  v2 = 21072;
  if (*v0 != 2)
  {
    v2 = 65;
  }

  if (*v0)
  {
    v1 = 21840;
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

unint64_t sub_10047A16C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10047B320(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10047A194(uint64_t a1)
{
  v2 = sub_10047A5E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10047A1D0(uint64_t a1)
{
  v2 = sub_10047A5E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CryptoAdvertisementKeys.encode(to:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A0D90, &qword_1013A4CC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_10047A5E4();
  v10 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000BC4D4(&qword_1016A0DA0, &qword_1013A4CC8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  DateInterval.start.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  *(v11 + 32) = v13;
  DateInterval.duration.getter();
  *(v11 + 40) = v14;
  v27 = v11;
  v29 = 0;
  sub_1000BC4D4(&qword_1016A0DA8, &qword_1013A4CD0);
  sub_10047AC58(&qword_1016A0DB0, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
  v15 = v25[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v15)
  {
  }

  else
  {

    v16 = type metadata accessor for CryptoAdvertisementKeys(0);
    v17 = (v10 + v16[5]);
    v18 = v17[1];
    v27 = *v17;
    v28 = v18;
    v29 = 1;
    sub_100017D5C(v27, v18);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v27, v28);
    v19 = (v10 + v16[6]);
    v20 = v19[1];
    if (v20 >> 60 != 15)
    {
      v27 = *v19;
      v21 = v27;
      v28 = v20;
      v29 = 2;
      sub_10002E98C(v27, v20);
      sub_100017D5C(v21, v20);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v27, v28);
      sub_100006654(v21, v20);
      v10 = v26;
    }

    v22 = (v10 + v16[7]);
    v23 = v22[1];
    v27 = *v22;
    v28 = v23;
    v29 = 3;
    sub_100017D5C(v27, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v27, v28);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10047A5E4()
{
  result = qword_1016A0D98;
  if (!qword_1016A0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0D98);
  }

  return result;
}

uint64_t CryptoAdvertisementKeys.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A0DB8, &qword_1013A4CD8);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for CryptoAdvertisementKeys(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10047A5E4();
  v12 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100007BAC(a1);
  }

  v40 = v5;
  v43 = a1;
  v13 = v42;
  sub_1000BC4D4(&qword_1016A0DA8, &qword_1013A4CD0);
  v45 = 0;
  sub_10047AC58(&qword_1016A0DC0, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v6;
  v15 = v44;
  v45 = 1;
  sub_1000E307C();
  v16 = v8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v15;
  v17 = v44;
  v45 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37 = *(&v17 + 1);
  v18 = *(&v44 + 1);
  v38 = v44;
  v45 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  result = v16;
  v35 = v16;
  v36 = v17;
  v20 = v39;
  if (!*(v39 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v34 = v44;
  result = Date.init(timeIntervalSinceReferenceDate:)();
  if (*(v20 + 16) < 2uLL)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v21 = v11;

  DateInterval.init(start:duration:)();
  v22 = v18;
  v23 = v38;
  if (v18 >> 60 == 15)
  {
    v24 = 0;
    v25 = 0xF000000000000000;
  }

  else
  {
    sub_10002E98C(v38, v18);
    v24 = sub_10049BD68(v23, v18);
  }

  v26 = v37;
  v27 = (v21 + v9[6]);
  *v27 = v24;
  v27[1] = v25;
  v28 = v36;
  sub_100017D5C(v36, v26);
  v29 = sub_10049C0AC(v28, v26);
  v30 = v41;
  v31 = (v21 + v9[5]);
  *v31 = v29;
  v31[1] = v32;
  sub_100018000(v34, *(&v34 + 1), &v44);
  (*(v13 + 8))(v35, v14);
  sub_100006654(v38, v22);
  sub_100016590(v36, v26);
  *(v21 + v9[7]) = v44;
  sub_10047AFE4(v21, v30);
  sub_100007BAC(v43);
  return sub_10047B048(v21);
}

uint64_t sub_10047AC58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A0DA8, &qword_1013A4CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t CryptoAdvertisementKeys.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HashAlgorithm();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v31 = 0xD000000000000019;
  v32 = 0x8000000101355A20;
  v6 = type metadata accessor for CryptoAdvertisementKeys(0);
  v30 = *(v0 + *(v6 + 28));
  sub_10002EE9C();
  v7._countAndFlagsBits = RawRepresentable<>.hexString.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 2108704;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  (*(v3 + 104))(v5, enum case for HashAlgorithm.sha256(_:), v2);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  *&v30 = v9;
  *(&v30 + 1) = v11;
  sub_10025DB08();
  v12 = RawRepresentable<>.hexString.getter();
  v14 = v13;
  sub_100016590(v9, v11);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 2108704;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  v18 = v31;
  v17 = v32;
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  type metadata accessor for DateInterval();
  sub_10047B0A4();
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  v21 = v20;

  v31 = v19;
  v32 = v21;
  v22._countAndFlagsBits = 0x746176697270202CLL;
  v22._object = 0xEE00203A79654B65;
  String.append(_:)(v22);
  if (*(v1 + *(v6 + 24) + 8) >> 60 == 15)
  {
    v23 = 0x65736C6166;
  }

  else
  {
    v23 = 1702195828;
  }

  if (*(v1 + *(v6 + 24) + 8) >> 60 == 15)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);

  v26 = v31;
  v27 = v32;
  v31 = v18;
  v32 = v17;

  v28._countAndFlagsBits = v26;
  v28._object = v27;
  String.append(_:)(v28);

  return v31;
}

uint64_t sub_10047AFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptoAdvertisementKeys(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047B048(uint64_t a1)
{
  v2 = type metadata accessor for CryptoAdvertisementKeys(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10047B0A4()
{
  result = qword_10169D0F8;
  if (!qword_10169D0F8)
  {
    type metadata accessor for DateInterval();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0F8);
  }

  return result;
}

void sub_10047B124(uint64_t a1)
{
  type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    sub_10047B1B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10047B1B8()
{
  if (!qword_1016A0E30)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A0E30);
    }
  }
}

unint64_t sub_10047B21C()
{
  result = qword_1016A0E68;
  if (!qword_1016A0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0E68);
  }

  return result;
}

unint64_t sub_10047B274()
{
  result = qword_1016A0E70;
  if (!qword_1016A0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0E70);
  }

  return result;
}

unint64_t sub_10047B2CC()
{
  result = qword_1016A0E78;
  if (!qword_1016A0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0E78);
  }

  return result;
}

unint64_t sub_10047B320(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608FD0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10047B36C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - v6;
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = [objc_opt_self() defaultManager];
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v11, v0);
  v12 = 1;
  URL.appendingPathComponent(_:isDirectory:)();
  v13 = *(v1 + 8);
  v13(v4, v0);
  URL.appendingPathComponent(_:)();
  v13(v7, v0);
  URL.path.getter();
  v13(v9, v0);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v10 fileExistsAtPath:v14];

  if ((v15 & 1) == 0)
  {
    if (qword_101694C00 != -1)
    {
      swift_once();
    }

    sub_10088F30C(2, qword_10177BA50);
    URL.path.getter();
    v13(v9, v0);
    v16 = String._bridgeToObjectiveC()();

    v12 = [v10 fileExistsAtPath:v16];
  }

  return v12;
}

uint64_t sub_10047B664(uint64_t a1)
{
  *(a1 + 24) = 1;
  v1 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v6 = v1;
    swift_once();
    v1 = v6;
  }

  v2 = qword_10177C388;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10177C388, "CloudKitUpdateEligibility is eligible (always).", 47, 2, _swiftEmptyArrayStorage);
  v3 = static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  *(v4 + 32) = 1;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v2, "CloudKitUpdateEligibility overriden: true. Eligible: %i", v7);

  return PassthroughSubject.send(_:)();
}

uint64_t sub_10047B7AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  result = os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10177C388, "CloudKitUpdateEligibility is eligible (always).", 47, 2, _swiftEmptyArrayStorage);
  *(a1 + 24) = 0;
  *a2 = 1;
  return result;
}

uint64_t sub_10047B858()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10047B8D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A0FF8, "ڎ\v");
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v1 + 16) = v8;
  *(v1 + 24) = 0;
  sub_1000BC4D4(&qword_1016A1000, &qword_1013F1BD0);
  swift_allocObject();
  *(v1 + 32) = PassthroughSubject.init()();
  *(v1 + 48) = &_swiftEmptySetSingleton;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v1 + 56) = v9;
  *(v1 + 64) = 1;
  *(v1 + 40) = a1;
  v10 = *(v1 + 16);

  v14[1] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  sub_1000041A4(&qword_1016A1008, &qword_1016A0FF8, "ڎ\v", &protocol conformance descriptor for Publishers.Filter<A>);

  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_10047BBD0(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[4] = swift_task_alloc();
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_10047BD60;

  return sub_10047C1D8(a1);
}

uint64_t sub_10047BD60()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_10047BED4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10047BED4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v23 = v0[12];
  v24 = v0[8];
  v17 = v0[5];
  v4 = v0[4];
  v19 = v0[6];
  v20 = v4;
  v22 = v0[3];
  v5 = v0[2];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  v21 = v1;
  v7(v1, 1, 1, v6);
  v18 = *(v5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1000D2A70(v2, v24, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v1, v3, &qword_1016980D0, &unk_10138F3B0);
  v9 = *(v17 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = (v19 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + v11 + 8) & ~v9;
  v13 = (v12 + v19) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1000D2AD8(v24, v14 + v10, &qword_1016980D0, &unk_10138F3B0);
  *(v14 + v11) = v18;
  sub_1000D2AD8(v3, v14 + v12, &qword_1016980D0, &unk_10138F3B0);
  *(v14 + v12 + v19) = 2;
  *(v14 + v13 + 8) = v23;
  *(v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v22;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v20, &unk_1013A52A0, v14);

  sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10047C1D8(uint64_t a1)
{
  v2[135] = v1;
  v2[134] = a1;
  sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v2[136] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2[137] = swift_task_alloc();
  v3 = type metadata accessor for MACAddress();
  v2[138] = v3;
  v2[139] = *(v3 - 8);
  v2[140] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[141] = v4;
  v2[142] = *(v4 - 8);
  v2[143] = swift_task_alloc();
  v5 = type metadata accessor for PairingExecutorState();
  v2[144] = v5;
  v2[145] = *(v5 - 8);
  v2[146] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[147] = v6;
  v2[148] = *(v6 - 8);
  v2[149] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v2[150] = swift_task_alloc();
  v7 = type metadata accessor for AccessoryMetadata(0);
  v2[151] = v7;
  v2[152] = *(v7 - 8);
  v2[153] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v2[154] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryProductInfo(0);
  v2[155] = v8;
  v2[156] = *(v8 - 8);
  v2[157] = swift_task_alloc();

  return _swift_task_switch(sub_10047C560, v1, 0);
}

uint64_t sub_10047C560()
{
  v31 = v0;
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[135];
  v5 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  v0[158] = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  v6 = *(v4 + v5);
  v7 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v6 + v7, v3, &qword_101697268, &qword_101394FE0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v0[154], &qword_101697268, &qword_101394FE0);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016A1010);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101355E00, v30);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Missing productInfo!", v11, 0xCu);
      sub_100007BAC(v12);
    }

    sub_10048E4E8();
    swift_allocError();
    *v13 = 6;
    swift_willThrow();
LABEL_16:

    v28 = v0[1];

    return v28();
  }

  v14 = v0[157];
  v15 = v0[155];
  sub_10048E8F0(v0[154], v14, type metadata accessor for AccessoryProductInfo);
  if (*(v14 + *(v15 + 24)) != 1)
  {
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_1016A1010);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101355E00, v30);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s Not eligible for pairing!", v24, 0xCu);
      sub_100007BAC(v25);
    }

    v26 = v0[157];
    sub_10048E4E8();
    swift_allocError();
    *v27 = 18;
    swift_willThrow();
    sub_10048E958(v26, type metadata accessor for AccessoryProductInfo);
    goto LABEL_16;
  }

  v16 = *(v0[135] + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheralProvider + 8);
  ObjectType = swift_getObjectType();
  v18 = swift_task_alloc();
  v0[159] = v18;
  v19 = sub_1000BC4D4(&qword_1016A1358, &qword_1013E0350);
  *v18 = v0;
  v18[1] = sub_10047CA80;
  v20 = v0[134];

  return dispatch thunk of PairingPeripheralProvider.pair<A>(_:)(v0 + 132, v20, v19, ObjectType, v16);
}

uint64_t sub_10047CA80()
{
  v2 = *v1;
  *(*v1 + 1280) = v0;

  v3 = *(v2 + 1080);
  if (v0)
  {
    v4 = sub_100480774;
  }

  else
  {
    v4 = sub_10047CBAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10047CBAC()
{
  v42 = v0;
  v1 = v0[132];
  v0[161] = v1;
  v2 = v0[133];
  v0[162] = v2;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v3 = v0[134];
  v4 = type metadata accessor for Logger();
  v0[163] = sub_1000076D4(v4, qword_1016A1010);
  sub_10001F280(v3, (v0 + 12));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41[0] = v8;
    *v7 = 136315138;
    sub_10001F280((v0 + 12), (v0 + 77));
    sub_1000BC4D4(&qword_1016A1370, &qword_1013E03B0);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    sub_100007BAC(v0 + 12);
    v12 = sub_1000136BC(v9, v11, v41);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connected to peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {

    sub_100007BAC(v0 + 12);
  }

  v13 = v0[158];
  v14 = v0[152];
  v15 = v0[151];
  v16 = v0[150];
  v17 = v0[135];
  v18 = (v17 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  *v18 = v1;
  v18[1] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v19 = *(v17 + v13);
  v20 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata;
  swift_beginAccess();
  sub_1000D2A70(v19 + v20, v16, &qword_1016A62A0, &unk_101396E10);
  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    sub_10000B3A8(v0[150], &qword_1016A62A0, &unk_101396E10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101355E00, v41);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s Invalid metadata!", v23, 0xCu);
      sub_100007BAC(v24);
    }

    v25 = v0[157];
    sub_10048E4E8();
    swift_allocError();
    *v26 = 10;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10048E958(v25, type metadata accessor for AccessoryProductInfo);

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = v0[158];
    v30 = v0[153];
    v31 = v0[151];
    v32 = v0[135];
    sub_10048E8F0(v0[150], v30, type metadata accessor for AccessoryMetadata);
    v33 = (v30 + *(v31 + 20));
    v34 = *v33;
    v35 = v33[1];
    v36 = *(v19 + 104);
    v37 = *(v19 + 112);
    *(v19 + 104) = *v33;
    *(v19 + 112) = v35;

    sub_100017D5C(v34, v35);
    sub_100006654(v36, v37);

    v38 = *(v32 + v29);

    *(v38 + 88) = sub_10098E010();
    *(v38 + 96) = v39;

    v40 = swift_task_alloc();
    v0[164] = v40;
    *v40 = v0;
    v40[1] = sub_10047D0FC;

    return sub_10048A608();
  }
}

uint64_t sub_10047D0FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[165] = a1;
  v5[166] = a2;
  v5[167] = v2;

  v6 = v4[135];
  if (v2)
  {
    v7 = sub_100480888;
  }

  else
  {
    v7 = sub_10047D238;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10047D238()
{
  v53 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[158];
    v4 = v0[135];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v52[0] = v6;
    *v5 = 136315138;
    v7 = *(v4 + v3);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    sub_100017D5C(v8, v9);
    v10 = Data.hexString.getter();
    v12 = v11;
    sub_100016590(v8, v9);
    v13 = sub_1000136BC(v10, v12, v52);

    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "sessionNonce: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v14 = v0[166];
  v15 = v0[165];
  sub_100017D5C(v15, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_100016590(v15, v14);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v52[0] = v19;
    *v18 = 136315138;
    v20 = Data.hexString.getter();
    v22 = sub_1000136BC(v20, v21, v52);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "companionSessionNonce: %s", v18, 0xCu);
    sub_100007BAC(v19);
  }

  v23 = sub_100F54748();
  v0[168] = v23;
  v0[169] = v24;
  if (v24 >> 60 == 15)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to generate FindMyNetworkId.", v27, 2u);
    }

    v28 = v0[166];
    v29 = v0[165];
    v30 = v0[157];
    v31 = v0[153];

    sub_10048E4E8();
    swift_allocError();
    *v32 = 5;
    swift_willThrow();
    sub_100016590(v29, v28);
    swift_unknownObjectRelease();
    sub_10048E958(v31, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v30, type metadata accessor for AccessoryProductInfo);

    v33 = v0[1];

    return v33();
  }

  else
  {
    v35 = v23;
    v36 = v24;
    sub_100017D5C(v23, v24);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    sub_100006654(v35, v36);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      *v39 = 136315138;
      sub_100017D5C(v35, v36);
      v41 = Data.hexString.getter();
      v43 = v42;
      sub_100006654(v35, v36);
      v44 = sub_1000136BC(v41, v43, v52);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "findMyNetworkId: %s", v39, 0xCu);
      sub_100007BAC(v40);
    }

    v45 = (*(v0[135] + v0[158]) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
    v46 = *v45;
    v47 = v45[1];
    *v45 = v35;
    v45[1] = v36;
    sub_10002E98C(v35, v36);

    sub_100006654(v46, v47);

    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    ObjectType = swift_getObjectType();
    v0[170] = ObjectType;
    v49 = swift_task_alloc();
    v0[171] = v49;
    *v49 = v0;
    v49[1] = sub_10047D8B4;
    v50 = v0[162];
    v51 = v0[149];

    return dispatch thunk of ServiceProtocol.subscript.getter(v51, ObjectType, v50);
  }
}

uint64_t sub_10047D8B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[172] = a1;
  v4[173] = v1;

  v5 = v3[149];
  v6 = v3[148];
  v7 = v3[147];
  v8 = v3[135];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_1004809C8;
  }

  else
  {
    v9 = sub_10047DA3C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10047DA3C()
{
  v41 = v0;
  v38 = *(v0 + 1328);
  v39 = *(v0 + 1384);
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1080);
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
  *(v0 + 1392) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
  v4 = *(v2 + v3 + 24);
  v5 = *(v2 + v3 + 32);
  sub_1000035D0((v2 + v3), v4);
  v37 = *(v5 + 64);
  *(v0 + 200) = swift_getAssociatedTypeWitness();
  *(v0 + 208) = swift_getAssociatedConformanceWitness();
  sub_1000280DC((v0 + 176));

  v37(v6, v1, v38, v4, v5);
  if (v39)
  {
    v7 = *(v0 + 1352);
    v8 = *(v0 + 1344);
    v9 = *(v0 + 1328);
    v10 = *(v0 + 1320);
    v11 = *(v0 + 1256);
    v12 = *(v0 + 1224);

    swift_unknownObjectRelease();
    sub_100006654(v8, v7);
    sub_100016590(v10, v9);
    swift_unknownObjectRelease();
    sub_10048E958(v12, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v11, type metadata accessor for AccessoryProductInfo);
    sub_100101758((v0 + 176));

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {

    sub_10001F280(v0 + 176, v0 + 216);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40 = v16;
      *v15 = 136315138;
      sub_10001F280(v0 + 216, v0 + 56);
      sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      sub_100007BAC((v0 + 216));
      v20 = sub_1000136BC(v17, v19, &v40);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Sending command: %s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      sub_100007BAC((v0 + 216));
    }

    v21 = *(v0 + 1168);
    v22 = *(v0 + 1160);
    v23 = *(v0 + 1152);
    v24 = enum case for PairingExecutorState.InitiatePairing.commandStart(_:);
    v25 = type metadata accessor for PairingExecutorState.InitiatePairing();
    *(v0 + 1400) = v25;
    v26 = *(v25 - 8);
    v27 = *(v26 + 104);
    *(v0 + 1408) = v27;
    *(v0 + 1416) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v27(v21, v24, v25);
    v28 = *(v26 + 56);
    *(v0 + 1424) = v28;
    *(v0 + 1432) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v28(v21, 0, 1, v25);
    *(v0 + 1624) = enum case for PairingExecutorState.initiatePairing(_:);
    v29 = *(v22 + 104);
    *(v0 + 1440) = v29;
    *(v0 + 1448) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v29(v21);
    *(v0 + 1456) = type metadata accessor for AirPodsLEPairingExecutor(0);
    *(v0 + 1464) = sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor, &unk_1013A50D8);
    PairingExecutor.setState(_:)();
    v30 = *(v22 + 8);
    *(v0 + 1472) = v30;
    *(v0 + 1480) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v21, v23);
    *(v0 + 1488) = BinaryEncoder.encode<A>(_:)();
    *(v0 + 1496) = v31;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 1504) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 1512) = AssociatedConformanceWitness;
    v36 = swift_task_alloc();
    *(v0 + 1520) = v36;
    *v36 = v0;
    v36[1] = sub_10047E0CC;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10047E0CC(uint64_t a1)
{
  v4 = *v2;
  v4[191] = v1;

  v5 = v4[135];
  if (v1)
  {
    v6 = sub_100480B30;
  }

  else
  {
    v4[192] = a1;
    v6 = sub_10047E208;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10047E208()
{
  v1 = fragment(data:mtu:)();
  v0[193] = v1;
  v2 = swift_task_alloc();
  v0[194] = v2;
  *v2 = v0;
  v2[1] = sub_10047E2C8;
  v3 = v0[189];
  v4 = v0[188];
  v5 = v0[143];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v5, v1, v4, v3);
}

uint64_t sub_10047E2C8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v4 = v2[135];

    return _swift_task_switch(sub_100480CBC, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[196] = v5;
    v6 = sub_10048E70C();
    *v5 = v3;
    v5[1] = sub_10047E470;
    v7 = v2[141];

    return AsyncSequence<>.reassemble()(v7, v6);
  }
}

uint64_t sub_10047E470(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[197] = a1;
  v5[198] = a2;
  v5[199] = v2;

  v6 = v4[143];
  v7 = v4[142];
  v8 = v4[141];
  v9 = v4[135];
  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v10 = sub_100480E48;
  }

  else
  {
    v10 = sub_10047E5FC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10047E5FC()
{
  v150 = v0;
  v143 = *(v0 + 1472);
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1152);
  (*(v0 + 1408))(v5, enum case for PairingExecutorState.InitiatePairing.commandFinish(_:), v4);
  v3(v5, 0, 1, v4);
  v1(v5, v2, v6);
  PairingExecutor.setState(_:)();
  v143(v5, v6);
  sub_10001F280(v0 + 176, v0 + 256);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v149[0] = v10;
    *v9 = 136315138;
    sub_10001F280(v0 + 256, v0 + 136);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100007BAC((v0 + 256));
    v14 = sub_1000136BC(v11, v13, v149);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sent command: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC((v0 + 256));
  }

  v15 = *(v0 + 1592);
  v16 = (*(v0 + 1080) + *(v0 + 1392));
  v17 = v16[3];
  v18 = v16[4];
  sub_1000035D0(v16, v17);
  v19 = sub_1003916CC(v17, v18);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 320) = v19;
  *(v0 + 328) = AssociatedConformanceWitness;
  sub_1000280DC((v0 + 296));
  BinaryDecoder.decode<A>(_:from:)();
  if (v15)
  {
    v21 = *(v0 + 1496);
    v22 = *(v0 + 1488);
    v23 = *(v0 + 1352);
    v24 = *(v0 + 1344);
    v25 = *(v0 + 1328);
    v26 = *(v0 + 1320);
    v144 = *(v0 + 1256);
    v27 = *(v0 + 1224);
    sub_100016590(*(v0 + 1576), *(v0 + 1584));
    sub_100016590(v22, v21);
    swift_unknownObjectRelease();
    sub_100006654(v24, v23);
    sub_100016590(v26, v25);
    swift_unknownObjectRelease();
    sub_10048E958(v27, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v144, type metadata accessor for AccessoryProductInfo);
    sub_100101758((v0 + 296));
    goto LABEL_33;
  }

  sub_10001F280(v0 + 296, v0 + 336);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v149[0] = v31;
    *v30 = 136315138;
    sub_10001F280(v0 + 336, v0 + 416);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    sub_100007BAC((v0 + 336));
    v35 = sub_1000136BC(v32, v34, v149);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Received response: %s", v30, 0xCu);
    sub_100007BAC(v31);
  }

  else
  {

    sub_100007BAC((v0 + 336));
  }

  v36 = *(v0 + 1264);
  v37 = *(v0 + 1080);
  v38 = (v37 + *(v0 + 1392));
  v39 = v38[3];
  v40 = v38[4];
  sub_1000035D0(v38, v39);
  (*(AssociatedConformanceWitness + 216))(v19, AssociatedConformanceWitness);
  v41 = *(v37 + v36);
  v42 = *(v40 + 72);

  v42(v0 + 376, v41, v39, v40);
  *(v0 + 1600) = 0;
  v43 = *(v0 + 1264);
  v44 = *(v0 + 1080);
  sub_100007BAC((v0 + 376));

  v45 = *(v44 + v43);
  if (*(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing))
  {
LABEL_26:
    v70 = *(v0 + 1080);
    v71 = (*(v70 + *(v0 + 1264)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    v72 = v71[1];
    if (v72 >> 60 == 15)
    {
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Missing collaborativeKeyC1", v75, 2u);
      }

      v76 = *(v0 + 1584);
      v77 = *(v0 + 1576);
      v78 = *(v0 + 1496);
      v79 = *(v0 + 1488);
      v80 = *(v0 + 1352);
      v81 = *(v0 + 1344);
      v135 = *(v0 + 1320);
      v137 = *(v0 + 1328);
      v145 = *(v0 + 1256);
      v141 = *(v0 + 1224);

      sub_10048E4E8();
      swift_allocError();
      *v82 = 15;
      swift_willThrow();
      sub_100016590(v77, v76);
      sub_100016590(v79, v78);
      swift_unknownObjectRelease();
      sub_100006654(v81, v80);
      v83 = v135;
      v84 = v137;
    }

    else
    {
      v85 = *v71;
      v86 = *(v0 + 1600);
      v87 = (v70 + *(v0 + 1392));
      v88 = v87[3];
      v89 = v87[4];
      sub_1000035D0(v87, v88);
      v90 = *(v89 + 128);
      sub_100017D5C(v85, v72);
      v90(v0 + 496, v0 + 536, v85, v72, v88, v89);
      if (!v86)
      {
        v103 = *(*(v0 + 1080) + *(v0 + 1264));
        sub_10001F280(v0 + 496, v0 + 576);
        v104 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
        swift_beginAccess();

        sub_10002311C(v0 + 576, v103 + v104, &qword_101697378, &unk_101391940);
        swift_endAccess();

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&_mh_execute_header, v105, v106, "Generated collaborative share", v107, 2u);
        }

        v108 = *(v0 + 1392);
        v109 = *(v0 + 1080);

        v110 = *(v109 + v108 + 24);
        v111 = *(v109 + v108 + 32);
        sub_1000035D0((v109 + v108), v110);
        v112 = *(v111 + 104);

        v112(v113, v110, v111);
        v114 = *(v0 + 1080);

        v115 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData;
        swift_beginAccess();
        sub_10002311C(v0 + 656, v114 + v115, &qword_1016A1348, &unk_1013A5280);
        swift_endAccess();

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();

        v118 = os_log_type_enabled(v116, v117);
        v134 = *(v0 + 1488);
        v136 = *(v0 + 1496);
        v139 = *(v0 + 1344);
        v148 = *(v0 + 1328);
        v142 = *(v0 + 1352);
        v146 = *(v0 + 1320);
        v119 = *(v0 + 1256);
        v120 = *(v0 + 1224);
        if (v118)
        {
          v131 = *(v0 + 1576);
          v132 = *(v0 + 1584);
          v133 = *(v0 + 1224);
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v149[0] = v122;
          *v121 = 136315138;
          v130 = v72;
          sub_1000D2A70(v114 + v115, v0 + 16, &qword_1016A1348, &unk_1013A5280);
          sub_1000BC4D4(&qword_1016A1348, &unk_1013A5280);
          v123 = String.init<A>(describing:)();
          v125 = sub_1000136BC(v123, v124, v149);

          *(v121 + 4) = v125;
          _os_log_impl(&_mh_execute_header, v116, v117, "Created pairing check data %s", v121, 0xCu);
          sub_100007BAC(v122);

          sub_100016590(v131, v132);
          sub_100016590(v134, v136);
          sub_100006654(v85, v130);

          swift_unknownObjectRelease();
          sub_100006654(v139, v142);
          sub_100016590(v146, v148);
          swift_unknownObjectRelease();
          sub_100007BAC((v0 + 496));
          sub_10048E958(v133, type metadata accessor for AccessoryMetadata);
        }

        else
        {
          sub_100016590(*(v0 + 1576), *(v0 + 1584));
          sub_100016590(v134, v136);
          sub_100006654(v85, v72);

          swift_unknownObjectRelease();
          sub_100006654(v139, v142);
          sub_100016590(v146, v148);
          swift_unknownObjectRelease();
          sub_100007BAC((v0 + 496));
          sub_10048E958(v120, type metadata accessor for AccessoryMetadata);
        }

        sub_10048E958(v119, type metadata accessor for AccessoryProductInfo);
        v126 = *(v0 + 1080);
        v127 = *(v0 + 1072);
        sub_10000A748((v0 + 536), v0 + 736);
        v128 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto;
        swift_beginAccess();
        sub_10002311C(v0 + 736, v126 + v128, &qword_101697380, &unk_10138BEF0);
        swift_endAccess();
        sub_10001F280(v127, v0 + 816);
        v129 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral;
        swift_beginAccess();
        sub_10002311C(v0 + 816, v126 + v129, &qword_1016A12E8, &qword_1013A51D8);
        swift_endAccess();
        sub_100007BAC((v0 + 296));
        sub_100007BAC((v0 + 176));

        v97 = *(v0 + 8);
        goto LABEL_34;
      }

      v91 = *(v0 + 1496);
      v92 = *(v0 + 1488);
      v93 = *(v0 + 1352);
      v94 = *(v0 + 1344);
      v95 = *(v0 + 1328);
      v96 = *(v0 + 1320);
      v145 = *(v0 + 1256);
      v141 = *(v0 + 1224);
      sub_100016590(*(v0 + 1576), *(v0 + 1584));
      sub_100016590(v92, v91);
      sub_100006654(v85, v72);
      swift_unknownObjectRelease();
      sub_100006654(v94, v93);
      v83 = v96;
      v84 = v95;
    }

    sub_100016590(v83, v84);
    swift_unknownObjectRelease();
    sub_10048E958(v141, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v145, type metadata accessor for AccessoryProductInfo);
    sub_100007BAC((v0 + 296));
LABEL_33:
    sub_100007BAC((v0 + 176));

    v97 = *(v0 + 8);
LABEL_34:

    return v97();
  }

  v46 = *(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
  v47 = *(v46 + 16);

  if (v47)
  {
    v52 = 0;
    v147 = _swiftEmptyArrayStorage;
    do
    {
      v53 = v52;
      while (1)
      {
        if (v53 >= *(v46 + 16))
        {
          __break(1u);
          return dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(isUniquelyReferenced_nonNull_native, v49, v50, v51);
        }

        v52 = v53 + 1;
        v54 = *(v46 + 32 + 16 * v53);
        *(v0 + 1040) = v54;
        v55 = *(&v54 + 1);
        v56 = v54;
        sub_100017D5C(v54, *(&v54 + 1));
        sub_1000E0A3C();
        if ((DataProtocol.isNull.getter() & 1) == 0)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = sub_100016590(v56, v55);
        ++v53;
        if (v47 == v52)
        {
          goto LABEL_24;
        }
      }

      v57 = Data.trimmed.getter();
      v138 = v58;
      v140 = v57;
      sub_100016590(v56, v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100A5B840(0, *(v147 + 2) + 1, 1, v147);
        v147 = isUniquelyReferenced_nonNull_native;
      }

      v60 = *(v147 + 2);
      v59 = *(v147 + 3);
      if (v60 >= v59 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100A5B840((v59 > 1), v60 + 1, 1, v147);
        v147 = isUniquelyReferenced_nonNull_native;
      }

      *(v147 + 2) = v60 + 1;
      v61 = &v147[16 * v60];
      *(v61 + 4) = v140;
      *(v61 + 5) = v138;
    }

    while (v47 - 1 != v53);
  }

  else
  {
    v147 = _swiftEmptyArrayStorage;
  }

LABEL_24:
  *(v0 + 1608) = v147;
  v62 = *(v0 + 1264);
  v63 = *(v0 + 1112);
  v64 = *(v0 + 1104);
  v65 = *(v0 + 1096);
  v66 = *(v0 + 1080);

  v67 = *(v66 + v62);
  v68 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v67 + v68, v65, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v63 + 48))(v65, 1, v64) == 1)
  {
    v69 = *(v0 + 1096);

    sub_10000B3A8(v69, &qword_1016A40D0, &unk_10138BE70);
    goto LABEL_26;
  }

  v99 = *(v0 + 1080);
  (*(*(v0 + 1112) + 32))(*(v0 + 1120), *(v0 + 1096), *(v0 + 1104));
  v100 = *(v99 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore + 8);
  ObjectType = swift_getObjectType();
  v102 = swift_task_alloc();
  *(v0 + 1616) = v102;
  *v102 = v0;
  v102[1] = sub_10047F758;
  v49 = *(v0 + 1120);
  isUniquelyReferenced_nonNull_native = v0 + 696;
  v50 = ObjectType;
  v51 = v100;

  return dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(isUniquelyReferenced_nonNull_native, v49, v50, v51);
}

uint64_t sub_10047F758()
{
  v1 = *(*v0 + 1080);

  return _swift_task_switch(sub_10047F868, v1, 0);
}

uint64_t sub_10047F868()
{
  v130 = v0;
  v1 = v0;
  if (*(v0 + 720))
  {
    sub_10000A748((v0 + 696), v0 + 776);
    sub_1000035D0((v0 + 776), *(v0 + 800));
    v2 = dispatch thunk of BeaconGroupType.serialNumbers.getter();
    v3 = *(v2 + 16);
    if (v3)
    {
      v128 = v0;
      v4 = (v0 + 1024);
      v129[0] = _swiftEmptyArrayStorage;
      sub_1011249C4(0, v3, 0);
      v5 = 32;
      v6 = _swiftEmptyArrayStorage;
      do
      {
        v7 = *(v2 + v5);
        *v4 = v7;
        v8 = *(&v7 + 1);
        v9 = v7;
        sub_100017D5C(v7, *(&v7 + 1));
        sub_1000E0A3C();
        if (DataProtocol.isNull.getter())
        {
          v10 = 0;
          v11 = 0xF000000000000000;
        }

        else
        {
          v10 = Data.trimmed.getter();
          v11 = v12;
        }

        sub_100016590(v9, v8);
        v129[0] = v6;
        v14 = v6[2];
        v13 = v6[3];
        if (v14 >= v13 >> 1)
        {
          sub_1011249C4((v13 > 1), v14 + 1, 1);
          v6 = v129[0];
        }

        v6[2] = v14 + 1;
        v15 = &v6[2 * v14];
        v15[4] = v10;
        v15[5] = v11;
        v5 += 16;
        --v3;
      }

      while (v3);

      v1 = v128;
    }

    else
    {

      v6 = _swiftEmptyArrayStorage;
    }

    v16 = v1[201];
    v17 = sub_10112A86C(v6);

    v19 = (v16 + 40);
    v20 = -*(v16 + 16);
    v21 = -1;
    do
    {
      if (v20 + v21 == -1)
      {
        (*(v1[139] + 8))(v1[140], v1[138]);

        sub_100007BAC(v1 + 97);
        goto LABEL_20;
      }

      if (++v21 >= *(v16 + 16))
      {
        __break(1u);
        return result;
      }

      v22 = v19 + 2;
      v24 = *(v19 - 1);
      v23 = *v19;
      sub_100017D5C(v24, *v19);
      v25 = sub_10111FED8(v24, v23, v17);
      result = sub_100016590(v24, v23);
      v19 = v22;
    }

    while ((v25 & 1) != 0);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v129[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = Array.description.getter();
      v31 = v30;

      v32 = sub_1000136BC(v29, v31, v129);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      sub_1000BC4D4(&qword_1016A1360, &unk_1013A52C0);
      sub_10048E9B8();
      v33 = Set.description.getter();
      v35 = v34;

      v36 = sub_1000136BC(v33, v35, v129);

      *(v28 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "Invalid otherSerialNumbers: %s. allSerialNumbers: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10001F280((v1 + 97), (v1 + 57));
    sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
    v63 = type metadata accessor for OwnedBeaconGroup(0);
    v64 = swift_dynamicCast();
    v65 = *(*(v63 - 8) + 56);
    if (v64)
    {
      v66 = v1[163];
      v67 = v1[136];
      v65(v67, 0, 1, v63);
      sub_1005160CC(v66);
      sub_10048E958(v67, type metadata accessor for OwnedBeaconGroup);
    }

    else
    {
      v68 = v1[136];
      v65(v68, 1, 1, v63);
      sub_10000B3A8(v68, &unk_1016AF8B0, &unk_1013A0700);
    }

    v69 = v1[198];
    v70 = v1[197];
    v71 = v1[187];
    v72 = v1[186];
    v73 = v1[169];
    v74 = v1[168];
    v112 = v1[165];
    v114 = v1[166];
    v123 = v1[153];
    v126 = v1[157];
    v120 = v1[140];
    v75 = v1[139];
    v118 = v1[138];
    sub_10048E4E8();
    swift_allocError();
    *v76 = 7;
    swift_willThrow();
    sub_100016590(v70, v69);
    sub_100016590(v72, v71);
    swift_unknownObjectRelease();
    v50 = v1;
    sub_100006654(v74, v73);
    sub_100016590(v112, v114);
    swift_unknownObjectRelease();
    (*(v75 + 8))(v120, v118);
    sub_10048E958(v123, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v126, type metadata accessor for AccessoryProductInfo);
    sub_100007BAC(v1 + 97);
  }

  else
  {
    (*(*(v0 + 1112) + 8))(*(v0 + 1120), *(v0 + 1104));

    sub_10000B3A8(v0 + 696, &qword_1016A1350, &qword_1013A5290);
LABEL_20:
    v37 = v1[135];
    v38 = (*(v37 + v1[158]) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    v39 = v38[1];
    if (v39 >> 60 == 15)
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Missing collaborativeKeyC1", v42, 2u);
      }

      v43 = v1[198];
      v44 = v1[197];
      v45 = v1[187];
      v46 = v1[186];
      v47 = v1[169];
      v48 = v1[168];
      v116 = v1[165];
      v117 = v1[166];
      v125 = v1[157];
      v122 = v1[153];

      sub_10048E4E8();
      swift_allocError();
      *v49 = 15;
      swift_willThrow();
      sub_100016590(v44, v43);
      sub_100016590(v46, v45);
      swift_unknownObjectRelease();
      v50 = v1;
      sub_100006654(v48, v47);
      sub_100016590(v116, v117);
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = *v38;
      v52 = v1[200];
      v53 = (v37 + v1[174]);
      v55 = v53[3];
      v54 = v53[4];
      sub_1000035D0(v53, v55);
      v56 = *(v54 + 128);
      sub_100017D5C(v51, v39);
      v56(v1 + 62, v1 + 67, v51, v39, v55, v54);
      if (!v52)
      {
        v77 = *(v1[135] + v1[158]);
        sub_10001F280((v1 + 62), (v1 + 72));
        v78 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
        swift_beginAccess();

        sub_10002311C((v1 + 72), v77 + v78, &qword_101697378, &unk_101391940);
        swift_endAccess();

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "Generated collaborative share", v81, 2u);
        }

        v82 = v1[174];
        v83 = v1[135];

        v84 = (v83 + v82);
        v86 = *(v83 + v82 + 24);
        v85 = v84[4];
        sub_1000035D0(v84, v86);
        v87 = *(v85 + 104);

        v87(v88, v86, v85);
        v90 = v1[135];

        v91 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData;
        swift_beginAccess();
        sub_10002311C((v1 + 82), v90 + v91, &qword_1016A1348, &unk_1013A5280);
        swift_endAccess();

        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();

        v94 = os_log_type_enabled(v92, v93);
        v95 = v1[198];
        v96 = v1;
        v97 = v1[197];
        v113 = v96[186];
        v115 = v96[187];
        v119 = v96[168];
        v121 = v96[169];
        v124 = v96[165];
        v127 = v96[166];
        v98 = v96[157];
        v99 = v96[153];
        if (v94)
        {
          v110 = v95;
          v111 = v96[153];
          v100 = swift_slowAlloc();
          v109 = v39;
          v101 = swift_slowAlloc();
          v129[0] = v101;
          *v100 = 136315138;
          sub_1000D2A70(v90 + v91, (v96 + 2), &qword_1016A1348, &unk_1013A5280);
          sub_1000BC4D4(&qword_1016A1348, &unk_1013A5280);
          v102 = String.init<A>(describing:)();
          v104 = sub_1000136BC(v102, v103, v129);

          *(v100 + 4) = v104;
          _os_log_impl(&_mh_execute_header, v92, v93, "Created pairing check data %s", v100, 0xCu);
          sub_100007BAC(v101);

          sub_100016590(v97, v110);
          sub_100016590(v113, v115);
          sub_100006654(v51, v109);

          swift_unknownObjectRelease();
          sub_100006654(v119, v121);
          sub_100016590(v124, v127);
          swift_unknownObjectRelease();
          sub_100007BAC(v96 + 62);
          sub_10048E958(v111, type metadata accessor for AccessoryMetadata);
        }

        else
        {
          sub_100016590(v97, v95);
          sub_100016590(v113, v115);
          sub_100006654(v51, v39);

          swift_unknownObjectRelease();
          sub_100006654(v119, v121);
          sub_100016590(v124, v127);
          swift_unknownObjectRelease();
          sub_100007BAC(v96 + 62);
          sub_10048E958(v99, type metadata accessor for AccessoryMetadata);
        }

        sub_10048E958(v98, type metadata accessor for AccessoryProductInfo);
        v105 = v96[135];
        v106 = v96[134];
        sub_10000A748((v96 + 67), (v96 + 92));
        v107 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto;
        swift_beginAccess();
        sub_10002311C((v96 + 92), v105 + v107, &qword_101697380, &unk_10138BEF0);
        swift_endAccess();
        sub_10001F280(v106, (v96 + 102));
        v108 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral;
        swift_beginAccess();
        sub_10002311C((v96 + 102), v105 + v108, &qword_1016A12E8, &qword_1013A51D8);
        swift_endAccess();
        sub_100007BAC(v96 + 37);
        sub_100007BAC(v96 + 22);

        v89 = v96[1];
        goto LABEL_36;
      }

      v57 = v1[187];
      v58 = v1[186];
      v59 = v1[169];
      v60 = v1[168];
      v61 = v1[166];
      v62 = v1[165];
      v125 = v1[157];
      v122 = v1[153];
      sub_100016590(v1[197], v1[198]);
      sub_100016590(v58, v57);
      sub_100006654(v51, v39);
      swift_unknownObjectRelease();
      sub_100006654(v60, v59);
      sub_100016590(v62, v61);
      v50 = v1;
      swift_unknownObjectRelease();
    }

    sub_10048E958(v122, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v125, type metadata accessor for AccessoryProductInfo);
  }

  sub_100007BAC(v50 + 37);
  sub_100007BAC(v50 + 22);

  v89 = v50[1];
LABEL_36:

  return v89();
}

uint64_t sub_100480774()
{
  sub_10048E958(*(v0 + 1256), type metadata accessor for AccessoryProductInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100480888()
{
  v1 = v0[157];
  v2 = v0[153];
  swift_unknownObjectRelease();
  sub_10048E958(v2, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v1, type metadata accessor for AccessoryProductInfo);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004809C8()
{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[166];
  v4 = v0[165];
  v5 = v0[157];
  v6 = v0[153];
  swift_unknownObjectRelease();
  sub_100006654(v2, v1);
  sub_100016590(v4, v3);
  sub_10048E958(v6, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v5, type metadata accessor for AccessoryProductInfo);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100480B30()
{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[166];
  v4 = v0[165];
  v5 = v0[157];
  v6 = v0[153];
  sub_100016590(v0[186], v0[187]);
  swift_unknownObjectRelease();
  sub_100006654(v2, v1);
  sub_100016590(v4, v3);
  swift_unknownObjectRelease();
  sub_10048E958(v6, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v5, type metadata accessor for AccessoryProductInfo);
  sub_100007BAC(v0 + 22);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100480CBC()
{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[166];
  v4 = v0[165];
  v5 = v0[157];
  v6 = v0[153];
  sub_100016590(v0[186], v0[187]);
  swift_unknownObjectRelease();
  sub_100006654(v2, v1);
  sub_100016590(v4, v3);
  swift_unknownObjectRelease();
  sub_10048E958(v6, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v5, type metadata accessor for AccessoryProductInfo);
  sub_100007BAC(v0 + 22);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100480E48()
{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[166];
  v4 = v0[165];
  v5 = v0[157];
  v6 = v0[153];
  sub_100016590(v0[186], v0[187]);
  swift_unknownObjectRelease();
  sub_100006654(v2, v1);
  sub_100016590(v4, v3);
  swift_unknownObjectRelease();
  sub_10048E958(v6, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v5, type metadata accessor for AccessoryProductInfo);
  sub_100007BAC(v0 + 22);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100480FD4()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[5] = swift_task_alloc();
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[6] = v2;
  v1[7] = *(v2 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for PairingValidatorError();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[17] = v4;
  *v4 = v1;
  v4[1] = sub_1004811C8;

  return sub_100481AB8();
}

uint64_t sub_1004811C8()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_100481374, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100481374()
{
  v0[2] = v0[18];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v2 = v0[13];
    v1 = v0[14];
    v3 = v0[12];
    (*(v2 + 32))(v0[15], v0[16], v3);
    sub_10048E6C4(&qword_101698628, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    v4 = Error.code.getter();
    (*(v2 + 104))(v1, enum case for PairingValidatorError.pairedToAnotherAccount(_:), v3);
    v5 = Error.code.getter();
    v6 = *(v2 + 8);
    v6(v1, v3);
    if (v4 == v5)
    {
      v7 = v0[15];
      v45 = v7;
      v8 = v0[13];
      v10 = v0[10];
      v9 = v0[11];
      v56 = v0[9];
      v58 = v0[12];
      v54 = v0[8];
      v43 = v0[7];
      v41 = v0[6];
      v60 = v0[5];
      v46 = v0[4];
      v38 = v0[3];

      v11 = type metadata accessor for UUID();
      v52 = v6;
      v12 = *(*(v11 - 8) + 56);
      v44 = v9;
      v12(v9, 1, 1, v11);
      v40 = v10;
      v12(v10, 1, 1, v11);
      v42 = swift_allocError();
      v49 = *(v8 + 16);
      v49(v13, v7, v58);
      v39 = *(v38 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v60, 1, 1, v14);
      sub_1000D2A70(v9, v56, &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2A70(v10, v54, &qword_1016980D0, &unk_10138F3B0);
      v15 = *(v41 + 80);
      v16 = (v15 + 32) & ~v15;
      v17 = (v43 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = (v15 + v17 + 8) & ~v15;
      v19 = (v18 + v43) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      sub_1000D2AD8(v56, v20 + v16, &qword_1016980D0, &unk_10138F3B0);
      *(v20 + v17) = v39;
      sub_1000D2AD8(v54, v20 + v18, &qword_1016980D0, &unk_10138F3B0);
      *(v20 + v18 + v43) = 3;
      *(v20 + v19 + 8) = v42;
      *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v46;
      swift_retain_n();
      swift_errorRetain();
      sub_10025EDD4(0, 0, v60, &unk_1013A5270, v20);

      sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v44, &qword_1016980D0, &unk_10138F3B0);
      swift_allocError();
      v49(v21, v45, v58);
      swift_willThrow();
      v52(v45, v58);

      goto LABEL_6;
    }

    v6(v0[15], v0[12]);
  }

  v57 = v0[18];
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[9];
  v61 = v0[8];
  v48 = v0[6];
  v50 = v0[7];
  v25 = v0[5];
  v51 = v25;
  v59 = v0[4];
  v26 = v0[3];

  v27 = type metadata accessor for UUID();
  v28 = *(*(v27 - 8) + 56);
  v55 = v22;
  v28(v22, 1, 1, v27);
  v53 = v23;
  v28(v23, 1, 1, v27);
  v47 = *(v26 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
  sub_1000D2A70(v22, v24, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v23, v61, &qword_1016980D0, &unk_10138F3B0);
  v30 = *(v48 + 80);
  v31 = (v30 + 32) & ~v30;
  v32 = (v50 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v30 + v32 + 8) & ~v30;
  v34 = (v33 + v50) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  sub_1000D2AD8(v24, v35 + v31, &qword_1016980D0, &unk_10138F3B0);
  *(v35 + v32) = v47;
  sub_1000D2AD8(v61, v35 + v33, &qword_1016980D0, &unk_10138F3B0);
  *(v35 + v33 + v50) = 2;
  *(v35 + v34 + 8) = v57;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v59;
  swift_errorRetain();

  swift_errorRetain();

  sub_10025EDD4(0, 0, v51, &unk_1013A5268, v35);

  sub_10000B3A8(v53, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v55, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();
LABEL_6:

  v36 = v0[1];

  return v36();
}

uint64_t sub_100481AB8()
{
  v1[124] = v0;
  v2 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[125] = v2;
  v1[126] = *(v2 - 8);
  v1[127] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[128] = v3;
  v1[129] = *(v3 - 8);
  v1[130] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v1[131] = swift_task_alloc();
  v4 = type metadata accessor for MACAddress();
  v1[132] = v4;
  v1[133] = *(v4 - 8);
  v1[134] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v5 = type metadata accessor for PairingExecutorState();
  v1[138] = v5;
  v1[139] = *(v5 - 8);
  v1[140] = swift_task_alloc();

  return _swift_task_switch(sub_100481D2C, v0, 0);
}

uint64_t sub_100481D2C()
{
  v1 = *(v0 + 992);
  v2 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData;
  swift_beginAccess();
  sub_1000D2A70(v1 + v2, v0 + 424, &qword_1016A1348, &unk_1013A5280);
  if (*(v0 + 448))
  {
    v3 = *(v0 + 1120);
    v4 = *(v0 + 1112);
    v5 = *(v0 + 1104);
    v6 = *(v0 + 992);
    sub_10000A748((v0 + 424), v0 + 704);
    v7 = enum case for PairingExecutorState.PairingLockCheck.requestStart(_:);
    v8 = type metadata accessor for PairingExecutorState.PairingLockCheck();
    *(v0 + 1128) = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 104);
    *(v0 + 1136) = v10;
    *(v0 + 1144) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v3, v7, v8);
    v11 = *(v9 + 56);
    *(v0 + 1152) = v11;
    *(v0 + 1160) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v3, 0, 1, v8);
    *(v0 + 1472) = enum case for PairingExecutorState.pairingLockCheck(_:);
    v12 = *(v4 + 104);
    *(v0 + 1168) = v12;
    *(v0 + 1176) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v12(v3);
    *(v0 + 1184) = type metadata accessor for AirPodsLEPairingExecutor(0);
    *(v0 + 1192) = sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor, &unk_1013A50D8);
    PairingExecutor.setState(_:)();
    v13 = *(v4 + 8);
    *(v0 + 1200) = v13;
    *(v0 + 1208) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v3, v5);
    v14 = *(v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator + 8);
    ObjectType = swift_getObjectType();
    v16 = swift_task_alloc();
    *(v0 + 1216) = v16;
    *v16 = v0;
    v16[1] = sub_1004820B0;

    return dispatch thunk of PairingValidator.validateRequest(_:)(v0 + 224, v0 + 704, ObjectType, v14);
  }

  else
  {
    sub_10000B3A8(v0 + 424, &qword_1016A1348, &unk_1013A5280);
    sub_10048E4E8();
    swift_allocError();
    *v17 = 17;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1004820B0()
{
  v2 = *v1;
  *(*v1 + 1224) = v0;

  v3 = *(v2 + 992);
  if (v0)
  {
    v4 = sub_100484B18;
  }

  else
  {
    v4 = sub_1004821DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004821DC()
{
  v67 = v0;
  v65 = *(v0 + 1200);
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 992);
  (*(v0 + 1136))(v5, enum case for PairingExecutorState.PairingLockCheck.requestFinish(_:), v4);
  v3(v5, 0, 1, v4);
  v1(v5, v2, v6);
  PairingExecutor.setState(_:)();
  v65(v5, v6);
  v8 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  *(v0 + 1232) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  v9 = *(v7 + v8);
  if (*(v9 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) == 1)
  {
    v10 = *(v0 + 1096);
    v11 = type metadata accessor for OwnedBeaconGroup(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = sub_10110DFBC(v10, 255);
    v14 = v13;
    sub_10000B3A8(*(v0 + 1096), &unk_1016AF8B0, &unk_1013A0700);
    *(v0 + 1280) = v14;
    *(v0 + 1288) = v12;
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    *(v0 + 1296) = sub_1000076D4(v15, qword_1016A1010);
    sub_100017D5C(v12, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    sub_100016590(v12, v14);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v66[0] = v19;
      *v18 = 136446210;
      v20 = Data.hexString.getter();
      v22 = sub_1000136BC(v20, v21, v66);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "companionPairingEpochs: %{public}s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    v23 = (*(v0 + 992) + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
    v24 = *v23;
    *(v0 + 1304) = *v23;
    if (v24)
    {
      v25 = v23[1];
      *(v0 + 1312) = v25;
      type metadata accessor for Characteristic();
      swift_unknownObjectRetain();
      Identifier.init(stringLiteral:)();
      ObjectType = swift_getObjectType();
      *(v0 + 1320) = ObjectType;
      v58 = swift_task_alloc();
      *(v0 + 1328) = v58;
      *v58 = v0;
      v58[1] = sub_1004831FC;
      v59 = *(v0 + 1040);

      return dispatch thunk of ServiceProtocol.subscript.getter(v59, ObjectType, v25);
    }

    sub_10048E4E8();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();
    sub_100016590(v12, v14);
    goto LABEL_19;
  }

  v26 = v9 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId;
  *(v0 + 1476) = *(v9 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v27 = *(v26 + 1);
  v28 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber;
  if (v27)
  {
    goto LABEL_12;
  }

  v29 = *(v9 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  *(v0 + 1240) = v29;
  v30 = *(v9 + v28 + 8);
  *(v0 + 1248) = v30;
  if (v30 >> 60 == 15)
  {
    goto LABEL_12;
  }

  *(v0 + 976) = v29;
  *(v0 + 984) = v30;
  sub_100017D5C(v29, v30);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v29, v30);
    v9 = *(v7 + v8);
    v28 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber;
LABEL_12:
    v31 = (v9 + v28);
    v29 = *v31;
    v30 = v31[1];
    sub_10002E98C(*v31, v30);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_1016A1010);
    sub_10002E98C(v29, v30);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    sub_100006654(v29, v30);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66[0] = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      *(v0 + 960) = v29;
      *(v0 + 968) = v30;
      sub_10002E98C(v29, v30);
      sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
      v37 = String.init<A>(describing:)();
      v39 = sub_1000136BC(v37, v38, v66);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Invalid serial number %{private,mask.hash}s!", v35, 0x16u);
      sub_100007BAC(v36);
    }

    sub_10048E4E8();
    swift_allocError();
    *v40 = 7;
    swift_willThrow();
LABEL_17:
    sub_100006654(v29, v30);
LABEL_19:
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));

    v42 = *(v0 + 8);

    return v42();
  }

  v44 = *(v0 + 1064);
  v45 = *(v0 + 1056);
  v46 = *(v0 + 1048);
  v47 = Data.trimmed.getter();
  v49 = v48;
  *(v0 + 1256) = v47;
  *(v0 + 1264) = v48;
  v50 = *(v7 + v8);
  v51 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v50 + v51, v46, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v44 + 48))(v46, 1, v45) == 1)
  {
    sub_10000B3A8(*(v0 + 1048), &qword_1016A40D0, &unk_10138BE70);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_1016A1010);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Invalid classic MACAddress!", v55, 2u);
    }

    sub_10048E4E8();
    swift_allocError();
    *v56 = 7;
    swift_willThrow();
    sub_100016590(v47, v49);
    goto LABEL_17;
  }

  v60 = *(v0 + 992);
  (*(*(v0 + 1064) + 32))(*(v0 + 1072), *(v0 + 1048), *(v0 + 1056));
  v61 = *(v60 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore + 8);
  v62 = swift_getObjectType();
  v63 = swift_task_alloc();
  *(v0 + 1272) = v63;
  *v63 = v0;
  v63[1] = sub_100482B58;
  v64 = *(v0 + 1072);

  return dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(v0 + 264, v64, v62, v61);
}

uint64_t sub_100482B58()
{
  v1 = *(*v0 + 992);

  return _swift_task_switch(sub_100482C68, v1, 0);
}

uint64_t sub_100482C68()
{
  v37 = v0;
  v1 = *(v0 + 1088);
  if (*(v0 + 288))
  {
    sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
    v2 = type metadata accessor for OwnedBeaconGroup(0);
    v3 = swift_dynamicCast();
    (*(*(v2 - 8) + 56))(v1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_10000B3A8(v0 + 264, &qword_1016A1350, &qword_1013A5290);
    v2 = type metadata accessor for OwnedBeaconGroup(0);
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  }

  v4 = *(v0 + 1080);
  sub_1000D2A70(*(v0 + 1088), v4, &unk_1016AF8B0, &unk_1013A0700);
  type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v2 - 8) + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 1080), &unk_1016AF8B0, &unk_1013A0700);
    v5 = *(v0 + 1476);
  }

  else
  {
    v6 = *(v0 + 1476);
    v7 = *(v0 + 1080);
    v8 = sub_1005183F0(*(v0 + 1256), *(v0 + 1264));
    sub_10048E958(v7, type metadata accessor for OwnedBeaconGroup);
    if ((v8 & 0x100) != 0)
    {
      v5 = v6;
    }

    else
    {
      v5 = v8;
    }
  }

  v9 = *(v0 + 1264);
  v10 = *(v0 + 1256);
  v11 = *(v0 + 1248);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1072);
  v14 = *(v0 + 1064);
  v15 = *(v0 + 1056);
  v16 = sub_10110DFBC(*(v0 + 1088), v5);
  v18 = v17;
  sub_100016590(v10, v9);
  sub_100006654(v12, v11);
  (*(v14 + 8))(v13, v15);
  sub_10000B3A8(*(v0 + 1088), &unk_1016AF8B0, &unk_1013A0700);
  *(v0 + 1280) = v18;
  *(v0 + 1288) = v16;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  *(v0 + 1296) = sub_1000076D4(v19, qword_1016A1010);
  sub_100017D5C(v16, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100016590(v16, v18);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136446210;
    v24 = Data.hexString.getter();
    v26 = sub_1000136BC(v24, v25, &v36);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "companionPairingEpochs: %{public}s", v22, 0xCu);
    sub_100007BAC(v23);
  }

  v27 = (*(v0 + 992) + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  v28 = *v27;
  *(v0 + 1304) = *v27;
  if (v28)
  {
    v29 = v27[1];
    *(v0 + 1312) = v29;
    type metadata accessor for Characteristic();
    swift_unknownObjectRetain();
    Identifier.init(stringLiteral:)();
    ObjectType = swift_getObjectType();
    *(v0 + 1320) = ObjectType;
    v34 = swift_task_alloc();
    *(v0 + 1328) = v34;
    *v34 = v0;
    v34[1] = sub_1004831FC;
    v35 = *(v0 + 1040);

    return dispatch thunk of ServiceProtocol.subscript.getter(v35, ObjectType, v29);
  }

  else
  {
    sub_10048E4E8();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();
    sub_100016590(v16, v18);
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1004831FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[167] = a1;
  v4[168] = v1;

  v5 = v3[130];
  v6 = v3[129];
  v7 = v3[128];
  v8 = v3[124];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100484BF0;
  }

  else
  {
    v9 = sub_100483384;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100483384()
{
  v43 = v0;
  v41 = *(v0 + 1344);
  v39 = *(v0 + 1280);
  v40 = *(v0 + 1288);
  v36 = *(v0 + 1200);
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 992);
  (*(v0 + 1136))(v5, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationStart(_:), v4);
  v3(v5, 0, 1, v4);
  v1(v5, v2, v6);
  PairingExecutor.setState(_:)();
  v36(v5, v6);
  v8 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
  *(v0 + 1352) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
  v9 = *(v7 + v8 + 24);
  v10 = *(v7 + v8 + 32);
  sub_1000035D0((v7 + v8), v9);
  v37 = *(v10 + 80);
  *(v0 + 328) = swift_getAssociatedTypeWitness();
  *(v0 + 336) = swift_getAssociatedConformanceWitness();
  sub_1000280DC((v0 + 304));

  v37(v11, v0 + 224, v40, v39, v9, v10);
  if (v41)
  {
    v12 = *(v0 + 1288);
    v13 = *(v0 + 1280);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v12, v13);
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));
    sub_100101758((v0 + 304));

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v35 = *(v0 + 1200);
    v38 = *(v0 + 1168);
    v14 = *(v0 + 1472);
    v34 = *(v0 + 1472);
    v15 = *(v0 + 1152);
    v16 = *(v0 + 1136);
    v17 = *(v0 + 1128);
    v18 = *(v0 + 1120);
    v33 = *(v0 + 1104);

    v16(v18, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationFinish(_:), v17);
    v15(v18, 0, 1, v17);
    v38(v18, v14, v33);
    PairingExecutor.setState(_:)();
    v35(v18, v33);
    v16(v18, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandStart(_:), v17);
    v15(v18, 0, 1, v17);
    v38(v18, v34, v33);
    PairingExecutor.setState(_:)();
    v35(v18, v33);
    sub_10001F280(v0 + 304, v0 + 344);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 136315138;
      sub_10001F280(v0 + 344, v0 + 824);
      sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      sub_100007BAC((v0 + 344));
      v26 = sub_1000136BC(v23, v25, &v42);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Sending command: %s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      sub_100007BAC((v0 + 344));
    }

    *(v0 + 1360) = BinaryEncoder.encode<A>(_:)();
    *(v0 + 1368) = v27;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 1376) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 1384) = AssociatedConformanceWitness;
    v32 = swift_task_alloc();
    *(v0 + 1392) = v32;
    *v32 = v0;
    v32[1] = sub_1004839CC;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_1004839CC(uint64_t a1)
{
  v4 = *v2;
  v4[175] = v1;

  v5 = v4[124];
  if (v1)
  {
    v6 = sub_100484CEC;
  }

  else
  {
    v4[176] = a1;
    v6 = sub_100483B08;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100483B08()
{
  v1 = fragment(data:mtu:)();
  v0[177] = v1;
  v2 = swift_task_alloc();
  v0[178] = v2;
  *v2 = v0;
  v2[1] = sub_100483BC8;
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[127];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v5, v1, v4, v3);
}

uint64_t sub_100483BC8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 1432) = v0;

  if (v0)
  {
    v4 = v2[124];

    return _swift_task_switch(sub_100484E0C, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[180] = v5;
    v6 = sub_10048E70C();
    *v5 = v3;
    v5[1] = sub_100483D70;
    v7 = v2[125];

    return AsyncSequence<>.reassemble()(v7, v6);
  }
}

uint64_t sub_100483D70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[181] = a1;
  v5[182] = a2;
  v5[183] = v2;

  v6 = v4[127];
  v7 = v4[126];
  v8 = v4[125];
  v9 = v4[124];
  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v10 = sub_100484F2C;
  }

  else
  {
    v10 = sub_100483EFC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100483EFC()
{
  v104 = v0;
  sub_10001F280(v0 + 304, v0 + 384);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v103[0] = v4;
    *v3 = 136315138;
    sub_10001F280(v0 + 384, v0 + 784);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    sub_100007BAC((v0 + 384));
    v8 = sub_1000136BC(v5, v7, v103);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sent command: %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {

    sub_100007BAC((v0 + 384));
  }

  v97 = *(v0 + 1464);
  v92 = *(v0 + 1200);
  v9 = *(v0 + 1168);
  v10 = *(v0 + 1472);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1128);
  v13 = *(v0 + 1120);
  v14 = *(v0 + 1104);
  v15 = (*(v0 + 992) + *(v0 + 1352));
  (*(v0 + 1136))(v13, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandFinish(_:), v12);
  v11(v13, 0, 1, v12);
  v9(v13, v10, v14);
  PairingExecutor.setState(_:)();
  v92(v13, v14);
  v16 = v15[3];
  v17 = v15[4];
  sub_1000035D0(v15, v16);
  v18 = sub_1003916CC(v16, v17);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 208) = v18;
  *(v0 + 216) = AssociatedConformanceWitness;
  sub_1000280DC((v0 + 184));
  BinaryDecoder.decode<A>(_:from:)();
  if (v97)
  {
    v20 = *(v0 + 1368);
    v21 = *(v0 + 1360);
    v22 = *(v0 + 1288);
    v23 = *(v0 + 1280);
    sub_100016590(*(v0 + 1448), *(v0 + 1456));
    sub_100016590(v21, v20);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v22, v23);
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));
    sub_100101758((v0 + 184));
  }

  else
  {
    sub_10001F280(v0 + 184, v0 + 464);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v103[0] = v27;
      *v26 = 136315138;
      sub_10001F280(v0 + 464, v0 + 744);
      sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      sub_100007BAC((v0 + 464));
      v31 = sub_1000136BC(v28, v30, v103);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received response: %s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {

      sub_100007BAC((v0 + 464));
    }

    v32 = *(v0 + 1232);
    v33 = *(v0 + 992);
    v34 = (v33 + *(v0 + 1352));
    v35 = v34[3];
    v36 = v34[4];
    sub_1000035D0(v34, v35);
    (*(AssociatedConformanceWitness + 216))(v18, AssociatedConformanceWitness);
    v37 = *(v33 + v32);
    v38 = *(v36 + 88);

    v38(v0 + 504, v37, v35, v36);
    v41 = *(v0 + 992);
    sub_100007BAC((v0 + 504));

    v42 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto;
    swift_beginAccess();
    sub_1000D2A70(v41 + v42, v0 + 584, &qword_101697380, &unk_10138BEF0);
    if (*(v0 + 608))
    {
      v94 = *(v0 + 1352);
      v95 = *(v0 + 1232);
      v93 = *(v0 + 1200);
      v90 = *(v0 + 1168);
      v43 = *(v0 + 1472);
      v44 = *(v0 + 1152);
      v45 = *(v0 + 1136);
      v46 = *(v0 + 1128);
      v47 = *(v0 + 1120);
      v48 = *(v0 + 1104);
      v49 = *(v0 + 992);
      sub_10000A748((v0 + 584), v0 + 544);
      v45(v47, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataStart(_:), v46);
      v44(v47, 0, 1, v46);
      v90(v47, v43, v48);
      PairingExecutor.setState(_:)();
      v93(v47, v48);
      sub_10001F280(v49 + v94, v0 + 624);
      v50 = *(v0 + 648);
      v51 = *(v0 + 656);
      sub_1000035D0((v0 + 624), v50);
      v52 = *(v49 + v95);
      v53 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      swift_beginAccess();
      sub_1000D2A70(v52 + v53, v0 + 664, &qword_101697320, &qword_10138BE90);
      v54 = *(v0 + 688);
      if (v54)
      {
        v55 = *(v0 + 696);
        v56 = sub_1000035D0((v0 + 664), *(v0 + 688));
        v57 = *(v54 - 8);
        v58 = swift_task_alloc();
        (*(v57 + 16))(v58, v56, v54);
        sub_10000B3A8(v0 + 664, &qword_101697320, &qword_10138BE90);
        v59 = (*(*(*(v55 + 8) + 8) + 40))(v54);
        v61 = v60;
        (*(v57 + 8))(v58, v54);
      }

      else
      {
        sub_10000B3A8(v0 + 664, &qword_101697320, &qword_10138BE90);
        v59 = 0;
        v61 = 0xF000000000000000;
      }

      v96 = v59;
      (*(v51 + 136))(v0 + 544, v59, v61, v50, v51);
      v83 = *(v0 + 1448);
      v84 = *(v0 + 1456);
      v85 = *(v0 + 1360);
      v86 = *(v0 + 1368);
      v87 = *(v0 + 1280);
      v88 = *(v0 + 1288);
      v91 = *(v0 + 1232);
      v89 = *(v0 + 1200);
      v82 = *(v0 + 1168);
      v81 = *(v0 + 1472);
      v69 = *(v0 + 1152);
      v70 = *(v0 + 1136);
      v71 = *(v0 + 1128);
      v72 = *(v0 + 1120);
      v73 = *(v0 + 1104);
      v74 = *(v0 + 992);
      v100 = *(v0 + 136);
      v101 = *(v0 + 152);
      v102 = *(v0 + 168);
      v98 = *(v0 + 104);
      v99 = *(v0 + 120);
      sub_100006654(v96, v61);
      sub_100007BAC((v0 + 624));
      v70(v72, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataFinish(_:), v71);
      v69(v72, 0, 1, v71);
      v82(v72, v81, v73);
      PairingExecutor.setState(_:)();
      sub_100016590(v83, v84);
      sub_100016590(v85, v86);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100016590(v88, v87);
      v89(v72, v73);
      sub_100007BAC((v0 + 544));
      sub_100007BAC((v0 + 224));
      sub_100007BAC((v0 + 704));
      v75 = *(v74 + v91);
      v76 = v74 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo;
      v77 = *(v74 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 16);
      *(v0 + 16) = *(v74 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo);
      *(v0 + 32) = v77;
      v79 = *(v76 + 48);
      v78 = *(v76 + 64);
      v80 = *(v76 + 32);
      *(v0 + 96) = *(v76 + 80);
      *(v0 + 64) = v79;
      *(v0 + 80) = v78;
      *(v0 + 48) = v80;
      *(v76 + 32) = v100;
      *(v76 + 48) = v101;
      *(v76 + 64) = v102;
      *v76 = v98;
      *(v76 + 16) = v99;
      *(v76 + 80) = v75;

      sub_10000B3A8(v0 + 16, &qword_1016A1320, &unk_1013E02C0);
      sub_100007BAC((v0 + 184));
      sub_100007BAC((v0 + 304));

      v39 = *(v0 + 8);
      goto LABEL_11;
    }

    v62 = *(v0 + 1456);
    v63 = *(v0 + 1448);
    v64 = *(v0 + 1368);
    v65 = *(v0 + 1360);
    v66 = *(v0 + 1288);
    v67 = *(v0 + 1280);
    sub_10000B3A8(v0 + 584, &qword_101697380, &unk_10138BEF0);
    sub_10048E4E8();
    swift_allocError();
    *v68 = 3;
    swift_willThrow();
    sub_100016590(v63, v62);
    sub_100016590(v65, v64);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v66, v67);
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));
    sub_100007BAC((v0 + 184));
  }

  sub_100007BAC((v0 + 304));

  v39 = *(v0 + 8);
LABEL_11:

  return v39();
}

uint64_t sub_100484B18()
{
  sub_100007BAC((v0 + 704));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100484BF0()
{
  v1 = v0[161];
  v2 = v0[160];
  swift_unknownObjectRelease();
  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 28);
  sub_100007BAC(v0 + 88);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100484CEC()
{
  v1 = v0[161];
  v2 = v0[160];
  sub_100016590(v0[170], v0[171]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 28);
  sub_100007BAC(v0 + 88);
  sub_100007BAC(v0 + 38);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100484E0C()
{
  v1 = v0[161];
  v2 = v0[160];
  sub_100016590(v0[170], v0[171]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 28);
  sub_100007BAC(v0 + 88);
  sub_100007BAC(v0 + 38);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100484F2C()
{
  v1 = v0[161];
  v2 = v0[160];
  sub_100016590(v0[170], v0[171]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 28);
  sub_100007BAC(v0 + 88);
  sub_100007BAC(v0 + 38);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10048504C(uint64_t a1)
{
  v2[186] = v1;
  v2[185] = a1;
  v2[187] = *v1;
  sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v2[188] = swift_task_alloc();
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v2[189] = v3;
  v2[190] = *(v3 - 8);
  v2[191] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[192] = v4;
  v2[193] = *(v4 - 8);
  v2[194] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[195] = swift_task_alloc();
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[196] = v5;
  v2[197] = *(v5 + 64);
  v2[198] = swift_task_alloc();
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v2[201] = swift_task_alloc();
  v2[202] = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();

  return _swift_task_switch(sub_1004852E8, v1, 0);
}

uint64_t sub_1004852E8(uint64_t a1)
{
  v52 = v1;
  v2 = *(v1 + 1488);
  v3 = v2 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo;
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 16);
  *(v1 + 104) = *(v2 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo);
  *(v1 + 120) = v4;
  v6 = *(v3 + 48);
  v5 = *(v3 + 64);
  v7 = *(v3 + 80);
  *(v1 + 136) = *(v3 + 32);
  *(v1 + 184) = v7;
  *(v1 + 168) = v5;
  *(v1 + 152) = v6;
  v8 = *(v3 + 16);
  *(v1 + 368) = *v3;
  *(v1 + 384) = v8;
  v10 = *(v3 + 48);
  v9 = *(v3 + 64);
  v11 = *(v3 + 80);
  v12 = *(v3 + 32);
  *(v1 + 448) = v11;
  *(v1 + 416) = v10;
  *(v1 + 432) = v9;
  *(v1 + 400) = v12;
  v13 = v11;
  if (v11)
  {
    v14 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
    *(v1 + 1648) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
    v15 = *(v2 + v14);
    if (*(v15 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) == 1)
    {
      v16 = *(v1 + 1640);
      v17 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
      swift_beginAccess();
      sub_1000D2A70(v15 + v17, v16, &qword_1016A40D0, &unk_10138BE70);
      v18 = *(v1 + 152);
      *(v1 + 312) = *(v1 + 136);
      *(v1 + 328) = v18;
      *(v1 + 344) = *(v1 + 168);
      *(v1 + 360) = *(v1 + 184);
      v19 = *(v1 + 120);
      *(v1 + 280) = *(v1 + 104);
      *(v1 + 296) = v19;
      sub_10048E668(v1 + 280, v1 + 192);
      if (qword_101694720 != -1)
      {
        swift_once();
      }

      v20 = *(v1 + 1640);
      v21 = *(v1 + 1632);
      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_1016A1010);
      sub_1000D2A70(v20, v21, &qword_1016A40D0, &unk_10138BE70);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v1 + 1632);
      if (v25)
      {
        v27 = *(v1 + 1624);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v51 = v29;
        *v28 = 136446210;
        sub_1000D2A70(v26, v27, &qword_1016A40D0, &unk_10138BE70);
        v30 = String.init<A>(describing:)();
        v32 = v31;
        sub_10000B3A8(v26, &qword_1016A40D0, &unk_10138BE70);
        v33 = sub_1000136BC(v30, v32, &v51);

        *(v28 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v23, v24, "Creating standalone beacon. classicMACAddress %{public}s", v28, 0xCu);
        sub_100007BAC(v29);
      }

      else
      {

        sub_10000B3A8(v26, &qword_1016A40D0, &unk_10138BE70);
      }

      v44 = *(*(v1 + 1488) + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore + 8);
      ObjectType = swift_getObjectType();
      *(v1 + 1360) = &type metadata for InitialPairingInfo;
      *(v1 + 1368) = sub_10048E614();
      v46 = swift_allocObject();
      *(v1 + 1336) = v46;
      v47 = *(v1 + 416);
      v46[3] = *(v1 + 400);
      v46[4] = v47;
      v46[5] = *(v1 + 432);
      v48 = *(v1 + 384);
      v46[1] = *(v1 + 368);
      v46[2] = v48;
      v49 = *(v1 + 448);
      *(v1 + 1400) = type metadata accessor for AccessoryPairingInfo(0);
      *(v1 + 1408) = sub_10048E6C4(&qword_1016A1318, type metadata accessor for AccessoryPairingInfo, &unk_1013E0270);
      *(v1 + 1376) = v49;
      sub_100102538(v1 + 368, v1 + 456);

      v50 = swift_task_alloc();
      *(v1 + 1656) = v50;
      *v50 = v1;
      v50[1] = sub_10048597C;

      return dispatch thunk of PairingBeaconStore.generateStandaloneBeaconRecord(pairingKeys:accessory:)(v1 + 1296, v1 + 1336, v1 + 1376, ObjectType, v44);
    }

    else
    {
      v37 = *(v2 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore + 8);
      v38 = swift_getObjectType();
      *(v1 + 1280) = &type metadata for InitialPairingInfo;
      *(v1 + 1288) = sub_10048E614();
      v39 = swift_allocObject();
      *(v1 + 1256) = v39;
      v39[1] = *v3;
      v40 = *(v3 + 64);
      v42 = *(v3 + 16);
      v41 = *(v3 + 32);
      v39[4] = *(v3 + 48);
      v39[5] = v40;
      v39[2] = v42;
      v39[3] = v41;
      *(v1 + 1040) = type metadata accessor for AccessoryPairingInfo(0);
      *(v1 + 1048) = sub_10048E6C4(&qword_1016A1318, type metadata accessor for AccessoryPairingInfo, &unk_1013E0270);
      *(v1 + 1016) = v13;
      sub_1000D2A70(v1 + 104, v1 + 16, &qword_1016A1320, &unk_1013E02C0);
      sub_100102538(v1 + 368, v1 + 536);

      v43 = swift_task_alloc();
      *(v1 + 1672) = v43;
      *v43 = v1;
      v43[1] = sub_100485E54;

      return dispatch thunk of PairingBeaconStore.generateBeaconGroupAndRecord(pairingKeys:accessory:)(v1 + 856, v1 + 1256, v1 + 1016, v38, v37);
    }
  }

  else
  {
    sub_10048E4E8();
    swift_allocError();
    *v34 = 4;
    swift_willThrow();

    v35 = *(v1 + 8);

    return v35();
  }
}

uint64_t sub_10048597C()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  if (v0)
  {
    v3 = v2[186];
    v4 = sub_100486E60;
  }

  else
  {
    v5 = v2[186];
    sub_100007BAC(v2 + 172);
    sub_100007BAC(v2 + 167);
    v4 = sub_100485AAC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100485AAC()
{
  v1 = v0[201];
  v2 = v0[200];
  v17 = v0[199];
  v18 = v0[206];
  v25 = v0[205];
  v26 = v0[198];
  v20 = v0[196];
  v3 = v0[195];
  v21 = v3;
  v22 = v0[197];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[186];
  v24 = v0[187];
  sub_1000035D0(v0 + 162, v0[165]);
  dispatch thunk of BeaconRecordType.identifier.getter();
  v7 = *(v4 + 56);
  v23 = v1;
  v7(v1, 0, 1, v5);
  v7(v2, 1, 1, v5);
  v19 = *(v6 + v18);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1000D2A70(v1, v17, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v2, v26, &qword_1016980D0, &unk_10138F3B0);
  v9 = *(v20 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = (v22 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + v11 + 8) & ~v9;
  v13 = (v12 + v22) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1000D2AD8(v17, v14 + v10, &qword_1016980D0, &unk_10138F3B0);
  *(v14 + v11) = v19;
  sub_1000D2AD8(v26, v14 + v12, &qword_1016980D0, &unk_10138F3B0);
  *(v14 + v12 + v22) = 1;
  *(v14 + v13 + 8) = 0;
  *(v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  swift_retain_n();
  sub_10025EDD4(0, 0, v21, &unk_1013A5250, v14);

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
  sub_1000035D0(v0 + 162, v0[165]);
  dispatch thunk of BeaconRecordType.identifier.getter();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_10000B3A8(v25, &qword_1016A40D0, &unk_10138BE70);
  sub_100007BAC(v0 + 162);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100485E54()
{
  v2 = *v1;
  *(*v1 + 1680) = v0;

  if (v0)
  {
    v3 = v2[186];
    v4 = sub_1004871D8;
  }

  else
  {
    v5 = v2[186];
    sub_100007BAC(v2 + 127);
    sub_100007BAC(v2 + 157);
    v4 = sub_100485F84;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100485F84()
{
  v104 = v0;
  sub_1000D2A70(v0 + 856, v0 + 696, &qword_1016A1328, &qword_1013A5228);
  if (*(v0 + 720))
  {
    v1 = *(v0 + 744);
    *(v0 + 648) = *(v0 + 728);
    *(v0 + 664) = v1;
    *(v0 + 680) = *(v0 + 760);
    v2 = *(v0 + 712);
    *(v0 + 616) = *(v0 + 696);
    *(v0 + 632) = v2;
    v95 = v0 + 616;
    sub_1000D2A70(v0 + 616, v0 + 776, &qword_1016A1338, &qword_1013A5230);
    sub_10000A748((v0 + 776), v0 + 936);
    sub_10000A748((v0 + 816), v0 + 976);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016A1010);
    sub_10001F280(v0 + 936, v0 + 1416);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 1552);
      v7 = *(v0 + 1544);
      v100 = *(v0 + 1536);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v103[0] = v9;
      *v8 = 136315138;
      sub_1000035D0((v0 + 1416), *(v0 + 1440));
      dispatch thunk of BeaconRecordType.identifier.getter();
      sub_10048E6C4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      (*(v7 + 8))(v6, v100);
      sub_100007BAC((v0 + 1416));
      v13 = sub_1000136BC(v10, v12, v103);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Generated new beacon %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    else
    {

      sub_100007BAC((v0 + 1416));
    }

    sub_10001F280(v0 + 976, v0 + 1056);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v103[0] = v24;
      *v23 = 136315138;
      sub_10001F280(v0 + 1056, v0 + 1216);
      sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      sub_100007BAC((v0 + 1056));
      v28 = sub_1000136BC(v25, v27, v103);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Beacon group: %s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100007BAC((v0 + 1056));
    }

    v81 = *(v0 + 1648);
    v29 = *(v0 + 1608);
    v99 = *(v0 + 1600);
    v84 = *(v0 + 1592);
    v101 = *(v0 + 1584);
    v86 = *(v0 + 1568);
    v87 = *(v0 + 1576);
    v30 = *(v0 + 1560);
    v83 = v30;
    v31 = *(v0 + 1544);
    v32 = *(v0 + 1536);
    v93 = *(v0 + 1520);
    v89 = *(v0 + 1496);
    v80 = *(v0 + 1488);
    sub_1000035D0((v0 + 936), *(v0 + 960));
    dispatch thunk of BeaconRecordType.identifier.getter();
    v33 = *(v31 + 56);
    v85 = v29;
    v33(v29, 0, 1, v32);
    sub_1000035D0((v0 + 976), *(v0 + 1000));
    dispatch thunk of BeaconGroupType.identifier.getter();
    v33(v99, 0, 1, v32);
    v82 = *(v80 + v81);
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v30, 1, 1, v34);
    sub_1000D2A70(v29, v84, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v99, v101, &qword_1016980D0, &unk_10138F3B0);
    v35 = *(v86 + 80);
    v36 = (v35 + 32) & ~v35;
    v37 = (v87 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v35 + v37 + 8) & ~v35;
    v39 = (v38 + v87) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    sub_1000D2AD8(v84, v40 + v36, &qword_1016980D0, &unk_10138F3B0);
    *(v40 + v37) = v82;
    sub_1000D2AD8(v101, v40 + v38, &qword_1016980D0, &unk_10138F3B0);
    *(v40 + v38 + v87) = 1;
    *(v40 + v39 + 8) = 0;
    *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v89;
    swift_retain_n();
    sub_10025EDD4(0, 0, v83, &unk_1013A5238, v40);

    sub_10000B3A8(v99, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v85, &qword_1016980D0, &unk_10138F3B0);
    sub_10001F280(v0 + 976, v0 + 1096);
    sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
    v41 = swift_dynamicCast();
    v42 = *(v93 + 56);
    if (v41)
    {
      v43 = *(v0 + 1648);
      v44 = *(v0 + 1528);
      v45 = *(v0 + 1512);
      v46 = *(v0 + 1504);
      v47 = *(v0 + 1488);
      v42(v46, 0, 1, v45);
      sub_10048E8F0(v46, v44, type metadata accessor for OwnedBeaconGroup);
      v48 = *(v47 + v43);
      v49 = *(v44 + *(v45 + 40));

      *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = sub_100F524A0(v49);

      sub_1000035D0((v0 + 936), *(v0 + 960));
      dispatch thunk of BeaconRecordType.identifier.getter();
      sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);
      sub_10000B3A8(v95, &qword_1016A1338, &qword_1013A5230);
      sub_10000B3A8(v0 + 856, &qword_1016A1328, &qword_1013A5228);
      sub_10048E958(v44, type metadata accessor for OwnedBeaconGroup);
      sub_100007BAC((v0 + 976));
      sub_100007BAC((v0 + 936));

      v50 = *(v0 + 8);
      goto LABEL_22;
    }

    v51 = *(v0 + 1504);
    v42(v51, 1, 1, *(v0 + 1512));
    sub_10000B3A8(v51, &unk_1016AF8B0, &unk_1013A0700);
    sub_10001F280(v0 + 976, v0 + 1136);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v103[0] = v55;
      *v54 = 136315138;
      sub_10001F280(v0 + 1136, v0 + 1176);
      v56 = String.init<A>(describing:)();
      v58 = v57;
      sub_100007BAC((v0 + 1136));
      v59 = sub_1000136BC(v56, v58, v103);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected beacon group type: %s", v54, 0xCu);
      sub_100007BAC(v55);
    }

    else
    {

      sub_100007BAC((v0 + 1136));
    }

    v60 = type metadata accessor for PairingInfoStoreError();
    sub_10048E6C4(&qword_1016A1330, &type metadata accessor for PairingInfoStoreError, &protocol conformance descriptor for PairingInfoStoreError);
    v61 = swift_allocError();
    (*(*(v60 - 8) + 104))(v62, enum case for PairingInfoStoreError.missingOwnerRecord(_:), v60);
    v98 = v61;
    swift_willThrow();
    sub_10000B3A8(v95, &qword_1016A1338, &qword_1013A5230);
    sub_10000B3A8(v0 + 856, &qword_1016A1328, &qword_1013A5228);
    sub_100007BAC((v0 + 976));
    sub_100007BAC((v0 + 936));
  }

  else
  {
    sub_10000B3A8(v0 + 696, &qword_1016A1328, &qword_1013A5228);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_1016A1010);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to generate new beacon", v17, 2u);
    }

    v18 = type metadata accessor for PairingInfoStoreError();
    sub_10048E6C4(&qword_1016A1330, &type metadata accessor for PairingInfoStoreError, &protocol conformance descriptor for PairingInfoStoreError);
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, enum case for PairingInfoStoreError.missingOwnerRecord(_:), v18);
    v98 = v19;
    swift_willThrow();
    sub_10000B3A8(v0 + 856, &qword_1016A1328, &qword_1013A5228);
  }

  v63 = *(v0 + 1648);
  v64 = *(v0 + 1608);
  v65 = *(v0 + 1600);
  v88 = *(v0 + 1592);
  v102 = *(v0 + 1584);
  v66 = *(v0 + 1576);
  v90 = *(v0 + 1568);
  v67 = *(v0 + 1560);
  v92 = v67;
  v68 = *(v0 + 1536);
  v96 = *(v0 + 1496);
  v97 = v64;
  v69 = *(v0 + 1488);
  v70 = *(*(v0 + 1544) + 56);
  v70(v64, 1, 1, v68);
  v94 = v65;
  v70(v65, 1, 1, v68);
  v91 = *(v69 + v63);
  v71 = type metadata accessor for TaskPriority();
  (*(*(v71 - 8) + 56))(v67, 1, 1, v71);
  sub_1000D2A70(v64, v88, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v65, v102, &qword_1016980D0, &unk_10138F3B0);
  v72 = *(v90 + 80);
  v73 = (v72 + 32) & ~v72;
  v74 = (v66 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v72 + v74 + 8) & ~v72;
  v76 = v75 + v66;
  v77 = (v75 + v66) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v78 + 24) = 0;
  sub_1000D2AD8(v88, v78 + v73, &qword_1016980D0, &unk_10138F3B0);
  *(v78 + v74) = v91;
  sub_1000D2AD8(v102, v78 + v75, &qword_1016980D0, &unk_10138F3B0);
  *(v78 + v76) = 2;
  *(v78 + v77 + 8) = v98;
  *(v78 + ((v77 + 23) & 0xFFFFFFFFFFFFFFF8)) = v96;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v92, &unk_1013A5220, v78);

  sub_10000B3A8(v94, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v97, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();
  sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);

  v50 = *(v0 + 8);
LABEL_22:

  return v50();
}

uint64_t sub_100486E60()
{
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[199];
  v26 = v0[198];
  v18 = v0[206];
  v20 = v0[196];
  v4 = v0[195];
  v21 = v0[197];
  v22 = v4;
  v5 = v0[193];
  v6 = v0[192];
  v24 = v0[208];
  v25 = v0[187];
  v7 = v0[186];
  sub_10000B3A8(v0[205], &qword_1016A40D0, &unk_10138BE70);
  sub_100007BAC(v0 + 172);
  sub_100007BAC(v0 + 167);
  v8 = *(v5 + 56);
  v23 = v1;
  v8(v1, 1, 1, v6);
  v8(v2, 1, 1, v6);
  v19 = *(v7 + v18);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1000D2A70(v1, v3, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v2, v26, &qword_1016980D0, &unk_10138F3B0);
  v10 = *(v20 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = (v21 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + v12 + 8) & ~v10;
  v14 = (v13 + v21) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1000D2AD8(v3, v15 + v11, &qword_1016980D0, &unk_10138F3B0);
  *(v15 + v12) = v19;
  sub_1000D2AD8(v26, v15 + v13, &qword_1016980D0, &unk_10138F3B0);
  *(v15 + v13 + v21) = 2;
  *(v15 + v14 + 8) = v24;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v22, &unk_1013A5248, v15);

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004871D8()
{
  sub_100007BAC(v0 + 127);
  sub_100007BAC(v0 + 157);
  v1 = v0[206];
  v2 = v0[201];
  v3 = v0[200];
  v26 = v0[210];
  v27 = v0[198];
  v4 = v0[197];
  v19 = v0[199];
  v20 = v0[196];
  v5 = v0[195];
  v22 = v5;
  v6 = v0[192];
  v24 = v0[187];
  v25 = v2;
  v7 = v0[186];
  v8 = *(v0[193] + 56);
  v8(v2, 1, 1, v6);
  v23 = v3;
  v8(v3, 1, 1, v6);
  v21 = *(v7 + v1);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000D2A70(v2, v19, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v3, v27, &qword_1016980D0, &unk_10138F3B0);
  v10 = *(v20 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + v12 + 8) & ~v10;
  v14 = v13 + v4;
  v15 = (v13 + v4) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_1000D2AD8(v19, v16 + v11, &qword_1016980D0, &unk_10138F3B0);
  *(v16 + v12) = v21;
  sub_1000D2AD8(v27, v16 + v13, &qword_1016980D0, &unk_10138F3B0);
  *(v16 + v14) = 2;
  *(v16 + v15 + 8) = v26;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v22, &unk_1013A5220, v16);

  sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100487534()
{
  v1[5] = v0;
  v1[6] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[7] = swift_task_alloc();
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[8] = v2;
  v1[9] = *(v2 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v1;
  v3[1] = sub_1004876B4;

  return sub_100487B44();
}

uint64_t sub_1004876B4()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_100487828, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100487828()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v20 = v3;
  v5 = v0[9];
  v22 = v0[8];
  v6 = v0[7];
  v23 = v6;
  v26 = v0[15];
  v27 = v0[6];
  v7 = v0[5];
  v8 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  v25 = v1;
  sub_1000D2A70(v7 + v8, v1, &qword_1016980D0, &unk_10138F3B0);
  v9 = type metadata accessor for UUID();
  v24 = v2;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v21 = *(v7 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1000D2A70(v1, v4, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v2, v3, &qword_1016980D0, &unk_10138F3B0);
  v11 = *(v22 + 80);
  v12 = (v11 + 32) & ~v11;
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + v13 + 8) & ~v11;
  v15 = v14 + v5;
  v16 = (v14 + v5) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1000D2AD8(v4, v17 + v12, &qword_1016980D0, &unk_10138F3B0);
  *(v17 + v13) = v21;
  sub_1000D2AD8(v20, v17 + v14, &qword_1016980D0, &unk_10138F3B0);
  *(v17 + v15) = 2;
  *(v17 + v16 + 8) = v26;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v23, &unk_1013A5200, v17);

  sub_10000B3A8(v24, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100487B44()
{
  v1[35] = v0;
  v2 = type metadata accessor for PairingExecutorState();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();

  return _swift_task_switch(sub_100487C6C, v0, 0);
}

uint64_t sub_100487C6C(uint64_t a1)
{
  v2 = v1[35];
  v3 = v2 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service;
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  v1[42] = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    v1[43] = v5;
    v6 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral;
    swift_beginAccess();
    sub_1000D2A70(v2 + v6, (v1 + 2), &qword_1016A12E8, &qword_1013A51D8);
    v7 = v1[5];
    swift_unknownObjectRetain();
    sub_10000B3A8((v1 + 2), &qword_1016A12E8, &qword_1013A51D8);
    if (v7)
    {
      v8 = sub_100C45C24();
      if (qword_101694720 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      v1[44] = sub_1000076D4(v9, qword_1016A1010);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 67109120;
        *(v12 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v10, v11, "nextKeyRollInterval = %u", v12, 8u);
      }

      v13 = v1[35];

      v14 = (v13 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec);
      v15 = *(v13 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 24);
      v16 = v14[4];
      sub_1000035D0(v14, v15);
      v17 = *(v16 + 96);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v1[45] = AssociatedTypeWitness;
      v1[10] = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v1[46] = AssociatedConformanceWitness;
      v1[11] = AssociatedConformanceWitness;
      v1[47] = sub_1000280DC(v1 + 7);
      v17(v8, v15, v16);
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      ObjectType = swift_getObjectType();
      v1[48] = ObjectType;
      v25 = swift_task_alloc();
      v1[49] = v25;
      *v25 = v1;
      v25[1] = sub_10048808C;
      v26 = v1[41];

      return dispatch thunk of ServiceProtocol.subscript.getter(v26, ObjectType, v5);
    }

    sub_10048E4E8();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10048E4E8();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
  }

  v22 = v1[1];

  return v22();
}

uint64_t sub_10048808C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[50] = a1;
  v4[51] = v1;

  v5 = v3[41];
  v6 = v3[40];
  v7 = v3[39];
  v8 = v3[35];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100488C28;
  }

  else
  {
    v9 = sub_100488210;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100488210()
{
  v27 = v0;
  sub_10001F280(v0 + 56, v0 + 96);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v26 = v4;
    *v3 = 136315138;
    sub_10001F280(v0 + 96, v0 + 216);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    sub_100007BAC((v0 + 96));
    v8 = sub_1000136BC(v5, v7, &v26);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sending command: %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {

    sub_100007BAC((v0 + 96));
  }

  v25 = *(v0 + 408);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v11 = *(v0 + 288);
  v12 = enum case for PairingExecutorState.PairingComplete.commandStart(_:);
  v13 = type metadata accessor for PairingExecutorState.PairingComplete();
  *(v0 + 416) = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 104);
  *(v0 + 424) = v15;
  *(v0 + 432) = (v14 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v15(v10, v12, v13);
  v16 = *(v14 + 56);
  *(v0 + 440) = v16;
  *(v0 + 448) = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v10, 0, 1, v13);
  *(v0 + 584) = enum case for PairingExecutorState.pairingComplete(_:);
  v17 = *(v9 + 104);
  *(v0 + 456) = v17;
  *(v0 + 464) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v17(v10);
  *(v0 + 472) = type metadata accessor for AirPodsLEPairingExecutor(0);
  *(v0 + 480) = sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor, &unk_1013A50D8);
  PairingExecutor.setState(_:)();
  v18 = *(v9 + 8);
  *(v0 + 488) = v18;
  *(v0 + 496) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v10, v11);
  *(v0 + 504) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 512) = v19;
  if (v25)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100007BAC((v0 + 56));

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 520) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 528) = AssociatedConformanceWitness;
    v24 = swift_task_alloc();
    *(v0 + 536) = v24;
    *v24 = v0;
    v24[1] = sub_100488640;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100488640(uint64_t a1)
{
  v4 = *v2;
  v4[68] = v1;

  v5 = v4[35];
  if (v1)
  {
    v6 = sub_100488CA8;
  }

  else
  {
    v4[69] = a1;
    v6 = sub_10048877C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10048877C()
{
  v1 = fragment(data:mtu:)();
  v0[70] = v1;
  v2 = swift_task_alloc();
  v0[71] = v2;
  *v2 = v0;
  v2[1] = sub_100488830;
  v3 = v0[66];
  v4 = v0[65];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v1, v4, v3);
}

uint64_t sub_100488830()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = sub_100488D4C;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_100488958;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100488958()
{
  v22 = v0;
  v20 = *(v0 + 488);
  v1 = *(v0 + 456);
  v2 = *(v0 + 584);
  v3 = *(v0 + 440);
  v4 = *(v0 + 416);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  (*(v0 + 424))(v5, enum case for PairingExecutorState.PairingComplete.commandFinish(_:), v4);
  v3(v5, 0, 1, v4);
  v1(v5, v2, v6);
  PairingExecutor.setState(_:)();
  v20(v5, v6);
  sub_10001F280(v0 + 56, v0 + 136);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    sub_10001F280(v0 + 136, v0 + 176);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100007BAC((v0 + 136));
    v14 = sub_1000136BC(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sent command: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC((v0 + 136));
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Wrote Pairing Complete", v17, 2u);
  }

  sub_100016590(*(v0 + 504), *(v0 + 512));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100007BAC((v0 + 56));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100488C28()
{
  swift_unknownObjectRelease();
  sub_100007BAC((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100488CA8()
{
  v1 = v0[63];
  v2 = v0[64];
  swift_unknownObjectRelease();
  sub_100016590(v1, v2);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 7);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100488D4C()
{
  v1 = v0[63];
  v2 = v0[64];

  swift_unknownObjectRelease();
  sub_100016590(v1, v2);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 7);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100488E1C()
{
  v21 = v0;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[23] = sub_1000076D4(v1, qword_1016A1010);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x41676E6972696170, 0xEC00000029286B63, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[22];
  if (*(*(v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing))
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Skipping pairing ack for standalone pairing", v9, 2u);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v11 = *(v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 24);
    v12 = *(v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 32);
    sub_1000035D0((v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec), v11);
    v13 = *(v12 + 112);

    v13(v14, v11, v12);
    v16 = v0[22];

    v17 = *(v16 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator + 8);
    ObjectType = swift_getObjectType();
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_100489148;

    return dispatch thunk of PairingValidator.ack(_:)(v0 + 7, v0 + 2, ObjectType, v17);
  }
}

uint64_t sub_100489148()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_100489498;
  }

  else
  {
    v4 = sub_100489274;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100489274(uint64_t a1)
{
  v16 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing ack completed successfully!", v4, 2u);
  }

  sub_10001F280((v1 + 7), (v1 + 12));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_10001F280((v1 + 12), (v1 + 17));
    sub_1000BC4D4(&qword_1016A12F8, &unk_1013A51E0);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    sub_100007BAC(v1 + 12);
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing ack response: %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    sub_100007BAC(v1 + 12);
  }

  sub_100007BAC(v1 + 7);
  sub_100007BAC(v1 + 2);
  v13 = v1[1];

  return v13();
}

uint64_t sub_100489498()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004894FC()
{
  v1 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_state;
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData, &qword_1016A1348, &unk_1013A5280);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto, &qword_101697380, &unk_10138BEF0);
  swift_unknownObjectRelease();
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral, &qword_1016A12E8, &qword_1013A51D8);
  sub_10048EAA4(*(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 8), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 16), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 24), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 32), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 40), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 48), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 56), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 64), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 72), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 80));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingConfiguration, &qword_1016A12E0, &qword_1013A51D0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier, &qword_1016980D0, &unk_10138F3B0);
  v5 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_encoder;
  v6 = type metadata accessor for BinaryEncoder();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_decoder;
  v8 = type metadata accessor for BinaryDecoder();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_100007BAC((v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10048977C()
{
  sub_1004894FC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AirPodsLEPairingExecutor(uint64_t a1)
{
  result = qword_1016A1090;
  if (!qword_1016A1090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004897FC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PairingExecutorState();
    if (v2 <= 0x3F)
    {
      sub_100395648(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for BinaryEncoder();
        if (v4 <= 0x3F)
        {
          type metadata accessor for BinaryDecoder();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100489A78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100489BB4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1000D2A70(v4 + v8, a4, a2, a3);
}

uint64_t sub_100489C20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016A12E0, &qword_1013A51D0);
  return swift_endAccess();
}

uint64_t sub_100489D24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  return sub_1000D2A70(v1 + v3, a1, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_100489D8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016980D0, &unk_10138F3B0);
  return swift_endAccess();
}

uint64_t sub_100489E5C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AirPodsLEPairingExecutor(0);

  return PairingExecutor.stream()(v3, a2);
}

uint64_t sub_100489EA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_10047BBD0(a1);
}

uint64_t sub_100489F3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100480FD4();
}

uint64_t sub_100489FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_10048504C(a1);
}

uint64_t sub_10048A060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100487534();
}

uint64_t sub_10048A0EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100488DFC();
}

uint64_t sub_10048A178@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10048A200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_10048A2F0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10048A338(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_stateHistory;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10048A3F0(uint64_t a1)
{
  type metadata accessor for AirPodsLEPairingExecutor(0);
  sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor, &unk_1013A50D8);

  return PairingExecutor.setState(_:)();
}

uint64_t sub_10048A4BC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AD50);
  sub_1000076D4(v0, qword_10177AD50);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10048A540()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A1010);
  v1 = sub_1000076D4(v0, qword_1016A1010);
  if (qword_101694718 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AD50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10048A608()
{
  v1[58] = v0;
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  v1[59] = v2;
  v1[60] = *(v2 - 8);
  v1[61] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v3 = type metadata accessor for MACAddress();
  v1[64] = v3;
  v1[65] = *(v3 - 8);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[70] = v4;
  v1[71] = *(v4 - 8);
  v1[72] = swift_task_alloc();
  v5 = type metadata accessor for PairingExecutorState();
  v1[73] = v5;
  v1[74] = *(v5 - 8);
  v1[75] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[76] = v6;
  v1[77] = *(v6 - 8);
  v1[78] = swift_task_alloc();

  return _swift_task_switch(sub_10048A8E4, v0, 0);
}

uint64_t sub_10048A8E4(uint64_t a1)
{
  v2 = v1[58];
  v3 = v2 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service;
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  v1[79] = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    v1[80] = v5;
    v6 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
    v1[81] = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
    v7 = *(v2 + v6 + 24);
    v8 = *(v2 + v6 + 32);
    sub_1000035D0((v2 + v6), v7);
    v9 = *(v8 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v1[82] = AssociatedTypeWitness;
    v1[5] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[83] = AssociatedConformanceWitness;
    v1[6] = AssociatedConformanceWitness;
    v1[84] = sub_1000280DC(v1 + 2);
    v9(v7, v8);
    type metadata accessor for Characteristic();
    swift_unknownObjectRetain();
    Identifier.init(stringLiteral:)();
    ObjectType = swift_getObjectType();
    v1[85] = ObjectType;
    v16 = swift_task_alloc();
    v1[86] = v16;
    *v16 = v1;
    v16[1] = sub_10048ABF4;
    v17 = v1[78];

    return dispatch thunk of ServiceProtocol.subscript.getter(v17, ObjectType, v5);
  }

  else
  {
    sub_10048E4E8();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();

    v13 = v1[1];

    return v13();
  }
}

uint64_t sub_10048ABF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[87] = a1;
  v4[88] = v1;

  v5 = v3[78];
  v6 = v3[77];
  v7 = v3[76];
  v8 = v3[58];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_10048C640;
  }

  else
  {
    v9 = sub_10048AD7C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10048AD7C()
{
  v27 = v0;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 712) = sub_1000076D4(v1, qword_1016A1010);
  sub_10001F280(v0 + 16, v0 + 56);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    sub_10001F280(v0 + 56, v0 + 376);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    sub_100007BAC((v0 + 56));
    v9 = sub_1000136BC(v6, v8, &v26);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {

    sub_100007BAC((v0 + 56));
  }

  v10 = *(v0 + 704);
  v11 = *(v0 + 600);
  v12 = *(v0 + 592);
  v13 = *(v0 + 584);
  v14 = enum case for PairingExecutorState.CommandState.commandStart(_:);
  v15 = type metadata accessor for PairingExecutorState.CommandState();
  *(v0 + 720) = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 104);
  *(v0 + 728) = v17;
  *(v0 + 736) = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v17(v11, v14, v15);
  *(v0 + 920) = enum case for PairingExecutorState.getBeaconGroup(_:);
  v18 = *(v12 + 104);
  *(v0 + 744) = v18;
  *(v0 + 752) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v11);
  *(v0 + 760) = type metadata accessor for AirPodsLEPairingExecutor(0);
  *(v0 + 768) = sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor, &unk_1013A50D8);
  PairingExecutor.setState(_:)();
  v19 = *(v12 + 8);
  *(v0 + 776) = v19;
  *(v0 + 784) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v11, v13);
  *(v0 + 792) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 800) = v20;
  if (v10)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100007BAC((v0 + 16));

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 808) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 816) = AssociatedConformanceWitness;
    v25 = swift_task_alloc();
    *(v0 + 824) = v25;
    *v25 = v0;
    v25[1] = sub_10048B228;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10048B228(uint64_t a1)
{
  v4 = *v2;
  v4[104] = v1;

  v5 = v4[58];
  if (v1)
  {
    v6 = sub_10048C744;
  }

  else
  {
    v4[105] = a1;
    v6 = sub_10048B364;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10048B364()
{
  v1 = fragment(data:mtu:)();
  v0[106] = v1;
  v2 = swift_task_alloc();
  v0[107] = v2;
  *v2 = v0;
  v2[1] = sub_10048B424;
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[72];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v5, v1, v4, v3);
}

uint64_t sub_10048B424()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = v2[58];

    return _swift_task_switch(sub_10048C868, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[109] = v5;
    v6 = sub_10048E70C();
    *v5 = v3;
    v5[1] = sub_10048B5CC;
    v7 = v2[70];

    return AsyncSequence<>.reassemble()(v7, v6);
  }
}

uint64_t sub_10048B5CC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[110] = a1;
  v5[111] = a2;
  v5[112] = v2;

  v6 = v4[72];
  v7 = v4[71];
  v8 = v4[70];
  v9 = v4[58];
  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v10 = sub_10048C988;
  }

  else
  {
    v10 = sub_10048B758;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10048B758()
{
  v67 = v0;
  v63 = *(v0 + 776);
  v1 = *(v0 + 744);
  v2 = *(v0 + 920);
  v3 = *(v0 + 600);
  v4 = *(v0 + 584);
  (*(v0 + 728))(v3, enum case for PairingExecutorState.CommandState.commandFinish(_:), *(v0 + 720));
  v1(v3, v2, v4);
  PairingExecutor.setState(_:)();
  v63(v3, v4);
  sub_10001F280(v0 + 16, v0 + 96);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v66[0] = v8;
    *v7 = 136315138;
    sub_10001F280(v0 + 96, v0 + 336);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    sub_100007BAC((v0 + 96));
    v12 = sub_1000136BC(v9, v11, v66);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Sent command: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {

    sub_100007BAC((v0 + 96));
  }

  v13 = *(v0 + 896);
  v14 = (*(v0 + 464) + *(v0 + 648));
  v15 = v14[3];
  v16 = v14[4];
  sub_1000035D0(v14, v15);
  v17 = sub_1003916CC(v15, v16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 160) = v17;
  *(v0 + 168) = AssociatedConformanceWitness;
  sub_1000280DC((v0 + 136));
  BinaryDecoder.decode<A>(_:from:)();
  if (v13)
  {
    v19 = *(v0 + 800);
    v20 = *(v0 + 792);
    sub_100016590(*(v0 + 880), *(v0 + 888));
    sub_100016590(v20, v19);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100101758((v0 + 136));
    sub_100007BAC((v0 + 16));

    v36 = *(v0 + 8);

    return v36();
  }

  sub_10001F280(v0 + 136, v0 + 176);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v66[0] = v24;
    *v23 = 136315138;
    sub_10001F280(v0 + 176, v0 + 296);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    sub_100007BAC((v0 + 176));
    v28 = sub_1000136BC(v25, v27, v66);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Received response: %s", v23, 0xCu);
    sub_100007BAC(v24);
  }

  else
  {

    sub_100007BAC((v0 + 176));
  }

  v29 = *(v0 + 464);
  v30 = (v29 + *(v0 + 648));
  v31 = v30[3];
  v32 = v30[4];
  sub_1000035D0(v30, v31);
  (*(AssociatedConformanceWitness + 216))(v17, AssociatedConformanceWitness);
  v33 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  *(v0 + 904) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  v34 = *(v29 + v33);
  v35 = *(v32 + 56);

  v35(v0 + 216, v34, v31, v32);
  sub_100007BAC((v0 + 216));

  v38 = *(v29 + v33);
  if (*(v38 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing))
  {
    goto LABEL_19;
  }

  v39 = *(v0 + 520);
  v40 = *(v0 + 504);
  v41 = *(v0 + 512);
  v42 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v38 + v42, v40, &qword_1016A40D0, &unk_10138BE70);
  v43 = *(v39 + 48);
  if (v43(v40, 1, v41) == 1)
  {
    v44 = *(v0 + 504);
LABEL_18:
    sub_10000B3A8(v44, &qword_1016A40D0, &unk_10138BE70);
LABEL_19:
    v50 = *(v0 + 888);
    v51 = *(v0 + 880);
    v52 = *(v0 + 800);
    v53 = *(v0 + 792);
    v54 = *(v0 + 552);
    (*(*(v0 + 480) + 56))(v54, 1, 1, *(v0 + 472));
    v55 = sub_10110D3E0(v54, 255);
    v64 = v56;
    v65 = v55;
    sub_100016590(v51, v50);
    sub_100016590(v53, v52);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_10000B3A8(v54, &unk_1016AF8B0, &unk_1013A0700);
    sub_100007BAC((v0 + 136));
    sub_100007BAC((v0 + 16));

    v57 = *(v0 + 8);

    return v57(v65, v64);
  }

  v45 = *(v0 + 512);
  v46 = *(v0 + 496);
  v47 = *(*(v0 + 520) + 32);
  v47(*(v0 + 536), *(v0 + 504), v45);
  v48 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress;
  swift_beginAccess();
  sub_1000D2A70(v38 + v48, v46, &qword_1016A40D0, &unk_10138BE70);
  if (v43(v46, 1, v45) == 1)
  {
    v49 = *(v0 + 496);
    (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));
    v44 = v49;
    goto LABEL_18;
  }

  v58 = *(v0 + 464);
  v47(*(v0 + 528), *(v0 + 496), *(v0 + 512));
  v59 = *(v58 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore + 8);
  ObjectType = swift_getObjectType();
  v61 = swift_task_alloc();
  *(v0 + 912) = v61;
  *v61 = v0;
  v61[1] = sub_10048C054;
  v62 = *(v0 + 536);

  return dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(v0 + 256, v62, ObjectType, v59);
}

uint64_t sub_10048C054()
{
  v1 = *(*v0 + 464);

  return _swift_task_switch(sub_10048C164, v1, 0);
}

uint64_t sub_10048C164()
{
  v1 = v0[68];
  if (!v0[35])
  {
    v9 = v0[67];
    v10 = v0[64];
    v11 = v0[59];
    v12 = v0[60];
    v13 = *(v0[65] + 8);
    v13(v0[66], v10);
    v13(v9, v10);
    sub_10000B3A8((v0 + 32), &qword_1016A1350, &qword_1013A5290);
    (*(v12 + 56))(v1, 1, 1, v11);
    goto LABEL_5;
  }

  v2 = v0[59];
  v3 = v0[60];
  sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
  v4 = swift_dynamicCast();
  v5 = *(v3 + 56);
  v5(v1, v4 ^ 1u, 1, v2);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[67];
    v7 = v0[64];
    v8 = *(v0[65] + 8);
    v8(v0[66], v7);
    v8(v6, v7);
LABEL_5:
    sub_10000B3A8(v0[68], &unk_1016AF8B0, &unk_1013A0700);
LABEL_6:
    v14 = v0[111];
    v15 = v0[110];
    v16 = v0[100];
    v17 = v0[99];
    v18 = v0[69];
    (*(v0[60] + 56))(v18, 1, 1, v0[59]);
    v19 = sub_10110D3E0(v18, 255);
    v49 = v20;
    v50 = v19;
    sub_100016590(v15, v14);
    sub_100016590(v17, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_10000B3A8(v18, &unk_1016AF8B0, &unk_1013A0700);
    goto LABEL_7;
  }

  v23 = v0[66];
  sub_10048E8F0(v0[68], v0[61], type metadata accessor for OwnedBeaconGroup);
  sub_10051578C(v23);
  if ((v24 & 0x100) != 0)
  {
    v38 = v0[67];
    v39 = v0[64];
    v40 = v0[61];
    v41 = *(v0[65] + 8);
    v41(v0[66], v39);
    v41(v38, v39);
    sub_10048E958(v40, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_6;
  }

  v25 = v24;
  v42 = v0[113];
  v43 = v0[110];
  v44 = v0[111];
  v45 = v0[99];
  v46 = v0[100];
  v26 = v0[69];
  v48 = v0[67];
  v47 = v0[66];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[61];
  v31 = v0[58];
  v30 = v0[59];
  sub_10048EA3C(v29, v26, type metadata accessor for OwnedBeaconGroup);
  v5(v26, 0, 1, v30);
  v32 = sub_10110D3E0(v26, v25);
  v49 = v33;
  v50 = v32;
  sub_10000B3A8(v26, &unk_1016AF8B0, &unk_1013A0700);
  v34 = *(v31 + v42);
  v35 = *(v29 + *(v30 + 40));

  v36 = sub_100F524A0(v35);
  sub_100016590(v43, v44);
  sub_100016590(v45, v46);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v37 = *(v27 + 8);
  v37(v47, v28);
  v37(v48, v28);
  *(v34 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v36;

  sub_10048E958(v29, type metadata accessor for OwnedBeaconGroup);
LABEL_7:
  sub_100007BAC(v0 + 17);
  sub_100007BAC(v0 + 2);

  v21 = v0[1];

  return v21(v50, v49);
}

uint64_t sub_10048C640()
{
  swift_unknownObjectRelease();
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048C744()
{
  v1 = v0[100];
  v2 = v0[99];
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10048C868()
{
  sub_100016590(v0[99], v0[100]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10048C988()
{
  sub_100016590(v0[99], v0[100]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10048CAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 360) = a7;
  *(v8 + 104) = a6;
  *(v8 + 112) = a8;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  *(v8 + 120) = swift_task_alloc();
  v9 = type metadata accessor for AccessoryPairingAnalytics(0);
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 + 64);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v12 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_10048CCF8, 0, 0);
}

uint64_t sub_10048CCF8()
{
  v24 = v0;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  v0[34] = sub_1000076D4(v3, qword_1016A1010);
  sub_1000D2A70(v2, v1, &qword_1016980D0, &unk_10138F3B0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[33];
  if (v6)
  {
    v8 = v0[32];
    v9 = v0[22];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    sub_1000D2A70(v7, v8, &qword_1016980D0, &unk_10138F3B0);
    v13 = (*(v10 + 48))(v8, 1, v9);
    v14 = v0[32];
    if (v13 == 1)
    {
      sub_10000B3A8(v0[32], &qword_1016980D0, &unk_10138F3B0);
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E55;
    }

    else
    {
      v17 = v0[22];
      v18 = v0[23];
      v16 = UUID.uuidString.getter();
      v15 = v19;
      (*(v18 + 8))(v14, v17);
    }

    sub_10000B3A8(v0[33], &qword_1016980D0, &unk_10138F3B0);
    v20 = sub_1000136BC(v16, v15, &v23);

    *(v11 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Writing pairing event for %s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  }

  v21 = swift_task_alloc();
  v0[35] = v21;
  *v21 = v0;
  v21[1] = sub_10048CFC0;

  return daemon.getter();
}

uint64_t sub_10048CFC0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 288) = a1;

  v3 = swift_task_alloc();
  *(v2 + 296) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_10048E6C4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10048E6C4(&unk_1016B1030, type metadata accessor for LocalStorageService, &unk_1013DB940);
  *v3 = v9;
  v3[1] = sub_10048D19C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10048D19C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v4 = sub_10048E178;
  }

  else
  {

    v4 = sub_10048D2B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048D2B8(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = v2[12];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v2[14];
  if (v4 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v5 = v2[11];
  v6 = v2[13];
  v7 = (v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v8 = *v7;
  *(v1 + 320) = *v7;
  v9 = v7[1];
  *(v1 + 328) = v9;
  if (v9 >> 60 == 15)
  {
    goto LABEL_6;
  }

  *(v1 + 64) = v8;
  *(v1 + 72) = v9;

  sub_10002E98C(v6, v4);
  sub_10002E98C(v8, v9);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v8, v9);
    sub_100006654(v6, v4);

LABEL_6:
    sub_10048E4E8();
    swift_allocError();
    *v10 = 10;
    swift_willThrow();
LABEL_7:

    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failure writing to pairing event local storage: %{public}@", v13, 0xCu);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v16 = *(v1 + 8);

    return v16();
  }

  v18 = *(v1 + 96);
  v19 = Data.trimmed.getter();
  v21 = v20;
  v22 = *(v18 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  if (!*(v22 + 16))
  {
LABEL_19:

    sub_10048E4E8();
    swift_allocError();
    *v34 = 10;
    swift_willThrow();
    sub_100016590(v19, v21);
    sub_100006654(v8, v9);
    sub_100006654(v6, v4);
    goto LABEL_7;
  }

  v23 = sub_100771E30(v19, v21);
  if ((v24 & 1) == 0)
  {

    goto LABEL_19;
  }

  v61 = v19;
  v62 = v21;
  v63 = v5;
  v25 = *(v1 + 248);
  v27 = *(v1 + 224);
  v26 = *(v1 + 232);
  v28 = *(v1 + 184);
  v59 = *(v1 + 176);
  v29 = *(v1 + 88);
  sub_10048EA3C(*(v22 + 56) + *(*(v1 + 216) + 72) * v23, v27, type metadata accessor for MultipartAccessoryPairingInfo);

  sub_10048E8F0(v27, v26, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_1000D2A70(v29, v25, &qword_1016980D0, &unk_10138F3B0);
  v30 = *(v28 + 48);
  v31 = v30(v25, 1, v59);
  v32 = *(v1 + 248);
  if (v31 == 1)
  {
    v33 = *(v1 + 176);
    UUID.init()();
    if (v30(v32, 1, v33) != 1)
    {
      sub_10000B3A8(*(v1 + 248), &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    (*(*(v1 + 184) + 32))(*(v1 + 200), *(v1 + 248), *(v1 + 176));
  }

  v36 = *(v1 + 232);
  v35 = *(v1 + 240);
  v37 = *(v1 + 208);
  v38 = *(v1 + 120);
  v57 = *(v1 + 112);
  v40 = *(v1 + 96);
  v39 = *(v1 + 104);
  (*(*(v1 + 184) + 16))(*(v1 + 192), *(v1 + 200), *(v1 + 176));
  sub_1000D2A70(v39, v35, &qword_1016980D0, &unk_10138F3B0);
  v55 = *(v40 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v41 = *(v40 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1);
  v60 = *(v36 + *(v37 + 28));
  v42 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v40 + v42, v38, &qword_1016A40D0, &unk_10138BE70);
  if (v57)
  {
    swift_getErrorValue();
    v58 = Error.localizedDescription.getter();
    v54 = v43;
  }

  else
  {
    v58 = 0;
    v54 = 0;
  }

  if (v41)
  {
    v44 = 0;
  }

  else
  {
    v44 = v55;
  }

  v56 = *(v1 + 304);
  v45 = *(v1 + 240);
  v46 = *(v1 + 168);
  v48 = *(v1 + 120);
  v47 = *(v1 + 128);
  v49 = *(v1 + 360);
  (*(*(v1 + 184) + 32))(v46, *(v1 + 192), *(v1 + 176));
  sub_1000D2AD8(v45, v46 + v47[5], &qword_1016980D0, &unk_10138F3B0);
  *(v46 + v47[6]) = v44;
  v50 = (v46 + v47[7]);
  *v50 = v61;
  v50[1] = v62;
  v51 = (v46 + v47[8]);
  *v51 = v63;
  v51[1] = v3;
  v52 = (v46 + v47[9]);
  *v52 = v6;
  v52[1] = v4;
  *(v46 + v47[10]) = v49;
  *(v46 + v47[11]) = v60;
  sub_1000D2AD8(v48, v46 + v47[12], &qword_1016A40D0, &unk_10138BE70);
  v53 = (v46 + v47[13]);
  *v53 = v58;
  v53[1] = v54;
  static Date.trustedNow.getter(v46 + v47[14]);

  return _swift_task_switch(sub_10048D96C, v56, 0);
}

uint64_t sub_10048D96C()
{
  v1 = v0[38];
  v2 = v0[20];
  v3 = v0[17];
  sub_10048EA3C(v0[21], v2, type metadata accessor for AccessoryPairingAnalytics);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[42] = v5;
  *(v5 + 16) = v1;
  sub_10048E8F0(v2, v5 + v4, type metadata accessor for AccessoryPairingAnalytics);
  v8 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_10048DAB8;

  return v8(&unk_1013A5208, v5);
}

uint64_t sub_10048DAB8()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);

    v4 = sub_10048DEFC;
    v5 = v3;
  }

  else
  {

    v4 = sub_10048DC00;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10048DC00()
{
  v26 = v0;
  sub_10048EA3C(v0[21], v0[19], type metadata accessor for AccessoryPairingAnalytics);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[41];
  v24 = v0[40];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[19];
  if (v3)
  {
    v23 = v0[29];
    v11 = swift_slowAlloc();
    v22 = v7;
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v20 = v4;
    v21 = v9;
    v13 = sub_10111CE44();
    v15 = v14;
    sub_10048E958(v10, type metadata accessor for AccessoryPairingAnalytics);
    v16 = sub_1000136BC(v13, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v1, v2, "Inserted %s", v11, 0xCu);
    sub_100007BAC(v12);

    sub_100006654(v24, v20);
    sub_10048E958(v21, type metadata accessor for AccessoryPairingAnalytics);
    (*(v8 + 8))(v6, v22);
    v17 = v23;
  }

  else
  {

    sub_100006654(v24, v4);
    sub_10048E958(v10, type metadata accessor for AccessoryPairingAnalytics);
    sub_10048E958(v9, type metadata accessor for AccessoryPairingAnalytics);
    (*(v8 + 8))(v6, v7);
    v17 = v5;
  }

  sub_10048E958(v17, type metadata accessor for MultipartAccessoryPairingInfo);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10048DF18()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];

  sub_100006654(v1, v2);
  sub_10048E958(v7, type metadata accessor for AccessoryPairingAnalytics);
  (*(v6 + 8))(v4, v5);
  sub_10048E958(v3, type metadata accessor for MultipartAccessoryPairingInfo);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failure writing to pairing event local storage: %{public}@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10048E178()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure writing to pairing event local storage: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10048E368(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = *(v1 + v8 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100014744;

  return sub_10048CAA8(a1, v9, v10, v1 + v5, v11, v1 + v8, v13, v12);
}

unint64_t sub_10048E4E8()
{
  result = qword_1016A1300;
  if (!qword_1016A1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1300);
  }

  return result;
}

uint64_t sub_10048E53C()
{
  v2 = *(type metadata accessor for AccessoryPairingAnalytics(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_100B9EC58(v4, v0 + v3);
}

unint64_t sub_10048E614()
{
  result = qword_1016A1310;
  if (!qword_1016A1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1310);
  }

  return result;
}

uint64_t sub_10048E6C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10048E70C()
{
  result = qword_1016C11D0;
  if (!qword_1016C11D0)
  {
    sub_1000BC580(&qword_1016973C8, &qword_1013B6210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C11D0);
  }

  return result;
}

uint64_t sub_10048E770(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = *(v1 + v8 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100014650;

  return sub_10048CAA8(a1, v9, v10, v1 + v5, v11, v1 + v8, v13, v12);
}

uint64_t sub_10048E8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048E958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10048E9B8()
{
  result = qword_1016A1368;
  if (!qword_1016A1368)
  {
    sub_1000BC580(&qword_1016A1360, &unk_1013A52C0);
    sub_100101BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1368);
  }

  return result;
}

uint64_t sub_10048EA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048EAA4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_100016590(result, a2);
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
    sub_100006654(a7, a8);
    sub_100006654(a9, a10);
  }

  return result;
}

unint64_t sub_10048EB7C()
{
  result = qword_1016A1378;
  if (!qword_1016A1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1378);
  }

  return result;
}

uint64_t sub_10048EBD4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10048ED14@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v9 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = a1;
  *(a5 + 8) = a2;
  v13 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v14 = *(v13 + 40);
  UUID.init()();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000076D4(v9, static CodingUserInfoKey.messagingCoder);
  (*(v10 + 16))(v12, v15, v9);
  v30[3] = &type metadata for Bool;
  LOBYTE(v30[0]) = 1;
  v16 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v30, v12);
  v16(v29, 0);
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = v28;
  *(v17 + 32) = a3;
  *(v17 + 40) = v18;
  v30[0] = v17;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1001E8254();
  v19 = v30[5];
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v19)
  {

    v22 = type metadata accessor for UUID();
    return (*(*(v22 - 8) + 8))(a5 + v14, v22);
  }

  else
  {
    v24 = v20;
    v25 = v21;

    v26 = (a5 + *(v13 + 44));
    *v26 = v24;
    v26[1] = v25;
  }

  return result;
}

uint64_t sub_10048EFC8()
{
  _StringGuts.grow(_:)(65);
  v0._object = 0x800000010134D260;
  v0._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x6F6973726576202CLL;
  v1._object = 0xEB00000000203A6ELL;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x69746E656469202CLL;
  v3._object = 0xEE00203A72656966;
  String.append(_:)(v3);
  sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  type metadata accessor for UUID();
  sub_100495940(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x64616F6C79617020;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_10048F1B8()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100495940(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1016A1380 = result;
  return result;
}

Swift::Int sub_10048F41C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v1);
  return Hasher._finalize()();
}

Swift::Int sub_10048F494(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v2);
  return Hasher._finalize()();
}

_DWORD *sub_10048F4D8@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result > 0xFFFFFFFC)
  {
    v2 = ~*result;
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10048F5C4()
{
  v1 = *v0;
  v2 = [v0[7] destination];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x8000000101356000;
    v4 = 0xD000000000000011;
  }

  v17 = 60;
  v18 = 0xE100000000000000;
  v16 = v0;
  v7 = *(v1 + 96);
  v15[0] = *(v1 + 80);
  v15[1] = v7;
  type metadata accessor for MessagingSession(0, v15);
  swift_getWitnessTable();
  v8._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v4;
  v12._object = v6;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return v17;
}

uint64_t sub_10048F754(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = swift_allocObject();
  sub_10048F7D4(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_10048F7D4(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v89 = a3;
  v116 = a2;
  v105 = a1;
  v9 = *v5;
  v10 = type metadata accessor for Date();
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v88 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v12 - 8);
  v90 = v87 - v13;
  v117 = type metadata accessor for UUID();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v91 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v104);
  v103 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v102 = v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v19);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v6[5] = v20;
  v92 = qword_1016A1390;
  *(v6 + qword_1016A1390) = 0;
  v93 = qword_1016A1398;
  *(v6 + qword_1016A1398) = 0;
  v94 = qword_1016A13A0;
  *(v6 + qword_1016A13A0) = 0;
  v21 = (v6 + qword_1016A13A8);
  *v21 = 0;
  v21[1] = 0;
  v95 = v21;
  v22 = qword_1016A13B0;
  v23 = v9[11];
  v24 = v9[12];
  v25 = v9[13];
  v110 = v9[10];
  aBlock = v110;
  v119 = v23;
  v108 = v24;
  v120 = v24;
  v121 = v25;
  v26 = type metadata accessor for MessagingSession(255, &aBlock);
  v27 = sub_1001DCF6C();
  v114 = v26;
  v87[2] = type metadata accessor for PassthroughSubject();
  v28 = PassthroughSubject.__allocating_init()();
  v111 = v22;
  *(v6 + v22) = v28;
  v29 = qword_1016A13B8;
  v109 = v23;
  v107 = v25;
  type metadata accessor for SessionMessage(255, v23, v25, v30);
  v87[3] = v27;
  v87[1] = type metadata accessor for PassthroughSubject();
  v31 = PassthroughSubject.__allocating_init()();
  v106 = v29;
  *(v6 + v29) = v31;
  *(v6 + qword_1016A13C0) = 0;
  *(v6 + qword_1016A13C8) = 0;
  *(v6 + qword_1016A13D0) = 0;
  *(v6 + qword_1016A13E0) = 0;
  v32 = qword_1016A13E8;
  v122 = SharingCircleWildAdvertisementKey.init(key:);
  v123 = 0;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100006684;
  v121 = &unk_10161F3B8;
  _Block_copy(&aBlock);
  v124 = _swiftEmptyArrayStorage;
  sub_100495940(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  v98 = &protocol conformance descriptor for [A];
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  *(v6 + v32) = DispatchWorkItem.init(flags:block:)();
  *(v6 + qword_1016A13F0) = 0;
  static Date.distantPast.getter();
  *(v6 + qword_1016A1400) = 0;
  v97 = sub_1000BC488();
  aBlock = 0;
  v119 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  aBlock = 0xD00000000000002BLL;
  v119 = 0x8000000101356050;
  v33 = v116;
  v34 = *(v116 + 16);
  v35 = *(v116 + 24);

  v36._countAndFlagsBits = v34;
  v36._object = v35;
  String.append(_:)(v36);

  v96 = aBlock;
  (*(v100 + 104))(v99, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v101);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100495940(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, v98);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = v115;
  v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = v105;
  v6[6] = v38;
  v6[7] = v39;
  *(v6 + qword_1016A1388) = v33;
  v40 = v39;

  v41 = [v40 sessionID];
  if (!v41)
  {
    goto LABEL_4;
  }

  v42 = v41;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v90;
  UUID.init(uuidString:)();

  if ((*(v37 + 48))(v43, 1, v117) == 1)
  {
    sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
LABEL_4:
    aBlock = v110;
    v119 = v109;
    v120 = v108;
    v121 = v107;
    type metadata accessor for MessagingSession.MessagingSessionError(0, &aBlock);
    swift_getWitnessTable();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();

    v45 = 0;
    goto LABEL_5;
  }

  v47 = v91;
  v48 = v117;
  (*(v37 + 32))(v91, v43, v117);
  (*(v37 + 16))(v6 + qword_10177ADC0, v47, v48);
  v49 = [v40 destination];
  if (v49)
  {

    aBlock = *(v6 + v106);
    swift_getWitnessTable();
    *(v6 + qword_10177ADD0) = Publisher.eraseToAnyPublisher()();
    aBlock = *(v6 + v111);
    swift_getWitnessTable();
    *(v6 + qword_10177ADC8) = Publisher.eraseToAnyPublisher()();
    v50 = v88;
    static Date.trustedNow.getter(v88);
    (*(v112 + 32))(v6 + qword_1016A13D8, v50, v113);
    *(v6 + 2) = a4;
    *(v6 + 3) = a5;
    v6[4] = v89;
    v112 = type metadata accessor for Future();
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v53 = v109;
    v54 = v110;
    v52[2] = v110;
    v52[3] = v53;
    v56 = v107;
    v55 = v108;
    v52[4] = v108;
    v52[5] = v56;
    v52[6] = v51;

    v57 = Future.__allocating_init(_:)();
    *(v6 + qword_1016A13A0) = v57;
    v58 = v57;
    v113 = v57;

    aBlock = v58;
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = swift_allocObject();
    v60[2] = v54;
    v60[3] = v53;
    v60[4] = v55;
    v60[5] = v56;
    v60[6] = v59;
    v61 = swift_allocObject();
    swift_weakInit();

    v62 = swift_allocObject();
    v62[2] = v54;
    v62[3] = v53;
    v62[4] = v55;
    v62[5] = v56;
    v62[6] = v61;
    swift_getWitnessTable();
    v63 = Publisher.sink(receiveCompletion:receiveValue:)();

    *(v6 + qword_1016A13D0) = v63;

    v64 = type metadata accessor for MessagingSessionDelegateTrampoline();

    v66 = sub_1011E9B04(v65, v64, v114, &off_10161F058);
    v67 = qword_1016A1398;
    v68 = *(v6 + qword_1016A1398);
    *(v6 + qword_1016A1398) = v66;

    sub_1004914E0(0, 1);
    [v6[7] setDelegate:*(v6 + v67) queue:v6[6]];

    (*(v115 + 8))(v91, v117);
    return v6;
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_1000076D4(v69, qword_10177C4F0);
  v70 = v40;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v124 = v74;
    *v73 = 136315138;
    v75 = [v70 destination];
    if (v75)
    {
      v105 = v73;
      v76 = v72;
      v77 = v74;
      v78 = v70;
      v79 = v75;
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v70 = v78;
      v74 = v77;
      v72 = v76;
      v73 = v105;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    aBlock = v80;
    v119 = v82;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v83 = String.init<A>(describing:)();
    v85 = sub_1000136BC(v83, v84, &v124);

    *(v73 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v71, v72, "Invalid IDSSession, destination is [%s]", v73, 0xCu);
    sub_100007BAC(v74);

    v37 = v115;
  }

  else
  {
  }

  aBlock = v110;
  v119 = v109;
  v120 = v108;
  v121 = v107;
  type metadata accessor for MessagingSession.MessagingSessionError(0, &aBlock);
  swift_getWitnessTable();
  swift_allocError();
  *v86 = 0;
  swift_willThrow();

  (*(v37 + 8))(v91, v117);
  v45 = 1;
LABEL_5:

  if (v45)
  {
    (*(v37 + 8))(v6 + qword_10177ADC0, v117);
  }

  sub_1000BB27C(*v95, v95[1]);

  (*(v112 + 8))(v6 + qword_1016A13F8, v113);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_100490830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a1;
  v13[7] = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = swift_allocObject();
    *(v16 + 2) = a4;
    *(v16 + 3) = a5;
    *(v16 + 4) = a6;
    *(v16 + 5) = a7;
    *(v16 + 6) = sub_100495A74;
    *(v16 + 7) = v13;
    v17 = (v15 + qword_1016A13A8);
    v18 = *(v15 + qword_1016A13A8);
    v19 = *(v15 + qword_1016A13A8 + 8);
    *v17 = sub_100495AB4;
    v17[1] = v16;

    sub_1000BB27C(v18, v19);
  }

  else
  {
  }
}

uint64_t sub_100490950(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    PassthroughSubject.send(completion:)();
  }

  return result;
}

uint64_t sub_1004909D8(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100490A60()
{
  v1 = v0;
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C4F0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = sub_10048F5C4();
    v8 = v7;

    v9 = sub_1000136BC(v6, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v10 = *(v1 + qword_1016A1388);
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);

    v13 = sub_1000136BC(v11, v12, &v20);

    *(v5 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleted session: %{public}s service: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = qword_10177ADC0;
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);

  sub_1000BB27C(*(v1 + qword_1016A13A8), *(v1 + qword_1016A13A8 + 8));

  v16 = qword_1016A13D8;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 8);
  v18(v1 + v16, v17);

  v18(v1 + qword_1016A13F8, v17);
  return v1;
}

uint64_t sub_100490DC0()
{
  sub_100490A60();

  return swift_deallocClassInstance();
}

uint64_t sub_100490E30()
{
  sub_100492CDC();
  [*(v0 + 56) endSession];
  return sub_101044F9C(v0);
}

uint64_t sub_100490EBC(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A14E8, &qword_1013A5578);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - v5;
  v7 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = *(v1 + qword_1016A1390);
  if (v10)
  {
    v38 = v1;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();

    PropertyListEncoder.init()();
    sub_1000041A4(&qword_1016A14F8, &qword_1016A14C8, &qword_1013A5560, &protocol conformance descriptor for SessionMessage<A>);
    v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v13 = v12;

    v36 = v13;
    v37 = v10;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C4F0);
    sub_100495814(a1, v9);
    swift_retain_n();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v18 = 136446722;
      v19 = sub_10048F5C4();
      v21 = sub_1000136BC(v19, v20, &v39);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v22 = sub_10048EFC8();
      v24 = v23;
      sub_10000B3A8(v9, &qword_1016A14C8, &qword_1013A5560);
      v25 = sub_1000136BC(v22, v24, &v39);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2082;

      type metadata accessor for UUID();
      sub_100495940(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;

      v29 = sub_1000136BC(v26, v28, &v39);

      *(v18 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: Sending (Internal): %{public}s over session: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000B3A8(v9, &qword_1016A14C8, &qword_1013A5560);
    }

    v30 = v11;
    v31 = v36;
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v30;
    v33[4] = v31;
    sub_1000BC4D4(&qword_1016A1500, &unk_1013A5580);
    swift_allocObject();
    sub_100017D5C(v30, v31);
    v39 = Future.init(_:)();
    sub_1000041A4(qword_1016A1508, &qword_1016A1500, &unk_1013A5580, &protocol conformance descriptor for Future<A, B>);
    v14 = Publisher.eraseToAnyPublisher()();

    sub_100016590(v30, v31);
  }

  else
  {
    v39 = 4;
    sub_1001DCF6C();
    Fail.init(error:)();
    sub_1000041A4(&qword_1016A14F0, &qword_1016A14E8, &qword_1013A5578, &protocol conformance descriptor for Fail<A, B>);
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v4 + 8))(v6, v3);
  }

  return v14;
}

uint64_t sub_1004914E0(int a1, int a2)
{
  v29 = a1;
  v30 = a2;
  v3 = *v2;
  v4 = *v2;
  v5 = type metadata accessor for DispatchTime();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v26 = &v26 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = *(v3 + 80);
  *(v12 + 24) = *(v4 + 88);
  *(v12 + 40) = *(v3 + 104);
  *(v12 + 48) = v11;
  v38 = sub_100495990;
  v39 = v12;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100006684;
  v37 = &unk_10161F2A0;
  _Block_copy(&aBlock);
  v33 = _swiftEmptyArrayStorage;
  sub_100495940(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v13 = DispatchWorkItem.init(flags:block:)();

  v31 = v29;
  v32 = v2;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v13;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v30)
  {
    v16 = qword_101694728;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1016A1380;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1004959F0;
    *(v18 + 24) = v14;
    v19 = swift_allocObject();
    v20 = sub_10013A884;
    *(v19 + 16) = sub_10013A884;
    *(v19 + 24) = v18;
    v38 = sub_10040B9F8;
    v39 = v19;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10013FE14;
    v37 = &unk_10161F340;
    v21 = _Block_copy(&aBlock);

    dispatch_sync(v17, v21);
    _Block_release(v21);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
      return result;
    }

    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
  }

  else
  {

    sub_100491BB4(v2, v13);
    v20 = 0;
    v18 = 0;
  }

  if (p_weak_ivar_lyt[229] != -1)
  {
    swift_once();
  }

  static DispatchTime.now()();
  v23 = v26;
  + infix(_:_:)();
  v24 = v28;
  v25 = *(v27 + 8);
  v25(v8, v28);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v25(v23, v24);
  return sub_1000BB27C(v20, v18);
}

uint64_t sub_100491AA0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static Date.trustedNow.getter(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = qword_1016A13D8;
    swift_beginAccess();
    (*(v5 + 40))(a2 + v9, v8, v4);
    result = swift_endAccess();
    *(a2 + qword_1016A13E0) = 0;
  }

  return result;
}

uint64_t sub_100491BB4(uint64_t a1, uint64_t a2)
{
  v4 = qword_1016A13E8;

  dispatch thunk of DispatchWorkItem.cancel()();

  v5 = qword_1016A13F0;
  if (*(a1 + qword_1016A13F0))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(a1 + v5) = 0;

  *(a1 + v4) = a2;
}

uint64_t sub_100491C64()
{
  v1 = *v0;
  v2 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  sub_10048ED14(0, 1, 0, 0xE000000000000000, v8 - v3);
  v8[4] = sub_100490EBC(v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v1 + 80);
  *(v6 + 24) = *(v1 + 88);
  *(v6 + 40) = *(v1 + 104);
  *(v6 + 48) = v5;
  sub_1000BC4D4(&qword_1016A14D8, &unk_1013A5568);
  sub_1000041A4(&qword_1016A14E0, &qword_1016A14D8, &unk_1013A5568, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.oneshot(_:)();

  return sub_10000B3A8(v4, &qword_1016A14C8, &qword_1013A5560);
}

void sub_100491FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchTime();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v42 - v15;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v16);
  v17 = *a1;
  v18 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (v18)
    {
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_10177C4F0);

      sub_1004958D8(v17, 1);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v24 = 136446466;
        v25 = sub_10048F5C4();
        v27 = sub_1000136BC(v25, v26, &aBlock);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2082;
        v52 = v17;
        sub_1001DCF6C();
        v28 = Error.localizedDescription.getter();
        v30 = v29;
        sub_1004958F4(v17, 1);
        v31 = sub_1000136BC(v28, v30, &aBlock);

        *(v24 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s: Error sending .heartbeat: %{public}s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004958F4(v17, 1);
      }
    }

    else
    {
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      v33[2] = a3;
      v33[3] = a4;
      v33[4] = a5;
      v33[5] = a6;
      v33[6] = v32;
      v50 = sub_100495928;
      v51 = v33;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v42 = &v48;
      v48 = sub_100006684;
      v49 = &unk_10161F1D8;
      _Block_copy(&aBlock);
      v52 = _swiftEmptyArrayStorage;
      sub_100495940(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v34 = DispatchWorkItem.init(flags:block:)();

      if (qword_101694728 != -1)
      {
        swift_once();
      }

      v35 = qword_1016A1380;
      v36 = swift_allocObject();
      *(v36 + 16) = v20;
      *(v36 + 24) = v34;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_100495988;
      *(v37 + 24) = v36;
      v50 = sub_10040B9F8;
      v51 = v37;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10013FE14;
      v49 = &unk_10161F250;
      v38 = _Block_copy(&aBlock);

      dispatch_sync(v35, v38);
      _Block_release(v38);
      LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

      if (v38)
      {
        __break(1u);
      }

      else
      {
        static DispatchTime.now()();
        v39 = v43;
        + infix(_:_:)();
        v40 = v45;
        v41 = *(v44 + 8);
        v41(v14, v45);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v41(v39, v40);
      }
    }
  }
}

uint64_t sub_100492650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a6();
  }

  return result;
}

uint64_t sub_1004926B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v7);
  v8 = qword_1016A13F8;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  swift_endAccess();
  *(a1 + qword_1016A13F0) = a2;
}

uint64_t sub_1004927CC()
{
  v0 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  __chkstk_darwin(v0 - 8);
  v2 = v4 - v1;
  sub_10048ED14(1, 1, 0, 0xE000000000000000, v4 - v1);
  v4[4] = sub_100490EBC(v2);

  sub_1000BC4D4(&qword_1016A14D8, &unk_1013A5568);
  sub_1000041A4(&qword_1016A14E0, &qword_1016A14D8, &unk_1013A5568, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.oneshot(_:)();

  return sub_10000B3A8(v2, &qword_1016A14C8, &qword_1013A5560);
}

void sub_100492AC4(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C4F0);
    sub_1004958D8(v2, 1);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v6 = 136446466;
      v7 = sub_10048F5C4();
      v9 = sub_1000136BC(v7, v8, &v14);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      sub_1001DCF6C();
      v10 = Error.localizedDescription.getter();
      v12 = v11;
      sub_1004958F4(v2, 1);
      v13 = sub_1000136BC(v10, v12, &v14);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: Error sending .heartbeatReply: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004958F4(v2, 1);
    }
  }
}

uint64_t sub_100492CDC()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if ((v18 & 1) == 0)
  {
    v12 = dispatch_group_create();
    sub_10048ED14(2, 1, 0, 0xE000000000000000, v10);
    dispatch_group_enter(v12);
    v16 = sub_100490EBC(v10);
    v18 = v16;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v0;
    v17 = v12;

    sub_1000BC4D4(&qword_1016A14D8, &unk_1013A5568);
    sub_1000041A4(&qword_1016A14E0, &qword_1016A14D8, &unk_1013A5568, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.oneshot(_:)();

    static DispatchTime.now()();
    + infix(_:_:)();
    v14 = *(v2 + 8);
    v14(v5, v1);
    v15 = v17;
    OS_dispatch_group.wait(timeout:)();

    v14(v7, v1);
    return sub_10000B3A8(v10, &qword_1016A14C8, &qword_1013A5560);
  }

  return result;
}

void sub_100493144(uint64_t *a1, dispatch_group_t group, uint64_t a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C4F0);
    sub_1004958D8(v4, 1);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v8 = 136446466;
      v9 = sub_10048F5C4();
      v11 = sub_1000136BC(v9, v10, &v16);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      sub_1001DCF6C();
      v12 = Error.localizedDescription.getter();
      v14 = v13;
      sub_1004958F4(v4, 1);
      v15 = sub_1000136BC(v12, v14, &v16);

      *(v8 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: Error sending .shuttingDown: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004958F4(v4, 1);
    }
  }

  dispatch_group_leave(group);
}

uint64_t sub_100493344()
{
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C4F0);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19[0] = v4;
    *v3 = 136446210;
    v5 = sub_10048F5C4();
    v7 = sub_1000136BC(v5, v6, v19);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s: heartbeat timed out", v3, 0xCu);
    sub_100007BAC(v4);
  }

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if ((v19[0] & 1) == 0)
  {
    return sub_1004914E0(1, 0);
  }

  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = sub_10048F5C4();
    v13 = sub_1000136BC(v11, v12, v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v14 = sub_10048F5C4();
    v16 = v15;

    v17 = sub_1000136BC(v14, v16, v19);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: *** SESSION FAILED [%{public}s] ***", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_100490E30();
}

void sub_100493640(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C4F0);
  sub_100495814(a1, v6);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v10 = 136446722;
    v11 = sub_10048F5C4();
    v13 = sub_1000136BC(v11, v12, &v31);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v14 = sub_10048EFC8();
    v16 = v15;
    sub_10000B3A8(v6, &qword_1016A14C8, &qword_1013A5560);
    v17 = sub_1000136BC(v14, v16, &v31);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2082;

    type metadata accessor for UUID();
    sub_100495940(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;

    v21 = sub_1000136BC(v18, v20, &v31);

    *(v10 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: read internal message: %{public}s over session: %{public}s", v10, 0x20u);
    swift_arrayDestroy();

    v22 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1004927CC();
    return;
  }

  sub_10000B3A8(v6, &qword_1016A14C8, &qword_1013A5560);
  v22 = *a1;
  if (!*a1)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v22 != 1)
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136446210;
      v27 = sub_10048F5C4();
      v29 = sub_1000136BC(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s: received .shuttingDown message", v25, 0xCu);
      sub_100007BAC(v26);
    }

    [*(v2 + 56) endSession];
    sub_101044F9C(v2);
  }
}

uint64_t getEnumTagSinglePayload for HeartbeatConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeartbeatConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100493ABC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) sessionID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [*(a2 + 56) sessionID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v7)
    {
      if (v12)
      {
        if (v5 == v10 && v7 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_18;
    }
  }

  else if (v7)
  {
LABEL_13:
    v14 = 0;
LABEL_18:

    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

void sub_100493BCC(uint64_t a1)
{
  v2 = [*(v1 + 56) sessionID];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100493C6C()
{
  Hasher.init(_seed:)();
  sub_100493BCC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100493CF4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100493BCC(v2);
  return Hasher._finalize()();
}

void sub_100493D58()
{
  v1 = v0;
  v52 = *v0;
  v2 = sub_1000BC4D4(&qword_1016A1488, &qword_1013A5540);
  v53 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v47 - v3;
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C4F0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136446210;
    v10 = sub_10048F5C4();
    v12 = sub_1000136BC(v10, v11, &v55);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: sessionStarted", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v13 = *(v0 + qword_1016A13A8);
  if (v13)
  {
    v14 = *(v0 + qword_1016A13A8 + 8);
    v15 = v0[7];

    v16 = [v15 destination];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
      if (v18)
      {
        v28 = sub_101045440();

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        v51 = v29;
        if (os_log_type_enabled(v29, v30))
        {
          v32 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v57 = v50;
          *v32 = 136446466;
          v33 = sub_10048F5C4();
          v35 = sub_1000136BC(v33, v34, &v57);

          v49 = v32;
          *(v32 + 4) = v35;
          *(v32 + 12) = 2082;
          v55 = 60;
          v56 = 0xE100000000000000;
          v54 = v28;
          type metadata accessor for MessagingDatagramConnection();
          sub_100495940(&qword_1016A14A8, type metadata accessor for MessagingDatagramConnection, &unk_1013F3870);
          v48 = v30;

          v36._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v36);

          v37._countAndFlagsBits = 8250;
          v37._object = 0xE200000000000000;
          String.append(_:)(v37);
          v38._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v38);

          v39._countAndFlagsBits = 62;
          v39._object = 0xE100000000000000;
          String.append(_:)(v39);

          v40 = sub_1000136BC(v55, v56, &v57);

          v41 = v49;
          *(v49 + 14) = v40;
          v42 = v51;
          _os_log_impl(&_mh_execute_header, v51, v48, "%{public}s: Created %{public}s", v41, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        *(v1 + qword_1016A1390) = v28;

        v55 = v28[6];

        sub_1000BC4D4(&qword_1016A1490, &qword_1013A5548);
        sub_1000041A4(&qword_1016A1498, &qword_1016A1490, &qword_1013A5548, &protocol conformance descriptor for AnyPublisher<A, B>);
        Publisher.first(where:)();

        v43 = swift_allocObject();
        swift_weakInit();
        v44 = swift_allocObject();
        v45 = v52;
        *(v44 + 16) = *(v52 + 80);
        *(v44 + 24) = *(v45 + 88);
        *(v44 + 40) = *(v45 + 104);
        *(v44 + 48) = v43;
        *(v44 + 56) = v28;
        *(v44 + 64) = v13;
        *(v44 + 72) = v14;
        sub_100012908(v13, v14);
        sub_1000041A4(&qword_1016A14A0, &qword_1016A1488, &qword_1013A5540, &protocol conformance descriptor for Publishers.FirstWhere<A>);

        v46 = Publisher<>.sink(receiveValue:)();

        sub_1000BB27C(v13, v14);

        (v53[1].isa)(v4, v2);
        *(v1 + qword_1016A13C0) = v46;

        return;
      }
    }

    v53 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v53, v19, "Invalid destinationString!", v20, 2u);
    }

    sub_1000BB27C(v13, v14);
  }

  else
  {

    v53 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55 = v23;
      *v22 = 136446210;
      v24 = sub_10048F5C4();
      v26 = sub_1000136BC(v24, v25, &v55);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v53, v21, "%{public}s: sessionStarted called with no promise!", v22, 0xCu);
      sub_100007BAC(v23);

      return;
    }
  }

  v27 = v53;
}

uint64_t sub_1004946D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = a6;
    v16[3] = a7;
    v16[4] = a8;
    v16[5] = a9;
    v16[6] = v15;
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = a6;
    v18[3] = a7;
    v18[4] = a8;
    v18[5] = a9;
    v18[6] = v17;

    sub_1000BC4D4(&qword_1016A14B0, &qword_1013A5550);
    sub_1000041A4(&qword_1016A14B8, &qword_1016A14B0, &qword_1013A5550, &protocol conformance descriptor for AnyPublisher<A, B>);
    v19 = Publisher.sink(receiveCompletion:receiveValue:)();

    *(v14 + qword_1016A13C8) = v19;

    a4(v20, 0);

    *(v14 + qword_1016A13C0) = 0;
  }

  return result;
}

uint64_t sub_100494900(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    PassthroughSubject.send(completion:)();
    *(v3 + qword_1016A13C8) = 0;
  }

  return result;
}

uint64_t sub_100494990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v29[3] = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SessionMessage(255, a4, a6, v11);
  v13 = type metadata accessor for Optional();
  v29[6] = *(v13 - 8);
  v29[7] = v13;
  v14 = __chkstk_darwin(v13);
  v29[8] = v29 - v15;
  v29[10] = v12;
  v29[9] = *(v12 - 8);
  v16 = __chkstk_darwin(v14);
  v29[2] = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v29[4] = v29 - v19;
  __chkstk_darwin(v18);
  v29[5] = v29 - v20;
  v21 = sub_1000BC4D4(&qword_1016A14C0, &qword_1013A5558);
  __chkstk_darwin(v21 - 8);
  v23 = v29 - v22;
  v24 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v29 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29[0] = v9;
    v29[1] = v8;
    sub_1004914E0(0, 1);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000041A4(&qword_1016A14D0, &qword_1016A14C8, &qword_1013A5560, &protocol conformance descriptor for SessionMessage<A>);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    (*(v25 + 56))(v23, 0, 1, v24);
    sub_1004957A4(v23, v27);
    sub_100493640(v27);

    return sub_10000B3A8(v27, &qword_1016A14C8, &qword_1013A5560);
  }

  return result;
}

uint64_t sub_100495208(int isEscapingClosureAtFileLocation, void *a2)
{
  if (!a2)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C4F0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446466;
      v19 = sub_10048F5C4();
      v21 = sub_1000136BC(v19, v20, aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 1024;
      *(v17 + 14) = isEscapingClosureAtFileLocation;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: session ended with reason: %u", v17, 0x12u);
      sub_100007BAC(v18);
    }

    goto LABEL_11;
  }

  swift_errorRetain();
  if (qword_101695190 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C4F0);
    swift_errorRetain();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v7 = 136446722;
      v8 = sub_10048F5C4();
      v10 = sub_1000136BC(v8, v9, aBlock);

      *(v7 + 4) = v10;
      *(v7 + 12) = 1024;
      *(v7 + 14) = isEscapingClosureAtFileLocation;
      *(v7 + 18) = 2082;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_1000136BC(v11, v12, aBlock);

      *(v7 + 20) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: session ended with reason: %u error: %{public}s", v7, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

LABEL_11:
    if (qword_101694728 != -1)
    {
      swift_once();
    }

    v22 = qword_1016A1380;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100495740;
    *(v23 + 24) = v2;
    aBlock[4] = sub_1000D2FB0;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_10161F098;
    v24 = _Block_copy(aBlock);

    dispatch_sync(v22, v24);
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  return result;
}

uint64_t sub_100495664(uint64_t a1)
{

  dispatch thunk of DispatchWorkItem.cancel()();

  v2 = qword_1016A13F0;
  if (*(a1 + qword_1016A13F0))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(a1 + v2) = 0;

  *(a1 + qword_1016A13A0) = 0;

  v3 = (a1 + qword_1016A13A8);
  v4 = *(a1 + qword_1016A13A8);
  v5 = *(a1 + qword_1016A13A8 + 8);
  *v3 = 0;
  v3[1] = 0;

  return sub_1000BB27C(v4, v5);
}

uint64_t sub_1004957A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100495814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100495884(BOOL *a1@<X8>)
{
  v2 = *(v1 + qword_1016A13E0);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + qword_1016A13E0) = v4;
    *a1 = v4 >= *(v1 + 32);
  }
}

void sub_1004958B4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + qword_1016A1400);
  *(v1 + qword_1016A1400) = 1;
  *a1 = v2;
}

uint64_t sub_1004958D8(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_1004958E4(a1);
  }

  return a1;
}

unint64_t sub_1004958E4(unint64_t result)
{
  if (result >= 9)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1004958F4(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_100495900(a1);
  }

  return a1;
}

unint64_t sub_100495900(unint64_t result)
{
  if (result >= 9)
  {
  }

  return result;
}

uint64_t sub_100495940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100495A74(uint64_t a1, char a2)
{
  v3 = *(v2 + 48);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_100495AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100495B20(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100495B38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100495B8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100495BF8(void *a1)
{
  a1[1] = sub_100495C30();
  a1[2] = sub_100495C84();
  result = sub_100495CD8();
  a1[3] = result;
  return result;
}

unint64_t sub_100495C30()
{
  result = qword_1016A1590;
  if (!qword_1016A1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1590);
  }

  return result;
}

unint64_t sub_100495C84()
{
  result = qword_1016A1598;
  if (!qword_1016A1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1598);
  }

  return result;
}

unint64_t sub_100495CD8()
{
  result = qword_1016A15A0;
  if (!qword_1016A15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A15A0);
  }

  return result;
}

unint64_t sub_100495D74()
{
  result = qword_1016A15B8;
  if (!qword_1016A15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A15B8);
  }

  return result;
}

uint64_t sub_100495DF4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 72)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 72)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 72)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 72;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100495F0C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 113)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 113)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 113)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 113;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100496024@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 114)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 114)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 114)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 114;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10049613C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 89)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 89)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 89)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 89;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100496254@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 60)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 60)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 60)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 60;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10049636C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 85)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 85)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 85)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 85;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}