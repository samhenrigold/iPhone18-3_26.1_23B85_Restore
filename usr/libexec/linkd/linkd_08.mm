void sub_1000AE75C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v3 = [*(a1 + *(type metadata accessor for LNActionRecord(0) + 24)) parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1000232FC(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v9 = sub_1000237B0(v7);
    if (v10)
    {
      break;
    }

LABEL_13:
  }

  if (v9 != 0x746567726174 || v10 != 0xE600000000000000)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_17:

  v13 = [v8 valueType];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = &selRef_identifier;
LABEL_21:
    v16 = [v14 *v15];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 != v36 || v19 != v37)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = &selRef_enumerationIdentifier;
    goto LABEL_21;
  }

  v21 = [v8 valueType];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v35 = v21;
    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10014DD60;
    sub_100003D44(0, &unk_10019B460, LNEntityValueType_ptr);

    *(v24 + 32) = sub_1000AEC0C();
    sub_100003D44(0, &qword_10019AE40, LNLinkEnumerationValueType_ptr);

    *(v24 + 40) = sub_1000954A4();
    v25 = [v23 memberValueTypes];
    sub_100003D44(0, &unk_10019BBF0, LNValueType_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = sub_1000232FC(v26);
    v36 = v26 & 0xC000000000000001;
    v37 = v26;
    v28 = v24;

    v29 = 0;
    do
    {
      if (v27 == v29)
      {
        break;
      }

      if (v36)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v30 = *(v37 + 8 * v29 + 32);
      }

      v31 = v30;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_42;
      }

      v39 = v30;
      __chkstk_darwin(v30);
      v34[2] = &v39;
      v32 = v38;
      v33 = sub_100057384(sub_1000B6174, v34, v28);
      v38 = v32;

      ++v29;
    }

    while ((v33 & 1) == 0);

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }
}

id sub_1000AEC0C()
{
  sub_10000D34C();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10001A5F8();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithIdentifier:v2];

  return v3;
}

id sub_1000AEC90()
{
  sub_1000046A0();
  sub_100012B70(v4, v5, v6);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v1;
  v8 = sub_1000132DC();
  v9 = v2(v8);

  if (v1)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_10001A5F8();

      v10 = v9;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    sub_10001AAC8();
    Array._bridgeToObjectiveC()();
    sub_10000D34C();
  }

  sub_100017F88();

  return v11;
}

uint64_t sub_1000AEEA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for LNBundleRecord(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100109A8C(*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection), v7);
  if (!v2)
  {
    v11 = result;
    v12 = *(result + 16);
    if (v12)
    {
      v22[2] = 0;
      v23 = a2;
      v24 = _swiftEmptyArrayStorage;
      sub_100011438(0, v12, 0);
      v13 = v24;
      v14 = *(v6 + 80);
      v22[1] = v11;
      v15 = v11 + ((v14 + 32) & ~v14);
      v16 = *(v6 + 72);
      do
      {
        sub_10001E984();
        v17 = *v9;
        v18 = v9[1];

        sub_10001E9DC(v9, type metadata accessor for LNBundleRecord);
        v24 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_100011438(v19 > 1, v20 + 1, 1);
          v13 = v24;
        }

        v13[2] = v20 + 1;
        v21 = &v13[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        v15 += v16;
        --v12;
      }

      while (v12);

      a2 = v23;
    }

    else
    {

      v13 = _swiftEmptyArrayStorage;
    }

    *a2 = v13;
  }

  return result;
}

uint64_t sub_1000AF148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for LNBundleRecord(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100109A8C(*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection), v7);
  if (!v2)
  {
    v11 = result;
    v12 = *(result + 16);
    if (v12)
    {
      v24[1] = 0;
      v25 = a2;
      v27 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v13 = *(v6 + 80);
      v24[0] = v11;
      v14 = v11 + ((v13 + 32) & ~v13);
      v26 = *(v6 + 72);
      do
      {
        sub_10001E984();
        v15 = *v9;
        v16 = v9[1];
        v17 = (v9 + *(v5 + 24));
        v18 = v5;
        v19 = *v17;
        v20 = v17[1];
        v21 = objc_allocWithZone(LNRegisteredBundleMetadata);

        sub_1000098F0(v19, v20);
        v22 = v20;
        v5 = v18;
        sub_1000B2DC0(v15, v16, v19, v22);
        sub_10001E9DC(v9, type metadata accessor for LNBundleRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 += v26;
        --v12;
      }

      while (v12);

      v23 = v27;
      a2 = v25;
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
    }

    *a2 = v23;
  }

  return result;
}

uint64_t sub_1000AF434@<X0>(uint64_t *a2@<X8>)
{
  if (qword_100198490 != -1)
  {
    swift_once();
  }

  memcpy(v13, &unk_10019C710, sizeof(v13));
  v12[3] = &type metadata for Table;
  v12[4] = &protocol witness table for Table;
  v12[0] = swift_allocObject();
  memcpy((v12[0] + 16), &unk_10019C710, 0xB0uLL);
  sub_1000196B0(v13, &v11);
  Connection.prepareRowIterator(_:)(v12);
  result = sub_1000034F8(v12);
  if (!v2)
  {
    __chkstk_darwin(result);

    RowIterator.compactMap<A>(_:)();
    v6 = v5;

    KeyPath = swift_getKeyPath();
    v8 = swift_getKeyPath();
    v9 = swift_getKeyPath();
    v10 = sub_1000A14E0(KeyPath, v8, v9, v6);

    *a2 = v10;
  }

  return result;
}

void sub_1000AF694(void *a6@<X8>)
{
  sub_100115E08();
  if (!v6)
  {
    v9 = v8;
    v10 = *(v8 + 16);
    if (v10)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v11 = 48;
      do
      {
        v12 = *(v9 + v11);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 += 24;
        --v10;
      }

      while (v10);
    }

    *a6 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000AF8D0@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{

  sub_100116D80();
  if (v6)
  {
  }

  if (!v12)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    sub_10002EB80(&qword_10019B0D0, &unk_100150350);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v20;
    _StringGuts.grow(_:)(44);

    v21._countAndFlagsBits = a4;
    v21._object = a5;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0x646E7562206E6920;
    v22._object = 0xEC000000203A656CLL;
    String.append(_:)(v22);
    v23._countAndFlagsBits = a2;
    v23._object = a3;
    String.append(_:)(v23);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x8000000100156780;
    v24 = Dictionary.init(dictionaryLiteral:)();
    v25 = objc_allocWithZone(NSError);
    sub_1000B2C68(v16, v18, 9004, v24);
    swift_willThrow();
  }

  v15 = v13;

  *a6 = v15;
}

id sub_1000AFAE4()
{
  sub_1000046A0();
  sub_100012B70(v4, v5, v6);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v1;
  v8 = sub_1000132DC();
  v2(v8);

  if (v1)
  {
    if (v0)
    {
      v9 = _convertErrorToNSError(_:)();

      v10 = v9;
      *v0 = v9;
    }

    else
    {
    }
  }

  sub_100017F88();

  return v11;
}

uint64_t sub_1000AFCC4@<X0>(uint64_t *a2@<X8>)
{
  if (qword_100198470 != -1)
  {
    swift_once();
  }

  memcpy(v13, &unk_10019C610, sizeof(v13));
  v12[3] = &type metadata for Table;
  v12[4] = &protocol witness table for Table;
  v12[0] = swift_allocObject();
  memcpy((v12[0] + 16), &unk_10019C610, 0xB0uLL);
  sub_1000196B0(v13, &v11);
  Connection.prepareRowIterator(_:)(v12);
  result = sub_1000034F8(v12);
  if (!v2)
  {
    __chkstk_darwin(result);

    RowIterator.compactMap<A>(_:)();
    v6 = v5;

    KeyPath = swift_getKeyPath();
    v8 = swift_getKeyPath();
    v9 = swift_getKeyPath();
    v10 = sub_1000A1858(KeyPath, v8, v9, v6);

    *a2 = v10;
  }

  return result;
}

id sub_1000AFF4C()
{
  sub_1000046A0();
  v9 = sub_10001D9E4(v6, v7, v8);
  v10 = v1;
  v11 = sub_1000B6438();
  v12 = v4(v11);

  if (v9)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_10001A5F8();

      v13 = v12;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, v3, v2);
    sub_10001AAC8();
    Array._bridgeToObjectiveC()();
    sub_10000D34C();
  }

  sub_100017F88();

  return v14;
}

id sub_1000B0038()
{
  sub_1000046A0();
  v1 = v0;
  v3 = v2;
  v1();

  v4 = sub_10001209C();
  sub_10002EB80(v4, v5);
  Dictionary._bridgeToObjectiveC()();
  sub_10000D34C();

  sub_100017F88();

  return v6;
}

uint64_t sub_1000B010C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  if (qword_100198450 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019C518, sizeof(__dst));
  if (qword_100198458 != -1)
  {
    swift_once();
  }

  __src[0] = a2;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  memcpy(v24, __dst, sizeof(v24));
  QueryType.filter(_:)(v9, v11, v13, &type metadata for Table, &protocol witness table for Table, v14, v15, v16, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v24[19], v24[20], v24[21], __src[0], a3, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v27, __src, sizeof(v27));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v27, 0xB0uLL);
  v17 = sub_100111F6C(__src, v8);
  result = sub_1000034F8(__src);
  if (!v4)
  {
    v19 = *(v17 + 16);
    if (v19)
    {
      __src[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v20 = 48;
      do
      {
        v21 = *(v17 + v20);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += 24;
        --v19;
      }

      while (v19);

      v22 = __src[0];
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
    }

    *a4 = v22;
  }

  return result;
}

uint64_t sub_1000B0390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);

  sub_10011159C();
  if (v6)
  {
  }

  v17 = v14;
  v18 = v15;
  v42 = a2;
  v43 = a6;
  if (v14)
  {
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v15;
  }

  else
  {
    v41 = v13;
    v23 = a3;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v27 = sub_100111820(v42, v24, a4, a5, v12);
    v20 = v29;
    if (!v29)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
      sub_10002EB80(&qword_10019B0D0, &unk_100150350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE90;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v35;
      _StringGuts.grow(_:)(45);

      v36._countAndFlagsBits = v25;
      v36._object = v26;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 0x646E7562206E6920;
      v37._object = 0xEC000000203A656CLL;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v42;
      v38._object = v23;
      String.append(_:)(v38);
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = 0xD00000000000001DLL;
      *(inited + 56) = 0x8000000100156760;
      v39 = Dictionary.init(dictionaryLiteral:)();
      v40 = objc_allocWithZone(NSError);
      sub_1000B2C68(v31, v33, 9004, v39);
      swift_willThrow();
    }

    v19 = v27;
    v30 = v28;

    v21 = v30;
    v22 = v30;
    v13 = v41;
  }

  sub_1000B6194(v13, v17, v18);
  sub_1000B61D8(v19, v20, v21);

  *v43 = v22;
  return result;
}

id sub_1000B0654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a1;
  a5(v7, v9);

  Array._bridgeToObjectiveC()();
  sub_10000D34C();

  return 0;
}

void sub_1000B0748(void *a2@<X3>, void *a3@<X8>)
{
  v6 = sub_10002EB80(&qword_10019BB70, &qword_10014F850);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_100109F48();
  if (!v3)
  {
    v9 = type metadata accessor for LNBundleRecord(0);
    if (sub_1000032C4(v8, 1, v9) == 1)
    {
      sub_1000B6240(v8, &qword_10019BB70);
      if (a2)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
        v13 = objc_allocWithZone(NSError);
        v14 = sub_1000B2C68(v10, v12, 9004, 0);
        v15 = 0;
        *a2 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = *&v8[*(v9 + 32)];
      sub_10001E9DC(v8, type metadata accessor for LNBundleRecord);
    }

    *a3 = v15;
  }
}

uint64_t sub_1000B0C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_10002D41C(a2, *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection));
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = result;
    if (qword_1001982F8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000347C(v7, qword_10019E020);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v50 = a3;
    v51 = isUniquelyReferenced_nonNull_native;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v54 = v11;
      *v10 = 134218242;
      *(v10 + 4) = *(isUniquelyReferenced_nonNull_native + 16);

      *(v10 + 12) = 2080;
      v12 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v12)
      {
        v48 = v11;
        v49 = v9;
        v52 = v8;
        sub_100011438(0, v12, 0);
        v13 = (isUniquelyReferenced_nonNull_native + 40);
        do
        {
          v14 = *v13;
          v15 = *(v13 - 1);
          v16 = v14;
          v17 = [v16 phrase];
          v18 = [v17 key];

          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v23 = _swiftEmptyArrayStorage[2];
          v22 = _swiftEmptyArrayStorage[3];
          if (v23 >= v22 >> 1)
          {
            sub_100011438(v22 > 1, v23 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v23 + 1;
          v24 = &_swiftEmptyArrayStorage[2 * v23];
          v24[4] = v19;
          v24[5] = v21;
          v13 += 2;
          --v12;
        }

        while (v12);
        isUniquelyReferenced_nonNull_native = v51;
        v8 = v52;
        v9 = v49;
        v11 = v48;
      }

      v25 = Array.description.getter();
      v27 = v26;

      a3 = sub_100004C50(v25, v27, &v54);

      *(v10 + 14) = a3;
      _os_log_impl(&_mh_execute_header, v8, v9, "retrieved - suggestionPhrases - count - %ld with template keys - %s", v10, 0x16u);
      sub_1000034F8(v11);
    }

    else
    {
    }

    v28 = 0;
    v29 = _swiftEmptyDictionarySingleton;
    v53 = *(isUniquelyReferenced_nonNull_native + 16);
    for (i = (isUniquelyReferenced_nonNull_native + 40); ; i += 2)
    {
      if (v53 == v28)
      {

        *v50 = v29;
        return result;
      }

      if (v28 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v31 = *i;
      a3 = *(i - 1);
      v32 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v29;
      sub_100045BCC();
      v35 = v29[2];
      v36 = (v34 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_29;
      }

      v38 = v33;
      v39 = v34;
      sub_10002EB80(&unk_10019B470, &unk_100150628);
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v37))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = sub_100003D44(0, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
      v29 = v54;
      sub_100045BCC();
      if ((v39 & 1) != (v41 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v38 = v40;
      if ((v39 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_23:
      v46 = (v29[7] + 8 * v38);
      v47 = v32;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v28;
      isUniquelyReferenced_nonNull_native = v51;
    }

    v29 = v54;
    if (v39)
    {
      goto LABEL_23;
    }

LABEL_21:
    v29[(v38 >> 6) + 8] |= 1 << v38;
    *(v29[6] + 8 * v38) = a3;
    *(v29[7] + 8 * v38) = _swiftEmptyArrayStorage;
    v42 = v29[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_30;
    }

    v29[2] = v44;
    v45 = a3;
    goto LABEL_23;
  }

  return result;
}

id _LNMetadataProviderDirect.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1000B129C(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 72;
  v3 = *(a1 + 16);
  v25 = a1 + 72;
  while (2)
  {
    for (i = (v2 + 48 * v1); ; i += 6)
    {
      if (v3 == v1)
      {
        return _swiftEmptyDictionarySingleton;
      }

      if (v1 >= v3)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (__OFADD__(v1, 1))
      {
        goto LABEL_19;
      }

      v26 = v1 + 1;
      v6 = *(i - 1);
      v5 = *i;

      v7 = String._bridgeToObjectiveC()();
      v8 = [objc_opt_self() protocolOrNilWithIdentifier:v7];

      if (v8)
      {
        break;
      }

      ++v1;
    }

    isUnique = swift_isUniquelyReferenced_nonNull_native();
    sub_100045C10();
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v10 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

    v14 = v9;
    v15 = v10;
    sub_10002EB80(&qword_10019B4D8, &unk_1001507D0);
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v13))
    {
      goto LABEL_12;
    }

    sub_100045C10();
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
LABEL_12:
      if (v15)
      {
        v18 = (_swiftEmptyDictionarySingleton[7] + 16 * v14);
        *v18 = v6;
        v18[1] = v5;

LABEL_16:
        v2 = v25;
        v1 = v26;
        continue;
      }

      _swiftEmptyDictionarySingleton[(v14 >> 6) + 8] |= 1 << v14;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v14) = v8;
      v19 = (_swiftEmptyDictionarySingleton[7] + 16 * v14);
      *v19 = v6;
      v19[1] = v5;

      v20 = _swiftEmptyDictionarySingleton[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (!v21)
      {
        _swiftEmptyDictionarySingleton[2] = v22;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    break;
  }

  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000B1500(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (**a6)(void, void, void))
{
  v15 = 0;
  v16 = 0;
  v11 = a5;

  sub_1000A5ACC(v11, v11, a1, a2, &v16, &v15, a3, a4);
  v12 = v15;
  if (v16)
  {
    sub_100003D44(0, &unk_10019B290, LNAutoShortcut_ptr);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (v12)
    {
LABEL_3:
      v14 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v13.super.isa = 0;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  (a6)[2](a6, v13.super.isa, v14);

  _Block_release(a6);
}

uint64_t _LNMetadataProviderDirect.autoShortcuts(forBundleIdentifier:localeIdentifier:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = v5;

  v12 = sub_1000186AC();
  v16 = sub_1000A5ACC(v12, v13, a1, a2, v14, v15, a3, a4);
  v24 = sub_1000B6570(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, 0, 0);
  a5(v24);
}

void sub_1000B17BC(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v11 = 0;
  v12 = 0;
  v7 = a3;

  sub_1000A649C(v7, v7, a1, a2, &v11, &v12);
  v8 = v11;
  if (v12)
  {
    sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (v8)
    {
LABEL_3:
      v10 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v9.super.isa = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  (a4)[2](a4, v9.super.isa, v10);

  _Block_release(a4);
}

uint64_t _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = v3;
  sub_10001A5F8();

  v8 = sub_1000186AC();
  sub_1000A649C(v8, v9, a1, a2, v10, v11);
  v20 = sub_1000B6570(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, 0, 0);
  a3(v20);
}

void *sub_1000B1990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10004C5A8();
  if (v5)
  {

LABEL_3:
    v9 = type metadata accessor for MetadataError();
    sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, enum case for MetadataError.cacheLookupFailed(_:), v9);
    *a4 = v10;
  }

  v13 = v8;
  if (!v8)
  {
    goto LABEL_3;
  }

  v34 = a5;
  sub_10002EB80(&qword_10019B420, &qword_1001505F8);
  result = static _DictionaryStorage.copy(original:)();
  v14 = 0;
  v15 = v13 + 64;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;
  v35 = result + 8;
  v36 = result;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_14:
      v23 = v20 | (v14 << 6);
      v24 = v13;
      v25 = (*(v13 + 48) + 16 * v23);
      v26 = v25[1];
      v37 = *v25;
      v27 = *(*(v13 + 56) + 8 * v23);

      v28 = sub_10006AF24(1000, v27);

      result = v36;
      *(v35 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v29 = (v36[6] + 16 * v23);
      *v29 = v37;
      v29[1] = v26;
      *(v36[7] + 8 * v23) = v28;
      v30 = v36[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v36[2] = v32;
      v13 = v24;
      if (!v18)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        v33 = result;

        *v34 = v33;
      }

      v22 = *(v15 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

void *sub_1000B1CF8@<X0>(uint64_t *a1@<X8>)
{
  sub_10004C5A8();
  if (v1)
  {

LABEL_3:
    v4 = type metadata accessor for MetadataError();
    sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for MetadataError.cacheLookupFailed(_:), v4);
    return swift_willThrow();
  }

  v7 = v3;
  if (!v3)
  {
    goto LABEL_3;
  }

  v28 = a1;
  sub_10002EB80(&qword_10019B420, &qword_1001505F8);
  result = static _DictionaryStorage.copy(original:)();
  v8 = 0;
  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v29 = result + 8;
  v30 = result;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v7;
      v19 = (*(v7 + 48) + 16 * v17);
      v20 = v19[1];
      v31 = *v19;
      v21 = *(*(v7 + 56) + 8 * v17);

      v22 = sub_10006AF24(1000, v21);

      result = v30;
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = (v30[6] + 16 * v17);
      *v23 = v31;
      v23[1] = v20;
      *(v30[7] + 8 * v17) = v22;
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v30[2] = v26;
      v7 = v18;
      if (!v12)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        v27 = result;

        *v28 = v27;
        return result;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void _LNMetadataProviderDirect.properties(forIdentifiers:)()
{
  v1 = v0;
  sub_1000B6398();
  sub_10000C900();
  sub_1000AB0B4();
}

uint64_t sub_1000B20CC@<X0>(void *a1@<X8>)
{
  v56 = a1;
  v1 = type metadata accessor for UUID();
  v50 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LNAppShortcutParameterRecord(0);
  __chkstk_darwin(v4);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002EB80(&qword_10019B410, &unk_10014E360);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v49 - v12;
  v14 = v65;
  sub_10006821C();
  if (v14)
  {

    v16 = type metadata accessor for MetadataError();
    sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for MetadataError.cacheLookupFailed(_:), v16);
    return swift_willThrow();
  }

  else
  {
    v55 = v1;
    v64 = v8;
    v65 = v13;
    v59 = v10;
    v63 = *(v15 + 16);
    if (v63)
    {
      v54 = v3;
      v49[1] = 0;
      v19 = 0;
      v62 = v15 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v58 = (v50 + 16);
      v20 = _swiftEmptyDictionarySingleton;
      v21 = &unk_10014E360;
      v51 = v4;
      v52 = (v50 + 8);
      v22 = v59;
      v23 = v56;
      v53 = v6;
      v61 = v15;
      while (v19 < *(v15 + 16))
      {
        v24 = v65;
        sub_100009F38();
        sub_100009F38();
        if (sub_1000032C4(v22, 1, v4) == 1)
        {
          sub_1000B6240(v24, &qword_10019B410);
          sub_1000B6240(v22, &qword_10019B410);
        }

        else
        {
          v25 = v21;
          sub_1000B5FF4();
          v26 = v54;
          v27 = v55;
          v57 = *v58;
          v57(v54, v6);
          v60 = *&v6[*(v4 + 36)];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v20;
          v29 = v26;
          sub_100045A18();
          v32 = v20[2];
          v33 = (v31 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_24;
          }

          v35 = v30;
          v36 = v31;
          sub_10002EB80(&qword_10019B418, &qword_1001505F0);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
          {
            v37 = v29;
            sub_100045A18();
            v40 = v27;
            if ((v36 & 1) != (v39 & 1))
            {
              goto LABEL_26;
            }

            v35 = v38;
          }

          else
          {
            v40 = v27;
            v37 = v29;
          }

          v22 = v59;
          v21 = v25;
          v20 = v66;
          if (v36)
          {
            v41 = v66[7];
            v42 = *(v41 + 8 * v35);
            *(v41 + 8 * v35) = v60;
            v43 = v40;

            (*v52)(v37, v43);
            v6 = v53;
            sub_10001E9DC(v53, type metadata accessor for LNAppShortcutParameterRecord);
            sub_1000B6240(v65, &qword_10019B410);
          }

          else
          {
            v66[(v35 >> 6) + 8] |= 1 << v35;
            v44 = v50;
            v45 = v40;
            (v57)(v20[6] + *(v50 + 72) * v35, v37, v40);
            *(v20[7] + 8 * v35) = v60;
            (*(v44 + 8))(v37, v45);
            v6 = v53;
            sub_10001E9DC(v53, type metadata accessor for LNAppShortcutParameterRecord);
            sub_1000B6240(v65, &qword_10019B410);
            v46 = v20[2];
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              goto LABEL_25;
            }

            v20[2] = v48;
            v22 = v59;
          }

          v23 = v56;
          v4 = v51;
        }

        v15 = v61;
        if (v63 == ++v19)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {

      v20 = _swiftEmptyDictionarySingleton;
      v23 = v56;
LABEL_21:
      *v23 = v20;
    }
  }

  return result;
}

uint64_t sub_1000B2828()
{
  v1 = type metadata accessor for MetadataError();
  sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
  sub_10001AAC8();
  v2 = swift_allocError();
  v4 = sub_100013DA0(v2, v3);
  (*(*(v1 - 8) + 104))(v4, enum case for MetadataError.recordNotFound(_:), v1);
  swift_willThrow();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000B29A8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000B2A60;

  return _LNMetadataProviderDirect.diagnoseBundleIdentifier(_:)();
}

uint64_t sub_1000B2A60()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = 0;
    v8 = v6;
  }

  else
  {
    v7 = String._bridgeToObjectiveC()();

    v6 = 0;
    v8 = v7;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v5 + 8);

  return v10();
}

void sub_1000B2C10(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1000B2C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_1000B2D18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_10019B408, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:isa];

  return v7;
}

id sub_1000B2DC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v4 initWithBundleIdentifier:v7 installIdentifier:isa];

  sub_100009B18(a3, a4);
  return v9;
}

id sub_1000B2E4C()
{
  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  sub_100084294(&qword_10019ABB0, &qword_100199040, LNSystemProtocol_ptr);
  v2 = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithActions:isa systemProtocolDefaults:v2];

  return v3;
}

Swift::Int sub_1000B2F4C(uint64_t a1, uint64_t a2)
{
  sub_100013DA0(a1, a2);
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v5 = Hasher._finalize()();
  sub_100009B18(v2, v4);
  return v5;
}

Swift::Int sub_1000B2FC0(uint64_t a1, uint64_t a2)
{
  sub_100013DA0(a1, a2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000B3030()
{
  swift_arrayDestroy();
  v0 = sub_10000EEA4();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_1000B306C()
{
  sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  swift_arrayDestroy();
  v0 = sub_10000EEA4();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_1000B30FC()
{
  swift_arrayDestroy();
  v0 = sub_10000EEA4();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_1000B3138()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0);
}

void *sub_1000B3180(uint64_t a1, uint64_t a2)
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

  sub_10002EB80(&qword_10019B398, &qword_1001505A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 48);
  return v4;
}

void *sub_1000B3278(uint64_t a1, uint64_t a2)
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

  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v4 = sub_10001A85C();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1000B333C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002EB80(a3, a4);
  v10 = sub_10002EB80(a5, a6);
  sub_10000D33C(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = j__malloc_size(v15);
  if (v12)
  {
    if ((result - v14) != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1000B34AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B39B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3518(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B3AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3538(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B3BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3558(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B3DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000B3578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1000B6380();
  sub_1000B3F1C();
  *v7 = v8;
}

char *sub_1000B35B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B40C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B362C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B41E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B36E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3704(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3724(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000B3744(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3764(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4A14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3784(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4B0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B37A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B37C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B392C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4FE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000B394C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B50F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B39B8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A380, &qword_1001507E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_100071698((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&unk_10019B4F0, &qword_10014F268);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B3AD0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B3D0, &qword_1001505D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10002CCB8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B3D8, &qword_1001505D8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B3BE8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&unk_10019B220, &unk_100150460);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_100071698((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019A470, &qword_10014F1B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000B3D00(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (sub_1000079A4(), v7 == v8))
  {
LABEL_6:
    sub_100006778();
    if (v4)
    {
      sub_10002EB80(&qword_10019A4E8, &qword_10014F228);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      sub_1000B6550(v10);
      if (a1)
      {
LABEL_8:
        v11 = sub_1000B6410();
        sub_10000E2B8(v11, v12, v13);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    v14 = sub_10002EB80(&unk_10019B370, &unk_100150580);
    sub_1000B6498(v14, v15, v16, v14);
    goto LABEL_11;
  }

  sub_100006A88();
  if (!v7)
  {
    sub_100007164();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1000B3DDC(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_100199EC0, &unk_10014ECF0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_100071024((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&unk_10019B380, &unk_100150590);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000B3F1C()
{
  sub_10001A7C4();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_1000079A4();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_10002EB80(v4, v5);
      v12 = sub_10001A85C();
      v13 = j__malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_100020880();
    goto LABEL_15;
  }

  sub_100006A88();
  if (!v8)
  {
    sub_100007164();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000B3FEC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (sub_1000079A4(), v7 == v8))
  {
LABEL_6:
    sub_100006778();
    if (v4)
    {
      sub_10002EB80(&qword_10019B398, &qword_1001505A8);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      sub_1000B6550(v10);
      if (a1)
      {
LABEL_8:
        v11 = sub_1000B6410();
        sub_10007105C(v11, v12, v13);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    v14 = sub_10002EB80(&unk_10019B3A0, &qword_1001505B0);
    sub_1000B6498(v14, v15, v16, v14);
    goto LABEL_11;
  }

  sub_100006A88();
  if (!v7)
  {
    sub_100007164();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1000B40C8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&unk_10019B450, &unk_10014ED30);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10000E2B8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B41E0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B248, &qword_100150488);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10000E2B8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B42E8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B258, &qword_100150498);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10007169C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B260, &qword_1001504A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4400(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B268, &qword_1001504A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10007169C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B270, &qword_1001504B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4518(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B358, &qword_100150568);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10007169C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&unk_10019B360, &unk_100150570);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4630(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&unk_10019B300, &unk_100150520);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100071004((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019A4C8, &qword_10014F208);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4740(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A4D8, &qword_10014F218);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 104);
      if (v5)
      {
LABEL_13:
        sub_1000710D4((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000B4848(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_10002EB80(&unk_10019B310, &unk_100150530);
  v10 = *(sub_10002EB80(&qword_100199C70, &unk_10014EE60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10002EB80(&qword_100199C70, &unk_10014EE60) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1000710FC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000B4A14(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A4A0, &qword_10014F1E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10002CD38((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4B0C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B2F0, &unk_100150510);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10002CD38((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B2F8, &qword_1001508A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4C1C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A4F8, &unk_100150170);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_10007109C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4D1C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A4F0, &unk_100150160);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10000E2B8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B390, &qword_1001505A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000B4E34(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_1000079A4();
    if (v13 != v14)
    {
      sub_100006A88();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10002EB80(a5, a6);
  v17 = a7(0);
  sub_10000D33C(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (a1)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    a8(a4 + v26, v15, v22 + v26);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1000B4FE0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A478, &qword_10014F1C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_100071698((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B200, &qword_100150440);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000B50F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_10002EB80(&unk_10019B210, &unk_100150450);
  v10 = *(sub_10002EB80(&qword_10019A480, &qword_100150FE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10002EB80(&qword_10019A480, &qword_100150FE0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10007114C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1000B52C4()
{
  sub_10001A7C4();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_1000079A4();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_10002EB80(v4, v5);
      v12 = swift_allocObject();
      v13 = j__malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 24);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_100020880();
    goto LABEL_15;
  }

  sub_100006A88();
  if (!v8)
  {
    sub_100007164();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000B53A4(uint64_t a1)
{
  if (*(a1 + 16) && (sub_10002EB80(&unk_10019BB30, &unk_10014DFA0), sub_10001AAC8(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = (a1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._finalize()();
      sub_1000B6400();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v22;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_1000B5528(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_10002EB80(&unk_10019B1F0, &unk_100150430), sub_10001AAC8(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v25 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v23 = v1;
    v24 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v24 + 8 * v4++);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v26 = v6;
      String.hash(into:)();
      v7 = Hasher._finalize()();

      sub_1000B6400();
      v9 = ~v8;
      while (1)
      {
        v10 = v7 & v9;
        v11 = (v7 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v7 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
        {

          goto LABEL_17;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {

          goto LABEL_17;
        }

        v7 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v22;
LABEL_17:
      v1 = v23;
      if (v4 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

Swift::Int sub_1000B5720(uint64_t a1)
{
  v1 = a1;
  if (sub_1000232F4(a1))
  {
    sub_10002EB80(&unk_100199360, &qword_100150620);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v20 = sub_1000232FC(v1);
  if (v20)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_10003818C(v3, v19 == 0, v1);
      result = v19 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
        v13 = *(v2[6] + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

void sub_1000B5980()
{
  sub_100012650();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    sub_10000E1A0(v8);
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_100012868();
    v11 = (v10 - v3) >> 6;
    while (v9 < v7)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v4)
      {
        while (1)
        {
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v4 = *(v2 + 8 * v13);
          ++v8;
          if (v4)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v8;
LABEL_12:
      sub_100006A34();
      v15 = v14 | (v13 << 6);
      v16 = *(v0 + 48) + 32 * v15;
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = *(*(v0 + 56) + 16 * v15);
      *v1 = *v16;
      *(v1 + 16) = v18;
      *(v1 + 24) = v17;
      *(v1 + 32) = v19;
      if (v12 == v7)
      {

        v8 = v13;
        goto LABEL_17;
      }

      v1 += 48;

      v9 = v12;
      v8 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1000B5A94(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000B5BF0()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000B5CA0;
  v5 = sub_1000B63E4();

  return v6(v5, v2, v3);
}

uint64_t sub_1000B5CA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000B5D94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10001AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000B5DF0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr);
    sub_100084294(&qword_10019B340, &unk_100198C10, LNAppNotificationEvent_ptr);
    Set.Iterator.init(_cocoa:)();
    v4 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
    v11 = v29;
  }

  else
  {
    v10 = 0;
    sub_1000B6400();
    v8 = v4 + 56;
    v9 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(v12 << v14);
    }

    else
    {
      v15 = v12;
    }

    v11 = v15 & *(v4 + 56);
  }

  v23 = a1;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v22 = v9;
      v17 = (v9 + 64) >> 6;
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v4 < 0)
        {
          if (!__CocoaSet.Iterator.next()() || (sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr), swift_dynamicCast(), (v21 = v24) == 0))
          {
LABEL_26:
            v9 = v22;
            goto LABEL_27;
          }
        }

        else
        {
          if (!v11)
          {
            while (1)
            {
              v19 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                break;
              }

              if (v19 >= v17)
              {
                v11 = 0;
                goto LABEL_26;
              }

              v11 = *(v8 + 8 * v19);
              ++v10;
              if (v11)
              {
                v10 = v19;
                goto LABEL_18;
              }
            }

            __break(1u);
            break;
          }

LABEL_18:
          sub_100023340();
          v21 = *(*(v4 + 48) + ((v10 << 9) | (8 * v20)));
          if (!v21)
          {
            goto LABEL_26;
          }
        }

        *a2++ = v21;
        ++v16;
        if (v18 == a3)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    *v23 = v4;
    v23[1] = v8;
    v23[2] = v9;
    v23[3] = v10;
    v23[4] = v11;
  }
}

uint64_t sub_1000B5FF4()
{
  sub_1000046C8();
  v1(0);
  sub_10000482C();
  v2 = sub_1000077D8();
  v3(v2);
  return v0;
}

void sub_1000B604C()
{
  sub_100012650();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    sub_10000E1A0(v8);
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_100012868();
    v11 = (v10 - v3) >> 6;
    while (v9 < v7)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v4)
      {
        while (1)
        {
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v4 = *(v2 + 8 * v13);
          ++v8;
          if (v4)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v8;
LABEL_12:
      sub_100006A34();
      v15 = *(*(v0 + 56) + ((v13 << 9) | (8 * v14)));
      *v1 = v15;
      if (v12 == v7)
      {
        v17 = v15;
        v8 = v13;
        goto LABEL_17;
      }

      ++v1;
      v16 = v15;
      v9 = v12;
      v8 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1000B6194(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void sub_1000B61D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1000B6240(uint64_t a1, uint64_t a2)
{
  v3 = sub_100013DA0(a1, a2);
  sub_10002EB80(v3, v4);
  sub_10000482C();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_1000B6294(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000B6340(uint64_t a1, uint64_t a2)
{

  return sub_1000B2C68(a1, a2, 9006, 0);
}

double sub_1000B6398()
{

  return result;
}

uint64_t sub_1000B6480()
{
  *(v1 - 104) = v0;

  return swift_errorRetain();
}

uint64_t sub_1000B6498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

BOOL sub_1000B64B4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000B64CC()
{

  return sub_1000ABA6C(v1, v2, v0);
}

void sub_1000B64F0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1000B6508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1000B6520(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t sub_1000B6538(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000B6550(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1000B6564(uint64_t result)
{
  *(v1 - 168) = result;
  *(v1 - 96) = result;
  return result;
}

void sub_1000B65B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000B65D4()
{
}

id sub_1000B65EC(void *a1)
{

  return [a1 currentProcess];
}

uint64_t sub_1000B6604()
{
}

id sub_1000B661C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 3536);

  return [v1 v3];
}

uint64_t sub_1000B6654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  *(v14 + 24) = sub_100084BE4();

  v15 = swift_task_alloc();
  *(v14 + 32) = v15;
  *v15 = v14;
  v15[1] = sub_1000B6750;

  return sub_1000C4814();
}

uint64_t sub_1000B6750()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000B6860, v1, 0);
}

uint64_t sub_1000B6860()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1000B6908()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B6998;

  return sub_1000B6634();
}

uint64_t sub_1000B6998(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 1);
  }
}

void *sub_1000B6AC8(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      sub_100011438(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v4 = 0;
      v48 = v2 & 0xC000000000000001;
      v5 = _swiftEmptyArrayStorage;
      v45 = v2 & 0xFFFFFFFFFFFFFF8;
      v46 = v3;
      v47 = v2;
      while (!__OFADD__(v4, 1))
      {
        v52 = v4 + 1;
        if (v48)
        {
          v6 = v2;
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v45 + 16))
          {
            goto LABEL_28;
          }

          v6 = v2;
          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = [v7 key];
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12 = *a2;
        if (*(*a2 + 16) && (v13 = sub_10000C2A0(v2, v11), (v14 & 1) != 0))
        {
          v15 = (v12[7] + 16 * v13);
          v16 = v8;
          v17 = *v15;
          v18 = v15[1];

          v2 = v6;
        }

        else
        {
          v49 = v4;
          v51 = v5;
          v19 = String._bridgeToObjectiveC()();
          v50 = v8;
          v20 = [v8 localizedStringForLocaleIdentifier:v19];

          v21 = v11;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v23;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = *a2;
          v25 = v2;
          v26 = v21;
          v27 = sub_10000C2A0(v2, v21);
          v29 = v54[2];
          v30 = (v28 & 1) == 0;
          v31 = v29 + v30;
          if (__OFADD__(v29, v30))
          {
            goto LABEL_27;
          }

          v2 = v27;
          v32 = v28;
          sub_10002EB80(&qword_100199670, &unk_10014E370);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v31))
          {
            v33 = sub_10000C2A0(v25, v26);
            if ((v32 & 1) != (v34 & 1))
            {
              goto LABEL_34;
            }

            v2 = v33;
          }

          v17 = v22;
          if (v32)
          {
            v35 = (v54[7] + 16 * v2);
            *v35 = v22;
            v35[1] = v18;
          }

          else
          {
            v54[(v2 >> 6) + 8] |= 1 << v2;
            v36 = (v54[6] + 16 * v2);
            *v36 = v25;
            v36[1] = v26;
            v37 = (v54[7] + 16 * v2);
            *v37 = v22;
            v37[1] = v18;
            v38 = v54[2];
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_29;
            }

            v54[2] = v40;
          }

          *a2 = v54;

          v3 = v46;
          v2 = v47;
          v5 = v51;
          v4 = v49;
        }

        v42 = v5[2];
        v41 = v5[3];
        if (v42 >= v41 >> 1)
        {
          sub_100011438(v41 > 1, v42 + 1, 1);
        }

        v5[2] = v42 + 1;
        v43 = &v5[2 * v42];
        v43[4] = v17;
        v43[5] = v18;
        ++v4;
        if (v52 == v3)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_31:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_1000B6E78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199310, &qword_10014EE40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_1000B86A4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1000B6F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = _swiftEmptyArrayStorage;
  v164 = _swiftEmptyArrayStorage;
  v10 = sub_1000232F4(a2);
  v11 = &TableBuilder;
  if (v10)
  {
    v12 = v10;
    *&v162 = _swiftEmptyArrayStorage;
    sub_10002357C(0, v10 & ~(v10 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_115;
    }

    v13 = 0;
    v9 = v162;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(a2 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 v11[31].base_prots];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      *&v162 = v9;
      v21 = v9[2];
      v20 = v9[3];
      if (v21 >= v20 >> 1)
      {
        v23 = sub_100005150(v20);
        sub_10002357C(v23, v21 + 1, 1);
        v9 = v162;
      }

      ++v13;
      v9[2] = v21 + 1;
      v22 = &v9[3 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v22[6] = v15;
      v11 = &TableBuilder;
    }

    while (v12 != v13);
  }

  v24 = sub_1000B6E78(v9);
  v138 = sub_1000232F4(a1);
  if (!v138)
  {
    goto LABEL_105;
  }

  v25 = 0;
  v26 = &TableBuilder;
  v148 = v24;
  v149 = _swiftEmptyArrayStorage;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v27 = v25;
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

      v27 = v25;
      v28 = *(a1 + 32 + 8 * v25);
    }

    v150 = v28;
    v29 = __OFADD__(v27, 1);
    v30 = v27 + 1;
    if (v29)
    {
      goto LABEL_111;
    }

    v141 = v30;
    v31 = [v28 parameters];
    v32 = sub_10000519C();
    sub_100003D44(v32, &qword_100199048, LNActionParameterMetadata_ptr);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v33 >> 62))
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        break;
      }

      goto LABEL_103;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      break;
    }

LABEL_103:

    v25 = v141;
    if (v141 == v138)
    {

LABEL_105:

      return;
    }
  }

  v35 = 0;
  v154 = v33 & 0xC000000000000001;
  v151 = v33 + 32;
  v152 = v33 & 0xFFFFFFFFFFFFFF8;
  v153 = v34;
  while (1)
  {
    if (v154)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *(v152 + 16))
      {
        goto LABEL_107;
      }

      v36 = *(v151 + 8 * v35);
    }

    v37 = v36;
    v29 = __OFADD__(v35++, 1);
    if (v29)
    {
      break;
    }

    v38 = sub_1000237B0(v36);
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      v155 = v35;
      v160 = v37;
      v42 = [v37 v26[34].weak_ivar_lyt];
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (!v43)
      {
        goto LABEL_33;
      }

      v44 = [v43 enumerationIdentifier];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (!v24[2])
      {

LABEL_33:

        v58 = [v160 v26[34].weak_ivar_lyt];
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v59 = sub_10000519C();
          sub_100003D44(v59, &qword_100199300, NSObject_ptr);
          v60 = [objc_opt_self() BOOLValueType];
          v61 = static NSObject.== infix(_:_:)();

          if (v61)
          {
            v62 = [v160 typeSpecificMetadata];
            v63 = sub_10000519C();
            type metadata accessor for LNValueTypeSpecificMetadataKey(v63);
            sub_1000B887C();
            v64 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1000A0DB4(v64, &v162);
            if (v163)
            {
              v65 = sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
              if (sub_100002C58(v65))
              {
                v66 = v161;
              }

              else
              {
                v66 = 0;
              }
            }

            else
            {
              sub_10003D580(&v162);
              v66 = 0;
            }

            sub_1000A0DB4(v64, &v162);

            if (v163)
            {
              v94 = sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
              if (sub_100002C58(v94))
              {
                v95 = v161;
              }

              else
              {
                v95 = 0;
              }
            }

            else
            {
              sub_10003D580(&v162);
              v95 = 0;
            }

            v96 = [v150 identifier];
            v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            v100 = sub_1000B8120(v97, v99, v40, v41, v66, v95, a3, a4, a8);

            sub_10006E450(v100);

LABEL_70:
            v34 = v153;
            v35 = v155;
            goto LABEL_71;
          }
        }

        else
        {
        }

        v67 = [v160 v26[34].weak_ivar_lyt];
        objc_opt_self();
        v35 = v155;
        if (swift_dynamicCastObjCClass())
        {
          v157 = sub_1000237B0(v160);
          if (v68)
          {
            v69 = v68;
            v70 = v67;
            v71 = sub_1000A0780();

            if (v71)
            {
              v147 = v70;
              v72 = [v150 identifier];
              v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = v73;

              v75 = *(a7 + 16);
              if (v75)
              {
                v76 = (a7 + 80);
                v77 = _swiftEmptyArrayStorage;
                do
                {
                  v78 = *(v76 - 2);
                  v79 = *(v76 - 1);
                  v80 = *v76;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_100004E28();
                    sub_100070554();
                    v77 = v84;
                  }

                  v82 = v77[2];
                  v81 = v77[3];
                  if (v82 >= v81 >> 1)
                  {
                    sub_100005150(v81);
                    sub_100070554();
                    v77 = v85;
                  }

                  v77[2] = v82 + 1;
                  v83 = &v77[8 * v82];
                  v83[4] = v156;
                  v83[5] = v74;
                  v83[6] = v157;
                  v83[7] = v69;
                  v83[8] = v78;
                  v83[9] = v79;
                  v83[10] = v80;
                  v76 += 8;
                  *(v83 + 44) = 0;
                  --v75;
                }

                while (v75);
              }

              else
              {
                v77 = _swiftEmptyArrayStorage;
              }

              v101 = v77[2];
              v102 = v164;
              v103 = v164[2];
              if (__OFADD__(v103, v101))
              {
                goto LABEL_109;
              }

              if (!swift_isUniquelyReferenced_nonNull_native() || (v104 = v102[3] >> 1, v104 < v103 + v101))
              {
                sub_100070554();
                v102 = v105;
                v104 = v105[3] >> 1;
              }

              v24 = v148;
              v26 = &TableBuilder;
              v35 = v155;
              if (v77[2])
              {
                if (v104 - v102[2] < v101)
                {
                  goto LABEL_112;
                }

                swift_arrayInitWithCopy();

                if (v101)
                {
                  v106 = v102[2];
                  v29 = __OFADD__(v106, v101);
                  v107 = v106 + v101;
                  if (v29)
                  {
                    goto LABEL_113;
                  }

                  v102[2] = v107;
                }
              }

              else
              {

                if (v101)
                {
                  goto LABEL_110;
                }
              }

              v164 = v102;
              goto LABEL_56;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_56:
        v34 = v153;
        goto LABEL_71;
      }

      v48 = sub_10000C2A0(v45, v47);
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_33;
      }

      v146 = v40;
      v51 = *(v24[7] + 8 * v48);
      v52 = [v51 identifier];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      *&v162 = v53;
      *(&v162 + 1) = v55;
      __chkstk_darwin(v56);
      sub_100003710();
      *(v57 - 16) = &v162;
      LOBYTE(v52) = sub_1000574AC();

      if ((v52 & 1) == 0)
      {
        v86 = [v51 identifier];
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        v142 = v51;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v149;
        }

        else
        {
          sub_100004E28();
          sub_100013A60();
          v90 = v136;
        }

        v24 = v148;
        v92 = v90[2];
        v91 = v90[3];
        if (v92 >= v91 >> 1)
        {
          sub_100005150(v91);
          sub_100013A60();
          v90 = v137;
        }

        v90[2] = v92 + 1;
        v149 = v90;
        v93 = &v90[2 * v92];
        v93[4] = v87;
        v93[5] = v89;
        if ([v160 dynamicOptionsSupport])
        {

          v26 = &TableBuilder;
        }

        else
        {
          v108 = [v142 cases];
          v109 = sub_10000519C();
          sub_100003D44(v109, &qword_10019A0A0, LNEnumCaseMetadata_ptr);
          v110 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v111 = [v160 typeSpecificMetadata];
          v112 = sub_10000519C();
          type metadata accessor for LNValueTypeSpecificMetadataKey(v112);
          sub_1000B887C();
          v113 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1000A0DB4(v113, &v162);

          v26 = &TableBuilder;
          if (v163)
          {
            v114 = sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
            v115 = &TableBuilder;
            if (sub_100002C58(v114))
            {
              v161 = _swiftEmptyArrayStorage;
              v158 = sub_1000232F4(v110);
              v116 = 0;
              v117 = v110 & 0xC000000000000001;
              while (v158 != v116)
              {
                sub_10003818C(v116, v117 == 0, v110);
                v118 = v110;
                if (v117)
                {
                  v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v119 = *(v110 + 8 * v116 + 32);
                }

                v120 = v119;
                if (__OFADD__(v116, 1))
                {
                  goto LABEL_108;
                }

                v121 = [v119 v115[31].base_prots];
                v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v124 = v123;

                *&v162 = v122;
                *(&v162 + 1) = v124;
                __chkstk_darwin(v125);
                sub_100003710();
                *(v126 - 16) = &v162;
                LOBYTE(v121) = sub_1000574AC();

                if (v121)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                v26 = &TableBuilder;
                ++v116;
                v115 = &TableBuilder;
                v110 = v118;
              }

              v159 = _swiftEmptyArrayStorage;
              v40 = v146;
            }

            else
            {
              v159 = v110;
            }
          }

          else
          {
            v159 = v110;
            sub_10003D580(&v162);
            v115 = &TableBuilder;
          }

          v127 = [v150 v115[31].base_prots];
          v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v129;

          v131 = [v142 v115[31].base_prots];
          v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v134 = v133;

          v135 = sub_1000B7D34(v128, v130, v132, v134, v40, v41, v159, a3, a4, a8);

          sub_10006E450(v135);

          v24 = v148;
        }

        goto LABEL_70;
      }

      v26 = &TableBuilder;
      v34 = v153;
      v35 = v155;
      v24 = v148;
    }

    else
    {
    }

LABEL_71:
    if (v35 == v34)
    {
      goto LABEL_103;
    }
  }

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
}

uint64_t sub_1000B7D34(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v10 = a7;
  if (a7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = _swiftEmptyArrayStorage;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v53 = a9;
    v59 = v10 & 0xC000000000000001;
    v52 = xmmword_10014CE80;
    v63 = _swiftEmptyArrayStorage;
    v54 = v10;
    v60 = result;
    do
    {
      if (v59)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v64 = v17;
      v65 = v19;
      __chkstk_darwin(v20);
      sub_100003710();
      *(v21 - 16) = &v64;
      LOBYTE(v16) = sub_1000574AC();

      if (v16)
      {
      }

      else
      {
        v22 = [v15 identifier];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100004E28();
          sub_100013A60();
          v12 = v48;
        }

        v26 = v63;
        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          sub_100005150(v27);
          sub_100013A60();
          v12 = v49;
        }

        v12[2] = v28 + 1;
        v29 = &v12[2 * v28];
        v29[4] = v23;
        v29[5] = v25;
        v30 = sub_100069D78([v15 displayRepresentation]);
        if (v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = _swiftEmptyArrayStorage;
        }

        sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
        inited = swift_initStackObject();
        *(inited + 16) = v52;
        v33 = [v15 displayRepresentation];
        v34 = [v33 title];

        *(inited + 32) = v34;
        v64 = inited;
        sub_10006E4F4(v31);
        v35 = v64;

        v36 = sub_1000B6AC8(v35, a10);

        v64 = a3;
        v65 = a4;

        v37._countAndFlagsBits = 46;
        v37._object = 0xE100000000000000;
        String.append(_:)(v37);
        v38 = [v15 identifier];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42._countAndFlagsBits = v39;
        v42._object = v41;
        String.append(_:)(v42);

        v43 = v64;
        v44 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100004E28();
          sub_100070554();
          v26 = v50;
        }

        v46 = v26[2];
        v45 = v26[3];
        if (v46 >= v45 >> 1)
        {
          sub_100005150(v45);
          sub_100070554();
          v26 = v51;
        }

        v26[2] = v46 + 1;
        v63 = v26;
        v47 = &v26[8 * v46];
        v10 = v54;
        v47[4] = a1;
        v47[5] = a2;
        v47[6] = a5;
        v47[7] = a6;
        v47[8] = v43;
        v47[9] = v44;
        v47[10] = v36;
        *(v47 + 44) = 0;
      }

      ++v13;
    }

    while (v60 != v13);

    return v63;
  }

  return result;
}

uint64_t sub_1000B8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v69 = a2;
  v70 = a4;
  v67 = a1;
  v68 = a3;
  v12 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v12 - 8);
  v14 = v61 - v13;
  type metadata accessor for URL();
  sub_100003B94();
  v15 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  v16 = sub_1000B8564(0x64656C62616E65, 0xE700000000000000, 0x64656C62616E65, 0xE700000000000000, 0, 0, v14);
  sub_100003B94();
  v17 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  v18 = sub_1000B8564(0x64656C6261736964, 0xE800000000000000, 0x64656C6261736964, 0xE800000000000000, 0, 0, v14);
  if (a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = v16;
  }

  v66 = v16;
  v20 = a6;
  if (!a6)
  {
    v20 = v18;
  }

  v63 = v20;
  v65 = v18;
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v21 = swift_allocObject();
  v62 = xmmword_10014CE90;
  *(v21 + 16) = xmmword_10014CE90;
  v22 = a5;
  v23 = a6;
  v24 = [v19 key];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = *a9;
  v29 = *(*a9 + 16);
  v64 = v19;
  v61[1] = a7;
  if (v29 && (v30 = sub_10000C2A0(v25, v27), (v31 & 1) != 0))
  {
    v32 = (*(v28 + 56) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];
  }

  else
  {
    v35 = String._bridgeToObjectiveC()();
    v36 = [v19 localizedStringForLocaleIdentifier:v35];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v37;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000721C(isUniquelyReferenced_nonNull_native);

    v28 = v71;
    *a9 = v71;
  }

  *(v21 + 32) = v33;
  *(v21 + 40) = v34;
  v39 = swift_allocObject();
  *(v39 + 16) = v62;

  v40 = v63;
  v41 = [v63 key];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  if (*(v28 + 16) && (v45 = sub_10000C2A0(v42, v44), (v46 & 1) != 0))
  {
    v47 = (*(v28 + 56) + 16 * v45);
    v48 = v40;
    v49 = *v47;
    v50 = v47[1];
  }

  else
  {
    v51 = String._bridgeToObjectiveC()();
    v52 = [v40 localizedStringForLocaleIdentifier:v51];

    v48 = v40;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v53;

    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_10000721C(v54);

    *a9 = v71;
  }

  *(v39 + 32) = v49;
  *(v39 + 40) = v50;
  sub_10002EB80(&qword_10019A4F8, &unk_100150170);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10014BC40;
  v57 = v67;
  v56 = v68;
  *(v55 + 32) = v67;
  v58 = v69;
  v59 = v70;
  *(v55 + 40) = v69;
  *(v55 + 48) = v56;
  *(v55 + 56) = v59;
  *(v55 + 64) = 1163219540;
  *(v55 + 72) = 0xE400000000000000;
  *(v55 + 80) = v21;
  *(v55 + 88) = 0;
  *(v55 + 96) = v57;
  *(v55 + 104) = v58;
  *(v55 + 112) = v56;
  *(v55 + 120) = v59;
  *(v55 + 128) = 0x45534C4146;
  *(v55 + 136) = 0xE500000000000000;
  *(v55 + 144) = v39;
  *(v55 + 152) = 0;

  return v55;
}

id sub_1000B8564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v13 = String._bridgeToObjectiveC()();

    if (a6)
    {
LABEL_3:
      v14 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = type metadata accessor for URL();
  v17 = 0;
  if (sub_1000032C4(a7, 1, v15) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  v19 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v17];

  return v19;
}

uint64_t sub_1000B86A4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_10000C2A0(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_10002EB80(&qword_10019B490, &qword_10014EE48);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_100046DE4(v15, a2 & 1);
      v17 = sub_10000C2A0(v7, v6);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v20 = *(v19[7] + 8 * v12);

      v21 = v19[7];
      v22 = *(v21 + 8 * v12);
      *(v21 + 8 * v12) = v20;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v23 = (v19[6] + 16 * v12);
      *v23 = v7;
      v23[1] = v6;
      *(v19[7] + 8 * v12) = v10;
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v19[2] = v26;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000B887C()
{
  result = qword_100198950;
  if (!qword_100198950)
  {
    type metadata accessor for LNValueTypeSpecificMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198950);
  }

  return result;
}

void *sub_1000B88D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_1000B9810(v26);
  if (a2)
  {
    v8 = v27;
    v22 = v28;
    v20 = sub_1000034B4(v26, v27);
    if (qword_1001982B8 != -1)
    {
      sub_10000801C(&qword_1001982B8);
    }

    v29 = v3;
    memcpy(__dst, &unk_10019DEC8, sizeof(__dst));
    if (qword_1001982C0 != -1)
    {
      sub_100002C7C(&qword_1001982C0);
    }

    memcpy(v24, __dst, sizeof(v24));
    QueryType.namespace<A>(_:)(qword_10019DF78, unk_10019DF80, qword_10019DF88, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v9, v10, v20, v22, *&v24[0], *(&v24[0] + 1), v24[1], *(&v24[1] + 1), *&v24[2], *(&v24[2] + 1), *&v24[3], *(&v24[3] + 1), *&v24[4], *(&v24[4] + 1), *&v24[5], *(&v24[5] + 1), *&v24[6], *(&v24[6] + 1), *&v24[7], *(&v24[7] + 1), *&v24[8], *(&v24[8] + 1), *&v24[9], *(&v24[9] + 1), *&v24[10], *(&v24[10] + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13]);
    *&v24[0] = a1;
    *(&v24[0] + 1) = a2;
    v4 = == infix<A>(_:_:)();
    v12 = v11;
    v14 = v13;

    *(&v24[1] + 1) = v8;
    *&v24[2] = v23;
    sub_100013234(v24);
    QueryType.filter(_:)(v4, v12, v14, v8, v23, v15, v16, v17, v21, v23, *&v24[0], *(&v24[0] + 1), v24[1], *(&v24[1] + 1), *&v24[2], *(&v24[2] + 1), *&v24[3], *(&v24[3] + 1), *&v24[4], *(&v24[4] + 1), *&v24[5], *(&v24[5] + 1), *&v24[6], *(&v24[6] + 1), *&v24[7], *(&v24[7] + 1), *&v24[8], *(&v24[8] + 1), *&v24[9], *(&v24[9] + 1), *&v24[10], *(&v24[10] + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13]);

    sub_1000034F8(v26);
    sub_10001A798(v24, v26);
    v5 = v29;
  }

  Connection.prepare(_:)(v26);
  if (v5)
  {
    sub_1000034F8(v26);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    *&v24[0] = _swiftEmptyArrayStorage;
    swift_retain_n();
    dispatch thunk of _AnySequenceBox._makeIterator()();
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!__dst[0])
      {
        break;
      }

      v18 = sub_1000BA328(__dst[0], __dst[1]);

      if (v18)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = *&v24[0];
      }
    }

    sub_1000034F8(v26);
  }

  return v4;
}

uint64_t sub_1000B8BA0(uint64_t a1, uint64_t a2)
{
  if (qword_1001982B8 != -1)
  {
    sub_10000801C(&qword_1001982B8);
  }

  memcpy(__dst, &unk_10019DEC8, sizeof(__dst));
  if (qword_1001982C0 != -1)
  {
    sub_100002C7C(&qword_1001982C0);
  }

  sub_100003A8C(&qword_10019DF78);
  __src[0] = a1;
  v4 = == infix<A>(_:_:)();
  v6 = v5;
  v8 = v7;
  memcpy(v16, __dst, sizeof(v16));
  QueryType.filter(_:)(v4, v6, v8, &type metadata for Table, &protocol witness table for Table, v9, v10, v11, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], __src[0], a2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v19, __src, sizeof(v19));
  memcpy(__src, v19, sizeof(__src));
  v20 = QueryType.delete()();
  countAndFlagsBits = v20.template._countAndFlagsBits;
  object = v20.template._object;
  rawValue = v20.bindings._rawValue;
  sub_10001970C(v19);
  v21.template._countAndFlagsBits = countAndFlagsBits;
  v21.template._object = object;
  v21.bindings._rawValue = rawValue;
  Connection.run(_:)(v21);
}

void sub_1000B8D48(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a2;
  v7 = [a1 action];
  v8 = [v7 identifier];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [a1 action];
  v13 = [v12 parameters];

  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_1000B9318();
  if (v4)
  {
  }

  else
  {
    v16 = v14;
    v17 = v15;
    v24 = v9;

    v23 = sub_1000F84DC(a1);
    v25 = v18;
    v19 = [a1 rkContext];
    v20 = sub_1000B9428();
    v22 = v21;

    __src[0] = v30;
    __src[1] = a3;
    __src[2] = v24;
    __src[3] = v11;
    __src[4] = v16;
    __src[5] = v17;
    __src[6] = v23;
    __src[7] = v25;
    __src[8] = v20;
    __src[9] = v22;
    v29[0] = v30;
    v29[1] = a3;
    v29[2] = v24;
    v29[3] = v11;
    v29[4] = v16;
    v29[5] = v17;
    v29[6] = v23;
    v29[7] = v25;
    v29[8] = v20;
    v29[9] = v22;
    sub_1000BAC6C(__src, v27);
    sub_100084030(v29);
    memcpy(a4, __src, 0x50uLL);
  }
}

uint64_t sub_1000B8F6C(__int128 *a1)
{
  if (qword_1001982B8 != -1)
  {
    sub_10000801C(&qword_1001982B8);
  }

  memcpy(__dst, &unk_10019DEC8, sizeof(__dst));
  memcpy(__src, &unk_10019DEC8, sizeof(__src));
  sub_1000196B0(__dst, v13);
  if (qword_1001982C0 != -1)
  {
    sub_100002C7C(&qword_1001982C0);
  }

  sub_100003A8C(&qword_10019DF78);
  v12 = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10014ECA0;
  if (qword_1001982C8 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DF90);
  v12 = a1[1];
  <- infix<A>(_:_:)();
  if (qword_1001982D0 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DFA8);
  v17 = a1[2];
  v12 = a1[2];
  <- infix<A>(_:_:)();
  v3 = v12;
  sub_1000BABA0(&v17, v11);
  sub_100009B18(v3, *(&v3 + 1));
  if (qword_1001982D8 != -1)
  {
    swift_once();
  }

  v16 = a1[3];
  v12 = a1[3];
  sub_1000BABFC(&v16, v11);
  <- infix<A>(_:_:)();
  sub_100003E9C(&v16, &unk_100199100, &qword_10014E230);
  if (qword_1001982E0 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DFD8);
  v15 = a1[4];
  v12 = a1[4];
  <- infix<A>(_:_:)();
  v4 = v12;
  sub_1000BABA0(&v15, v11);
  sub_100009B18(v4, *(&v4 + 1));
  v5 = QueryType.insert(_:_:)(v13, v2);
  v7 = v6;
  v9 = v8;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v13);
  memcpy(v19, __src, sizeof(v19));
  sub_10001970C(v19);
  v20.template._countAndFlagsBits = v5;
  v20.template._object = v7;
  v20.bindings._rawValue = v9;
  Connection.run(_:)(v20);
}

void *sub_1000B9318()
{
  v0 = objc_opt_self();
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v6];

  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void *sub_1000B9428()
{
  v5 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1000B9560()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_1000B95E8()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x80000001001564D0, v0, v1);
}

uint64_t sub_1000B9670()
{
  v0 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v1 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  return ExpressionType.init(_:)(0xD000000000000011, 0x8000000100156890, v0, v1);
}

uint64_t sub_1000B96F8()
{
  v0 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v1 = sub_100013F04(&qword_100199520, &qword_100199518, &unk_10014ED10);
  return ExpressionType.init(_:)(0x694B746567646977, 0xEA0000000000646ELL, v0, v1);
}

uint64_t sub_1000B9780()
{
  v0 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v1 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  return ExpressionType.init(_:)(0x436465646F636E65, 0xEE00747865746E6FLL, v0, v1);
}

uint64_t sub_1000B9810@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001982B8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019DEC8, sizeof(__dst));
  if (qword_100198140 != -1)
  {
    swift_once();
  }

  memcpy(__src, &unk_10019DA70, sizeof(__src));
  if (qword_1001983B0 != -1)
  {
    swift_once();
  }

  memcpy(v262, &unk_10019E338, sizeof(v262));
  memcpy(v263, __dst, sizeof(v263));
  if (qword_1001982C0 != -1)
  {
    swift_once();
  }

  v1 = qword_10019DF78;
  memcpy(v264, __dst, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DF78, unk_10019DF80, qword_10019DF88, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v2, v3, v90, v102, v117, v132, v146, v160, v174, a1, qword_10019DF88, unk_10019DF80, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v259[3] = v10;
  v259[4] = &protocol witness table for Expression<A>;
  v259[0] = v5;
  v259[1] = v7;
  v259[2] = v9;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014E680;
  if (qword_1001982C8 != -1)
  {
    swift_once();
  }

  memcpy(v264, __dst, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DF90, *algn_10019DF98, qword_10019DFA0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v12, v13, v91, v103, v118, qword_10019DFA0, algn_10019DF98[0], qword_10019DF90, v175, v189, v203, v217, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  *(v11 + 56) = v10;
  *(v11 + 64) = &protocol witness table for Expression<A>;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v16;
  if (qword_1001982D0 != -1)
  {
    swift_once();
  }

  memcpy(v264, __dst, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DFA8, unk_10019DFB0, qword_10019DFB8, &type metadata for Table, &type metadata for Data, &protocol witness table for Table, v17, v18, v92, v104, v119, v133, v147, v161, v176, v190, v204, v218, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  *(v11 + 96) = v25;
  *(v11 + 104) = &protocol witness table for Expression<A>;
  *(v11 + 72) = v20;
  *(v11 + 80) = v22;
  *(v11 + 88) = v24;
  if (qword_1001982D8 != -1)
  {
    swift_once();
  }

  v26 = qword_10019DFC0;
  v27 = *algn_10019DFC8;
  v28 = qword_10019DFD0;
  memcpy(v264, __dst, 0xB0uLL);
  v29 = sub_10002EB80(&unk_100199100, &qword_10014E230);
  QueryType.namespace<A>(_:)(v26, v27, v28, &type metadata for Table, v29, &protocol witness table for Table, v30, v31, v93, v105, v120, v134, v148, v162, v177, v191, v205, v219, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  *(v11 + 136) = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  *(v11 + 144) = &protocol witness table for Expression<A>;
  *(v11 + 112) = v33;
  *(v11 + 120) = v35;
  *(v11 + 128) = v37;
  if (qword_1001982E0 != -1)
  {
    swift_once();
  }

  memcpy(v264, __dst, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DFD8, unk_10019DFE0, qword_10019DFE8, &type metadata for Table, &type metadata for Data, &protocol witness table for Table, v38, v39, v94, v106, v121, v135, v149, v163, v178, v192, v206, v220, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  *(v11 + 176) = v25;
  *(v11 + 184) = &protocol witness table for Expression<A>;
  *(v11 + 152) = v40;
  *(v11 + 160) = v41;
  *(v11 + 168) = v42;
  if (qword_100198158 != -1)
  {
    swift_once();
  }

  memcpy(v264, __src, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DB50, *algn_10019DB58, qword_10019DB60, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v43, v44, v95, v107, v122, v136, v150, v164, v179, v193, v207, v221, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  *(v11 + 216) = v10;
  *(v11 + 224) = &protocol witness table for Expression<A>;
  *(v11 + 192) = v45;
  *(v11 + 200) = v46;
  *(v11 + 208) = v47;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  memcpy(v264, v262, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019E418, unk_10019E420, qword_10019E428, &type metadata for Table, &type metadata for Int, &protocol witness table for Table, v48, v49, v96, v108, v123, v137, v151, v165, v180, v194, v208, v222, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  *(v11 + 256) = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  *(v11 + 264) = &protocol witness table for Expression<A>;
  *(v11 + 232) = v51;
  *(v11 + 240) = v53;
  *(v11 + 248) = v55;
  SchemaType.select(_:_:)(v259, v11, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v259);
  memcpy(v263, v264, sizeof(v263));
  v231 = swift_allocObject();
  memcpy((v231 + 16), __src, 0xB0uLL);
  memcpy(v259, __dst, sizeof(v259));
  sub_1000196B0(__src, v258);
  QueryType.namespace<A>(_:)(v1, v223, v209, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v56, v57, v97, v109, v124, v138, v152, v166, v1, v195, v209, v223, v231, v232, v233, &type metadata for Table, &protocol witness table for Table, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  if (qword_100198148 != -1)
  {
    swift_once();
  }

  memcpy(v259, __src, sizeof(v259));
  QueryType.namespace<A>(_:)(qword_10019DB20, *algn_10019DB28, qword_10019DB30, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v58, v59, v98, v110, v125, v139, v153, v167, v181, v196, v210, v224, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v126 = == infix<A>(_:_:)();
  v61 = v60;
  v63 = v62;

  memcpy(v259, __dst, sizeof(v259));
  QueryType.namespace<A>(_:)(v168, v154, v140, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v64, v65, &protocol witness table for String, v111, v126, v140, v154, v168, v182, v197, v211, v225, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  if (qword_100198150 != -1)
  {
    swift_once();
  }

  memcpy(v259, __src, sizeof(v259));
  QueryType.namespace<A>(_:)(qword_10019DB38, unk_10019DB40, qword_10019DB48, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v66, v67, v99, v112, v127, v141, v155, v169, v183, v198, v212, v226, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v68 = == infix<A>(_:_:)();
  v70 = v69;
  v72 = v71;

  v73 = && infix(_:_:)(v128, v61, v63, v68, v70, v72);
  v75 = v74;
  v77 = v76;

  memcpy(v258, v263, sizeof(v258));
  QueryType.join(_:_:on:)(1, &v231, v73, v75, v77, &type metadata for Table, &protocol witness table for Table, v78, &protocol witness table for String, v113, v128, v142, v156, v170, v184, v199, v213, v227, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);

  sub_10001970C(v263);
  sub_1000034F8(&v231);
  memcpy(v264, v259, 0xB0uLL);
  v256 = &type metadata for Table;
  v257 = &protocol witness table for Table;
  v253 = swift_allocObject();
  memcpy((v253 + 16), v262, 0xB0uLL);
  memcpy(v258, __dst, sizeof(v258));
  sub_1000196B0(v262, &v231);
  QueryType.namespace<A>(_:)(v185, v228, v214, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v79, v80, v100, v114, v129, v143, v157, v171, v185, v200, v214, v228, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  if (qword_1001983B8 != -1)
  {
    swift_once();
  }

  memcpy(v258, v262, sizeof(v258));
  QueryType.namespace<A>(_:)(qword_10019E3E8, unk_10019E3F0, qword_10019E3F8, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v81, v82, v101, v115, v130, v144, v158, v172, v186, v201, v215, v229, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v83 = == infix<A>(_:_:)();
  v85 = v84;
  v87 = v86;

  v202[3] = &type metadata for Table;
  v202[4] = &protocol witness table for Table;
  *v202 = swift_allocObject();
  memcpy(v258, v264, sizeof(v258));
  QueryType.join(_:_:on:)(1, &v253, v83, v85, v87, &type metadata for Table, &protocol witness table for Table, v88, &protocol witness table for String, v116, v131, v145, v159, v173, v187, v202, v216, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);

  sub_10001970C(v264);
  return sub_1000034F8(&v253);
}

id sub_1000BA328(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (qword_1001982C0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v8 = v24;
  v7 = v25;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198158 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v10 = type metadata accessor for URL();
  sub_1000075C4(v6, 1, 1, v10);
  v11 = static LNActionMetadata.fromJSON(_:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)();
  sub_100003E9C(v6, &qword_1001990C0, &unk_10014E200);

  if (qword_1001982D0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v12 = v24;
  v13 = v25;
  sub_1000BA898(v24, v25);
  sub_100009B18(v12, v13);
  objc_allocWithZone(LNAction);

  v14 = v11;
  v15 = sub_1000BAA38(v14);
  if (qword_1001982D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019DFC0, *algn_10019DFC8, a1, a2, &type metadata for String, &protocol witness table for String, &v24);
  v17 = v24;
  v16 = v25;
  if (qword_1001982E0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v18 = v24;
  v19 = v25;
  sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  sub_100003D44(0, qword_10019B5A8, RKRelevantContext_ptr);
  v20 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v20)
  {
    sub_100009B18(v18, v19);
    v21 = objc_allocWithZone(LNRelevantIntent);
    v22 = sub_1000BAAE8(v8, v7, v15, v17, v16, v20);

    return v22;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000BA898(uint64_t a1, uint64_t a2)
{
  sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  sub_10002EB80(&qword_100199508, &unk_10014E210);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10014BC40;
  *(v3 + 32) = sub_100003D44(0, &qword_100199510, NSArray_ptr);
  *(v3 + 40) = sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v2)
  {
    if (v6)
    {
      sub_10002EB80(&qword_10019B2F8, &qword_1001508A0);
      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
      sub_100003E9C(v5, &qword_1001992F0, &qword_10014E000);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1000BAA38(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v1 initWithMetadata:a1 bundleIdentifier:v3 parameters:isa];

  return v5;
}

id sub_1000BAAE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v11 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithBundleIdentifier:v11 action:a3 widgetKind:v12 rkContext:a6];

  return v13;
}

uint64_t sub_1000BABFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&unk_100199100, &qword_10014E230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BACA4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000BACC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1000BAD08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BADBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = type metadata accessor for Logger();
  sub_100037CD8(v5, a2);
  sub_10000347C(v5, a2);
  result = *a3;
  if (*a3)
  {
    String.init(cString:)();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      String.init(cString:)();
      return Logger.init(subsystem:category:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BAE4C()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019E050);
  sub_10000347C(v0, qword_10019E050);
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000BAED0()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019E068);
  sub_10000347C(v0, qword_10019E068);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BAF54(uint64_t *a1)
{
  result = type metadata accessor for LazyTask.State(319, a1[10], a1[11], a1[12]);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_1000BB014()
{
  v1 = *v0;

  v2 = *(*v0 + 16);
  v3 = type metadata accessor for LazyTask.State(0, v1[10], v1[11], v1[12]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000BB0D8()
{
  sub_1000BB014();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_1000BB150(void *a1)
{
  v1 = type metadata accessor for Result();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1000BB1B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) > 3)
  {
    goto LABEL_6;
  }

  v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
  if (HIWORD(v8))
  {
    v6 = *(a1 + v4);
    if (v6)
    {
      goto LABEL_14;
    }

LABEL_22:
    v10 = *(a1 + v3);
    if (v10 >= 2)
    {
      v11 = (v10 ^ 0xFF) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v8 > 0xFF)
  {
    v6 = *(a1 + v4);
    if (*(a1 + v4))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v8 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1000BB2F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = ~a2;
        }

        break;
    }
  }
}

uint64_t sub_1000BB4C4(uint64_t a1)
{
  v2 = type metadata accessor for LazyTask.State(0, *(*a1 + 80), *(*a1 + 88), &protocol self-conformance witness table for Error);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Result();
  sub_1000075C4(v5, 1, 1, v6);
  v7 = *(*a1 + 128);
  swift_beginAccess();
  (*(v3 + 40))(a1 + v7, v5, v2);
  return swift_endAccess();
}

uint64_t sub_1000BB650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10002EB80(&qword_10019B6B0, &qword_100150A78);
  sub_100002944();
  v81 = v10;
  v82 = v9;
  __chkstk_darwin(v9);
  v84 = &v77 - v11;
  v12 = type metadata accessor for Locale();
  sub_100002944();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    static Locale.current.getter();
    a3 = Locale.identifier.getter();
    v18 = v19;
    (*(v14 + 8))(v17, v12);
  }

  isa = [v5 localizations];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v21 = objc_opt_self();
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10014CE90;
  *(v22 + 32) = a3;
  *(v22 + 40) = v18;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v21 preferredLocalizationsFromArray:isa forPreferences:v23];

  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v25 + 16))
  {

    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    return Dictionary.init(dictionaryLiteral:)();
  }

  if (a2)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  v28 = String._bridgeToObjectiveC()();

  v29 = [v5 localizedStringsForTable:v26 localization:v28];

  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10002EB80(&qword_10019B6B8, &qword_100150A80);
  v31 = v84;
  v32 = Regex.init(_regexString:version:)();
  __chkstk_darwin(v32);
  *(&v77 - 2) = v31;

  sub_100118320(sub_1000BC0A0, (&v77 - 4), v30);
  v34 = v33;

  v85 = v34;

  sub_1000BC0BC(&v85);

  v35 = 0;
  v36 = v85;
  v37 = v85[2];
  v38 = v85 + 8;
  v83 = _swiftEmptyDictionarySingleton;
  v80 = v85 + 8;
  while (2)
  {
    for (i = &v38[5 * v35]; ; i += 5)
    {
      if (v37 == v35)
      {

        (*(v81 + 8))(v84, v82);
        return v83;
      }

      if (v35 >= *(v36 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (!*(v30 + 16))
      {
        goto LABEL_18;
      }

      v40 = *(i - 1);
      v41 = *i;
      v42 = *(i - 4);
      v43 = *(i - 3);
      swift_bridgeObjectRetain_n();

      v44 = sub_10000C2A0(v42, v43);
      v46 = v45;

      if (v46)
      {
        break;
      }

LABEL_18:
      ++v35;
    }

    v47 = (*(v30 + 56) + 16 * v44);
    v48 = *v47;
    v78 = v47[1];
    v79 = v48;
    v49 = v83;
    if (*(v83 + 16))
    {

      v50 = sub_10000C2A0(v40, v41);
      v52 = v51;

      v53 = _swiftEmptyArrayStorage;
      if (v52)
      {
        v54 = *(*(v49 + 56) + 8 * v50);
        goto LABEL_23;
      }
    }

    else
    {
      v54 = _swiftEmptyArrayStorage;
LABEL_23:

      v53 = v54;
    }

    v55 = v53;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v56 = v55;
    }

    else
    {
      sub_100013A60();
      v56 = v75;
    }

    v57 = v56[2];
    if (v57 >= v56[3] >> 1)
    {
      sub_100013A60();
      v56 = v76;
    }

    v56[2] = v57 + 1;
    v77 = v56;
    v58 = &v56[2 * v57];
    v59 = v78;
    v58[4] = v79;
    v58[5] = v59;

    LODWORD(v79) = swift_isUniquelyReferenced_nonNull_native();
    v85 = v49;
    v60 = sub_10000C2A0(v40, v41);
    v62 = *(v49 + 16);
    v63 = (v61 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_41;
    }

    v65 = v60;
    LODWORD(v83) = v61;
    sub_10002EB80(&qword_10019AFD0, &qword_1001501F0);
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v79, v64))
    {
      v38 = v80;
      v69 = v77;
      v68 = v83;
LABEL_33:
      v70 = v85;
      v83 = v85;
      if (v68)
      {
        *(v85[7] + 8 * v65) = v69;

LABEL_37:
        ++v35;

        continue;
      }

      v85[(v65 >> 6) + 8] |= 1 << v65;
      v71 = (v70[6] + 16 * v65);
      *v71 = v40;
      v71[1] = v41;
      *(v70[7] + 8 * v65) = v69;
      v72 = v70[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (!v73)
      {
        v70[2] = v74;
        goto LABEL_37;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    break;
  }

  v66 = sub_10000C2A0(v40, v41);
  v68 = v83;
  v38 = v80;
  if ((v83 & 1) == (v67 & 1))
  {
    v65 = v66;
    v69 = v77;
    goto LABEL_33;
  }

LABEL_43:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000BBD74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002EB80(&qword_10019B6C0, &qword_100150A88);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_10002EB80(&qword_10019B6C8, &qword_100150A90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = *a1;
  v13 = a1[1];
  sub_10002EB80(&qword_10019B6B0, &qword_100150A78);
  Regex.wholeMatch(in:)();
  if (v2)
  {

    sub_1000075C4(v7, 1, 1, v8);
LABEL_4:
    result = sub_1000BD89C(v7);
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (sub_1000032C4(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v32 = v9;
  (*(v9 + 32))(v11, v7, v8);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v16 = v28;
  v15 = v29;
  if (!((v29 ^ v28) >> 14))
  {

    goto LABEL_11;
  }

  v26 = v30;
  v27 = v31;
  v17 = sub_1000BD940(v28, v29, v30, v31, 10);
  if ((v18 & 0x100) == 0)
  {
    v19 = v18;
    v26 = v17;

    v20 = v32;
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    result = (*(v20 + 8))(v11, v8);
    goto LABEL_5;
  }

  v26 = sub_1000BCE68(v16, v15, v26, v27, 10);
  v22 = v21;

  if (v22)
  {
LABEL_11:
    v20 = v32;
    goto LABEL_12;
  }

LABEL_13:
  swift_getKeyPath();

  Regex.Match.subscript.getter();

  v23 = static String._fromSubstring(_:)();
  v25 = v24;

  result = (*(v32 + 8))(v11, v8);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v26;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  return result;
}

Swift::Int sub_1000BC0BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000BD888(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1000BC128(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000BC128(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10002EB80(&unk_10019B370, &unk_100150580);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1000BC360(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000BC22C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000BC22C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v7 = (v4 + 40 * a3);
      v8 = v7[2];
      v9 = v7[3];
      v10 = v7[4];
      v19 = v6;
      v20 = v5;
      do
      {
        v11 = *(v5 + 16);
        v12 = v9 == *(v5 + 24) && v10 == *(v5 + 32);
        if (v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          if (v8 >= v11)
          {
            break;
          }
        }

        else
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v13 = *(v5 + 48);
        v8 = *(v5 + 56);
        v14 = *(v5 + 16);
        v16 = *(v5 + 32);
        v15 = *(v5 + 40);
        *(v5 + 40) = *v5;
        v9 = *(v5 + 64);
        v10 = *(v5 + 72);
        *(v5 + 56) = v14;
        *(v5 + 72) = v16;
        *v5 = v15;
        *(v5 + 8) = v13;
        *(v5 + 16) = v8;
        *(v5 + 24) = v9;
        *(v5 + 32) = v10;
        v5 -= 40;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v21 + 1;
      v5 = v20 + 40;
      v6 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000BC360(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if ((v5 + 1) < v4)
      {
        v114 = v6;
        v9 = *a3;
        v10 = v5;
        v11 = v5 + 1;
        v12 = (*a3 + 40 * v8);
        v13 = v12[2];
        v14 = v12[3];
        v15 = v12[4];
        v117 = v10;
        v16 = (*a3 + 40 * v10);
        v17 = v16[2];
        v18 = v14 == v16[3] && v15 == v16[4];
        v120 = v4;
        if (v18 || (v19 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 = v120, (v19 & 1) != 0))
        {
          v122 = v13 < v17;
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v4 = v120;
          v122 = v20;
        }

        v21 = 0;
        v22 = (v117 + 2);
        v23 = (v9 + 40 * v117 + 112);
        v24 = v11;
        do
        {
          v25 = v22;
          v26 = v24;
          v27 = v21;
          if (v22 >= v4)
          {
            break;
          }

          v28 = *(v23 - 2);
          v29 = *(v23 - 7);
          v30 = *(v23 - 1) == *(v23 - 6) && *v23 == *(v23 - 5);
          if (v30 || (v125 = v22, v31 = _stringCompareWithSmolCheck(_:_:expecting:)(), v25 = v125, v4 = v120, (v31 & 1) != 0))
          {
            v32 = v28 < v29;
          }

          else
          {
            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v25 = v125;
            v4 = v120;
          }

          v22 = v25 + 1;
          v23 += 5;
          v24 = v26 + 1;
          v21 = v27 + 40;
        }

        while (((v122 ^ v32) & 1) == 0);
        if (v122)
        {
          v33 = v117;
          v6 = v114;
          if (v25 < v117)
          {
            goto LABEL_140;
          }

          if (v117 >= v25)
          {
            v8 = v25;
            v7 = v117;
            goto LABEL_33;
          }

          v34 = 0;
          do
          {
            if (v33 != v26)
            {
              if (!*a3)
              {
                goto LABEL_147;
              }

              v35 = *a3 + 40 * v117;
              v36 = (v35 + v34);
              v37 = v35 + v27;
              v38 = *v36;
              v39 = v36[1];
              v40 = v36[4];
              v41 = *(v36 + 1);
              v42 = *(v37 + 72);
              v43 = *(v37 + 56);
              *v36 = *(v37 + 40);
              *(v36 + 1) = v43;
              v36[4] = v42;
              *(v37 + 40) = v38;
              *(v37 + 48) = v39;
              *(v37 + 56) = v41;
              *(v37 + 72) = v40;
            }

            ++v33;
            v27 -= 40;
            v34 += 40;
          }

          while (v33 < v26--);
          v8 = v25;
        }

        else
        {
          v8 = v25;
          v6 = v114;
        }

        v7 = v117;
      }

LABEL_33:
      v45 = a3[1];
      if (v8 < v45)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_139;
        }

        if (&v8[-v7] < a4)
        {
          v46 = v7 + a4;
          if (__OFADD__(v7, a4))
          {
            goto LABEL_141;
          }

          if (v46 >= v45)
          {
            v46 = a3[1];
          }

          if (v46 >= v7)
          {
            if (v8 == v46)
            {
              goto LABEL_56;
            }

            v115 = v6;
            v47 = *a3;
            v48 = *a3 + 40 * v8 - 40;
            v118 = v7;
            v119 = v46;
            v49 = v7 - v8;
LABEL_42:
            v123 = v48;
            v125 = v8;
            v50 = (v47 + 40 * v8);
            v51 = v50[2];
            v52 = v50[3];
            v53 = v50[4];
            v121 = v49;
            v54 = v48;
            while (1)
            {
              v55 = *(v54 + 16);
              v56 = v52 == *(v54 + 24) && v53 == *(v54 + 32);
              if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                if (v51 >= v55)
                {
                  goto LABEL_54;
                }
              }

              else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_54;
              }

              if (!v47)
              {
                break;
              }

              v57 = *(v54 + 48);
              v51 = *(v54 + 56);
              v58 = *(v54 + 16);
              v60 = *(v54 + 32);
              v59 = *(v54 + 40);
              *(v54 + 40) = *v54;
              v52 = *(v54 + 64);
              v53 = *(v54 + 72);
              *(v54 + 56) = v58;
              *(v54 + 72) = v60;
              *v54 = v59;
              *(v54 + 8) = v57;
              *(v54 + 16) = v51;
              *(v54 + 24) = v52;
              *(v54 + 32) = v53;
              v54 -= 40;
              if (__CFADD__(v49++, 1))
              {
LABEL_54:
                v8 = v125 + 1;
                v48 = v123 + 40;
                v49 = v121 - 1;
                if (v125 + 1 == v119)
                {
                  v8 = v119;
                  v6 = v115;
                  v7 = v118;
                  goto LABEL_56;
                }

                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

LABEL_142:
          __break(1u);
LABEL_143:
          v6 = sub_1000BCD28(v6);
          goto LABEL_110;
        }
      }

LABEL_56:
      if (v8 < v7)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000702DC();
        v6 = v103;
      }

      v62 = *(v6 + 16);
      v63 = v62 + 1;
      if (v62 >= *(v6 + 24) >> 1)
      {
        sub_1000702DC();
        v6 = v104;
      }

      *(v6 + 16) = v63;
      v64 = v6 + 32;
      v65 = (v6 + 32 + 16 * v62);
      *v65 = v7;
      v65[1] = v8;
      v124 = *a1;
      if (!*a1)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v125 = v8;
      if (v62)
      {
        while (1)
        {
          v66 = v63 - 1;
          v67 = (v64 + 16 * (v63 - 1));
          v68 = (v6 + 16 * v63);
          if (v63 >= 4)
          {
            break;
          }

          if (v63 == 3)
          {
            v69 = *(v6 + 32);
            v70 = *(v6 + 40);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_76:
            if (v72)
            {
              goto LABEL_125;
            }

            v84 = *v68;
            v83 = v68[1];
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            v87 = v85;
            if (v85)
            {
              goto LABEL_128;
            }

            v88 = v67[1];
            v89 = v88 - *v67;
            if (__OFSUB__(v88, *v67))
            {
              goto LABEL_131;
            }

            if (__OFADD__(v86, v89))
            {
              goto LABEL_133;
            }

            if (v86 + v89 >= v71)
            {
              if (v71 < v89)
              {
                v66 = v63 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v63 < 2)
          {
            goto LABEL_127;
          }

          v91 = *v68;
          v90 = v68[1];
          v79 = __OFSUB__(v90, v91);
          v86 = v90 - v91;
          v87 = v79;
LABEL_91:
          if (v87)
          {
            goto LABEL_130;
          }

          v93 = *v67;
          v92 = v67[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_132;
          }

          if (v94 < v86)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v66 - 1 >= v63)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (!*a3)
          {
            goto LABEL_145;
          }

          v98 = v6;
          v99 = (v64 + 16 * (v66 - 1));
          v6 = *v99;
          v100 = (v64 + 16 * v66);
          v101 = v100[1];
          sub_1000BCAA0((*a3 + 40 * *v99), (*a3 + 40 * *v100), *a3 + 40 * v101, v124);
          if (v127)
          {
            goto LABEL_118;
          }

          if (v101 < v6)
          {
            goto LABEL_120;
          }

          v102 = *(v98 + 16);
          if (v66 > v102)
          {
            goto LABEL_121;
          }

          *v99 = v6;
          v99[1] = v101;
          if (v66 >= v102)
          {
            goto LABEL_122;
          }

          v127 = 0;
          v63 = v102 - 1;
          memmove((v64 + 16 * v66), v100 + 2, 16 * (v102 - 1 - v66));
          v6 = v98;
          *(v98 + 16) = v102 - 1;
          if (v102 <= 2)
          {
            goto LABEL_105;
          }
        }

        v73 = v64 + 16 * v63;
        v74 = *(v73 - 64);
        v75 = *(v73 - 56);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_123;
        }

        v78 = *(v73 - 48);
        v77 = *(v73 - 40);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_124;
        }

        v80 = v68[1];
        v81 = v80 - *v68;
        if (__OFSUB__(v80, *v68))
        {
          goto LABEL_126;
        }

        v79 = __OFADD__(v71, v81);
        v82 = v71 + v81;
        if (v79)
        {
          goto LABEL_129;
        }

        if (v82 >= v76)
        {
          v96 = *v67;
          v95 = v67[1];
          v79 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v79)
          {
            goto LABEL_137;
          }

          if (v71 < v97)
          {
            v66 = v63 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = v125;
      v4 = a3[1];
      if (v125 >= v4)
      {
        goto LABEL_108;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_108:
  v125 = *a1;
  if (!*a1)
  {
LABEL_149:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_143;
  }

LABEL_110:
  v105 = v6;
  v106 = (v6 + 16);
  v107 = *(v6 + 16);
  v6 = 40;
  while (v107 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_146;
    }

    v108 = (v105 + 16 * v107);
    v109 = *v108;
    v110 = &v106[2 * v107];
    v111 = v110[1];
    sub_1000BCAA0((*a3 + 40 * *v108), (*a3 + 40 * *v110), *a3 + 40 * v111, v125);
    if (v127)
    {
      break;
    }

    if (v111 < v109)
    {
      goto LABEL_134;
    }

    if (v107 - 2 >= *v106)
    {
      goto LABEL_135;
    }

    *v108 = v109;
    v108[1] = v111;
    v112 = *v106 - v107;
    if (*v106 < v107)
    {
      goto LABEL_136;
    }

    v127 = 0;
    v107 = *v106 - 1;
    memmove(v110, v110 + 2, 16 * v112);
    *v106 = v107;
  }

LABEL_118:
}

uint64_t sub_1000BCAA0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a2;
  v5 = (a2 - a1) / 40;
  v6 = (a3 - a2) / 40;
  if (v5 < v6)
  {
    sub_10000E2B8(a1, (a2 - a1) / 40, a4);
    v7 = a4;
    v9 = a3;
    v8 = a1;
    v10 = &a4[40 * v5];
    while (1)
    {
      if (v7 >= v10 || v4 >= v9)
      {
        v23 = v8;
        goto LABEL_41;
      }

      v12 = *(v4 + 2);
      v13 = *(v7 + 2);
      __srca = v7;
      v14 = *(v4 + 3) == *(v7 + 3) && *(v4 + 4) == *(v7 + 4);
      if (v14 || (v15 = v8, v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), v9 = a3, v8 = v15, (v16 & 1) != 0))
      {
        if (v12 >= v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v9 = a3;
        v8 = v15;
        if ((v18 & 1) == 0)
        {
LABEL_17:
          v17 = __srca;
          v7 = __srca + 40;
          if (v8 == __srca)
          {
            goto LABEL_19;
          }

LABEL_18:
          v19 = *v17;
          v20 = *(v17 + 1);
          *(v8 + 4) = *(v17 + 4);
          *v8 = v19;
          *(v8 + 1) = v20;
          goto LABEL_19;
        }
      }

      v17 = v4;
      v14 = v8 == v4;
      v4 += 40;
      v7 = __srca;
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v8 += 40;
    }
  }

  sub_10000E2B8(a2, (a3 - a2) / 40, a4);
  v7 = a4;
  v22 = a3;
  v21 = a1;
  v10 = &a4[40 * v6];
LABEL_21:
  v23 = v4;
  for (v22 -= 40; v10 > v7 && v4 > v21; v22 -= 40)
  {
    v25 = *(v10 - 3);
    v26 = *(v4 - 3);
    v27 = *(v10 - 2) == *(v4 - 2) && *(v10 - 1) == *(v4 - 1);
    if (v27 || (v28 = v22, v29 = _stringCompareWithSmolCheck(_:_:expecting:)(), v7 = a4, v22 = v28, v21 = a1, (v29 & 1) != 0))
    {
      if (v25 < v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v7 = a4;
      v22 = v28;
      v21 = a1;
      if (v30)
      {
LABEL_38:
        v4 -= 40;
        if ((v22 + 40) != v23)
        {
          v33 = *v4;
          v34 = *(v23 - 24);
          *(v22 + 32) = *(v23 - 1);
          *v22 = v33;
          *(v22 + 16) = v34;
        }

        goto LABEL_21;
      }
    }

    if (v10 != (v22 + 40))
    {
      v31 = *(v10 - 40);
      v32 = *(v10 - 24);
      *(v22 + 32) = *(v10 - 1);
      *v22 = v31;
      *(v22 + 16) = v32;
    }

    v10 -= 40;
  }

LABEL_41:
  v35 = (v10 - v7) / 40;
  if (v23 != v7 || v23 >= &v7[40 * v35])
  {
    memmove(v23, v7, 40 * v35);
  }

  return 1;
}

char *sub_1000BCD3C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1000BCD68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002EB80(&qword_10019A4E0, &qword_10014F220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unsigned __int8 *sub_1000BCE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1000BDA1C();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000BD3FC(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000BD3FC(uint64_t a1, unint64_t a2)
{
  v2 = sub_1000BD468(sub_1000BD464, 0, a1, a2);
  v6 = sub_1000BD49C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1000BD49C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000A7A4(v9, 0), v12 = sub_1000BD5FC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000BD5FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1000BD80C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1000BD80C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1000BD80C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000BD89C(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_10019B6C0, &qword_100150A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BD940(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1000BDA70(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1000BDA1C()
{
  result = qword_10019B6D0;
  if (!qword_10019B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B6D0);
  }

  return result;
}

uint64_t sub_1000BDA70(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1000BD80C(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1000BD80C(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1000BD80C(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

id sub_1000BDEAC()
{
  result = [objc_opt_self() defaultCenter];
  qword_10019E080 = result;
  return result;
}

void sub_1000BDEE8(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Notification();
  sub_100002944();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100006844();
  __chkstk_darwin(v9);
  v10 = sub_100013550();
  v11 = sub_1000275B8(v10);
  v12 = sub_1000BE178(v11, &_swiftEmptySetSingleton);

  sub_100007BB4();
  v13.n128_u64[0] = 136315138;
  sub_100018470(v13);
  while (1)
  {
    if (v29 == v14)
    {

      return;
    }

    if (v14 >= *(v12 + 2))
    {
      break;
    }

    v15 = sub_10000803C();
    v12(v15);
    v16.super.isa = Notification._bridgeToObjectiveC()().super.isa;
    [a2 postNotification:v16.super.isa];

    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000347C(v17, qword_10019E008);
    v18 = sub_100011898();
    v12(v18);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v4 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      sub_10000381C(v21);
      v22 = sub_10000529C();
      (v2)(v22);
      v23 = sub_100004C50(v16.super.isa, v7, &v31);
      v7 = v24;

      *(v4 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Sent transcript notification %s", v4, 0xCu);
      sub_1000034F8(v3);

      sub_100003BB4();
    }

    else
    {

      v2 = *v25;
      (*v25)(v4, v5);
    }

    v12 = v27;
    v2(v3, v5);
    v14 = v30 + 1;
    v2 = v26;
  }

  __break(1u);
}

void *sub_1000BE178(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Notification();
  sub_100002944();
  v5 = v4;
  __chkstk_darwin(v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = *(a1 + 16);
  v12 = &off_10014B000;
  v45 = v5;
  if (v11)
  {
    v13 = LNTranscriptChangedNotification;
    v49 = 0u;
    v50 = 0u;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v15;

    v16 = v13;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v17;
    AnyHashable.init<A>(_:)();
    v18 = sub_10009FD18();
    v19 = sub_1000A1F48(a1);
    sub_10006DE3C(v19);

    v20 = sub_100034D2C();
    *(inited + 168) = v18;
    *(inited + 144) = v20;
    Dictionary.init(dictionaryLiteral:)();
    Notification.init(name:object:userInfo:)();
    sub_100070514(0, 1, 1, _swiftEmptyArrayStorage);
    v22 = v21;
    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      sub_100002C04(v23);
      v22 = v40;
    }

    v26 = v45;
    v25 = v46;
    v22[2] = v24 + 1;
    (*(v26 + 32))(v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, v10, v25);
    v12 = &off_10014B000;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  if (*(a2 + 16))
  {
    v27 = LNTranscriptChangedNotification;
    v49 = 0u;
    v50 = 0u;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    v28 = swift_initStackObject();
    *(v28 + 16) = *(v12 + 196);
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v29;

    v30 = v27;
    AnyHashable.init<A>(_:)();
    *(v28 + 96) = &type metadata for Int;
    *(v28 + 72) = 1;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v31;
    AnyHashable.init<A>(_:)();
    v32 = sub_10009FD18();
    v33 = sub_1000A1F48(a2);
    sub_10006DE3C(v33);

    v34 = sub_100034D2C();
    *(v28 + 168) = v32;
    *(v28 + 144) = v34;
    Dictionary.init(dictionaryLiteral:)();
    v35 = v44;
    Notification.init(name:object:userInfo:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070514(0, v22[2] + 1, 1, v22);
      v22 = v41;
    }

    v37 = v22[2];
    v36 = v22[3];
    v38 = v45;
    if (v37 >= v36 >> 1)
    {
      sub_100002C04(v36);
      v22 = v42;
    }

    v22[2] = v37 + 1;
    (*(v38 + 32))(v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37, v35, v46);
  }

  return v22;
}

void sub_1000BE5E4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Notification();
  sub_100002944();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100006844();
  __chkstk_darwin(v9);
  v10 = sub_100013550();
  v11 = sub_1000275B8(v10);
  v12 = sub_1000BE178(&_swiftEmptySetSingleton, v11);

  sub_100007BB4();
  v13.n128_u64[0] = 136315138;
  sub_100018470(v13);
  while (1)
  {
    if (v29 == v14)
    {

      return;
    }

    if (v14 >= *(v12 + 2))
    {
      break;
    }

    v15 = sub_10000803C();
    v12(v15);
    v16.super.isa = Notification._bridgeToObjectiveC()().super.isa;
    [a2 postNotification:v16.super.isa];

    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000347C(v17, qword_10019E008);
    v18 = sub_100011898();
    v12(v18);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v4 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      sub_10000381C(v21);
      v22 = sub_10000529C();
      (v2)(v22);
      v23 = sub_100004C50(v16.super.isa, v7, &v31);
      v7 = v24;

      *(v4 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Sent transcript notification %s", v4, 0xCu);
      sub_1000034F8(v3);

      sub_100003BB4();
    }

    else
    {

      v2 = *v25;
      (*v25)(v4, v5);
    }

    v12 = v27;
    v2(v3, v5);
    v14 = v30 + 1;
    v2 = v26;
  }

  __break(1u);
}

void *sub_1000BE888()
{
  if (qword_100198320 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v0 = qword_10019E088;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 localizedStringForLocaleIdentifier:v1];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (qword_100198328 != -1)
    {
      swift_once();
    }

    v3 = qword_10019E090;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForLocaleIdentifier:v4];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v6;
    if (qword_100198338 != -1)
    {
      swift_once();
    }

    v7 = qword_10019E0A0;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForLocaleIdentifier:v8];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = sub_10000BE0C();
    v54 = v53;
    v59 = v53;
    v52 = v53;
    sub_100002CA8();
    v58 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    if (qword_100198330 != -1)
    {
      swift_once();
    }

    if ((qword_10019E098 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v14 = -1 << *(qword_10019E098 + 32);
      v11 = ~v14;
      v10 = qword_10019E098 + 64;
      v15 = -v14;
      v16 = v15 < 64 ? ~(-1 << v15) : -1;
      v12 = v16 & *(qword_10019E098 + 64);
      v13 = qword_10019E098;
    }

    v17 = 0;
    v18 = (v11 + 64) >> 6;
    v56 = v13;
    v57 = v10;
    v55 = v18;
    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_15:
    v19 = v17;
    v20 = v12;
    v21 = v17;
    if (v12)
    {
LABEL_19:
      v22 = (v20 - 1) & v20;
      v23 = (v21 << 9) | (8 * __clz(__rbit64(v20)));
      v24 = *(*(v13 + 56) + v23);
      v25 = *(*(v13 + 48) + v23);
      v26 = v24;
      goto LABEL_22;
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_27;
      }

      v20 = *(v10 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v21 = v17;
    if (!__CocoaDictionary.Iterator.next()())
    {
      break;
    }

    sub_1000BF970();
    swift_dynamicCast();
    v25 = v65;
    swift_dynamicCast();
    v26 = v65;
    v22 = v12;
LABEL_22:
    if (!v25)
    {
      break;
    }

    v64 = v25;
    v63 = v22;
    v27 = String._bridgeToObjectiveC()();
    v62 = v26;
    v28 = [v26 localizedStringForLocaleIdentifier:{v27, &type metadata for String, v52, v53, v54}];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = qword_100198340;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = qword_10019E0A8;
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 localizedStringForLocaleIdentifier:v34];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v29;
    v39._object = v31;
    String.append(_:)(v39);

    v60 = v38;
    v61 = v36;
    v40 = String._bridgeToObjectiveC()();
    v41 = [v64 localizedStringForLocaleIdentifier:v40];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008068();
    sub_100002CA8();
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v44 = v43;
    v65 = v58;
    sub_100008068();
    v52 = v59;
    sub_100002CA8();
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v47 = v46;

    sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10014CE90;
    *(v48 + 32) = v42;
    *(v48 + 40) = v44;
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10014CE90;
    *(v49 + 32) = v45;
    *(v49 + 40) = v47;
    sub_10002EB80(&qword_10019A4F8, &unk_100150170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    *(inited + 32) = 0;
    *(inited + 40) = 0xE000000000000000;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 64) = v29;
    *(inited + 72) = v31;
    *(inited + 80) = v48;
    *(inited + 88) = 0;
    *(inited + 96) = 0;
    *(inited + 104) = 0xE000000000000000;
    *(inited + 112) = 0;
    *(inited + 120) = 0xE000000000000000;
    *(inited + 128) = v61;
    *(inited + 136) = v60;
    *(inited + 144) = v49;
    *(inited + 152) = 0;
    sub_10006E450(inited);

    v17 = v21;
    v12 = v63;
    v13 = v56;
    v10 = v57;
    v18 = v55;
    if ((v56 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  sub_100014464(v13);

  return _swiftEmptyArrayStorage;
}