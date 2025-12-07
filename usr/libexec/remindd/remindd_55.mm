unint64_t sub_10050AE3C()
{
  result = qword_10094B2E0;
  if (!qword_10094B2E0)
  {
    sub_1000060C8(255, &qword_100946540, CLRegion_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B2E0);
  }

  return result;
}

uint64_t sub_10050AEAC(void *a1)
{
  v3 = sub_1000F5104(&qword_10094B300, &qword_1007AF488);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10000F61C(a1, a1[3]);
  sub_10050B734();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_10050B04C()
{
  v1 = 1701667182;
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
    return 1701869940;
  }
}

uint64_t sub_10050B09C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_10050B400(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_10050B0C4(uint64_t a1)
{
  v2 = sub_10050B734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050B100(uint64_t a1)
{
  v2 = sub_10050B734();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10050B13C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10050B520(a2, v6);
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

uint64_t sub_10050B19C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t initializeWithCopy for RDSavedHashtag(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void *assignWithCopy for RDSavedHashtag(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a1[2];
  a1[2] = a2[2];

  v4, v5, v6, v7, v8, v9, v10, v11;
  a1[3] = a2[3];
  v12 = a2[4];
  v13 = a1[4];
  a1[4] = v12;

  v13, v14, v15, v16, v17, v18, v19, v20;
  return a1;
}

uint64_t assignWithTake for RDSavedHashtag(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  v10 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v10, a2, a3, a4, a5, a6, a7, a8;
  v11 = *(a2 + 32);
  v12 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v11;
  v12, v13, v14, v15, v16, v17, v18, v19;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedHashtag(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for RDSavedHashtag(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10050B400(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001007FB970 == a2)
  {
    a2, 0x80000001007FB970, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10050B520@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10094B2F0, &qword_1007AF480);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v20 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_10050B734();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v24 = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v21 = v11;
  v22 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = sub_10000607C(a1);
  v19 = v21;
  *a2 = v10;
  a2[1] = v19;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v17;
  return result;
}

unint64_t sub_10050B734()
{
  result = qword_10094B2F8;
  if (!qword_10094B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B2F8);
  }

  return result;
}

unint64_t sub_10050B79C()
{
  result = qword_10094B308;
  if (!qword_10094B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B308);
  }

  return result;
}

unint64_t sub_10050B7F4()
{
  result = qword_10094B310;
  if (!qword_10094B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B310);
  }

  return result;
}

unint64_t sub_10050B84C()
{
  result = qword_10094B318;
  if (!qword_10094B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B318);
  }

  return result;
}

id sub_10050B8A0@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedBabysitter];
  v3 = result;
  if (result)
  {
    result = sub_10050C7B8();
    v4 = &off_1008F54F0;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

void sub_10050B90C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(&v52, a3, a4);
  if (!v53)
  {
    sub_1000050A4(&v52, &unk_10093D8F0, &unk_10079B600);
    return;
  }

  sub_100054B6C(&v52, v54);
  v7 = v55;
  v8 = v56;
  sub_10000F61C(v54, v55);
  (*(v8 + 16))(v4, v7, v8);
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094B320);

  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    a2, v13, v14, v15, v16, v17, v18, v19;

    goto LABEL_9;
  }

  v20 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  *v20 = 136446466;
  v21 = [v10 waiterID];

  a2, v22, v23, v24, v25, v26, v27, v28;
  if (v21)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10000668C(v29, v31, &v51);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v20 + 4) = v32;
    *(v20 + 12) = 2082;
    *&v52 = a1;
    *(&v52 + 1) = a2;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v40 = Optional.descriptionOrNil.getter();
    v42 = v41;
    v43 = sub_10000668C(v40, v41, &v51);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v20 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reset babysitter for {waiterID: %{public}s, event: %{public}s}", v20, 0x16u);
    swift_arrayDestroy();

LABEL_9:

    sub_10000607C(v54);
    return;
  }

  __break(1u);
}

void sub_10050BBA8(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1[3];
  v9 = a1[4];
  sub_10000F61C(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  v13 = sub_10050BF80(v10, v11, a2, a3);
  if (v4)
  {
    v12, v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v55 = v13;
  v12, v14, v15, v16, v17, v18, v19, v20;
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_10094B320);
  sub_100030E2C(a1, v56);
  v22 = v3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v23, v24))
  {

    sub_10000607C(v56);
    goto LABEL_9;
  }

  v53 = v24;
  v25 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  *v25 = 136446466;
  v26 = [v22 waiterID];
  v54 = v22;

  if (v26)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_10000668C(v27, v29, &v59);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v38 = v57;
    v39 = v58;
    sub_10000F61C(v56, v57);
    v40 = (*(v39 + 8))(v38, v39);
    v42 = v41;
    sub_10000607C(v56);
    v43 = sub_10000668C(v40, v42, &v59);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v25 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v23, v53, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v25, 0x16u);
    swift_arrayDestroy();

    v22 = v54;
LABEL_9:
    v51 = a1[3];
    v52 = a1[5];
    sub_10000F61C(a1, v51);
    (*(v52 + 8))(v51, v52);
    sub_10050C58C(v22, a1);

    return;
  }

  __break(1u);
}

uint64_t sub_10050BEB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B320);
  v1 = sub_100006654(v0, qword_10094B320);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10050BF80(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  (*(a4 + 8))(v12, a3, a4);
  v8 = v13;
  if (!v13)
  {
    sub_1000050A4(v12, &unk_10093D8F0, &unk_10079B600);
LABEL_5:
    v10 = v5;
    sub_10050C12C(a1, a2);
    swift_willThrow();
    return v10;
  }

  v9 = v14;
  sub_10000F61C(v12, v13);
  v10 = (*(v9 + 8))(v4, a1, a2, v8, v9);
  sub_10000607C(v12);
  if (!v10)
  {
    goto LABEL_5;
  }

  return v10;
}

id sub_10050C098()
{
  result = [v0 waiterID];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = 0x646568736172632ELL;
    v6._object = 0xE800000000000000;
    String.append(_:)(v6);
    v5, v7, v8, v9, v10, v11, v12, v13;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10050C12C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 babySatErrorWithOperationName:v6];

  sub_1000F5104(&unk_10093D030, &unk_10079C950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = String._bridgeToObjectiveC()();
  v9 = sub_10038D9FC(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
  type metadata accessor for Analytics();
  sub_10050C098();
  v11 = v10;
  v12 = sub_1004646CC();
  v9, v13, v14, v15, v16, v17, v18, v19;
  v20 = v7;
  static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();
  v11, v21, v22, v23, v24, v25, v26, v27;
  v12, v28, v29, v30, v31, v32, v33, v34;

  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100006654(v35, qword_10094B320);

  v36 = v2;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.fault.getter();
  a2, v39, v40, v41, v42, v43, v44, v45;
  if (!os_log_type_enabled(v37, v38))
  {

    goto LABEL_7;
  }

  v46 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  *v46 = 136446466;
  *(v46 + 4) = sub_10000668C(a1, a2, &v59);
  *(v46 + 12) = 2082;
  v47 = [v36 waiterID];

  if (v47)
  {
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = sub_10000668C(v48, v50, &v59);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v46 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v37, v38, "Babysitting operation because it failed too many times {operation: %{public}s, waiterID: %{public}s}", v46, 0x16u);
    swift_arrayDestroy();

LABEL_7:

    return;
  }

  __break(1u);
}

id sub_10050C458(uint64_t a1)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 tokenByRegisteringAccount:a1 forOperationWithName:v4];

  return v5;
}

void sub_10050C4C0(void *a1)
{
  v2 = *v1;
  v3 = [a1 waiterID];
  [v2 giveAccountWithIDAnotherChance:v3];
}

uint64_t sub_10050C528(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

void sub_10050C58C(void *a1, uint64_t a2)
{
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094B320);
  sub_100030E2C(a2, v35);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = [v5 waiterID];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10000668C(v10, v12, &v34);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      *(v8 + 12) = 2082;
      v21 = v36;
      v22 = v37;
      sub_10000F61C(v35, v36);
      v23 = (*(v22 + 8))(v21, v22);
      v25 = v24;
      sub_10000607C(v35);
      v26 = sub_10000668C(v23, v25, &v34);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v8 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v6, v7, "Released babysitter token for {waiterID: %{public}s, executable: %{public}s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_10000607C(v35);
  }
}

unint64_t sub_10050C7B8()
{
  result = qword_100936FB0;
  if (!qword_100936FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100936FB0);
  }

  return result;
}

uint64_t sub_10050C858(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_10050C8F8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a2 + v6 + 8;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 8) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t sub_10050CA04(_TtC7remindd19RDXPCStorePerformer **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = *(*(a2 + 16) - 8);
  v11 = *(v10 + 8);
  v12 = (a1 + *(v10 + 80) + 8) & ~*(v10 + 80);

  return v11(v12);
}

uint64_t *sub_10050CA78(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = a2 + v6 + 8;

  v5((a1 + v6 + 8) & ~v6, v7 & ~v6, v4);
  return a1;
}

_TtC7remindd19RDXPCStorePerformer **sub_10050CB08(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = *(*(a3 + 16) - 8);
  (*(v14 + 24))((a1 + *(v14 + 80) + 8) & ~*(v14 + 80), (a2 + *(v14 + 80) + 8) & ~*(v14 + 80));
  return a1;
}

void *sub_10050CB98(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

_TtC7remindd19RDXPCStorePerformer **sub_10050CC08(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *a1;
  *a1 = *a2;
  v11, a2, a3, a4, a5, a6, a7, a8;
  v12 = *(a3[2] - 8);
  (*(v12 + 40))((a1 + *(v12 + 80) + 8) & ~*(v12 + 80), &a2[*(v12 + 80) + 8] & ~*(v12 + 80));
  return a1;
}

uint64_t sub_10050CC90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10050CE14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_10050D07C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_10050D114(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_10050D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_10050D2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_10050D334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_10050D3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_10050D434(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_10050D538(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_10050D6D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B568);
  v1 = sub_100006654(v0, qword_10094B568);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10050D7A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!*(a1 + 16))
  {
    v10 = 0;
    goto LABEL_16;
  }

  v9 = sub_100005F4C(0xD000000000000013, 0x80000001007FB9D0);
  if ((a2 & 1) == 0)
  {
    v10 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_10;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  sub_100005EF0(*(a1 + 56) + 32 * v9, v69);
  if (swift_dynamicCast())
  {
    v10 = v68;
  }

  else
  {
    v10 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_10:
  v11 = sub_100005F4C(0x7274537865486164, 0xEB00000000676E69);
  if (a2)
  {
    sub_100005EF0(*(a1 + 56) + 32 * v11, v69);
    if (swift_dynamicCast())
    {
      v12 = v68;
    }

    else
    {
      v12 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  v27 = sub_100005F4C(0xD000000000000013, 0x80000001007FB9F0);
  if (a2)
  {
    sub_100005EF0(*(a1 + 56) + 32 * v27, v69);
    if (swift_dynamicCast())
    {
      v13 = v68;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_40;
    }

    goto LABEL_18;
  }

LABEL_17:
  v13 = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_40;
  }

LABEL_18:
  v14 = sub_100005F4C(6579570, 0xE300000000000000);
  if (a2)
  {
    sub_100005EF0(*(a1 + 56) + 32 * v14, v69);
    if (swift_dynamicCast())
    {
      if (*(a1 + 16))
      {
        v15 = sub_100005F4C(0x6E65657267, 0xE500000000000000);
        if (a2)
        {
          sub_100005EF0(*(a1 + 56) + 32 * v15, v69);
          if (swift_dynamicCast())
          {
            if (*(a1 + 16))
            {
              v16 = sub_100005F4C(1702194274, 0xE400000000000000);
              if (a2)
              {
                sub_100005EF0(*(a1 + 56) + 32 * v16, v69);
                if (swift_dynamicCast())
                {
                  if (*(a1 + 16))
                  {
                    v17 = sub_100005F4C(0x6168706C61, 0xE500000000000000);
                    if (a2)
                    {
                      sub_100005EF0(*(a1 + 56) + 32 * v17, v69);
                      if (swift_dynamicCast())
                      {
                        if (*(a1 + 16))
                        {
                          v18 = sub_100005F4C(0x424752726F6C6F63, 0xED00006563617053);
                          if (a2)
                          {
                            sub_100005EF0(*(a1 + 56) + 32 * v18, v69);
                            if (swift_dynamicCast())
                            {
                              if (v10)
                              {
                                v19 = String._bridgeToObjectiveC()();
                                v10, v20, v21, v22, v23, v24, v25, v26;
                              }

                              else
                              {
                                v19 = 0;
                              }

                              if (v12)
                              {
                                v51 = String._bridgeToObjectiveC()();
                                v12, v52, v53, v54, v55, v56, v57, v58;
                              }

                              else
                              {
                                v51 = 0;
                              }

                              if (v13)
                              {
                                v59 = String._bridgeToObjectiveC()();
                                v13, v60, v61, v62, v63, v64, v65, v66;
                              }

                              else
                              {
                                v59 = 0;
                              }

                              v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:*&v67 green:v19 blue:v51 alpha:v59 colorSpace:v67 daSymbolicColorName:v67 daHexString:v67 ckSymbolicColorName:v67];

                              return v45;
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

LABEL_40:
  v13, a2, a3, a4, a5, a6, a7, a8;
  if (v10)
  {
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v29 = String._bridgeToObjectiveC()();
    v10, v30, v31, v32, v33, v34, v35, v36;
    if (!v12)
    {
      v37 = 0;
LABEL_46:
      v45 = [v28 initWithDASymbolicColorName:v29 daHexString:v37];

      return v45;
    }

LABEL_45:
    v37 = String._bridgeToObjectiveC()();
    v12, v38, v39, v40, v41, v42, v43, v44;
    goto LABEL_46;
  }

  if (v12)
  {
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v29 = 0;
    goto LABEL_45;
  }

  if (qword_100936378 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100006654(v47, qword_10094B568);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Can't construct REMColor from invalid JSON", v50, 2u);
  }

  return 0;
}

id sub_10050DD50@<X0>(uint64_t a1@<X0>, void *a2@<X8>, const char *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_10050D7A0(a1, a3, a4, a5, a6, a7, a8, a9);
  *a2 = result;
  return result;
}

char *sub_10050DD78(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v293 = a8;
  v309 = type metadata accessor for UUID();
  v292 = *(v309 - 8);
  __chkstk_darwin(v309, v16);
  v326 = &v291 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for TimeZone();
  v302 = *(v323 - 8);
  __chkstk_darwin(v323, v18);
  v322 = &v291 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for Calendar.Identifier();
  v295 = *(v321 - 1);
  __chkstk_darwin(v321, v20);
  v320 = &v291 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for Calendar();
  v294 = *(v319 - 1);
  __chkstk_darwin(v319, v22);
  v318 = (&v291 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v324 = type metadata accessor for DateComponents();
  v313 = *(v324 - 8);
  __chkstk_darwin(v324, v24);
  v317 = &v291 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for Date();
  v304 = *(v327 - 8);
  __chkstk_darwin(v327, v26);
  v325 = &v291 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v316 = &v291 - v30;
  v31 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v31 - 8, v32);
  v297 = (&v291 - v33);
  v34 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v34 - 8, v35);
  v296 = &v291 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v38);
  v301 = &v291 - v39;
  __chkstk_darwin(v40, v41);
  v300 = &v291 - v42;
  v43 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v43 - 8, v44);
  v308 = &v291 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v47);
  v49 = &v291 - v48;
  __chkstk_darwin(v50, v51);
  v298 = &v291 - v52;
  v53 = [objc_allocWithZone(REMReminderStorage) initWithObjectID:a2 listID:a3 accountID:a4];
  v54 = a5;
  v55 = v53;
  [v53 setParentReminderID:v54];
  [v55 setMinimumSupportedVersion:a6];
  [v55 setEffectiveMinimumSupportedVersion:a7];
  v56 = type metadata accessor for RDSavedReminder(0);
  v311 = a4;
  v312 = v56;
  v57 = *(a1 + *(v56 + 36));
  v310 = a2;
  v299 = v49;
  if (v57)
  {
    v333 = sub_10038E004(&_swiftEmptyArrayStorage);
    v58 = _swiftEmptySetSingleton;
    v334[0] = _swiftEmptySetSingleton;
    v59 = *(v57 + 16);
    v329 = a2;
    v328 = a4;
    if (v59)
    {
      v303 = v55;
      v305 = a1;
      v60 = (v57 + 64);
      do
      {
        v331 = v59;
        v73 = *(v60 - 2);
        v330 = *(v60 - 1);
        v74 = *v60;
        v75 = *(v60 - 4);
        v76 = objc_opt_self();

        v77 = [v76 newObjectID];
        v78 = objc_allocWithZone(REMHashtag);
        v332 = v73;
        v79 = String._bridgeToObjectiveC()();
        v80 = [v78 initWithObjectID:v77 accountID:v328 reminderID:v329 type:v75 name:v79];

        v81 = v80;
        sub_10037C094(&v335, v81);

        v89 = v333;
        if (v333)
        {

          v61 = [v81 objectIdentifier];
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v335 = v89;
          sub_1002C72CC(v62, v64, v330, v74, isUniquelyReferenced_nonNull_native);
          v332, v66, v67, v68, v69, v70, v71, v72;

          swift_bridgeObjectRelease_n();
          v333 = v335;
        }

        else
        {
          v74, v82, v83, v84, v85, v86, v87, v88;
          v332, v90, v91, v92, v93, v94, v95, v96;

          v333 = 0;
        }

        v60 += 5;
        v59 = v331 - 1;
      }

      while (v331 != 1);
      v58 = v334[0];
      a1 = v305;
      v55 = v303;
    }

    sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
    sub_10000CE28(&qword_10093AA28, &unk_10093F600, REMHashtag_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v58, v98, v99, v100, v101, v102, v103, v104;
    [v55 setHashtags:isa];
  }

  else
  {
    v333 = 0;
  }

  v105 = [v55 titleReplicaIDSource];
  v106 = (a1 + v312[15]);
  v107 = *v106;
  v108 = v106[1];
  v109 = objc_allocWithZone(REMCRMergeableStringDocument);
  sub_100029344(v107, v108);
  v110 = v314;
  v111 = sub_1002F937C(v105);
  sub_10001BBA0(v107, v108);
  v332 = v110;
  if (v110)
  {

    goto LABEL_122;
  }

  if (v333)
  {
    v119 = REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)();

    v120 = v119;
    v121 = v312;
  }

  else
  {
    v121 = v312;
    v120 = v111;
  }

  v122 = v304;
  [v55 setTitleDocument:v120];
  v123 = a1 + v121[10];
  v124 = *(v123 + 8);
  v125 = v327;
  if (v124 >> 60 == 15)
  {
    v126 = v299;
  }

  else
  {
    v127 = *v123;
    sub_100029344(*v123, *(v123 + 8));
    v128 = [v55 notesReplicaIDSource];
    v129 = objc_allocWithZone(REMCRMergeableStringDocument);
    sub_100029344(v127, v124);
    v130 = v332;
    v131 = sub_1002F937C(v128);
    sub_100031A14(v127, v124);

    v332 = v130;
    if (v130)
    {
      sub_100031A14(v127, v124);
      goto LABEL_105;
    }

    if (v333)
    {
      v132 = REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)();

      v131 = v132;
    }

    v122 = v304;
    v126 = v299;
    [v55 setNotesDocument:v131];
    sub_100031A14(v127, v124);
  }

  v133 = v312;
  [v55 setPriority:*(a1 + v312[11])];
  [v55 setFlagged:*(a1 + v133[8])];
  v305 = a1;
  v134 = v298;
  sub_100010364(a1, v298, &unk_100938850, qword_100795AE0);
  v306 = *(v122 + 48);
  v307 = v122 + 48;
  if (v306(v134, 1, v125) == 1)
  {
    v135 = 0;
  }

  else
  {
    v135 = Date._bridgeToObjectiveC()().super.isa;
    (*(v122 + 8))(v134, v125);
  }

  [v55 setCreationDate:v135];

  sub_100010364(v305, v126, &unk_100938850, qword_100795AE0);
  if (v306(v126, 1, v125) == 1)
  {
    v136 = 0;
  }

  else
  {
    v136 = Date._bridgeToObjectiveC()().super.isa;
    (*(v122 + 8))(v126, v125);
  }

  [v55 setLastModifiedDate:v136];

  v137 = v300;
  sub_100010364(v305 + v133[13], v300, &qword_10093B790, &qword_100798D88);
  v138 = v313;
  v139 = *(v313 + 48);
  v140 = v324;
  if (v139(v137, 1, v324) == 1)
  {
    v141 = 0;
  }

  else
  {
    v142 = v137;
    v141 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v138 + 8))(v142, v140);
  }

  [v55 setStartDateComponents:v141];

  v143 = v133[7];
  v144 = v305;
  v145 = v301;
  sub_100010364(v305 + v143, v301, &qword_10093B790, &qword_100798D88);
  if (v139(v145, 1, v140) == 1)
  {
    v146 = 0;
  }

  else
  {
    v146 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v313 + 8))(v145, v140);
  }

  [v55 setDueDateComponents:v146];

  v147 = sub_1001C7758();
  [v55 setDisplayDate:v147];

  v148 = sub_1001C7758();
  v149 = &selRef_persistentStoreForIdentifier_;
  if (v148)
  {
    v150 = v148;
    v151 = [v148 isAllDay];

    [v55 setAllDay:v151];
    if (v151)
    {
      v152 = 0;
      v153 = v312;
      v154 = v302;
      goto LABEL_41;
    }
  }

  else
  {
    [v55 setAllDay:0];
  }

  v155 = v296;
  sub_100010364(v144 + v143, v296, &qword_10093B790, &qword_100798D88);
  v156 = v324;
  if (v139(v155, 1, v324) != 1)
  {
    v149 = v297;
    DateComponents.timeZone.getter();
    v157 = v313;
    (*(v313 + 8))(v155, v156);
    v154 = v302;
    v158 = v323;
    if ((*(v302 + 48))(v149, 1, v323) == 1)
    {
      v152 = 0;
      v153 = v312;
    }

    else
    {
      v159 = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v154 + 8))(v149, v158);
      v152 = [(objc_class *)v159 name];

      v153 = v312;
      if (!v152)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v161 = v160;
        v152 = String._bridgeToObjectiveC()();
        v162 = v161;
        v153 = v312;
        v162, v163, v164, v165, v166, v167, v168, v169;
      }
    }

    goto LABEL_46;
  }

  sub_1000050A4(v155, &qword_10093B790, &qword_100798D88);
  v154 = v302;
  (*(v302 + 56))(v297, 1, 1, v323);
  v152 = 0;
  v153 = v312;
LABEL_41:
  v157 = v313;
LABEL_46:
  [v55 setTimeZone:v152];

  v170 = (v144 + v153[5]);
  v171 = *v170;
  v303 = v55;
  if (v171)
  {
    v172 = v170[3];
    v301 = v170[2];
    v302 = v172;
    v173 = v170[1];
    v149 = &_swiftEmptyArrayStorage;
    v335 = &_swiftEmptyArrayStorage;
    v174 = *(v171 + 16);
    if (v174)
    {
      v300 = v173;
      v175 = v171 + 32;
      LODWORD(v331) = enum case for Calendar.Identifier.gregorian(_:);
      v329 = (v295 + 8);
      v330 = (v295 + 104);
      v328 = (v154 + 8);
      v313 = v157 + 8;
      v314 = (v294 + 8);
      v176 = (v304 + 8);
      v177 = v316;
      do
      {
        Date.init(timeIntervalSinceReferenceDate:)();
        v179 = v320;
        v178 = v321;
        (*v330)(v320, v331, v321);
        v180 = v318;
        Calendar.init(identifier:)();
        (*v329)(v179, v178);
        v181 = v322;
        static TimeZone.current.getter();
        v182 = v317;
        Calendar.dateComponents(in:from:)();
        (*v328)(v181, v323);
        (v314->super.isa)(v180, v319);
        v183 = objc_allocWithZone(REMAlarmDateTrigger);
        v184 = DateComponents._bridgeToObjectiveC()().super.isa;
        v185 = [v183 initWithDateComponents:v184];

        (*v313)(v182, v324);
        (*v176)(v177, v327);
        v186 = v185;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v299 = *((v335 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v175 += 8;
        --v174;
      }

      while (v174);
      v149 = v335;
      v144 = v305;
      v173 = v300;
    }

    v187 = *(v173 + 16);
    v55 = v303;
    if (v187)
    {
      v188 = (v173 + 32);
      sub_1000060C8(0, &qword_10094B768, REMAlarmLocationTrigger_ptr);
      while (1)
      {
        v338[0] = *v188;
        v189 = v188[1];
        v190 = v188[2];
        v191 = v188[4];
        v338[3] = v188[3];
        v338[4] = v191;
        v338[1] = v189;
        v338[2] = v190;
        v192 = v188[5];
        v193 = v188[6];
        v194 = v188[8];
        v338[7] = v188[7];
        v338[8] = v194;
        v338[5] = v192;
        v338[6] = v193;
        sub_1000FE280(v338, v334);
        sub_1000FE280(v338, v334);
        v195 = v332;
        v196 = sub_1000FE330(v338);
        v332 = v195;
        if (v195)
        {
          break;
        }

        v197 = v196;
        sub_1000FE2DC(v338);
        v198 = v197;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v149 = v335;
        sub_1000FE2DC(v338);
        v188 += 9;
        if (!--v187)
        {
          goto LABEL_59;
        }
      }

      sub_1000FE2DC(v338);
      sub_1000FE2DC(v338);
      v261 = v149;
LABEL_104:
      v261, v254, v255, v256, v257, v258, v259, v260;
LABEL_105:

      goto LABEL_122;
    }

LABEL_59:
    v199 = *(v301 + 16);
    if (v199)
    {
      v200 = (v301 + 32);
      do
      {
        v201 = [objc_allocWithZone(REMAlarmTimeIntervalTrigger) initWithTimeInterval:*v200];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v55 = v303;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v200;
        --v199;
      }

      while (v199);
      v149 = v335;
    }

    v202 = *(v302 + 16);
    if (v202)
    {
      v203 = (v302 + 32);
      do
      {
        v204 = *v203++;
        v205 = [objc_allocWithZone(REMAlarmVehicleTrigger) initWithEvent:v204];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v55 = v303;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        --v202;
      }

      while (v202);
      v149 = v335;
    }

    if (v149 >> 62)
    {
LABEL_107:
      v206 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v206 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v207 = &_swiftEmptyArrayStorage;
    if (v206)
    {
      v334[0] = &_swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v206 < 0)
      {
        __break(1u);
        return result;
      }

      v209 = 0;
      do
      {
        if ((v149 & 0xC000000000000001) != 0)
        {
          v210 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v210 = *&v149->clientIdentity[8 * v209 + 16];
        }

        v211 = v210;
        ++v209;
        [objc_allocWithZone(REMAlarm) initWithTrigger:v210];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v206 != v209);
      v207 = v334[0];
      v144 = v305;
      v55 = v303;
    }

    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    v212 = Array._bridgeToObjectiveC()().super.isa;
    v207, v213, v214, v215, v216, v217, v218, v219;
    [v55 setAlarms:v212];
    v149, v220, v221, v222, v223, v224, v225, v226;

    v153 = v312;
  }

  v227 = *(v144 + v153[6]);
  v228 = &_swiftEmptyArrayStorage;
  if (!v227)
  {
    goto LABEL_110;
  }

  v229 = *(v227 + 16);
  if (!v229)
  {
    goto LABEL_110;
  }

  v230 = 0;
  v334[0] = &_swiftEmptyArrayStorage;
  v320 = (v304 + 8);
  v321 = (v304 + 56);
  v318 = &_swiftEmptyArrayStorage;
  v319 = (v292 + 8);
  v231 = (v227 + 48);
  v316 = v229 - 1;
  v317 = (v227 + 48);
  v322 = v229;
  v323 = v227;
  v144 = v327;
  do
  {
    v232 = &v231[24 * v230];
    v55 = v230;
    while (1)
    {
      if (v55 >= *(v227 + 16))
      {
        __break(1u);
        goto LABEL_107;
      }

      v149 = *v232;
      v240 = *(v315 + 16);
      v241 = *(v232 - 2);
      if (([v240 includeConcealed] & 1) != 0 || rem_currentRuntimeVersion() >= v149)
      {
        break;
      }

LABEL_88:
      ++v55;
      v232 += 3;
      if (v229 == v55)
      {
        goto LABEL_98;
      }
    }

    v331 = v149;
    v242 = [objc_opt_self() newObjectID];
    v243 = [v242 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v244 = v241;
    Date.init(timeIntervalSinceReferenceDate:)();
    v245 = v308;
    (*v321)(v308, 1, 1, v144);
    v330 = UUID._bridgeToObjectiveC()().super.isa;
    v329 = Date._bridgeToObjectiveC()().super.isa;
    v246 = v306(v245, 1, v144);
    v324 = v55;
    if (v246 == 1)
    {
      v328 = 0;
      v234 = v320;
    }

    else
    {
      v328 = Date._bridgeToObjectiveC()().super.isa;
      v233 = v245;
      v234 = v320;
      (*v320)(v233, v144);
    }

    v235 = v331;
    v236 = objc_allocWithZone(REMDueDateDeltaAlert);
    v237 = v329;
    v238 = v330;
    v239 = v328;
    v149 = [v236 initWithIdentifier:v330 reminderID:v310 accountID:v311 dueDateDelta:v244 creationDate:v329 acknowledgedDate:v328 minimumSupportedAppVersion:v235];

    (*v234)(v325, v144);
    (*v319)(v326, v309);
    v229 = v322;
    v227 = v323;
    v55 = v324;
    if (!v149)
    {
      goto LABEL_88;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v334[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v334[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v230 = v55 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v318 = v334[0];
    v231 = v317;
  }

  while (v316 != v55);
LABEL_98:
  v228 = v318;
  if (v318 >> 62)
  {
    v266 = _CocoaArrayWrapper.endIndex.getter();
    v144 = v305;
    v55 = v303;
    v153 = v312;
    if (!v266)
    {
      goto LABEL_109;
    }

LABEL_100:
    v247 = objc_autoreleasePoolPush();
    v248 = v228;
    v249 = v247;
    v250 = v332;
    v251 = sub_10012E8E4(v248);
    if (v250)
    {
      v332 = v250;
      objc_autoreleasePoolPop(v249);
      v261 = v318;
      goto LABEL_104;
    }

    v252 = v251;
    v334[0] = v251;
    type metadata accessor for RDDueDateDeltaAlerts();
    sub_10051459C(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts, &unk_100795448);
    v253 = REMJSONRepresentable.toJSONData()();
    v332 = 0;
    v262 = v253;
    v264 = v263;

    objc_autoreleasePoolPop(v249);
    v265 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v262, v264);
    [v55 setDueDateDeltaAlertsData:v265];

    v228 = v318;
  }

  else
  {
    v144 = v305;
    v55 = v303;
    v153 = v312;
    if (*((v318 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_100;
    }

LABEL_109:
    [v55 setDueDateDeltaAlertsData:0];
  }

LABEL_110:
  if ([*(v315 + 16) includeDueDateDeltaAlerts])
  {
    sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
    v267 = Array._bridgeToObjectiveC()().super.isa;
    [v55 setFetchedDueDateDeltaAlerts:v267];
  }

  v318 = v228;
  v268 = *(v144 + v153[12]);
  if (v268)
  {
    v269 = *(v268 + 16);
    if (v269)
    {
      v335 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v331 = sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
      v330 = objc_opt_self();
      v270 = v268 + 32;
      v271 = v310;
      v272 = v311;
      do
      {
        v273 = *(v270 + 16);
        v336[0] = *v270;
        v336[1] = v273;
        v274 = *(v270 + 32);
        v275 = *(v270 + 48);
        v276 = *(v270 + 64);
        v337 = *(v270 + 80);
        v336[3] = v275;
        v336[4] = v276;
        v336[2] = v274;
        sub_1004B12D8(v336, v334);
        sub_10031174C(v336, [v330 newObjectID], v272, v271);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v270 += 88;
        --v269;
      }

      while (v269);
      v277 = Array._bridgeToObjectiveC()().super.isa;

      v55 = v303;
      [v303 setRecurrenceRules:v277];

      v144 = v305;
    }
  }

  v278 = v144 + v312[16];
  v279 = *(v278 + 8);
  if (v279 >> 60 != 15)
  {
    v280 = *v278;
    sub_1001CB4B8(*v278, *(v278 + 8));
    sub_100029344(v280, v279);
    v281 = Data._bridgeToObjectiveC()().super.isa;
    v282 = [objc_opt_self() representationFromData:v281];

    sub_100031A14(v280, v279);
    [v55 setContactHandles:v282];

    sub_100031A14(v280, v279);
  }

  [v55 setResolutionTokenMap:0];
  v283 = 0;
  if (a9 >> 60 != 15)
  {
    v283 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v55 setResolutionTokenMapData:v283];
  v318, v284, v285, v286, v287, v288, v289, v290;

LABEL_122:
  v333, v112, v113, v114, v115, v116, v117, v118;
  return v55;
}

id sub_10050F83C(void *a1)
{
  v3 = v2;
  v5 = *v1;
  v6 = type metadata accessor for RDSavedReminder(0);
  *&v8 = __chkstk_darwin(v6 - 8, v7).n128_u64[0];
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = 0;
  v11 = [a1 remObjectIDWithError:{&v112, v8}];
  if (!v11)
  {
    v23 = v112;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v3;
  }

  v12 = v11;
  v13 = v112;
  v14 = [a1 account];
  if (v14)
  {
    v15 = v14;
    v112 = 0;
    v16 = [v14 remObjectIDWithError:&v112];
    if (!v16)
    {
      v45 = v112;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return v3;
    }

    v111 = v16;
    v17 = v112;
    v18 = [a1 template];
    if (v18)
    {
      v112 = 0;
      v19 = v18;
      v20 = [v18 remObjectIDWithError:&v112];
      if (v20)
      {
        v109 = v19;
        v110 = v20;
        v21 = v112;
        sub_1002A767C();
        if (v2)
        {

          v22 = v110;
LABEL_22:

          return v3;
        }

        v108 = REMCDSavedReminder.parentSavedReminderObjectID.getter();
        v106 = [a1 minimumSupportedVersion];
        v68 = [a1 effectiveMinimumSupportedVersion];
        v69 = [a1 resolutionTokenMapData];
        if (v69)
        {
          v70 = v69;
          v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v72;
        }

        else
        {
          v71 = 0;
          v107 = 0xF000000000000000;
        }

        v3 = sub_10050DD78(v10, v12, v110, v111, v108, v106, v68, v71, v107);
        sub_100031A14(v71, v107);

        v73 = [a1 storeControllerManagedObjectContext];
        if (v73)
        {
          v74 = v73;
          v75 = [v73 storeController];
          if (!v75)
          {
            sub_1001CB574(v10);

            return v3;
          }

          v76 = v75;
          v77 = [a1 attachments];
          if (v77)
          {
            v78 = v77;
            v107 = v74;
            v108 = v76;
            type metadata accessor for REMCDSavedAttachment();
            sub_10051459C(&unk_10093F780, type metadata accessor for REMCDSavedAttachment, &protocol conformance descriptor for NSObject);
            v79 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            if (qword_100936388 != -1)
            {
              swift_once();
            }

            v80 = type metadata accessor for Logger();
            v81 = sub_100006654(v80, qword_10094B598);
            v106 = &v101;
            __chkstk_darwin(v81, v82);
            v104 = &v101 - 4;
            v105 = &v101;
            v112 = v79;
            __chkstk_darwin(v83, v84);
            v102 = v79;
            v103 = sub_1000F5104(&qword_10094B758, &qword_1007AF818);
            sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
            sub_10000CB48(&qword_10094B760, &qword_10094B758, &qword_1007AF818, &protocol conformance descriptor for Set<A>);
            v85 = Sequence.map<A>(skippingError:_:)();
            v102, v86, v87, v88, v89, v90, v91, v92;
            isa = Array._bridgeToObjectiveC()().super.isa;
            v85, v94, v95, v96, v97, v98, v99, v100;
            [v3 setAttachments:isa];

            sub_1001CB574(v10);
            return v3;
          }

          sub_1001CB574(v10);
        }

        else
        {
          sub_1001CB574(v10);
        }

        return v3;
      }

      v66 = v112;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      if (qword_100936388 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006654(v46, qword_10094B598);
      v3 = v12;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v112 = v5;
        v113 = v110;
        *v49 = 136446466;
        swift_getMetatypeMetadata();
        v51 = String.init<A>(describing:)();
        v53 = v52;
        v54 = sub_10000668C(v51, v52, &v113);
        v53, v55, v56, v57, v58, v59, v60, v61;
        *(v49 + 4) = v54;
        *(v49 + 12) = 2112;
        *(v49 + 14) = v3;
        *v50 = v12;
        v62 = v3;
        _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: cdSavedReminder.template is nil {cdSavedReminder.remObjectID: %@}", v49, 0x16u);
        sub_1000050A4(v50, &unk_100938E70, &unk_100797230);

        sub_10000607C(v110);
      }

      v63 = objc_opt_self();
      type metadata accessor for REMCDSavedReminder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v65 = String._bridgeToObjectiveC()();
      [v63 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v65];

      swift_willThrow();
    }

    v22 = v111;
    goto LABEL_22;
  }

  if (qword_100936388 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_10094B598);
  v25 = v12;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v112 = v5;
    v113 = v30;
    *v28 = 136446466;
    swift_getMetatypeMetadata();
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v3 = sub_10000668C(v31, v32, &v113);
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v28 + 4) = v3;
    *(v28 + 12) = 2112;
    *(v28 + 14) = v25;
    *v29 = v12;
    v41 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s: cdSavedReminder.account is nil {cdSavedReminder.remObjectID: %@}", v28, 0x16u);
    sub_1000050A4(v29, &unk_100938E70, &unk_100797230);

    sub_10000607C(v30);
  }

  v42 = objc_opt_self();
  type metadata accessor for REMCDSavedReminder();
  v43 = swift_getObjCClassFromMetadata();
  v44 = String._bridgeToObjectiveC()();
  [v42 unexpectedNilPropertyWithClass:v43 property:v44];

  swift_willThrow();
  return v3;
}

uint64_t sub_1005102C0(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      v3 = 0x44656C746974;
      goto LABEL_7;
    case 5:
      result = 0x797469726F697270;
      break;
    case 6:
      result = 0x64656767616C66;
      break;
    case 7:
      result = 0x6E6F697461657263;
      break;
    case 8:
      result = 0x6E65727275636572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x656E6F5A656D6974;
      break;
    case 12:
      result = 0x7961446C6C61;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      v3 = 0x447365746F6ELL;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
      break;
    case 15:
      result = 0x656D686361747461;
      break;
    case 16:
      result = 0x736D72616C61;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0xD000000000000024;
      break;
    case 20:
      result = 0x7367617468736168;
      break;
    case 21:
      result = 0x48746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100510538(id a1, NSObject *a2, uint64_t a3, int a4, unint64_t a5)
{
  v7 = v6;
  v278 = a5;
  v268 = a4;
  isa = *v5;
  v12 = type metadata accessor for Date();
  v267 = *&v12[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v12, v13);
  v263 = &v250 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v15 - 8, v16);
  v266 = &v250 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v264 = &v250 - v20;
  v265 = type metadata accessor for RDSavedReminder(0);
  __chkstk_darwin(v265, v21);
  v271 = &v250 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for UUID();
  v23 = *(v281 - 8);
  __chkstk_darwin(v281, v24);
  v270 = &v250 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v26, v27).n128_u64[0];
  v277 = (&v250 - v29);
  p_super = a2;
  v30 = [a2 createResolutionTokenMapIfNecessary];
  v31 = [a1 resolutionTokenMap];
  if (!v31)
  {
    if (qword_100936380 != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    sub_100006654(v140, qword_10094B580);
    v141 = a1;

    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.fault.getter();
    a3, v144, v145, v146, v147, v148, v149, v150;

    if (os_log_type_enabled(v142, v143))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      p_isa = v284;
      *v151 = 138543618;
      v153 = [v141 objectID];
      *(v151 + 4) = v153;
      v283 = v152;
      *v152 = v153;
      *(v151 + 12) = 2082;
      v154 = *(a3 + 16);
      v155 = &_swiftEmptyArrayStorage;
      if (v154)
      {
        LODWORD(v281) = v143;
        p_super = v142;
        v272 = v30;
        v285 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v154, 0);
        v156 = (a3 + 32);
        v155 = v285;
        v157 = 0x80000001007EA630;
        v158 = 0x80000001007EA610;
        v159 = 0x80000001007E8FD0;
        v160 = 0x80000001007EA5E0;
        v161 = 0x80000001007EA5C0;
        v162 = 0x80000001007EA5A0;
        v163 = 0x80000001007EA570;
        v164 = 0x80000001007E8C60;
        v165 = 0x80000001007EA4D0;
        do
        {
          v166 = *v156++;
          v167 = 0xE800000000000000;
          v168 = 0x44497463656A626FLL;
          switch(v166)
          {
            case 1:
              v168 = 0xD000000000000010;
              v167 = v165;
              break;
            case 2:
              v168 = 0xD000000000000017;
              v167 = v164;
              break;
            case 3:
              v168 = 0xD000000000000011;
              v167 = v163;
              break;
            case 4:
              v168 = 0x636F44656C746974;
              v167 = 0xED0000746E656D75;
              break;
            case 5:
              v168 = 0x797469726F697270;
              break;
            case 6:
              v167 = 0xE700000000000000;
              v168 = 0x64656767616C66;
              break;
            case 7:
              v168 = 0x6E6F697461657263;
              v167 = 0xEC00000065746144;
              break;
            case 8:
              v168 = 0x6E65727275636572;
              v167 = 0xEF73656C75526563;
              break;
            case 9:
              v168 = 0xD000000000000013;
              v167 = v162;
              break;
            case 10:
              v168 = 0xD000000000000011;
              v167 = v161;
              break;
            case 11:
              v168 = 0x656E6F5A656D6974;
              break;
            case 12:
              v167 = 0xE600000000000000;
              v168 = 0x7961446C6C61;
              break;
            case 13:
              v168 = 0xD000000000000011;
              v167 = v160;
              break;
            case 14:
              v168 = 0x636F447365746F6ELL;
              v167 = 0xED0000746E656D75;
              break;
            case 15:
              v168 = 0x656D686361747461;
              v167 = 0xEB0000000073746ELL;
              break;
            case 16:
              v167 = 0xE600000000000000;
              v168 = 0x736D72616C61;
              break;
            case 17:
              v168 = 0xD000000000000016;
              v167 = v159;
              break;
            case 18:
              v168 = 0xD00000000000001ALL;
              v167 = v158;
              break;
            case 19:
              v168 = 0xD000000000000024;
              v167 = v157;
              break;
            case 20:
              v168 = 0x7367617468736168;
              break;
            case 21:
              v168 = 0x48746361746E6F63;
              v167 = 0xEE0073656C646E61;
              break;
            default:
              break;
          }

          v285 = v155;
          v170 = *v155->clientIdentity;
          v169 = *&v155->clientIdentity[8];
          if (v170 >= v169 >> 1)
          {
            v273 = v164;
            v274 = v163;
            v271 = v165;
            v279 = v158;
            v280 = v157;
            v277 = v160;
            v278 = v159;
            v275 = v162;
            v276 = v161;
            sub_100026EF4((v169 > 1), v170 + 1, 1);
            v165 = v271;
            v164 = v273;
            v163 = v274;
            v162 = v275;
            v161 = v276;
            v160 = v277;
            v159 = v278;
            v158 = v279;
            v157 = v280;
            v155 = v285;
          }

          *v155->clientIdentity = v170 + 1;
          v171 = v155 + 16 * v170;
          *(v171 + 4) = v168;
          *(v171 + 5) = v167;
          --v154;
        }

        while (v154);
        v30 = v272;
        v142 = p_super;
        LOBYTE(v143) = v281;
      }

      v172 = Array.description.getter();
      v174 = v173;
      v155, v173, v175, v176, v177, v178, v179, v180;
      v181 = sub_10000668C(v172, v174, &p_isa);
      v174, v182, v183, v184, v185, v186, v187, v188;
      *(v151 + 14) = v181;
      _os_log_impl(&_mh_execute_header, v142, v143, "REMReminderStorageCDIngestor: merge(storage:into cdReminder:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v151, 0x16u);
      sub_1000050A4(v283, &unk_100938E70, &unk_100797230);

      sub_10000607C(v284);
    }

    v189 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v191 = String._bridgeToObjectiveC()();
    [v189 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v191];

    swift_willThrow();
    return;
  }

  v32 = v31;
  v253 = v12;
  v255 = isa;
  v283 = sub_100681D58(v31, a3);
  v41 = *(a3 + 16);
  if (!v41)
  {
    v43 = p_super;
    goto LABEL_110;
  }

  v256 = v32;
  v257 = v6;
  v7 = 0;
  v262 = 0;
  LODWORD(v276) = 0;
  v258 = 0;
  v259 = 0;
  LODWORD(v284) = 0;
  v260 = 0;
  v261 = 0;
  LODWORD(v280) = 0;
  v42 = (a3 + 32);
  v273 = 0x80000001007EA4D0;
  v274 = 0x80000001007E8C60;
  v269 = (v23 + 8);
  v32 = (1 - v41);
  *&v40 = 136315138;
  v254 = v40;
  *&v40 = 136446466;
  v252 = v40;
  v279 = a1;
  v43 = p_super;
  v272 = v30;
  while (2)
  {
    v44 = *v42++;
    switch(v44)
    {
      case 1:
        if (qword_100936390 != -1)
        {
          swift_once();
        }

        v58 = qword_100974F30;
        if (*(qword_100974F30 + 16))
        {
          v12 = v273;
          v59 = sub_100005F4C(0xD000000000000010, v273);
          v61 = v60;
          v12, v60, v62, v63, v64, v65, v66, v67;
          if (v61)
          {
            v68 = *(*(v58 + 56) + 16 * v59 + 8);

LABEL_55:
            a1 = v279;
            v23 = String._bridgeToObjectiveC()();
            v68, v131, v132, v133, v134, v135, v136, v137;
            isa = [v30 mergeWithMap:v283 forKey:v23];

            if ((isa & 1) == 0)
            {
              goto LABEL_58;
            }

            v138 = [a1 parentReminderID];
            if (v138)
            {
              v139 = v138;
              v12 = [v138 uuid];

              v23 = v270;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              isa = UUID._bridgeToObjectiveC()().super.isa;
              (*v269)(v23, v281);
            }

            else
            {
              isa = 0;
            }

            [(RDXPCStorePerformer *)v43 setParentSavedReminderIdentifier:isa];
            goto LABEL_62;
          }
        }

        else
        {
          v273, v33, v34, v35, v36, v37, v38, v39;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        sub_100006654(v110, qword_100946C50);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          p_isa = v114;
          *v113 = v254;
          v115 = v273;
          v116 = sub_10000668C(0xD000000000000010, v273, &p_isa);
          v115, v117, v118, v119, v120, v121, v122, v123;
          *(v113 + 4) = v116;
          v12 = p_super;
          _os_log_impl(&_mh_execute_header, v111, v112, "Unknown ingestable key {key: %s}", v113, 0xCu);
          sub_10000607C(v114);
          v30 = v272;

          v68 = v115;
          v43 = v12;
        }

        else
        {

          v68 = v273;
        }

        goto LABEL_55;
      case 2:
        if (qword_100936390 != -1)
        {
          swift_once();
        }

        v45 = qword_100974F30;
        if (*(qword_100974F30 + 16))
        {
          v12 = v274;
          v46 = sub_100005F4C(0xD000000000000017, v274);
          v48 = v47;
          v12, v47, v49, v50, v51, v52, v53, v54;
          if (v48)
          {
            v55 = *(*(v45 + 56) + 16 * v46 + 8);

            goto LABEL_51;
          }
        }

        else
        {
          v274, v33, v34, v35, v36, v37, v38, v39;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v96 = type metadata accessor for Logger();
        sub_100006654(v96, qword_100946C50);
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          p_isa = &v12->super.isa;
          *v99 = v254;
          v251 = v97;
          v55 = v274;
          v100 = sub_10000668C(0xD000000000000017, v274, &p_isa);
          v55, v101, v102, v103, v104, v105, v106, v107;
          *(v99 + 4) = v100;
          v43 = p_super;
          v108 = v98;
          v109 = v251;
          _os_log_impl(&_mh_execute_header, &v251->super, v108, "Unknown ingestable key {key: %s}", v99, 0xCu);
          sub_10000607C(v12);

          v30 = v272;
        }

        else
        {

          v55 = v274;
        }

LABEL_51:
        isa = String._bridgeToObjectiveC()();
        v55, v124, v125, v126, v127, v128, v129, v130;
        v23 = [v30 mergeWithMap:v283 forKey:isa];

        a1 = v279;
        if (v23)
        {
          -[RDXPCStorePerformer setMinimumSupportedVersion:](v43, "setMinimumSupportedVersion:", [v279 minimumSupportedVersion]);
          if (!v32)
          {
LABEL_101:
            if ((v7 & 1) == 0)
            {
              v7 = v257;
              v32 = v256;
              goto LABEL_108;
            }

            LODWORD(v280) = 1;
            goto LABEL_103;
          }

LABEL_63:
          LODWORD(v280) = 1;
          goto LABEL_6;
        }

LABEL_58:
        if (v32)
        {
LABEL_6:
          if (++v32 == 1)
          {
            __break(1u);
            goto LABEL_135;
          }

          continue;
        }

        if ((v7 & 1) == 0)
        {
LABEL_107:
          v7 = v257;
          v32 = v256;
          if (v280)
          {
            goto LABEL_108;
          }

          goto LABEL_110;
        }

LABEL_103:
        v192 = String._bridgeToObjectiveC()();
        v193 = [v30 mergeWithMap:v283 forKey:v192];

        if (!v193)
        {
          goto LABEL_107;
        }

        if (v262)
        {
          v194 = objc_autoreleasePoolPush();
          v195 = v257;
          sub_100513458(a1);
          v7 = v195;
          v32 = v256;
          v196 = v271;
          if (v195)
          {
            objc_autoreleasePoolPop(v194);
            goto LABEL_120;
          }

          objc_autoreleasePoolPop(v194);
        }

        else
        {
          v7 = v257;
          v32 = v256;
          v196 = v271;
        }

        v227 = a1;
        sub_1001C8F20(v227, v268 & 1, v196);
        if (v7)
        {
LABEL_120:

          goto LABEL_121;
        }

        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_10051459C(&qword_10094ADA8, type metadata accessor for RDSavedReminder, &unk_100798E50);
        v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v30 = v228;

        v229 = Data._bridgeToObjectiveC()().super.isa;
        [(RDXPCStorePerformer *)v43 setMetadata:v229];

        if (v276)
        {
          v230 = String._bridgeToObjectiveC()();
          [(RDXPCStorePerformer *)v43 setTitle:v230];
        }

        v231 = v267;
        if (v258)
        {
          if (*(v271 + *(v265 + 44)) >= 0x7FFFuLL)
          {
            v232 = 0x7FFFLL;
          }

          else
          {
            v232 = *(v271 + *(v265 + 44));
          }

          v233 = [objc_allocWithZone(NSNumber) initWithShort:v232];
          [(RDXPCStorePerformer *)v43 setPriority:v233];
        }

        if (v259)
        {
          v23 = v264;
          sub_100010364(v271, v264, &unk_100938850, qword_100795AE0);
          v234 = *(v231 + 48);
          isa = v231;
          v42 = v253;
          if (v234(v23, 1, v253) == 1)
          {
            v235 = 0;
            goto LABEL_136;
          }

LABEL_135:
          p_super = &v12->super;
          v236 = v30;
          v237 = v23;
          v235 = Date._bridgeToObjectiveC()().super.isa;
          v238 = v237;
          v30 = v236;
          v12 = p_super;
          (*(isa + 8))(v238, v42);
LABEL_136:
          [(RDXPCStorePerformer *)v43 setCreationDate:v235];

          v231 = v267;
        }

        if (v284)
        {
          v239 = sub_1001C7758();
          if (v239)
          {
            v240 = v239;
            v241 = [v239 date];
            v242 = v263;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v243 = Date._bridgeToObjectiveC()().super.isa;
            (*(v231 + 8))(v242, v253);
            [(RDXPCStorePerformer *)v43 setDisplayDateDate:v243];

            -[RDXPCStorePerformer setDisplayDateIsAllDay:](v43, "setDisplayDateIsAllDay:", [v240 isAllDay]);
            a1 = v279;
          }

          else
          {
            [(RDXPCStorePerformer *)v43 setDisplayDateDate:0];
            [(RDXPCStorePerformer *)v43 setDisplayDateIsAllDay:0];
          }
        }

        v244 = v271;
        v245 = v265;
        if (v260)
        {
          v246 = *(v271 + *(v265 + 36));
          if (v246)
          {
            v247 = *(v246 + 16) != 0;
          }

          else
          {
            v247 = 0;
          }

          [(RDXPCStorePerformer *)v43 setHasHashtags:v247];
        }

        if (v261)
        {
          v248 = (v244 + *(v245 + 20));
          if (*v248)
          {
            if (*(v248[1] + 16))
            {
              v249 = 1;
            }

            else
            {
              v249 = *(v248[3] + 16) != 0;
            }
          }

          else
          {
            v249 = 0;
          }

          [(RDXPCStorePerformer *)v43 setHasLocationTriggersOrVehicleEventTriggers:v249];
        }

        sub_10001BBA0(v12, v30);
        sub_1001CB574(v244);
        v30 = v272;
LABEL_108:
        v197 = [(RDXPCStorePerformer *)v43 template];
        if (v197)
        {
          v198 = v197;
          v199 = v266;
          static Date.now.getter();
          (*(v267 + 56))(v199, 0, 1, v253);
          KeyPath = swift_getKeyPath();
          sub_10013206C(KeyPath, v199);

          sub_1000050A4(v199, &unk_100938850, qword_100795AE0);
        }

LABEL_110:
        v201 = [(RDXPCStorePerformer *)v43 metadata];
        if (v201)
        {
          v202 = v201;
          v203 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v205 = v204;

          sub_10001BBA0(v203, v205);
          goto LABEL_120;
        }

        if (qword_100936380 != -1)
        {
          swift_once();
        }

        v206 = type metadata accessor for Logger();
        sub_100006654(v206, qword_10094B580);
        v207 = a1;
        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v208, v209))
        {

          goto LABEL_120;
        }

        v210 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        v257 = v7;
        v212 = v211;
        v213 = v30;
        v214 = swift_slowAlloc();
        v285 = v214;
        *v210 = 136446466;
        p_isa = v255;
        swift_getMetatypeMetadata();
        v215 = String.init<A>(describing:)();
        v256 = v32;
        v217 = v216;
        v218 = sub_10000668C(v215, v216, &v285);
        v217, v219, v220, v221, v222, v223, v224, v225;
        *(v210 + 4) = v218;
        *(v210 + 12) = 2114;
        v226 = [v207 objectID];
        *(v210 + 14) = v226;
        *v212 = v226;
        _os_log_impl(&_mh_execute_header, v208, v209, "%{public}s: '\\REMCDSavedReminder.metadata' should not be nil at the end of 'merge(storage:into:changedValueKeys:optionalCoordinator:)' {objectID: %{public}@}", v210, 0x16u);
        sub_1000050A4(v212, &unk_100938E70, &unk_100797230);

        sub_10000607C(v214);

LABEL_121:
        return;
      case 3:
      case 4:
        LODWORD(v276) = 1;
        goto LABEL_5;
      case 5:
        v258 = 1;
        goto LABEL_5;
      case 6:
      case 13:
      case 14:
      case 17:
      case 21:
        if (!v32)
        {
          goto LABEL_103;
        }

        v7 = 1;
        goto LABEL_6;
      case 7:
        v259 = 1;
        goto LABEL_5;
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        goto LABEL_8;
      case 15:
        isa = v278;
        if (v278)
        {

          v23 = v275;
          sub_100512B10(a1, v43);
        }

        else
        {
          if (qword_100936380 != -1)
          {
            swift_once();
          }

          v80 = type metadata accessor for Logger();
          sub_100006654(v80, qword_10094B580);
          isa = a1;
          v23 = Logger.logObject.getter();
          v81 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v23, v81))
          {
            v82 = swift_slowAlloc();
            v250 = swift_slowAlloc();
            v251 = swift_slowAlloc();
            v285 = v251;
            *v82 = v252;
            p_isa = v255;
            swift_getMetatypeMetadata();
            v83 = String.init<A>(describing:)();
            v85 = v84;
            v12 = sub_10000668C(v83, v84, &v285);
            v86 = v85;
            a1 = v279;
            v86, v87, v88, v89, v90, v91, v92, v93;
            *(v82 + 4) = v12;
            *(v82 + 12) = 2114;
            v94 = [isa objectID];
            *(v82 + 14) = v94;
            v95 = v250;
            *v250 = v94;
            _os_log_impl(&_mh_execute_header, v23, v81, "%{public}s: Failed to merge attachments because 'optionalCoordinator' is nil {objectID: %{public}@}", v82, 0x16u);
            sub_1000050A4(v95, &unk_100938E70, &unk_100797230);

            isa = v251;
            sub_10000607C(v251);

            v43 = p_super;
          }

          v30 = v272;
        }

        goto LABEL_58;
      case 16:
        v261 = 1;
LABEL_8:
        LODWORD(v284) = 1;
        goto LABEL_5;
      case 18:
        v78 = [a1 dueDateDeltaAlertsToUpsert];
        if (!v78)
        {
          goto LABEL_58;
        }

        v79 = v78;
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
        v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v23 >> 62)
        {
          isa = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          isa = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_33;
      case 19:
        v69 = [a1 dueDateDeltaAlertIdentifiersToDelete];
        if (!v69)
        {
          goto LABEL_58;
        }

        v70 = v69;
        sub_10051459C(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        isa = *(v23 + 16);
LABEL_33:
        v23, v71, v72, v73, v74, v75, v76, v77;
        if (!isa)
        {
          goto LABEL_58;
        }

        v262 = 1;
LABEL_5:
        v7 = 1;
        if (v32)
        {
          goto LABEL_6;
        }

        goto LABEL_103;
      case 20:
        v260 = 1;
        goto LABEL_5;
      default:
        v56 = [a1 objectID];
        v57 = [v56 uuid];

        v12 = v277;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v12;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v269)(v12, v281);
        [(RDXPCStorePerformer *)v43 setIdentifier:isa];
LABEL_62:

        if (v32)
        {
          goto LABEL_63;
        }

        goto LABEL_101;
    }
  }
}

uint64_t sub_100511F90(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1005102C0(*a1);
  v5 = v4;
  v6 = sub_1005102C0(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_100512018()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005102C0(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_10051207C(uint64_t a1)
{
  sub_1005102C0(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1005120D0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1005102C0(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_100512130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100513988(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100512160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005102C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10051218C@<X0>(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100513988(a1, a2);
  *a3 = result;
  return result;
}

void sub_1005121CC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1AF8, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_10051222C(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1AF8, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

unint64_t sub_1005122A0()
{
  result = sub_1005122C0();
  qword_100974F30 = result;
  return result;
}

unint64_t sub_1005122C0()
{
  v1 = 0;
  v2 = 0x617461646174656DLL;
  while (1)
  {
    v13 = *(&off_1008DD640 + v1 + 32);
    if (v13 > 0x15)
    {
      goto LABEL_12;
    }

    if (((1 << v13) & 0x3F7FF8) == 0)
    {
      if (v13 == 2)
      {
        v15 = 0xD000000000000017;
        v14 = 0x80000001007E8C60;
        v16 = 0x80000001007E8C60;
        v17 = 0xD000000000000017;
        goto LABEL_41;
      }

      v14 = 0xEB0000000073746ELL;
      v17 = 0x656D686361747461;
      if (v13 == 15)
      {
LABEL_11:
        v15 = 0x656D686361747461;
        v16 = 0xEB0000000073746ELL;
        goto LABEL_41;
      }

LABEL_12:
      if (*(&off_1008DD640 + v1 + 32))
      {
        v15 = 0xD000000000000010;
      }

      else
      {
        v15 = 0x44497463656A626FLL;
      }

      if (*(&off_1008DD640 + v1 + 32))
      {
        v16 = 0x80000001007EA4D0;
      }

      else
      {
        v16 = 0xE800000000000000;
      }

      if (*(&off_1008DD640 + v1 + 32))
      {
        v17 = 0xD00000000000001DLL;
      }

      else
      {
        v17 = 0x44497463656A626FLL;
      }

      if (*(&off_1008DD640 + v1 + 32))
      {
        v14 = 0x80000001007E9100;
      }

      else
      {
        v14 = 0xE800000000000000;
      }

      goto LABEL_41;
    }

    v14 = 0xE800000000000000;
    v15 = 0x636F44656C746974;
    v16 = 0xED0000746E656D75;
    v17 = 0x617461646174656DLL;
    switch(*(&off_1008DD640 + v1 + 32))
    {
      case 4:
        break;
      case 5:
        v16 = 0xE800000000000000;
        v15 = 0x797469726F697270;
        goto LABEL_40;
      case 6:
        v16 = 0xE700000000000000;
        v15 = 0x64656767616C66;
        goto LABEL_40;
      case 7:
        v15 = 0x6E6F697461657263;
        v16 = 0xEC00000065746144;
        goto LABEL_40;
      case 8:
        v15 = 0x6E65727275636572;
        v16 = 0xEF73656C75526563;
        goto LABEL_40;
      case 9:
        v15 = 0xD000000000000013;
        v16 = 0x80000001007EA5A0;
        goto LABEL_40;
      case 0xA:
        v15 = 0xD000000000000011;
        v16 = 0x80000001007EA5C0;
        goto LABEL_40;
      case 0xB:
        v16 = 0xE800000000000000;
        v15 = 0x656E6F5A656D6974;
        goto LABEL_40;
      case 0xC:
        v16 = 0xE600000000000000;
        v15 = 0x7961446C6C61;
        goto LABEL_40;
      case 0xD:
        v15 = 0xD000000000000011;
        v16 = 0x80000001007EA5E0;
        goto LABEL_40;
      case 0xE:
        v15 = 0x636F447365746F6ELL;
        goto LABEL_40;
      case 0xF:
        goto LABEL_11;
      case 0x10:
        v16 = 0xE600000000000000;
        v15 = 0x736D72616C61;
        goto LABEL_40;
      case 0x11:
        v15 = 0xD000000000000016;
        v16 = 0x80000001007E8FD0;
        goto LABEL_40;
      case 0x12:
        v15 = 0xD00000000000001ALL;
        v16 = 0x80000001007EA610;
        goto LABEL_40;
      case 0x13:
        v15 = 0xD000000000000024;
        v16 = 0x80000001007EA630;
        goto LABEL_40;
      case 0x14:
        v16 = 0xE800000000000000;
        v15 = 0x7367617468736168;
        goto LABEL_40;
      case 0x15:
        v15 = 0x48746361746E6F63;
        v16 = 0xEE0073656C646E61;
        goto LABEL_40;
      default:
        v15 = 0xD000000000000011;
        v16 = 0x80000001007EA570;
LABEL_40:
        v17 = 0x617461646174656DLL;
        break;
    }

LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100005F4C(v15, v16);
    v27 = _swiftEmptyDictionarySingleton[2];
    v28 = (v20 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v0 = v20;
    if (_swiftEmptyDictionarySingleton[3] < v30)
    {
      sub_10036A8F0(v30, isUniquelyReferenced_nonNull_native);
      result = sub_100005F4C(v15, v16);
      if ((v0 & 1) != (v20 & 1))
      {
        goto LABEL_66;
      }

LABEL_46:
      if ((v0 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_46;
    }

    isUniquelyReferenced_nonNull_native = result;
    sub_100373664();
    result = isUniquelyReferenced_nonNull_native;
    if ((v0 & 1) == 0)
    {
LABEL_47:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v31 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v31 = v15;
      v31[1] = v16;
      v32 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
      *v32 = v17;
      v32[1] = v14;
      v33 = _swiftEmptyDictionarySingleton[2];
      v29 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v29)
      {
        goto LABEL_59;
      }

      _swiftEmptyDictionarySingleton[2] = v34;
      goto LABEL_3;
    }

LABEL_2:
    v3 = result;
    v16, v20, v21, v22, v23, v24, v25, v26;
    v4 = (_swiftEmptyDictionarySingleton[7] + 16 * v3);
    v5 = v4[1];
    *v4 = v17;
    v4[1] = v14;
    v5, v6, v7, v8, v9, v10, v11, v12;
LABEL_3:
    if (++v1 == 22)
    {
      v15 = 0xE900000000000044;
      v16 = 0x49746E756F636361;
      v17 = 0xE700000000000000;
      v14 = 0x746E756F636361;
      isUniquelyReferenced_nonNull_native = 0x49746E756F636361;
      v0 = 0xE900000000000044;
      v2 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
      v42 = _swiftEmptyDictionarySingleton[2];
      v43 = (v35 & 1) == 0;
      v29 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (!v29)
      {
        v1 = v35;
        if (_swiftEmptyDictionarySingleton[3] >= v44)
        {
          if ((v2 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_10036A8F0(v44, v2);
          result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
          if ((v1 & 1) != (v35 & 1))
          {
LABEL_66:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_67:
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_68;
            }

LABEL_71:
            v80 = result;
            sub_100373664();
            result = v80;
            if (v0)
            {
              goto LABEL_69;
            }

            goto LABEL_72;
          }
        }

        if ((v1 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_57:
        v45 = result;
        v0, v35, v36, v37, v38, v39, v40, v41;
        v46 = (_swiftEmptyDictionarySingleton[7] + 16 * v45);
        v47 = v46[1];
        *v46 = v14;
        v46[1] = v17;
        v47, v48, v49, v50, v51, v52, v53, v54;
        goto LABEL_63;
      }

      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  v55 = result;
  sub_100373664();
  result = v55;
  if (v1)
  {
    goto LABEL_57;
  }

LABEL_61:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v56 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v56 = isUniquelyReferenced_nonNull_native;
  v56[1] = v0;
  v57 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v57 = v14;
  v57[1] = v17;
  v58 = _swiftEmptyDictionarySingleton[2];
  v29 = __OFADD__(v58, 1);
  v59 = v58 + 1;
  if (v29)
  {
    goto LABEL_75;
  }

  _swiftEmptyDictionarySingleton[2] = v59;
LABEL_63:
  v1 = 0xE800000000000000;
  v2 = 0x6574616C706D6574;
  v15 = 0xE600000000000000;
  v16 = 0x44497473696CLL;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_100005F4C(0x44497473696CLL, 0xE600000000000000);
  v67 = _swiftEmptyDictionarySingleton[2];
  v68 = (v60 & 1) == 0;
  v29 = __OFADD__(v67, v68);
  v69 = v67 + v68;
  if (v29)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  LOBYTE(v0) = v60;
  if (_swiftEmptyDictionarySingleton[3] >= v69)
  {
    goto LABEL_67;
  }

  sub_10036A8F0(v69, isUniquelyReferenced_nonNull_native);
  result = sub_100005F4C(0x44497473696CLL, 0xE600000000000000);
  if ((v0 & 1) != (v60 & 1))
  {
    goto LABEL_66;
  }

LABEL_68:
  if (v0)
  {
LABEL_69:
    v70 = result;
    v15, v60, v61, v62, v63, v64, v65, v66;
    v71 = (_swiftEmptyDictionarySingleton[7] + 16 * v70);
    v72 = v71[1];
    *v71 = v2;
    v71[1] = v1;
    v72, v73, v74, v75, v76, v77, v78, v79;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_72:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v81 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v81 = v16;
  v81[1] = v15;
  v82 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v82 = v2;
  v82[1] = v1;
  v83 = _swiftEmptyDictionarySingleton[2];
  v29 = __OFADD__(v83, 1);
  v84 = v83 + 1;
  if (!v29)
  {
    _swiftEmptyDictionarySingleton[2] = v84;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_75:
  __break(1u);
  return result;
}

id sub_100512A88@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v10[3] = sub_1000060C8(0, &qword_10093DD58, off_1008D4118);
  v10[4] = &off_1008F2C88;
  v10[0] = a2;
  v7 = v6;
  v8 = a2;
  result = sub_1004755B4(v7, v10);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_100512B10(void *a1, void *a2)
{
  v96 = *v2;
  v4 = [a1 attachments];
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for REMSavedAttachmentCDIngestor();
    v7 = swift_allocObject();
    sub_1005F8E88(v6, v7);

    v107 = v6;
    sub_1000F5104(&qword_100940928, &unk_1007A0240);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CB48(&qword_100940930, &qword_100940928, &unk_1007A0240, &protocol conformance descriptor for [A]);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v8 = Sequence.mapToSet<A>(_:)();
    v6, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v8 = _swiftEmptySetSingleton;
  }

  v16 = [a2 attachments];
  if (!v16)
  {
LABEL_45:
    v8, v17, v18, v19, v20, v21, v22, v23;
    return;
  }

  v24 = v16;
  v92 = 0;
  type metadata accessor for REMCDSavedAttachment();
  sub_10051459C(&unk_10093F780, type metadata accessor for REMCDSavedAttachment, &protocol conformance descriptor for NSObject);
  v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v25 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v25 = v107;
    v26 = v108;
    v27 = v109;
    v28 = v110;
    v29 = v111;
  }

  else
  {
    v28 = 0;
    v30 = -1 << *(v25 + 32);
    v26 = v25 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(v25 + 56);
  }

  v33 = (v27 + 64) >> 6;
  v101 = v8 & 0xC000000000000001;
  v105 = v8 + 56;
  v97 = v8;
  v98 = v25;
  v99 = v33;
  v100 = v26;
  while (1)
  {
    if (v25 < 0)
    {
      v39 = __CocoaSet.Iterator.next()();
      if (!v39 || (v106 = v39, swift_dynamicCast(), v38 = v112, v36 = v28, v37 = v29, !v112))
      {
LABEL_44:
        sub_10001B860(v25);
        goto LABEL_45;
      }

      goto LABEL_22;
    }

    v34 = v28;
    v35 = v29;
    v36 = v28;
    if (!v29)
    {
      break;
    }

LABEL_18:
    v37 = (v35 - 1) & v35;
    v38 = *(*(v25 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v38)
    {
      goto LABEL_44;
    }

LABEL_22:
    v40 = [v38 remObjectID];
    if (v40)
    {
      v41 = v40;
      if (v101)
      {
        v42 = v40;
        v43 = __CocoaSet.contains(_:)();

        if ((v43 & 1) == 0)
        {
          v103 = v37;
          goto LABEL_35;
        }

        v28 = v36;
        v29 = v37;
      }

      else
      {
        v103 = v37;
        if (*(v8 + 16) && (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), v64 = NSObject._rawHashValue(seed:)(*(v8 + 40)), v65 = -1 << *(v8 + 32), v66 = v64 & ~v65, ((*(v105 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) != 0))
        {
          v67 = ~v65;
          while (1)
          {
            v68 = *(*(v8 + 48) + 8 * v66);
            v69 = static NSObject.== infix(_:_:)();

            if (v69)
            {
              break;
            }

            v66 = (v66 + 1) & v67;
            if (((*(v105 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v28 = v36;
          v29 = v103;
          v33 = v99;
          v26 = v100;
        }

        else
        {
LABEL_35:
          if (qword_100936380 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for Logger();
          sub_100006654(v70, qword_10094B580);
          v71 = v41;
          v72 = a1;
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v106 = v95;
            *v75 = 136446722;
            v112 = v96;
            swift_getMetatypeMetadata();
            v77 = String.init<A>(describing:)();
            v79 = v78;
            log = v73;
            v80 = v71;
            v81 = sub_10000668C(v77, v78, &v106);
            v82 = v79;
            v8 = v97;
            v82, v83, v84, v85, v86, v87, v88, v89;
            *(v75 + 4) = v81;
            *(v75 + 12) = 2112;
            v90 = [v72 objectID];
            *(v75 + 14) = v90;
            *(v75 + 22) = 2112;
            v71 = v80;
            *(v75 + 24) = v80;
            *v76 = v90;
            v76[1] = v41;
            v91 = v80;
            _os_log_impl(&_mh_execute_header, log, v74, "%{public}s: Removing saved attachment from saved reminder {cdSavedReminder.remObjectID: %@, cdSavedAttachment.objectID: %@}", v75, 0x20u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            sub_10000607C(v95);
          }

          else
          {
          }

          v25 = v98;
          v33 = v99;
          v26 = v100;
          v29 = v103;
          [v38 setReminder:0];

          v28 = v36;
        }
      }
    }

    else
    {
      v104 = v37;
      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100006654(v44, qword_10094B580);
      v45 = a1;
      v46 = v38;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v106 = v94;
        *v49 = 136446722;
        v112 = v96;
        swift_getMetatypeMetadata();
        v51 = String.init<A>(describing:)();
        v53 = v52;
        v54 = sub_10000668C(v51, v52, &v106);
        v53, v55, v56, v57, v58, v59, v60, v61;
        *(v49 + 4) = v54;
        v25 = v98;
        *(v49 + 12) = 2112;
        v62 = [v45 objectID];
        *(v49 + 14) = v62;
        *v50 = v62;
        *(v49 + 22) = 2112;
        v63 = [v46 objectID];
        *(v49 + 24) = v63;
        v50[1] = v63;
        _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: Can't merge saved attachment for saved reminder because cdSavedAttachment.remObjectID is nil {cdSavedReminder.remObjectID: %@, cdSavedAttachment.objectID: %@}", v49, 0x20u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        sub_10000607C(v94);
        v33 = v99;
        v26 = v100;
      }

      else
      {
      }

      v28 = v36;
      v29 = v104;
      v8 = v97;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      goto LABEL_44;
    }

    v35 = *(v26 + 8 * v36);
    ++v34;
    if (v35)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

id sub_1005133CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

void sub_100513458(void *a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 fetchedDueDateDeltaAlerts];
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = [a1 dueDateDeltaAlertsData];
    if (v10)
    {
      v11 = v10;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      type metadata accessor for RDDueDateDeltaAlerts();
      sub_10051459C(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts, &unk_100795448);
      static REMJSONRepresentable.fromJSONData(_:)();
      if (v1)
      {
        sub_10001BBA0(v12, v14);
        objc_autoreleasePoolPop(v3);
        return;
      }

      sub_10001BBA0(v12, v14);
      v6 = *&v76[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects];
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage;
    }
  }

  objc_autoreleasePoolPop(v3);
  v7 = [a1 dueDateDeltaAlertsToUpsert];
  if (v7)
  {
    v8 = v7;
    sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v15 = [a1 dueDateDeltaAlertIdentifiersToDelete];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for UUID();
    sub_10051459C(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1002B203C(v9, v17, v6);
  v20 = v19;
  v6, v19, v21, v22, v23, v24, v25, v26;
  if (v1)
  {
    v17, v27, v28, v29, v30, v31, v32, v33;
    v9, v34, v35, v36, v37, v38, v39, v40;
  }

  else
  {
    v17, v27, v28, v29, v30, v31, v32, v33;
    v9, v41, v42, v43, v44, v45, v46, v47;
    if (v18)
    {
      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100006654(v55, qword_10094B580);
      v56 = a1;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138543362;
        v61 = [v56 remObjectID];
        *(v59 + 4) = v61;
        *v60 = v61;
        _os_log_impl(&_mh_execute_header, v57, v58, "REMSavedReminderStorageCDIngestor.updateDueDateDeltaAlerts: Applied early alert changes and setFetchedDueDateDeltaAlerts() {savedReminderID: %{public}@}", v59, 0xCu);
        sub_1000050A4(v60, &unk_100938E70, &unk_100797230);
      }

      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      v62.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v20, v63, v64, v65, v66, v67, v68, v69;
      [v56 setFetchedDueDateDeltaAlerts:v62.super.isa];
    }

    else
    {
      v20, v48, v49, v50, v51, v52, v53, v54;
      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100006654(v70, qword_10094B580);
      v71 = a1;
      v62.super.isa = Logger.logObject.getter();
      v72 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v62.super.isa, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138543362;
        v75 = [v71 remObjectID];
        *(v73 + 4) = v75;
        *v74 = v75;
        _os_log_impl(&_mh_execute_header, v62.super.isa, v72, "REMSavedReminderStorageCDIngestor.updateDueDateDeltaAlerts: Noop {savedReminderID: %{public}@}", v73, 0xCu);
        sub_1000050A4(v74, &unk_100938E70, &unk_100797230);
      }
    }
  }
}

unint64_t sub_100513988(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v3;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1005139DC(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 listID];
    v7 = v2;
    v3 = &_swiftEmptyArrayStorage;
    if (v2)
    {
      v4 = v2;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = &_swiftEmptyArrayStorage;
    }

    sub_1000050A4(&v7, &unk_10093AF40, &unk_100795790);
  }

  else
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v3 = swift_allocObject();
    *v3->clientIdentity = xmmword_1007953F0;
    *&v3->clientIdentity[16] = [a1 accountID];
  }

  return v3;
}

void sub_100513B08(void *a1, void *a2, char a3, uint64_t a4)
{
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v11 = __chkstk_darwin(v9 - 8, v10).n128_u64[0];
  v13 = &v140 - v12;
  if (a3)
  {
    v14 = [a2 createResolutionTokenMapIfNecessary];
    v15 = [a1 resolutionTokenMap];
    if (v15)
    {
      v16 = v15;
      v146 = v13;
      sub_1000F5104(&unk_100943650, &qword_1007A3F70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *(inited + 32) = 1;
      v18 = v16;
      v19 = sub_100696610(v16, inited);
      swift_setDeallocating();
      sub_100694810(1, v20, v21, v22, v23, v24, v25, v26);
      v28 = v27;
      v29 = String._bridgeToObjectiveC()();
      v28, v30, v31, v32, v33, v34, v35, v36;
      LODWORD(v28) = [v14 mergeWithMap:v19 forKey:v29];

      if (v28)
      {
        v144 = v14;
        v145 = v18;
        v37 = [a1 listID];
        if (v37)
        {
          v38 = v37;
          sub_10068B324(1, v38, a4);
          if (v4)
          {

            return;
          }

          v67 = v39;
        }

        else
        {
          v67 = 0;
        }

        v68 = v19;
        v69 = v146;
        if (qword_100936380 != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        sub_100006654(v70, qword_10094B580);
        v71 = v67;
        v72 = a2;
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.info.getter();
        v142 = v71;

        v75 = os_log_type_enabled(v73, v74);
        v143 = v67;
        if (v75)
        {
          v141 = v73;
          v76 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v147 = v140;
          *v76 = 136446466;
          v77 = &selRef_persistentStoreForIdentifier_;
          v78 = [v72 remObjectID];
          if (v78)
          {
            v79 = v78;
            v80 = v74;
            v81 = [v78 description];

            v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v84 = v83;

            v74 = v80;
            v77 = &selRef_persistentStoreForIdentifier_;
          }

          else
          {
            v84 = 0xE300000000000000;
            v82 = 7104878;
          }

          v107 = sub_10000668C(v82, v84, &v147);
          v84, v108, v109, v110, v111, v112, v113, v114;
          *(v76 + 4) = v107;
          *(v76 + 12) = 2082;
          if (v143)
          {
            v115 = [v142 v77[106]];
            v116 = 7104878;
            if (v115)
            {
              v117 = v115;
              v118 = v74;
              v119 = [v115 description];

              v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v121 = v120;

              v74 = v118;
            }

            else
            {
              v121 = 0xE300000000000000;
            }
          }

          else
          {
            v121 = 0xE300000000000000;
            v116 = 7104878;
          }

          v122 = sub_10000668C(v116, v121, &v147);
          v121, v123, v124, v125, v126, v127, v128, v129;
          *(v76 + 14) = v122;
          v130 = v141;
          _os_log_impl(&_mh_execute_header, v141, v74, "Updating cdSavedReminder.template {cdSavedReminder: %{public}s, cdTemplate: %{public}s}", v76, 0x16u);
          swift_arrayDestroy();

          v68 = v19;
        }

        else
        {
        }

        v131 = [v72 template];
        v132 = v142;
        [v72 setTemplate:v142];
        v133 = v145;
        if (v131)
        {
          v134 = v131;
          static Date.now.getter();
          v135 = type metadata accessor for Date();
          (*(*(v135 - 8) + 56))(v69, 0, 1, v135);
          KeyPath = swift_getKeyPath();
          sub_10013206C(KeyPath, v69);

          sub_1000050A4(v69, &unk_100938850, qword_100795AE0);
        }

        if (v143)
        {
          v137 = v132;
          static Date.now.getter();
          v138 = type metadata accessor for Date();
          (*(*(v138 - 8) + 56))(v69, 0, 1, v138);
          v139 = swift_getKeyPath();
          sub_10013206C(v139, v69);

          sub_1000050A4(v69, &unk_100938850, qword_100795AE0);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100006654(v42, qword_10094B580);
      v43 = a1;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = v14;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v147 = v49;
        *v46 = 138543618;
        v50 = [v43 objectID];
        *(v46 + 4) = v50;
        *v48 = v50;
        *(v46 + 12) = 2082;
        *(v46 + 14) = sub_10000668C(0x44497473696CLL, 0xE600000000000000, &v147);
        _os_log_impl(&_mh_execute_header, v44, v45, "REMSavedReminderStorageCDIngestor:establishRelationship(onStorage:into cdSavedReminder:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v46, 0x16u);
        sub_1000050A4(v48, &unk_100938E70, &unk_100797230);
        v14 = v47;

        sub_10000607C(v49);
      }

      v51 = objc_opt_self();
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v53 = String._bridgeToObjectiveC()();
      [v51 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v53];

      swift_willThrow();
    }
  }

  else
  {
    v40 = [a1 accountID];
    sub_10068B2F4(0, v40, a4);
    if (v4)
    {
    }

    else
    {
      v54 = v41;

      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100006654(v55, qword_10094B580);
      v56 = v54;
      v57 = a2;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v147 = v146;
        *v60 = 136446466;
        v61 = [v57 remObjectID];
        if (v61)
        {
          v62 = v61;
          v63 = [v61 description];

          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;
        }

        else
        {
          v66 = 0xE300000000000000;
          v64 = 7104878;
        }

        v85 = sub_10000668C(v64, v66, &v147);
        v66, v86, v87, v88, v89, v90, v91, v92;
        *(v60 + 4) = v85;
        *(v60 + 12) = 2082;
        v93 = [v56 remObjectID];
        if (v93)
        {
          v94 = v93;
          v95 = [v93 description];

          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;
        }

        else
        {
          v98 = 0xE300000000000000;
          v96 = 7104878;
        }

        v99 = sub_10000668C(v96, v98, &v147);
        v98, v100, v101, v102, v103, v104, v105, v106;
        *(v60 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v58, v59, "Updating cdSavedReminder.account {cdSavedReminder: %{public}s, cdAccount: %{public}s}", v60, 0x16u);
        swift_arrayDestroy();
      }

      [v57 setAccount:v56];
    }
  }
}

uint64_t sub_10051459C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100514674()
{
  result = qword_10094B780;
  if (!qword_10094B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B780);
  }

  return result;
}

unint64_t sub_100514710()
{
  result = qword_10094B798;
  if (!qword_10094B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B798);
  }

  return result;
}

id sub_1005147A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RDXPCBarebonesDaemon();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100514808()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B7C8);
  v1 = sub_100006654(v0, qword_10094B7C8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005148D0(void *a1)
{
  v253 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v252 = *(v253 - 8);
  __chkstk_darwin(v253, v4);
  v251 = &v250 - v5;
  v259 = type metadata accessor for REMManualOrdering.Predefined();
  v258 = *&v259[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v259, v6);
  v8 = &v250 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for REMManualOrdering.ManualOrderingID();
  v256 = *(v257 - 8);
  *&v10 = __chkstk_darwin(v257, v9).n128_u64[0];
  v261 = &v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = v1;
  v12 = [v1 accountObjectID];
  type metadata accessor for REMCDTemplate();
  v13 = sub_10034B870();
  v14 = sub_10034A794(v12, 64);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  [v15 setPredicate:v14];

  v17 = sub_10003450C(v13);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v15 setPropertiesToFetch:isa];

  [v15 setRelationshipKeyPathsForPrefetching:0];
  if (qword_100935F08 != -1)
  {
    swift_once();
  }

  v26 = sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v27 = Array._bridgeToObjectiveC()().super.isa;
  [v15 setSortDescriptors:v27];

  v28 = NSManagedObjectContext.fetch<A>(_:)();
  v13, v29, v30, v31, v32, v33, v34, v35;

  if (v2)
  {
    return v28;
  }

  v262 = v28;
  v36 = v258;
  v37 = v259;
  (v258)[13](v8, enum case for REMManualOrdering.Predefined.templates(_:), v259);
  REMManualOrdering.Predefined.manualOrderingID.getter();
  (v36[1])(v8, v37);
  v258 = type metadata accessor for REMCDManualSortHint();
  v38 = REMManualOrdering.ManualOrderingID.listType.getter();
  v39 = REMManualOrdering.ManualOrderingID.listID.getter();
  v259 = v40;
  v41 = [v260 accountObjectID];
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v42 = qword_1009752F0;
  v260 = v41;
  v250 = qword_1009752F0;
  v254 = v38;
  v255 = a1;
  if (v38 == 1)
  {
    v43 = v259;

    v44._countAndFlagsBits = v39;
    v44._object = v43;
    v45 = REMSmartListType.init(stringValue:)(v44);
    if (v45)
    {
      v46 = v45;
      v47 = sub_100139BE4(v45, v41, v42);
      if (v47)
      {
        v48 = v47;
        v273 = 0;
        v49 = [v255 existingObjectWithID:v47 error:{&v273, v250}];
        if (v49)
        {
          v50 = v49;
          v51 = v273;

          v52 = swift_dynamicCastClass();
          if (v52)
          {
            v60 = v52;
            v259, v53, v54, v55, v56, v57, v58, v59;
            v61 = v260;
            v62 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            goto LABEL_34;
          }
        }

        else
        {
          v63 = v273;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v41 = v260;
      }

      else
      {
      }
    }
  }

  v64 = v41;
  v65 = [v255 persistentStoreOfAccountWithAccountID:v64];
  if (v65)
  {
    v66 = v65;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1007953F0;
    *(v67 + 32) = v66;
  }

  else
  {
    v67 = 0;
  }

  v68 = sub_1000398EC(v254, v39, v259, v41);
  v69 = [objc_allocWithZone(NSFetchRequest) init];
  v70 = [swift_getObjCClassFromMetadata() entity];
  [v69 setEntity:v70];

  if (v67)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v71.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v71.super.isa = 0;
  }

  [v69 setAffectedStores:{v71.super.isa, v250}];

  [v69 setPredicate:v68];
  v67, v72, v73, v74, v75, v76, v77, v78;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1007953F0;
  if (qword_100935AA8 != -1)
  {
    swift_once();
  }

  v80 = qword_100974C08;
  *(v79 + 32) = qword_100974C08;
  v81 = v80;
  v82 = Array._bridgeToObjectiveC()().super.isa;
  v79, v83, v84, v85, v86, v87, v88, v89;
  [v69 setSortDescriptors:v82];

  v90 = NSManagedObjectContext.fetch<A>(_:)();
  v62 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
  v98 = v254;
  if (v90 >> 62)
  {
    v214 = v90;
    v215 = _CocoaArrayWrapper.endIndex.getter();
    v90 = v214;
    if (v215)
    {
      goto LABEL_26;
    }

LABEL_46:
    v90, v91, v92, v93, v94, v95, v96, v97;

    v259, v216, v217, v218, v219, v220, v221, v222;
    (*(v256 + 8))(v261, v257);
    goto LABEL_47;
  }

  if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_46;
  }

LABEL_26:
  if ((v90 & 0xC000000000000001) != 0)
  {
    v99 = v90;
    v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_67:
      v160 = swift_once();
      goto LABEL_42;
    }

    v99 = v90;
    v100 = *(v90 + 32);
  }

  v60 = v100;
  v99, v101, v102, v103, v104, v105, v106, v107;
  if (v98 == 1 && (v108 = [v60 remObjectID]) != 0)
  {
    v109 = v108;
    v110 = [v60 objectID];
    v111 = type metadata accessor for RDPredefinedObjectKey();
    v112 = objc_allocWithZone(v111);
    *&v112[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v64;
    *&v112[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v109;
    v263.receiver = v112;
    v263.super_class = v111;
    v255 = v64;
    v254 = v109;
    v113 = objc_msgSendSuper2(&v263, "init");
    v114 = v252;
    v115 = v251;
    (*(v252 + 104))(v251, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v253);
    v116 = swift_allocObject();
    *(v116 + 16) = v110;
    *(v116 + 24) = v113;
    v117 = v110;
    v258 = v60;
    v118 = v117;
    v119 = v113;
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

    v60 = v258;

    v259, v120, v121, v122, v123, v124, v125, v126;
    (*(v114 + 8))(v115, v253);
  }

  else
  {

    v259, v127, v128, v129, v130, v131, v132, v133;
  }

  v61 = v260;
LABEL_34:
  v134 = [objc_opt_self() v62[107]];
  v135 = [v134 manualSortHintLastAccessedUpdatePolicy];

  v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v138 = v137;

  v139._countAndFlagsBits = v136;
  v139._object = v138;
  v140 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v139);
  v138, v141, v142, v143, v144, v145, v146, v147;
  if (v140 >= 3)
  {
    LOBYTE(v140) = 2;
  }

  v148 = [v60 remObjectID];
  if (v148)
  {
    v149 = v148;
    v150 = [v148 description];

    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v152;
  }

  else
  {
    v153 = 0xE300000000000000;
    v151 = 7104878;
  }

  v154 = swift_allocObject();
  *(v154 + 16) = v151;
  *(v154 + 24) = v153;
  sub_1002D74D4(1, v140, sub_10013AF94, v154);

  sub_100226C14(v274);
  v71.super.isa = v274[0];
  if (!v274[0])
  {
    (*(v256 + 8))(v261, v257);

    goto LABEL_47;
  }

  v69 = v274[1];
  v155 = v274[2];
  v157 = v274[3];
  v156 = v274[4];
  v158 = [v60 account];
  if (!v158)
  {
    (*(v256 + 8))(v261, v257);
    v264 = v71.super.isa;
    sub_1000050A4(&v264, &unk_10093B300, &unk_100797780);
    v265 = v69;
    sub_1000050A4(&v265, &qword_100939A08, &unk_100796A80);
    v266 = v155;
    sub_1000050A4(&v266, &unk_100945230, &qword_1007A2590);
    v267 = v157;
    sub_1000050A4(&v267, &qword_10093E9C0, qword_100794F90);
    v268 = v156;
    sub_1000050A4(&v268, &unk_100945240, &qword_1007A0A70);

    goto LABEL_47;
  }

  v255 = v155;
  v259 = v157;
  v260 = v156;
  v258 = v60;
  v64 = v158;
  sub_1006B038C();
  v98 = v159;
  v160 = type metadata accessor for RDManualSortIDCache();
  v26 = v160;
  if (qword_100936508 != -1)
  {
    goto LABEL_67;
  }

LABEL_42:
  v162 = qword_10094C220;
  __chkstk_darwin(v160, v161);
  *(&v250 - 4) = v26;
  *(&v250 - 3) = v98;
  *(&v250 - 2) = v162;
  OS_dispatch_queue.sync<A>(execute:)();
  v163 = v273;
  type metadata accessor for RDManualSortIDAdapter();
  swift_allocObject();
  sub_100214ECC(v163, v98, 0);

  v164 = v262;

  v166 = sub_1001A57AC(v165);
  v164, v167, v168, v169, v170, v171, v172, v173;
  sub_10039509C(v166);
  v175 = v174;
  v166, v176, v177, v178, v179, v180, v181, v182;
  sub_1002173A0(v175);
  v184 = v183;
  v175, v185, v186, v187, v188, v189, v190, v191;
  v192 = sub_10026A748(v71.super.isa, v184, v164);
  v71.super.isa, v193, v194, v195, v196, v197, v198, v199;

  v184, v200, v201, v202, v203, v204, v205, v206;
  v269 = v69;
  sub_1000050A4(&v269, &qword_100939A08, &unk_100796A80);
  v270 = v255;
  sub_1000050A4(&v270, &unk_100945230, &qword_1007A2590);
  v271 = v259;
  sub_1000050A4(&v271, &qword_10093E9C0, qword_100794F90);
  v272 = v260;
  sub_1000050A4(&v272, &unk_100945240, &qword_1007A0A70);

  v164, v207, v208, v209, v210, v211, v212, v213;
  (*(v256 + 8))(v261, v257);
  v262 = v192;
  v62 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
LABEL_47:
  v223 = [objc_opt_self() v62[107]];
  [v223 templatePublicLinkTTL];

  v273 = &_swiftEmptyArrayStorage;
  v230 = v262;
  if (v262 >> 62)
  {
    goto LABEL_61;
  }

  v231 = *((v262 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v231)
  {
    do
    {
      v232 = 0;
      v233 = v230 & 0xC000000000000001;
      v234 = v230 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v233)
        {
          v235 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v232 >= *(v234 + 16))
          {
            goto LABEL_60;
          }

          v235 = *(v230 + 8 * v232 + 32);
        }

        v236 = v235;
        v237 = v232 + 1;
        if (__OFADD__(v232, 1))
        {
          break;
        }

        sub_1001D9968(v235);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v273 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v273 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v238 = v273;
        ++v232;
        v230 = v262;
        if (v237 == v231)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      v239 = _CocoaArrayWrapper.endIndex.getter();
      v230 = v262;
      v231 = v239;
    }

    while (v239);
  }

  v238 = &_swiftEmptyArrayStorage;
LABEL_63:
  v230, v230, v224, v225, v226, v227, v228, v229;
  v240 = objc_allocWithZone(REMTemplatesDataViewInvocationResult);
  sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
  v241 = Array._bridgeToObjectiveC()().super.isa;
  v238, v242, v243, v244, v245, v246, v247, v248;
  v28 = [v240 initWithTemplateStorages:v241];

  return v28;
}

void sub_100515BE0()
{
  v2 = [v0 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10018BA8C();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_100277EBC(v3);
  v3, v5, v6, v7, v8, v9, v10, v11;
  type metadata accessor for REMCDTemplate();
  v12 = sub_10034B870();
  v13 = sub_10034A794(v4, 1);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v13];

  v16 = sub_10003450C(v12);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16, v18, v19, v20, v21, v22, v23, v24;
  [v14 setPropertiesToFetch:isa];

  [v14 setRelationshipKeyPathsForPrefetching:0];
  v25 = NSManagedObjectContext.fetch<A>(_:)();
  v12, v26, v27, v28, v29, v30, v31, v32;

  if (!v1)
  {
    v33 = [objc_opt_self() sharedConfiguration];
    [v33 templatePublicLinkTTL];

    if (v25 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v42 = 0;
      v57 = v25 & 0xC000000000000001;
      v43 = v25 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v57)
        {
          v44 = v25;
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v42 >= *(v43 + 16))
          {
            goto LABEL_16;
          }

          v44 = v25;
          v45 = *(v25 + 8 * v42 + 32);
        }

        v46 = v45;
        v25 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        sub_1001D9968(v45);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v42;
        v47 = v25 == i;
        v25 = v44;
        if (v47)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    v25, v34, v35, v36, v37, v38, v39, v40;
    v48 = objc_allocWithZone(REMTemplatesDataViewInvocationResult);
    sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
    v49 = Array._bridgeToObjectiveC()().super.isa;
    &_swiftEmptyArrayStorage, v50, v51, v52, v53, v54, v55, v56;
    [v48 initWithTemplateStorages:v49];
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100515FC4(void *a1)
{
  v4 = v1;
  v6 = [v4 smartListType];
  v7 = [v4 objectID];
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v9 = sub_100717244(v6, v7, a1, qword_1009752F0, v8);
  if (!v2)
  {
    v10 = v9;

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007953F0;
    *(v11 + 32) = v10;
    v12 = v10;
    v3 = sub_100516DE8(v11);
    v11, v50, v51, v52, v53, v54, v55, v56;

    return v3;
  }

  if (![v4 createIfNeeded])
  {
    swift_willThrow();
    return v3;
  }

  v13 = [v4 smartListType];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v18;
  if (v14 == v17 && v16 == v18)
  {

    v16, v19, v20, v21, v22, v23, v24, v25;
    v3, v26, v27, v28, v29, v30, v31, v32;
LABEL_12:
    v48 = objc_opt_self();
    v49 = String._bridgeToObjectiveC()();
    [v48 invalidParameterErrorWithDescription:v49];

LABEL_13:
    swift_willThrow();

    return v3;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v16, v34, v35, v36, v37, v38, v39, v40;
  v3, v41, v42, v43, v44, v45, v46, v47;
  if (v33)
  {
    goto LABEL_12;
  }

  v58 = sub_10003A1B8();
  if (!v58)
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    goto LABEL_13;
  }

  v59 = v58;
  v60 = [v4 smartListType];
  v61 = sub_10022F65C(v60, v59);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1007953F0;
  *(v62 + 32) = v61;
  v63 = objc_allocWithZone(REMSmartListsDataViewInvocationResult);
  sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
  v64 = v61;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v62, v66, v67, v68, v69, v70, v71, v72;
  v73 = [v63 initWithSmartListStorages:isa];

  return v73;
}

void *sub_100516380(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  if (a1 >> 62)
  {
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
    if (!(v12 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
LABEL_3:
      v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v14 = a1;
  v15 = a2;
  v16 = _CocoaArrayWrapper.endIndex.getter();
  a2 = v15;
  v4 = v16;
  a1 = v14;
LABEL_4:
  if (v4 < v3)
  {
    v3 = v4;
  }

  if (v3)
  {
    v5 = a1;
    v6 = a2;
    sub_1000F5104(&qword_100943AE0, &unk_10079B290);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    a2 = v6;
    v8 = v7;
    a1 = v5;
  }

  else
  {
    v8 = _swiftEmptyDictionarySingleton;
  }

  v17 = v8;
  sub_1005169AC(a1, a2, 1, &v17);
  v9 = v17;
  if (v2)
  {
  }

  return v9;
}

uint64_t sub_1005164C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B7E0);
  v1 = sub_100006654(v0, qword_10094B7E0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005165AC(uint64_t a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v4, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_100717C9C(v6, a1, 0);
  if (v1)
  {
    sub_10003AF64(v6);
  }

  else
  {
    v8 = v7;
    v2 = sub_100516DE8(v7);
    sub_10003AF64(v6);
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  return v2;
}

id *sub_10051668C(uint64_t a1)
{
  v4 = _s10PredicatesOMa_3(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = [*v1 accountObjectID];
  swift_storeEnumTagMultiPayload();
  v9 = sub_100717C9C(v8, a1, 0);
  if (v2)
  {
    sub_10003AF64(v8);
  }

  else
  {
    v10 = v9;
    v1 = sub_100516DE8(v9);
    sub_10003AF64(v8);
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  return v1;
}

id *sub_100516794(uint64_t a1)
{
  v4 = _s10PredicatesOMa_3(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = [*v1 groupObjectID];
  v8[8] = 1;
  swift_storeEnumTagMultiPayload();
  v9 = sub_100717C9C(v8, a1, 0);
  if (v2)
  {
    sub_10003AF64(v8);
  }

  else
  {
    v10 = v9;
    v1 = sub_100516DE8(v9);
    sub_10003AF64(v8);
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  return v1;
}

uint64_t sub_1005168A4(void **a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(119);
  v3._object = 0x80000001007FBB90;
  v3._countAndFlagsBits = 0xD000000000000075;
  String.append(_:)(v3);
  v4 = [v1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = String._bridgeToObjectiveC()();
  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
  [v2 invalidParameterErrorWithDescription:v16];

  return swift_willThrow();
}

void sub_1005169AC(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, char a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v83 = a1 & 0xFFFFFFFFFFFFFF8;
  v80 = a1 & 0xC000000000000001;
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v78 = a2 & 0xC000000000000001;

  v16 = 4;
  v81 = v7 >> 62;
  v79 = v6 >> 62;
  v76 = v8;
  for (i = v7; ; v7 = i)
  {
    if (v81)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *(v83 + 16);
    }

    v22 = v16 - 4;
    if (v16 - 4 == v21)
    {
      v6, v9, v10, v11, v12, v13, v14, v15;
      v7, v46, v47, v48, v49, v50, v51, v52;
      goto LABEL_35;
    }

    if (v80)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v83 + 16))
      {
        goto LABEL_39;
      }

      v23 = *(&v7->super.isa + v16);
    }

    v31 = v23;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v79)
    {
      if (v22 != _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_15;
      }

LABEL_34:
      v6, v24, v25, v26, v27, v28, v29, v30;
      v7, v60, v61, v62, v63, v64, v65, v66;

LABEL_35:
      v6, v53, v54, v55, v56, v57, v58, v59;
      v7, v67, v68, v69, v70, v71, v72, v73;
      return;
    }

    if (v22 == *(v8 + 16))
    {
      goto LABEL_34;
    }

LABEL_15:
    if (v78)
    {
      v32 = v6;
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v8 + 16))
      {
        goto LABEL_41;
      }

      v32 = v6;
      v33 = *(&v6->super.isa + v16);
    }

    v34 = v33;
    v85[3] = v31;
    v35 = *a4;
    v36 = sub_10002B924(v31);
    v37 = v35[2];
    v38 = (v9 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_40;
    }

    v40 = v9;
    if (v35[3] >= v39)
    {
      if (a3)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_1003731AC();
        if ((v40 & 1) == 0)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      sub_10002BD4C(v39, a3 & 1);
      v41 = sub_10002B924(v31);
      if ((v40 & 1) != (v9 & 1))
      {
        goto LABEL_43;
      }

      v36 = v41;
      if ((v40 & 1) == 0)
      {
LABEL_2:
        v17 = *a4;
        *(*a4 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        *(v17[6] + 8 * v36) = v31;
        *(v17[7] + 8 * v36) = v34;
        v18 = v17[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_42;
        }

        v17[2] = v20;
        goto LABEL_4;
      }
    }

    v42 = *a4;
    v85[0] = *(*(*a4 + 56) + 8 * v36);
    v43 = v85[0];
    sub_1005168A4(v85);
    if (v82)
    {

      v85[0] = v82;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      if (swift_dynamicCast())
      {
        goto LABEL_44;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    v44 = v42[7];
    v45 = *(v44 + 8 * v36);
    *(v44 + 8 * v36) = v84;

LABEL_4:
    ++v16;
    a3 = 1;
    v6 = v32;
    v8 = v76;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_44:
  _StringGuts.grow(_:)(30);
  v74._object = 0x80000001007F8340;
  v74._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v74);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  _print_unlocked<A, B>(_:_:)();
  v75._countAndFlagsBits = 39;
  v75._object = 0xE100000000000000;
  String.append(_:)(v75);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100516DE8(void *a1)
{
  v2 = v1;
  sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
  v3 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB90(&qword_1009405B8, &qword_1009405B0, &unk_1007B4EC0);
  v4 = sub_10018BA8C();
  v5 = Sequence.unique<A>(by:)();
  if (v1)
  {
    return v2;
  }

  v14 = (v5 >> 62);
  v112 = v5;
  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_52:
    v112, v6, v7, v8, v9, v10, v11, v12;
    v92 = objc_allocWithZone(REMSmartListsDataViewInvocationResult);
    sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v2 = [v92 initWithSmartListStorages:isa];

    return v2;
  }

LABEL_5:
  v109 = v3;
  v110 = v14;
  v108 = v4;
  v16 = 0;
  v4 = v112 & 0xC000000000000001;
  v3 = &selRef_attachmentRepresentationAndReturnError_;
  while (v15 != v16)
  {
    if (v4)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v17 = *(v112 + 8 * v16 + 32);
    }

    v14 = v17;
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
        goto LABEL_52;
      }

      goto LABEL_5;
    }

    v19 = [(RDXPCStorePerformer *)v17 account:v108];

    ++v16;
    if (v19)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v18;
    }
  }

  if (&_swiftEmptyArrayStorage >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v112;
  if (v110)
  {
    if (v14 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_20;
    }
  }

  else if (v14 != *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:
    &_swiftEmptyArrayStorage, v6, v7, v8, v9, v10, v11, v12;
    v112, v20, v21, v22, v23, v24, v25, v26;
    v2 = objc_opt_self();
    v27 = String._bridgeToObjectiveC()();
    v28 = [v2 internalErrorWithDebugDescription:{v27, v108, v109}];
LABEL_21:
    v28;

    swift_willThrow();
    return v2;
  }

  v29 = 0;
  do
  {
    if (v4)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v30 = *&v3->clientIdentity[8 * v29 + 16];
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_49;
    }

    v14 = sub_10022EB6C(v30);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v112;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v29;
  }

  while (v32 != v15);
  if (qword_1009363A0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100006654(v33, qword_10094B7E0);
  __chkstk_darwin(v34, v35);
  sub_1000F5104(&qword_10094F630, qword_1007A3430);
  v36 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
  v111 = v36;
  v37 = Sequence.map<A>(skippingError:_:)();
  &_swiftEmptyArrayStorage, v38, v39, v40, v41, v42, v43, v44;
  if (v37 >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_37:
      if (v52 == *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

LABEL_56:
      v37, v45, v46, v47, v48, v49, v50, v51;
      &_swiftEmptyArrayStorage, v94, v95, v96, v97, v98, v99, v100;
      v3, v101, v102, v103, v104, v105, v106, v107;
      v2 = objc_opt_self();
      v27 = String._bridgeToObjectiveC()();
      v28 = [v2 internalErrorWithDebugDescription:{v27, v108, v109, v36}];
      goto LABEL_21;
    }
  }

  else
  {
    v52 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_37;
    }
  }

  if (v52 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_56;
  }

LABEL_38:
  if (!v52)
  {
LABEL_46:
    v57 = sub_100516380(&_swiftEmptyArrayStorage, v37);
    sub_100717764(v3);
    v59 = v58;
    v3, v60, v61, v62, v63, v64, v65, v66;
    v67 = objc_allocWithZone(REMSmartListsDataViewInvocationResult);
    sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
    v68 = Array._bridgeToObjectiveC()().super.isa;
    &_swiftEmptyArrayStorage, v69, v70, v71, v72, v73, v74, v75;
    v76 = Dictionary._bridgeToObjectiveC()().super.isa;
    v57, v77, v78, v79, v80, v81, v82, v83;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v84 = Dictionary._bridgeToObjectiveC()().super.isa;
    v59, v85, v86, v87, v88, v89, v90, v91;
    v2 = [v67 initWithSmartListStorages:v68 accountStorages:v76 parentListStorages:v84];

    return v2;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v52 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    do
    {
      if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *&_swiftEmptyArrayStorage.clientIdentity[8 * v53 + 16];
      }

      v55 = v54;
      ++v53;
      v56 = [v54 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v52 != v53);
    v3 = v112;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005175F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B800);
  v1 = sub_100006654(v0, qword_10094B800);
  if (qword_100936490 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005176BC(uint64_t a1)
{
  v2 = v1;
  v90 = type metadata accessor for URL();
  v4 = *(v90 - 8);
  __chkstk_darwin(v90, v5);
  v89 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_10094B8B8, &qword_1007AFC58);
  __chkstk_darwin(v7 - 8, v8);
  v100 = &v85 - v9;
  v101 = type metadata accessor for REMWidgetRefresh.WidgetKind();
  v10 = *(v101 - 8);
  __chkstk_darwin(v101, v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v85 - v16;
  if (qword_1009363A8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100006654(v18, qword_10094B800);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "os_transaction INIT {name: com.apple.remindd.intentsRelevantShortcutsHandler}", v22, 2u);
  }

  v86 = os_transaction_create();
  v23 = *(v2 + 16);
  v24 = &_swiftEmptyArrayStorage;
  aBlock[0] = &_swiftEmptyArrayStorage;
  v99 = *(v23 + 16);
  if (v99)
  {
    v85 = v19;
    v25 = 0;
    v2 = 0;
    v97 = v10 + 88;
    v98 = v10 + 16;
    v96 = enum case for REMWidgetRefresh.WidgetKind.widgetForAnyList(_:);
    v93 = enum case for REMWidgetRefresh.WidgetKind.widgetForTodayList(_:);
    v92 = REMSmartListTypeToday;
    v87 = (v4 + 8);
    v95 = (v10 + 8);
    v91 = xmmword_100791300;
    v88 = v10;
    v94 = v23;
    while (1)
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v45 = *(v10 + 16);
      v46 = v101;
      v45(v17, v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v101);
      v45(v13, v17, v46);
      v47 = (*(v10 + 88))(v13, v46);
      if (v47 == v96)
      {

        v27 = sub_100518B50(v26);
        a1, v28, v29, v30, v31, v32, v33, v34;
      }

      else
      {
        if (v47 != v93)
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

        v48 = v17;
        v49 = v13;
        v50 = a1;
        sub_1000F5104(&qword_10094B8C0, &qword_1007AFC60);
        inited = swift_initStackObject();
        *(inited + 16) = v91;
        v52 = v92;
        v53 = v100;
        REMNavigationSpecifier.init(_:)();
        v54 = type metadata accessor for REMNavigationSpecifier();
        v55 = *(v54 - 8);
        if ((*(v55 + 48))(v53, 1, v54) == 1)
        {
          sub_1000050A4(v100, &qword_10094B8B8, &qword_1007AFC58);
          v56 = 0x20474E495353494DLL;
          v57 = 0xED00005941444F54;
        }

        else
        {
          v58 = v100;
          v59 = v89;
          REMNavigationSpecifier.url.getter();
          (*(v55 + 8))(v58, v54);
          v56 = URL.absoluteString.getter();
          v57 = v60;
          v61 = v59;
          v10 = v88;
          (*v87)(v61, v90);
        }

        *(inited + 32) = v56;
        *(inited + 40) = v57;
        a1 = v50;
        *(inited + 48) = v50;

        v27 = sub_100390860(inited);
        swift_setDeallocating();
        v35 = sub_1000050A4(inited + 32, &qword_10094B8C8, &unk_1007AFC68);
        v13 = v49;
        v17 = v48;
        v23 = v94;
      }

      ++v25;
      __chkstk_darwin(v35, v36);
      *(&v85 - 2) = v17;
      sub_10031EF28(&_swiftEmptyArrayStorage, sub_100518B34, (&v85 - 4), v27);
      v4 = v37;
      v27, v38, v39, v40, v41, v42, v43, v44;
      sub_100272914(v4);
      (*v95)(v17, v101);
      if (v99 == v25)
      {
        v24 = aBlock[0];
        break;
      }
    }
  }

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    *(v64 + 4) = *(a1 + 16);
    a1, v65, v66, v67, v68, v69, v70, v71;
    _os_log_impl(&_mh_execute_header, v62, v63, "RelevantShortcutsHandler setting %ld shortcuts", v64, 0xCu);
  }

  else
  {

    a1, v72, v73, v74, v75, v76, v77, v78;
  }

  v79 = [objc_opt_self() defaultStore];
  sub_1000060C8(0, &unk_10094B8D0, INRelevantShortcut_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v81 = REMAppBundleIdentifier;
  v82 = swift_allocObject();
  *(v82 + 16) = v86;
  *(v82 + 24) = v24;
  aBlock[4] = sub_100518F30;
  aBlock[5] = v82;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008F5990;
  v83 = _Block_copy(aBlock);
  v84 = v81;
  swift_unknownObjectRetain();

  [v79 setRelevantShortcuts:isa forBundleIdentifier:v84 completionHandler:v83];
  _Block_release(v83);
  swift_unknownObjectRelease();
}

void sub_100517EBC(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009363A8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094B800);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v39 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.rem_errorDescription.getter();
      v10 = v9;
      v11 = sub_10000668C(v8, v9, &v39);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "RelevantShortcutsHandler unable to set shortcuts because %s", v6, 0xCu);
      sub_10000607C(v7);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1009363A8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10094B800);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      if (a3 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v30 + 4) = v31;
      a3, v23, v24, v25, v26, v27, v28, v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "RelevantShortcutsHandler set %ld shortcuts", v30, 0xCu);
    }

    else
    {

      a3, v32, v33, v34, v35, v36, v37, v38;
    }
  }

  sub_100518F38();
}

uint64_t sub_100518160(void *a1, uint64_t *a2, uint64_t a3)
{
  v122 = a1;
  v121 = a3;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v132 = &v118 - v6;
  v7 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v118 - v9;
  v11 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v130 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v134 = &v118 - v13;
  v131 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  v14 = *(v131 - 8);
  __chkstk_darwin(v131, v15);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F5104(&qword_10094B8E8, &qword_1007AFC78);
  __chkstk_darwin(v18 - 8, v19);
  v133 = &v118 - v20;
  v21 = type metadata accessor for INShortcut();
  v126 = *(v21 - 8);
  v127 = v21;
  __chkstk_darwin(v21, v22);
  v125 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2[1];
  v123 = *a2;
  v124 = v24;
  v25 = a2[2];
  v26 = [objc_allocWithZone(type metadata accessor for ConfigurationIntent()) init];
  v27 = *(v25 + 16);
  v119 = v25;
  v120 = v14;
  if (v27)
  {
    v28 = *(v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + 16);
  }

  else
  {
    v28 = 0xEC0000005453494CLL;
  }

  type metadata accessor for ConfigurationList();
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = String._bridgeToObjectiveC()();
  v31 = String._bridgeToObjectiveC()();
  v28, v32, v33, v34, v35, v36, v37, v38;
  v39 = [v29 initWithIdentifier:v30 displayString:v31];

  [v26 setList:v39];
  v40 = v26;
  v41 = v133;
  INShortcut.init(intent:)();
  v43 = v126;
  v42 = v127;
  if ((*(v126 + 48))(v41, 1, v127) == 1)
  {

    return sub_1000050A4(v41, &qword_10094B8E8, &qword_1007AFC78);
  }

  v118 = v40;
  (*(v43 + 32))(v125, v41, v42);
  v45 = &_swiftEmptyArrayStorage;
  v135 = &_swiftEmptyArrayStorage;
  if (v27)
  {
    v46 = *(v131 + 24);
    v47 = v119 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v48 = v130 + 6;
    v133 = *(v120 + 72);
    v128 = v46;
    v129 = v10;
    v130 += 6;
    while (1)
    {
      sub_10051906C(v47, v17);
      sub_1005190D0(&v17[v46], v10);
      if ((*v48)(v10, 1, v11) != 1)
      {
        break;
      }

      sub_1000050A4(v10, &qword_1009410B8, &qword_1007A0A38);
      v49 = *&v17[*(v131 + 28)];
      if (v49)
      {
        [objc_allocWithZone(INLocationRelevanceProvider) initWithRegion:v49];
LABEL_16:
        sub_100519140(v17);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v48 = v130;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v45 = v135;
        goto LABEL_9;
      }

      sub_100519140(v17);
LABEL_9:
      v47 += v133;
      if (!--v27)
      {
        goto LABEL_19;
      }
    }

    v50 = v134;
    sub_100226AD8(v10, v134);
    v51 = v11;
    v52 = *(v11 + 36);
    v53 = type metadata accessor for Date();
    v54 = *(v53 - 8);
    v55 = v132;
    (*(v54 + 16))(v132, v50 + v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56.super.isa = Date._bridgeToObjectiveC()().super.isa;
    isa = 0;
    if ((*(v54 + 48))(v55, 1, v53) != 1)
    {
      v58 = v132;
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v54 + 8))(v58, v53);
    }

    [objc_allocWithZone(INDateRelevanceProvider) initWithStartDate:v56.super.isa endDate:isa];

    sub_1000050A4(v134, &qword_10094B8E0, &unk_1007AABD0);
    v46 = v128;
    v10 = v129;
    v11 = v51;
    v48 = v130;
    goto LABEL_16;
  }

LABEL_19:
  v59 = objc_allocWithZone(INRelevantShortcut);
  v60 = INShortcut._bridgeToObjectiveC()().super.isa;
  v61 = [v59 initWithShortcut:v60];

  [v61 setShortcutRole:1];
  REMWidgetRefresh.WidgetKind.widgetKindIdentifier.getter();
  v63 = v62;
  v64 = String._bridgeToObjectiveC()();
  v63, v65, v66, v67, v68, v69, v70, v71;
  [v61 setWidgetKind:v64];

  sub_1000060C8(0, &qword_10094B8F0, INRelevanceProvider_ptr);
  v72 = Array._bridgeToObjectiveC()().super.isa;
  [v61 setRelevanceProviders:v72];

  v73 = v61;
  v74 = v122;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v75 = v124;
  if (qword_1009363A8 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_100006654(v76, qword_10094B800);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.info.getter();
  v45, v79, v80, v81, v82, v83, v84, v85;
  v75, v86, v87, v88, v89, v90, v91, v92;
  if (os_log_type_enabled(v77, v78))
  {
    v93 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v93 = 136446466;
    *(v93 + 4) = sub_10000668C(v123, v75, &v135);
    *(v93 + 12) = 2080;
    v94 = Array.description.getter();
    v96 = v95;
    v45, v95, v97, v98, v99, v100, v101, v102;
    v103 = sub_10000668C(v94, v96, &v135);
    v96, v104, v105, v106, v107, v108, v109, v110;
    *(v93 + 14) = v103;
    _os_log_impl(&_mh_execute_header, v77, v78, "RDIntentsRelevantShortcutsHandler: adding relevant shortcut {identifier: %{public}s, relevanceProviders: %s}", v93, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v45, v111, v112, v113, v114, v115, v116, v117;
  }

  return (*(v126 + 8))(v125, v127);
}

uint64_t sub_100518AD8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

void *sub_100518B50(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0) - 8;
  __chkstk_darwin(v6, v7);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v63 = (&v54 - v12);
  v13 = _swiftEmptyDictionarySingleton;
  v64 = _swiftEmptyDictionarySingleton;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v56 = *(v11 + 80);
  v15 = *(v11 + 72);
  v16 = a1 + ((v56 + 32) & ~v56);
  v59 = (v56 + 32) & ~v56;
  v60 = (v3 + 8);
  v55 = xmmword_100791300;
  v57 = v2;
  v58 = v15;
  while (1)
  {
    v19 = v63;
    sub_10051906C(v16, v63);
    v20 = [*v19 urlRepresentation];
    v21 = v62;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = URL.absoluteString.getter();
    v24 = v23;
    v25 = v2;
    (*v60)(v21, v2);
    v33 = sub_100005F4C(v22, v24);
    v34 = v13[2];
    v35 = (v26 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v26;
    if (v13[3] < v36)
    {
      sub_100370B90(v36, 1);
      v13 = v64;
      v38 = sub_100005F4C(v22, v24);
      if ((v37 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

      v33 = v38;
    }

    if (v37)
    {
      v24, v26, v27, v28, v29, v30, v31, v32;
      v39 = v13[7];
      sub_1002D61DC(v63, v61, v40);
      v41 = *(v39 + 8 * v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 8 * v33) = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_100367980(0, *v41->clientIdentity + 1, 1, v41);
        *(v39 + 8 * v33) = v41;
      }

      v45 = *v41->clientIdentity;
      v44 = *&v41->clientIdentity[8];
      if (v45 >= v44 >> 1)
      {
        v41 = sub_100367980((v44 > 1), v45 + 1, 1, v41);
        *(v39 + 8 * v33) = v41;
      }

      *v41->clientIdentity = v45 + 1;
      v17 = v41 + v59 + v45 * v58;
      v18 = v58;
      sub_1002D61DC(v61, v17, v43);
      v2 = v57;
    }

    else
    {
      sub_1000F5104(&qword_10093EE90, &qword_1007A48A0);
      v46 = v59;
      v47 = swift_allocObject();
      v48 = v55;
      *(v47 + 16) = v55;
      sub_1002D61DC(v63, v47 + v46, v48);
      v13[(v33 >> 6) + 8] |= 1 << v33;
      v49 = (v13[6] + 16 * v33);
      *v49 = v22;
      v49[1] = v24;
      *(v13[7] + 8 * v33) = v47;
      v50 = v13[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_18;
      }

      v13[2] = v52;
      v18 = v58;
      v2 = v25;
    }

    v16 += v18;
    if (!--v14)
    {
      return v13;
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

void sub_100518F38()
{
  if (qword_1009363A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094B800);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.intentsRelevantShortcutsHandler}", v2, 2u);
  }
}

uint64_t type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(uint64_t a1)
{
  result = qword_10094B950;
  if (!qword_10094B950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10051906C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005190D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100519140(uint64_t a1)
{
  v2 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10051919C(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];
  }

  else
  {
    v8 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v8;
    v9 = *(a3 + 24);
    v10 = &a1[v9];
    v11 = a2 + v9;
    v12 = v5;

    v13 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13))
    {
      v15 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
    }

    else
    {
      v16 = type metadata accessor for Date();
      v17 = *(*(v16 - 8) + 16);
      v17(v10, v11, v16);
      v17(&v10[*(v13 + 36)], &v11[*(v13 + 36)], v16);
      (*(v14 + 56))(v10, 0, 1, v13);
    }

    v18 = *(a3 + 28);
    v19 = *(a2 + v18);
    *&a1[v18] = v19;
    v20 = v19;
  }

  return a1;
}

void sub_10051937C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16), v4, v5, v6, v7, v8, v9, v10;
  v11 = a1 + *(a2 + 24);
  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 8);
    v14(v11, v13);
    v14(v11 + *(v12 + 36), v13);
  }

  v15 = *(a1 + *(a2 + 28));
}

void *sub_10051948C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v7;
  a1[2] = *(a2 + 16);
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = (a2 + v8);
  v11 = v6;

  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12))
  {
    v14 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 16);
    v16(v9, v10, v15);
    v16(&v9[*(v12 + 36)], &v10[*(v12 + 36)], v15);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  v17 = *(a3 + 28);
  v18 = *(a2 + v17);
  *(a1 + v17) = v18;
  v19 = v18;
  return a1;
}

uint64_t sub_100519628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  v9 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(a3 + 24);
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, v20);
  v24 = v22(v19, 1, v20);
  if (!v23)
  {
    if (!v24)
    {
      v33 = type metadata accessor for Date();
      v34 = *(*(v33 - 8) + 24);
      v34(v18, v19, v33);
      v34(&v18[*(v20 + 36)], &v19[*(v20 + 36)], v33);
      goto LABEL_7;
    }

    sub_1000050A4(v18, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_6;
  }

  if (v24)
  {
LABEL_6:
    v27 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    memcpy(v18, v19, *(*(v27 - 8) + 64));
    goto LABEL_7;
  }

  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 16);
  v26(v18, v19, v25);
  v26(&v18[*(v20 + 36)], &v19[*(v20 + 36)], v25);
  (*(v21 + 56))(v18, 0, 1, v20);
LABEL_7:
  v28 = *(a3 + 28);
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  *(a1 + v28) = v30;
  v31 = v30;

  return a1;
}

uint64_t sub_100519880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 32);
    v13(v7, v8, v12);
    v13(&v7[*(v9 + 36)], &v8[*(v9 + 36)], v12);
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t sub_100519A0C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[2];
  v8 = *(a1 + 16);
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v7;
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = *(a3 + 24);
  v17 = (a1 + v16);
  v18 = a2 + v16;
  v19 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v17, 1, v19);
  v23 = v21(v18, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      v30 = type metadata accessor for Date();
      v31 = *(*(v30 - 8) + 40);
      v31(v17, v18, v30);
      v31(&v17[*(v19 + 36)], &v18[*(v19 + 36)], v30);
      goto LABEL_7;
    }

    sub_1000050A4(v17, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_6;
  }

  if (v23)
  {
LABEL_6:
    v26 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    memcpy(v17, v18, *(*(v26 - 8) + 64));
    goto LABEL_7;
  }

  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 32);
  v25(v17, v18, v24);
  v25(&v17[*(v19 + 36)], &v18[*(v19 + 36)], v24);
  (*(v20 + 56))(v17, 0, 1, v19);
LABEL_7:
  v27 = *(a3 + 28);
  v28 = *(a1 + v27);
  *(a1 + v27) = *(a2 + v27);

  return a1;
}

void sub_100519C74(uint64_t a1)
{
  sub_100519D20(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_100519D20(uint64_t a1)
{
  if (!qword_10094B960)
  {
    sub_1000F514C(&qword_10094B8E0, &unk_1007AABD0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10094B960);
    }
  }
}

double sub_100519D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100363F20(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100376A4C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_10027DC60((*(v9 + 56) + 40 * v7), a2);
    sub_100333BC4(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100519E68(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100363F20(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100376CD4();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1003338A4(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_100519F30()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B9A0);
  v1 = sub_100006654(v0, qword_10094B9A0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10051A110(uint64_t a1)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    __chkstk_darwin(ObjectType, v2);
    type metadata accessor for UnfairLock();
    swift_unknownObjectRetain();

    Lock.sync<A>(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094B9A0);
    v6 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v6, v4, "Trying to add observer to RDAccountPropertiesNotifier but input observer is nil", v5, 2u);
    }
  }
}

uint64_t sub_10051A2D4(void *a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v67 = type metadata accessor for UUID();
  v70 = *(v67 - 8);
  __chkstk_darwin(v67, v5);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for NSNotificationCenter.Publisher();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_100947258, &unk_1007AA0A0);
  v17 = *(v16 - 8);
  v63 = v16;
  v64 = v17;
  __chkstk_darwin(v16, v18);
  v20 = &v63 - v19;
  v21 = sub_1000F5104(&qword_10094B9F8, &qword_1007AFD08);
  v22 = *(v21 - 8);
  v65 = v21;
  v66 = v22;
  __chkstk_darwin(v21, v23);
  v25 = &v63 - v24;
  v26 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a3;
  sub_10051BD00(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  swift_unknownObjectRetain();
  Publisher.filter(_:)();

  (*(v12 + 8))(v15, v11);
  v28 = [a1 callbackQueue];
  v72[0] = v28;
  v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_100947288, &qword_100947258, &unk_1007AA0A0, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_100006CA4();
  v30 = v63;
  Publisher.receive<A>(on:options:)();
  v31 = v10;
  v32 = v67;
  sub_1000050A4(v31, &qword_100939980, &unk_10079ADA0);

  (*(v64 + 8))(v20, v30);
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a3;
  sub_10000CB48(&qword_10094BA00, &qword_10094B9F8, &qword_1007AFD08, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  swift_unknownObjectRetain();
  v34 = v65;
  v35 = Publisher<>.sink(receiveValue:)();

  (*(v66 + 8))(v25, v34);
  v36 = [a1 uuid];
  v37 = v68;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = OBJC_IVAR___RDAccountPropertiesNotifier_l_observers;
  v39 = v69;
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v39 + v38);
  *(v39 + v38) = 0x8000000000000000;
  sub_1002CA3B8(a1, v37, isUniquelyReferenced_nonNull_native);
  v41 = *(v70 + 8);
  v70 += 8;
  v41(v37, v32);
  *(v39 + v38) = v71;
  swift_endAccess();
  v42 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v72[3] = type metadata accessor for AnyCancellable();
  v72[4] = &protocol witness table for AnyCancellable;
  v72[0] = v35;
  swift_beginAccess();

  v43 = v37;
  sub_10031E474(v72, v37);
  swift_endAccess();
  if (qword_1009363B0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10094B9A0);
  swift_unknownObjectRetain();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v72[0] = v48;
    *v47 = 136315138;
    v49 = [a1 uuid];
    v50 = v43;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = UUID.uuidString.getter();
    v53 = v52;
    v41(v50, v32);
    v54 = sub_10000668C(v51, v53, v72);
    v53, v55, v56, v57, v58, v59, v60, v61;
    *(v47 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "RDAccountPropertiesNotifier added observer {uuid: %s}", v47, 0xCu);
    sub_10000607C(v48);
  }
}

uint64_t sub_10051AAA4(__n128 a1, uint64_t a2, void *a3)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v5 = result;
    strcpy(v31, "propertyValue");
    HIWORD(v31[0]) = -4864;
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v13 = sub_10001B0D8(v29), (v6 & 1) != 0))
    {
      sub_100005EF0(*(v5 + 56) + 32 * v13, v31);
      sub_10001B2CC(v29);
      v5, v14, v15, v16, v17, v18, v19, v20;
    }

    else
    {
      v5, v6, v7, v8, v9, v10, v11, v12;
      sub_10001B2CC(v29);
      memset(v31, 0, sizeof(v31));
    }

    sub_10014F5CC(v31, v29);
    v21 = v30;
    if (v30)
    {
      v22 = sub_10000F61C(v29, v30);
      v23 = *(v21 - 8);
      v24 = __chkstk_darwin(v22, v22);
      v26 = &v29[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v23 + 8))(v26, v21);
      sub_10000607C(v29);
    }

    else
    {
      v27 = 0;
    }

    [a3 notify:v27];
    swift_unknownObjectRelease();
    return sub_1000050A4(v31, &qword_100939ED0, &qword_100791B10);
  }

  return result;
}

void sub_10051ACB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    __chkstk_darwin(a1, a2);
    type metadata accessor for UnfairLock();
    swift_unknownObjectRetain();

    Lock.sync<A>(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_10094B9A0);
    v5 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v5, v3, "Trying to remove observer to RDAccountPropertiesNotifier but input observer is nil", v4, 2u);
    }
  }
}

void sub_10051AE6C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v10 = sub_100519D84(v8, &v50);
  v11 = *(v4 + 8);
  v11(v8, v3, v10);
  swift_endAccess();
  if (v51)
  {
    sub_10027DC60(&v50, v52);
    sub_10000F61C(v52, v52[3]);
    dispatch thunk of Cancellable.cancel()();
    v12 = [a2 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_100519E68(v8);
    (v11)(v8, v3);
    swift_endAccess();
    swift_unknownObjectRelease();
    v13 = [a2 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v14 = sub_100519D84(v8, &v50);
    v11(v8, v3, v14);
    sub_1000050A4(&v50, &qword_100940AC8, &qword_1007A0510);
    swift_endAccess();
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094B9A0);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v50 = v19;
      *v18 = 136315138;
      v20 = [a2 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = UUID.uuidString.getter();
      v23 = v22;
      (v11)(v8, v3);
      v24 = sub_10000668C(v21, v23, &v50);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDAccountPropertiesNotifier removed observer {uuid: %s}", v18, 0xCu);
      sub_10000607C(v19);
    }

    sub_10000607C(v52);
  }

  else
  {
    sub_1000050A4(&v50, &qword_100940AC8, &qword_1007A0510);
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_10094B9A0);
    swift_unknownObjectRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52[0] = v36;
      *v35 = 136315138;
      v37 = [a2 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = UUID.uuidString.getter();
      v40 = v39;
      (v11)(v8, v3);
      v41 = sub_10000668C(v38, v40, v52);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "RDAccountPropertiesNotifier cannot unobserve as the observer is not found {uuid: %s}", v35, 0xCu);
      sub_10000607C(v36);
    }
  }
}

void sub_10051B3D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id sub_10051B5E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDAccountPropertiesNotifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10051B6B8(__n128 a1, uint64_t a2, void *a3)
{
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100006654(v80, qword_10094B9A0);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v76, v77))
    {
      goto LABEL_26;
    }

    v78 = swift_slowAlloc();
    *v78 = 0;
    v79 = "Received RDStoreControllerREMAccountPropertiesDidUpdate has no userInfo";
    goto LABEL_25;
  }

  v5 = v4;
  v109[0] = 0x4F746E756F636361;
  v109[1] = 0xEF44497463656A62;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v13 = sub_10001B0D8(v110), (v6 & 1) == 0))
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
    sub_10001B2CC(v110);
LABEL_17:
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100006654(v75, qword_10094B9A0);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v76, v77))
    {
      goto LABEL_26;
    }

    v78 = swift_slowAlloc();
    *v78 = 0;
    v79 = "Received RDStoreControllerREMAccountPropertiesDidUpdate has no account REMObjectID in the userInfo";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v76, v77, v79, v78, 2u);

LABEL_26:

LABEL_27:
    v74 = 0;
    return v74 & 1;
  }

  sub_100005EF0(*(v5 + 56) + 32 * v13, v111);
  sub_10001B2CC(v110);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5, v14, v15, v16, v17, v18, v19, v20;
    goto LABEL_17;
  }

  v21 = v109[0];
  strcpy(v109, "accountType");
  HIDWORD(v109[1]) = -352321536;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v29 = sub_10001B0D8(v110), (v22 & 1) == 0))
  {
    v5, v22, v23, v24, v25, v26, v27, v28;
    sub_10001B2CC(v110);
LABEL_31:
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_100006654(v82, qword_10094B9A0);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v83, v84))
    {
      goto LABEL_36;
    }

    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "Received RDStoreControllerREMAccountPropertiesDidUpdate has no account type in the userInfo";
    goto LABEL_35;
  }

  sub_100005EF0(*(v5 + 56) + 32 * v29, v111);
  sub_10001B2CC(v110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5, v30, v31, v32, v33, v34, v35, v36;
    goto LABEL_31;
  }

  v37 = v109[0];
  strcpy(v109, "propertyName");
  BYTE5(v109[1]) = 0;
  HIWORD(v109[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v45 = sub_10001B0D8(v110), (v38 & 1) == 0))
  {
    v5, v38, v39, v40, v41, v42, v43, v44;
    sub_10001B2CC(v110);
    goto LABEL_39;
  }

  sub_100005EF0(*(v5 + 56) + 32 * v45, v111);
  sub_10001B2CC(v110);
  v5, v46, v47, v48, v49, v50, v51, v52;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100006654(v87, qword_10094B9A0);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v83, v84))
    {
      goto LABEL_36;
    }

    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "Received RDStoreControllerREMAccountPropertiesDidUpdate has no property name in the userInfo";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v83, v84, v86, v85, 2u);

LABEL_36:

    goto LABEL_27;
  }

  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v53 = [objc_msgSend(a3 "account")];
  swift_unknownObjectRelease();
  v54 = static NSObject.== infix(_:_:)();

  if ((v54 & 1) == 0 || (v55 = [objc_msgSend(a3 "account")], swift_unknownObjectRelease(), v55 != v37))
  {

    v109[1], v88, v89, v90, v91, v92, v93, v94;
    goto LABEL_27;
  }

  v56 = [a3 propertyName];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  if (v57 == v109[0] && v59 == v109[1])
  {
    v59, v60, v61, v62, v63, v64, v65, v66;

    v109[1], v67, v68, v69, v70, v71, v72, v73;
    v74 = 1;
  }

  else
  {
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v59, v95, v96, v97, v98, v99, v100, v101;

    v109[1], v102, v103, v104, v105, v106, v107, v108;
  }

  return v74 & 1;
}

uint64_t sub_10051BD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10051BD50()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BA08);
  v1 = sub_100006654(v0, qword_10094BA08);
  if (qword_1009364C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975188);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10051BE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Date();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for REMUrgentReminder();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_10051BF74, 0, 0);
}

uint64_t sub_10051BF74()
{
  v93 = v0;
  if (qword_1009363B8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[7];
  v9 = type metadata accessor for Logger();
  v0[22] = sub_100006654(v9, qword_10094BA08);
  v10 = *(v3 + 16);
  v0[23] = v10;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v89 = v10;
  (v10)(v1, v8, v2);
  v11 = *(v6 + 16);
  v0[25] = v11;
  v0[26] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v87 = v11;
  v11(v4, v7, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[21];
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];
  v20 = v0[11];
  v19 = v0[12];
  if (v14)
  {
    v83 = v13;
    v21 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v92[0] = v84;
    *v21 = 138543618;
    v22 = REMUrgentReminder.reminderID.getter();
    log = v12;
    v23 = *(v17 + 8);
    v23(v15, v16);
    *(v21 + 4) = v22;
    *v81 = v22;
    *(v21 + 12) = 2082;
    sub_10051D374(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v19 + 8);
    v27(v18, v20);
    v28 = sub_10000668C(v24, v26, v92);
    v26, v29, v30, v31, v32, v33, v34, v35;
    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, log, v83, "RDUrgentAlarmSchedulingService: Attempting to schedule alarm {reminderID: %{public}@, now: %{public}s}", v21, 0x16u);
    sub_100039860(v81);

    sub_10000607C(v84);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v18, v20);
    v23 = *(v17 + 8);
    v23(v15, v16);
  }

  v0[27] = v23;
  v0[28] = v27;
  if (static Date.> infix(_:_:)())
  {
    v36 = v0[10];
    v37 = v36[5];
    v38 = v36[6];
    sub_10000F61C(v36 + 2, v37);
    v39 = swift_task_alloc();
    v0[29] = v39;
    *v39 = v0;
    v39[1] = sub_10051C67C;
    v40 = v0[7];
    v41 = v0[8];

    return dispatch thunk of REMAlarmKitSchedulingManagerType.scheduleAlarm(for:fireDate:)(v0 + 2, v40, v41, v37, v38);
  }

  else
  {
    v85 = v23;
    v42 = v0[13];
    v43 = v0[14];
    v44 = v0[11];
    v46 = v0[8];
    v45 = v0[9];
    (v89)(v0[19], v0[7], v0[17]);
    v87(v43, v46, v44);
    v87(v42, v45, v44);
    v47 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v47, v91);
    v49 = v0[19];
    v50 = v0[17];
    v51 = v0[13];
    v52 = v0[14];
    v53 = v0[11];
    if (v48)
    {
      v90 = v47;
      v54 = swift_slowAlloc();
      v88 = v51;
      v55 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v54 = 138543874;
      v86 = v27;
      v56 = REMUrgentReminder.reminderID.getter();
      v85(v49, v50);
      *(v54 + 4) = v56;
      *v55 = v56;
      *(v54 + 12) = 2082;
      sub_10051D374(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v86(v52, v53);
      v60 = sub_10000668C(v57, v59, v92);
      v59, v61, v62, v63, v64, v65, v66, v67;
      *(v54 + 14) = v60;
      *(v54 + 22) = 2082;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v86(v88, v53);
      v71 = sub_10000668C(v68, v70, v92);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v54 + 24) = v71;
      _os_log_impl(&_mh_execute_header, v90, v91, "RDUrgentAlarmSchedulingService: Attempted to schedule alarm with past fire date {reminderID: %{public}@, fireDate: %{public}s, now: %{public}s}", v54, 0x20u);
      sub_100039860(v55);

      swift_arrayDestroy();
    }

    else
    {

      v27(v51, v53);
      v27(v52, v53);
      v85(v49, v50);
    }

    sub_10051D320();
    swift_allocError();
    swift_willThrow();

    v79 = v0[1];

    return v79();
  }
}

uint64_t sub_10051C67C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10051CA7C;
  }

  else
  {
    sub_10000607C((v2 + 16));
    v3 = sub_10051C798;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10051C798()
{
  v34 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  (*(v0 + 184))(*(v0 + 160), *(v0 + 56), *(v0 + 136));
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 216);
  v32 = *(v0 + 224);
  v9 = *(v0 + 160);
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = *(v0 + 88);
  if (v7)
  {
    log = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v13 = 138543618;
    v29 = v6;
    v15 = REMUrgentReminder.reminderID.getter();
    v8(v9, v10);
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2082;
    sub_10051D374(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v32(v11, v12);
    v19 = sub_10000668C(v16, v18, &v33);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v29, "RDUrgentAlarmSchedulingService: Scheduled alarm {reminderID: %{public}@, fireDate: %{public}s}", v13, 0x16u);
    sub_100039860(v14);

    sub_10000607C(v30);
  }

  else
  {

    v32(v11, v12);
    v8(v9, v10);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10051CA7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10051CB34(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v52 - v9;
  if (qword_1009363B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100006654(v11, qword_10094BA08);
  v55 = *(v3 + 16);
  v55(v10, a1, v2);
  v56 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v57 = v3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v53 = a1;
    v17 = v16;
    v52 = swift_slowAlloc();
    v60 = v52;
    *v17 = 136446210;
    sub_10051D374(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v6;
    v19 = v2;
    v21 = v20;
    v22 = v10;
    v23 = *(v3 + 8);
    v23(v22, v19);
    v24 = sub_10000668C(v18, v21, &v60);
    v25 = v21;
    v2 = v19;
    v6 = v54;
    v25, v26, v27, v28, v29, v30, v31, v32;
    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDUrgentAlarmSchedulingService: Attempting to cancel alarm {alarmUUID: %{public}s}", v17, 0xCu);
    sub_10000607C(v52);

    a1 = v53;
  }

  else
  {

    v33 = v10;
    v23 = *(v3 + 8);
    v23(v33, v2);
  }

  sub_10000F61C((v58 + 16), *(v58 + 40));
  v34 = v59;
  dispatch thunk of REMAlarmKitSchedulingManagerType.cancelAlarm(uuid:)();
  if (!v34)
  {
    v55(v6, a1, v2);
    v35 = v2;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v60 = v39;
      *v38 = 136446210;
      sub_10051D374(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v6;
      v43 = v42;
      v23(v41, v35);
      v44 = sub_10000668C(v40, v43, &v60);
      v43, v45, v46, v47, v48, v49, v50, v51;
      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "RDUrgentAlarmSchedulingService: Cancelled alarm {alarmUUID: %{public}s}", v38, 0xCu);
      sub_10000607C(v39);
    }

    else
    {

      v23(v6, v35);
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10051CF9C()
{
  v2 = v1;
  v3 = v0;
  v54 = type metadata accessor for UUID();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54, v5);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009363B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_100006654(v8, qword_10094BA08);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDUrgentAlarmSchedulingService: Attempting to fetch alarm IDs", v12, 2u);
  }

  sub_10000F61C((v3 + 16), *(v3 + 40));
  v13 = dispatch thunk of REMAlarmKitSchedulingManagerType.fetchAlarms()();
  if (!v1)
  {
    v53 = 0;
    v21 = *(v13 + 16);
    if (v21)
    {
      v51[1] = v9;
      v56 = &_swiftEmptyArrayStorage;
      v22 = v13;
      sub_100253258(0, v21, 0);
      v2 = v56;
      v52 = v22;
      v23 = &v22->clientIdentity[16];
      do
      {
        sub_10000A87C(v23, v55);
        sub_10000F61C(v55, v55[3]);
        dispatch thunk of REMAlarmKitAlarmType.uuid.getter();
        sub_10000607C(v55);
        v56 = v2;
        v25 = *v2->clientIdentity;
        v24 = *&v2->clientIdentity[8];
        if (v25 >= v24 >> 1)
        {
          sub_100253258((v24 > 1), v25 + 1, 1);
          v2 = v56;
        }

        *v2->clientIdentity = v25 + 1;
        (*(v4 + 32))(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v7, v54);
        v23 += 40;
        --v21;
      }

      while (v21);
      v52, v26, v27, v28, v29, v30, v31, v32;
    }

    else
    {
      v13, v14, v15, v16, v17, v18, v19, v20;
      v2 = &_swiftEmptyArrayStorage;
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134349056;
      *(v35 + 4) = *v2->clientIdentity;
      v2, v36, v37, v38, v39, v40, v41, v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "RDUrgentAlarmSchedulingService: Successfully fetched alarm IDs {count: %{public}ld}", v35, 0xCu);
    }

    else
    {

      v2, v43, v44, v45, v46, v47, v48, v49;
    }
  }

  return v2;
}

unint64_t sub_10051D320()
{
  result = qword_10094BAC0;
  if (!qword_10094BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BAC0);
  }

  return result;
}

uint64_t sub_10051D374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10051D3D0()
{
  result = qword_10094BAC8;
  if (!qword_10094BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BAC8);
  }

  return result;
}

id sub_10051D484()
{
  v2 = v1;
  v3 = _s10PredicatesOMa(0);
  *&v5 = __chkstk_darwin(v3, v4).n128_u64[0];
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = [v0 listID];
  swift_storeEnumTagMultiPayload();
  v8 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  [v9 setAffectedStores:0];
  [v9 setPredicate:v8];

  [v9 setFetchLimit:1];
  v11 = NSManagedObjectContext.count<A>(for:)();
  if (v1)
  {
    sub_10051E86C(v7, _s10PredicatesOMa);
  }

  else
  {
    v12 = v11;
    v2 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v13 = [objc_allocWithZone(NSNumber) initWithInteger:v12];
    [v2 storeProperty:v13 forKey:CompletedRemindersCountInList];

    sub_10051E86C(v7, _s10PredicatesOMa);
  }

  return v2;
}

char *sub_10051D714()
{
  v1 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v1, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v5 = sub_100013674(qword_1009752E8);
  if (!v5)
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    swift_willThrow();
    return v4;
  }

  v6 = objc_opt_self();
  v7 = [v6 daemonUserDefaults];
  v8 = [v7 tipKitCachedCountOfLists];

  if (v8)
  {
    v9 = [v8 integerValue];

    if (v9 > 3)
    {
LABEL_10:
      v4 = [objc_allocWithZone(REMStoreInvocationResult) init];
      v16 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
      [v4 storeProperty:v16 forKey:ListsCount];

      return v4;
    }
  }

  swift_storeEnumTagMultiPayload();
  v10 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  [v11 setFetchLimit:4];
  v13 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v9 = v13;
    v14 = [v6 daemonUserDefaults];
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
    [v14 setTipKitCachedCountOfLists:v15];

    sub_10051E86C(v4, _s10PredicatesOMa_1);
    goto LABEL_10;
  }

  sub_10051E86C(v4, _s10PredicatesOMa_1);

  return v4;
}

char *sub_10051DA74()
{
  v1 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 daemonUserDefaults];
  v7 = [v6 tipKitCachedCountOfListsWithCustomBadge];

  if (v7)
  {
    v8 = [v7 integerValue];

    if (v8 > 0)
    {
      goto LABEL_6;
    }
  }

  swift_storeEnumTagMultiPayload();
  v9 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  [v10 setFetchLimit:1];
  v12 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v8 = v12;
    v13 = [v5 daemonUserDefaults];
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v13 setTipKitCachedCountOfListsWithCustomBadge:v14];

    sub_10051E86C(v4, _s10PredicatesOMa_1);
LABEL_6:
    v4 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v4 storeProperty:v15 forKey:ListsWithCustomBadgeCount];

    return v4;
  }

  sub_10051E86C(v4, _s10PredicatesOMa_1);

  return v4;
}

char *sub_10051DD5C()
{
  v1 = _s10PredicatesOMa(0);
  __chkstk_darwin(v1, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v5 = sub_100013674(qword_1009752E8);
  if (!v5)
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    swift_willThrow();
    return v4;
  }

  v6 = objc_opt_self();
  v7 = [v6 daemonUserDefaults];
  v8 = [v7 tipKitCachedCountOfUncompletedReminders];

  if (v8)
  {
    v9 = [v8 integerValue];

    if (v9 > 5)
    {
LABEL_10:
      v4 = [objc_allocWithZone(REMStoreInvocationResult) init];
      v16 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
      [v4 storeProperty:v16 forKey:UncompletedRemindersCount];

      return v4;
    }
  }

  swift_storeEnumTagMultiPayload();
  v10 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  [v11 setFetchLimit:6];
  v13 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v9 = v13;
    v14 = [v6 daemonUserDefaults];
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
    [v14 setTipKitCachedCountOfUncompletedReminders:v15];

    sub_10051E86C(v4, _s10PredicatesOMa);
    goto LABEL_10;
  }

  sub_10051E86C(v4, _s10PredicatesOMa);

  return v4;
}

id sub_10051E0BC()
{
  v1 = v0;
  v2 = _s10PredicatesOMa(0);
  __chkstk_darwin(v2, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v5 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v5];

  [v6 setFetchLimit:1];
  v8 = NSManagedObjectContext.count<A>(for:)();
  if (v0)
  {
    sub_10051E86C(v4, _s10PredicatesOMa);
  }

  else
  {
    v9 = v8;
    v1 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v10 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
    [v1 storeProperty:v10 forKey:CompletedRemindersCount];

    sub_10051E86C(v4, _s10PredicatesOMa);
  }

  return v1;
}

char *sub_10051E2D8()
{
  v1 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 daemonUserDefaults];
  v7 = [v6 tipKitCachedCountOfCustomSmartLists];

  if (v7)
  {
    v8 = [v7 integerValue];

    if (v8 > 0)
    {
      goto LABEL_6;
    }
  }

  swift_storeEnumTagMultiPayload();
  v9 = sub_10002DDAC();
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  [v10 setFetchLimit:1];
  v12 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v8 = v12;
    v13 = [v5 daemonUserDefaults];
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v13 setTipKitCachedCountOfCustomSmartLists:v14];

    sub_10051E86C(v4, _s10PredicatesOMa_3);
LABEL_6:
    v4 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v4 storeProperty:v15 forKey:CustomSmartListsCount];

    return v4;
  }

  sub_10051E86C(v4, _s10PredicatesOMa_3);

  return v4;
}

id sub_10051E5C0()
{
  v1 = objc_opt_self();
  v2 = [v1 daemonUserDefaults];
  v3 = [v2 tipKitCachedCountOfHashtags];

  if (v3)
  {
    v4 = [v3 integerValue];

    if (v4 > 0)
    {
      goto LABEL_7;
    }
  }

  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = sub_10000C2B0();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v5];

  [v6 setFetchLimit:1];
  v8 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v4 = v8;
    v9 = [v1 daemonUserDefaults];
    v10 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
    [v9 setTipKitCachedCountOfHashtags:v10];

LABEL_7:
    v1 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
    [v1 storeProperty:v6 forKey:HashtagsCount];
  }

  return v1;
}

uint64_t sub_10051E86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10051E8CC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v10);
  v5 = v11;
  v6 = v12;
  sub_10000F61C(v10, v11);
  v9[3] = a1;
  v9[4] = a2;
  v7 = sub_1000103CC(v9);
  (*(*(a1 - 8) + 16))(v7, v2, a1);
  (*(v6 + 8))(v9, v5, v6);
  sub_10000607C(v9);
  return sub_10000607C(v10);
}

uint64_t sub_10051E9B4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v1 - 8, v2);
  v36 = &v31 - v3;
  v35 = type metadata accessor for TimeZone();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v23 = __chkstk_darwin(v21, v22);
  (*(v25 + 104))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:), v23);
  v26 = v16;
  v27 = v35;
  (*(v17 + 104))(v20, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v26);
  v28 = v10;
  v29 = v36;
  (*(v12 + 104))(v15, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v11);
  (*(v7 + 104))(v28, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v34);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v4 + 48))(v29, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v32, v29, v27);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t sub_10051EDB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BAD0);
  v1 = sub_100006654(v0, qword_10094BAD0);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10051EE80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date.ISO8601FormatStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v91 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v82 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v82 - v19;
  __chkstk_darwin(v21, v22);
  __chkstk_darwin(v23, v24);
  v27 = &v82 - v26;
  if (*(v2 + 56) <= 0.0)
  {

    return static Date.distantPast.getter();
  }

  else
  {
    v88 = v4;
    v89 = a1;
    v28 = *(v2 + 40);
    v29 = *(v2 + 48);
    v92 = v25;
    sub_10000F61C((v2 + 16), v28);
    v30 = v29;
    v31 = v92;
    sub_10051E8CC(v28, v30);
    Optional<A>.orDistantPast.getter();
    sub_1001AAD5C(v11);
    Date.addingTimeInterval(_:)();
    if (qword_1009363C0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_10094BAD0);
    v90 = v13;
    v33 = *(v13 + 16);
    v33(v20, v27, v12);
    v33(v16, v31, v12);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v93 = v87;
      *v36 = 136446722;
      v86 = v34;
      v37 = *(v2 + 40);
      v38 = *(v2 + 48);
      sub_10000F61C((v2 + 16), v37);
      v39 = *(v38 + 16);
      v85 = v35;
      v40 = v39(v37, v38);
      v42 = v41;
      v43 = sub_10000668C(v40, v41, &v93);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v36 + 4) = v43;
      *(v36 + 12) = 2082;
      v83 = v16;
      v51 = v91;
      sub_10051E9B4(v91);
      v52 = Date.ISO8601Format(_:)();
      v54 = v53;
      v82 = *(v5 + 8);
      v55 = v88;
      v82(v51, v88);
      v84 = v27;
      v56 = *(v90 + 8);
      v56(v20, v12);
      v57 = sub_10000668C(v52, v54, &v93);
      v54, v58, v59, v60, v61, v62, v63, v64;
      *(v36 + 14) = v57;
      *(v36 + 22) = 2082;
      sub_10051E9B4(v51);
      v65 = v83;
      v66 = Date.ISO8601Format(_:)();
      v68 = v67;
      v82(v51, v55);
      v56(v65, v12);
      v69 = sub_10000668C(v66, v68, &v93);
      v68, v70, v71, v72, v73, v74, v75, v76;
      *(v36 + 24) = v69;
      v77 = v86;
      _os_log_impl(&_mh_execute_header, v86, v85, "RDExecutionIntervalThrottlingPolicy: Calculating reset date {identifier: %{public}s, lastExecuted: %{public}s, result: %{public}s}", v36, 0x20u);
      swift_arrayDestroy();

      v31 = v92;

      v56(v84, v12);
      v78 = v90;
    }

    else
    {

      v80 = v90;
      v81 = *(v90 + 8);
      v81(v16, v12);
      v81(v20, v12);
      v81(v27, v12);
      v78 = v80;
    }

    return (*(v78 + 32))(v89, v31, v12);
  }
}

uint64_t sub_10051F440()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v54 - v9;
  static Date.now.getter();
  v11 = v0[5];
  v12 = v0[6];
  sub_10000F61C(v0 + 2, v11);
  (*(v12 + 24))(v57, v11, v12);
  v13 = v58;
  v14 = v59;
  sub_10000F61C(v57, v58);
  (*(v14 + 16))(v0 + 2, v10, v13, v14);
  sub_10000607C(v57);
  v15 = [objc_allocWithZone(NSDateFormatter) init];
  v16 = String._bridgeToObjectiveC()();
  [v15 setDateFormat:v16];

  if (qword_1009363C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10094BAD0);
  (*(v3 + 16))(v6, v10, v2);

  v18 = v15;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54 = v2;
    v22 = v21;
    v56 = swift_slowAlloc();
    v57[0] = v56;
    *v22 = 136446466;
    v55 = v20;
    v23 = v1[5];
    v24 = v1[6];
    sub_10000F61C(v1 + 2, v23);
    v25 = (*(v24 + 16))(v23, v24);
    v27 = v26;
    v28 = sub_10000668C(v25, v26, v57);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v22 + 4) = v28;
    *(v22 + 12) = 2082;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v37 = [v18 stringFromDate:isa];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = *(v3 + 8);
    v42 = v6;
    v43 = v54;
    v41(v42, v54);
    v44 = sub_10000668C(v38, v40, v57);
    v40, v45, v46, v47, v48, v49, v50, v51;
    *(v22 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v19, v55, "RDExecutionIntervalThrottlingPolicy: Updated last executed date {identifier: %{public}s, date: %{public}s}", v22, 0x16u);
    swift_arrayDestroy();

    return (v41)(v10, v43);
  }

  else
  {

    v53 = *(v3 + 8);
    v53(v6, v2);
    return (v53)(v10, v2);
  }
}

uint64_t sub_10051F858()
{
  sub_10000607C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10051F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v12 = a3;
  v13 = a4;
  v8 = sub_1000103CC(&v11);
  (*(*(a3 - 8) + 32))(v8, a1, a3);
  v9 = swift_allocObject();
  sub_100054B6C(&v11, v9 + 16);
  *(v9 + 56) = a5;
  return v9;
}

uint64_t sub_10051F95C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BB90);
  v1 = sub_100006654(v0, qword_10094BB90);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10051FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDManualSortHint();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_10051FBA4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = v19;
      [v22 setAccount:a2];
      [v22 mergeDataFromRecord:a1 accountID:v21];

      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_1009363C8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10094BB90);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

void sub_10051FFB8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v201 = *(v4 - 8);
  v202 = v4;
  __chkstk_darwin(v4, v5);
  v195 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v190 = &v188 - v9;
  v192 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v192, v10);
  v198 = &v188 - v11;
  v189 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v189, v12);
  v14 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v194 = &v188 - v17;
  __chkstk_darwin(v18, v19);
  v21 = &v188 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v188 - v24;
  __chkstk_darwin(v26, v27);
  v199 = &v188 - v28;
  __chkstk_darwin(v29, v30);
  v197 = &v188 - v31;
  __chkstk_darwin(v32, v33);
  v191 = &v188 - v34;
  __chkstk_darwin(v35, v36);
  v200 = &v188 - v37;
  v38 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v38 - 8, v39);
  v41 = &v188 - v40;
  v42 = type metadata accessor for Date();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42, v44);
  v205 = &v188 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = String._bridgeToObjectiveC()();
  v47 = type metadata accessor for REMCDManualSortHint();
  v208.receiver = v2;
  v208.super_class = v47;
  objc_msgSendSuper2(&v208, "mergeDataFromRecord:accountID:", a1, v46);

  v48 = [a1 recordID];
  v49 = [v48 recordName];

  if (!v49)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
    v49 = String._bridgeToObjectiveC()();
    v51, v52, v53, v54, v55, v56, v57, v58;
  }

  v196 = v25;
  v193 = v21;
  v59 = [v2 ckIdentifierFromRecordName:{v49, v14}];

  if (!v59)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
    v59 = String._bridgeToObjectiveC()();
    v61, v62, v63, v64, v65, v66, v67, v68;
  }

  [v2 setCkIdentifier:v59];

  v69 = 0;
  v70 = (v43 + 56);
  v203 = v43 + 8;
  v204 = (v43 + 32);
  do
  {
    v72 = *(&off_1008E3B48 + v69 + 32);
    if (v72 <= 4)
    {
      goto LABEL_8;
    }

    if (*(&off_1008E3B48 + v69 + 32) > 6u)
    {
      if (v72 == 7)
      {
        sub_10018E134();
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v207))
        {
          v80 = 0;
        }

        else
        {
          v80 = v207;
        }

        [v2 setListTypeRawValue:v80];
      }
    }

    else if (v72 == 5)
    {
      v73 = CKRecord.subscript.getter();
      if (!v73)
      {
        (*v70)(v41, 1, 1, v42);
LABEL_27:
        sub_1000050A4(v41, &unk_100938850, qword_100795AE0);
        goto LABEL_8;
      }

      *&v207 = v73;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      v74 = swift_dynamicCast();
      (*v70)(v41, v74 ^ 1u, 1, v42);
      if ((*(v43 + 48))(v41, 1, v42) == 1)
      {
        goto LABEL_27;
      }

      v75 = v205;
      (*v204)(v205, v41, v42);
      Date.timeIntervalSinceReferenceDate.getter();
      v77 = Int32.init(timeIntervalSinceReferenceDate:)(v76);
      v78 = [v2 lastAccessedSinceReferenceDate];
      if (v77 <= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = v77;
      }

      [v2 setLastAccessedSinceReferenceDate:v79];
      (*v203)(v75, v42);
    }

    else
    {
      v81 = CKRecord.subscript.getter();
      if (v81 && (v206 = v81, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v82 = *(&v207 + 1);
        v71 = String._bridgeToObjectiveC()();
        v82, v83, v84, v85, v86, v87, v88, v89;
      }

      else
      {
        v71 = 0;
      }

      [v2 setListID:v71];
    }

LABEL_8:
    ++v69;
  }

  while (v69 != 9);
  v90 = CKRecord.subscript.getter();
  v91 = v202;
  if (!v90 || (*&v207 = v90, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) == 0) || ((v92 = v206, v93 = [v2 serializationVersion], v92 <= v93) ? (v94 = v93) : (v94 = v92), v94 != 1))
  {
    if (qword_1009363C8 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    sub_100006654(v119, qword_10094BB90);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&_mh_execute_header, v120, v121, "Unable to support REMCDManualSortHint serialization version introduced in a subsequent release", v122, 2u);
    }

    return;
  }

  v95 = v200;
  v96 = (v201 + 56);
  v205 = *(v201 + 56);
  (v205)(v200, 1, 1, v91);
  v97 = CKRecord.subscript.getter();
  v98 = v95;
  if (v97)
  {
    v206 = v97;
    if (swift_dynamicCast())
    {
      v99 = *(&v207 + 1);
      v100 = v191;
      UUID.init(uuidString:)();
      v99, v101, v102, v103, v104, v105, v106, v107;
      sub_1000050A4(v98, &unk_100939D90, "8\n\r");
      sub_100100FB4(v100, v98);
    }
  }

  v108 = v197;
  sub_10018E470(v98, v197);
  v109 = *(v201 + 48);
  v110 = v109(v108, 1, v91);
  sub_1000050A4(v108, &unk_100939D90, "8\n\r");
  if (v110 == 1)
  {
    goto LABEL_52;
  }

  v111 = v96;
  v112 = v109;
  v113 = v199;
  sub_10018E470(v98, v199);
  v114 = [v2 eTag];
  if (v114)
  {
    v115 = v196;
    v116 = v114;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v117 = v198;
    v113 = v199;
    v118 = 0;
  }

  else
  {
    v118 = 1;
    v117 = v198;
    v115 = v196;
  }

  v204 = v111;
  (v205)(v115, v118, 1, v91);
  v123 = *(v192 + 48);
  sub_10018E470(v113, v117);
  sub_10018E470(v115, v117 + v123);
  if (v112(v117, 1, v91) == 1)
  {
    sub_1000050A4(v115, &unk_100939D90, "8\n\r");
    v124 = v113;
    v125 = v198;
    sub_1000050A4(v124, &unk_100939D90, "8\n\r");
    v109 = v112;
    if (v112(v125 + v123, 1, v91) == 1)
    {
      sub_1000050A4(v125, &unk_100939D90, "8\n\r");
      goto LABEL_68;
    }

LABEL_51:
    sub_1000050A4(v125, &unk_10093A3D0, &qword_100795770);
    v98 = v200;
    goto LABEL_52;
  }

  sub_10018E470(v117, v193);
  v109 = v112;
  if (v112(v117 + v123, 1, v91) == 1)
  {
    sub_1000050A4(v196, &unk_100939D90, "8\n\r");
    v125 = v198;
    sub_1000050A4(v199, &unk_100939D90, "8\n\r");
    (*(v201 + 8))(v193, v91);
    goto LABEL_51;
  }

  v145 = v201;
  v146 = v117 + v123;
  v147 = v190;
  (*(v201 + 32))(v190, v146, v91);
  sub_10018E4E0();
  v148 = v193;
  LODWORD(v203) = dispatch thunk of static Equatable.== infix(_:_:)();
  v149 = *(v145 + 8);
  v149(v147, v202);
  sub_1000050A4(v196, &unk_100939D90, "8\n\r");
  sub_1000050A4(v199, &unk_100939D90, "8\n\r");
  v149(v148, v202);
  v91 = v202;
  sub_1000050A4(v198, &unk_100939D90, "8\n\r");
  v98 = v200;
  if ((v203 & 1) == 0)
  {
LABEL_52:
    sub_1004DD52C(a1, 0xD00000000000002FLL, 1, &v207);
    v126 = *(&v207 + 1);
    if (*(&v207 + 1) >> 60 == 15)
    {
      sub_1004DD52C(a1, 0xD000000000000035, 1, &v207);
      v126 = *(&v207 + 1);
      if (*(&v207 + 1) >> 60 == 15)
      {
        sub_1000050A4(v98, &unk_100939D90, "8\n\r");
        return;
      }
    }

    v127 = v207;
    v128 = v98;
    v129 = v194;
    sub_10018E470(v128, v194);
    v130 = v109(v129, 1, v91);
    v131 = v195;
    if (v130 == 1)
    {
      UUID.init()();
      if (v109(v129, 1, v91) != 1)
      {
        sub_1000050A4(v129, &unk_100939D90, "8\n\r");
      }
    }

    else
    {
      (*(v201 + 32))(v195, v129, v91);
    }

    sub_100522A90(v127, v126, v131);
    (*(v201 + 8))(v131, v91);
    [v2 listTypeRawValue];
    v132 = REMManualOrderingListType.init(intValue:)();
    if ((v132 & 0x10000) == 0)
    {
      v133 = v132;
      v134 = v200;
      if (v133 != 4)
      {
        goto LABEL_82;
      }

      if (qword_1009363C8 != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      sub_100006654(v135, qword_10094BB90);
      v136 = v2;
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v137, v138))
      {
        LODWORD(v204) = v138;
        v139 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v206 = v203;
        *v139 = 136446466;
        v140 = [v136 ckIdentifier];
        if (v140)
        {
          v141 = v140;
          v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v144 = v143;
        }

        else
        {
          v142 = 0;
          v144 = 0;
        }

        *&v207 = v142;
        *(&v207 + 1) = v144;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v154 = Optional.descriptionOrNil.getter();
        v156 = v155;
        v144, v155, v157, v158, v159, v160, v161, v162;
        v163 = sub_10000668C(v154, v156, &v206);
        v156, v164, v165, v166, v167, v168, v169, v170;
        *(v139 + 4) = v163;
        *(v139 + 12) = 2082;
        v171 = [v136 eTag];
        if (v171)
        {
          v172 = v188;
          v173 = v171;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v174 = 0;
        }

        else
        {
          v174 = 1;
          v172 = v188;
        }

        (v205)(v172, v174, 1, v91);
        v175 = Optional.descriptionOrNil.getter();
        v177 = v176;
        sub_1000050A4(v172, &unk_100939D90, "8\n\r");
        v178 = sub_10000668C(v175, v177, &v206);
        v177, v179, v180, v181, v182, v183, v184, v185;
        *(v139 + 14) = v178;
        _os_log_impl(&_mh_execute_header, v137, v204, "REMCDManualSortHint.mergeData(from record:accountID:) will insert pending post-save action '.notify_SharedToMeListPinnedStateDidBecomeStale' {ckIdentifier: %{public}s, eTag: %{public}s}", v139, 0x16u);
        swift_arrayDestroy();
      }

      v186 = [v136 storeControllerManagedObjectContext];
      if (v186)
      {
        v187 = v186;
        [v186 setPendingPostSaveActions:{objc_msgSend(v186, "pendingPostSaveActions") | 2}];
        sub_10001BBA0(v127, v126);

        goto LABEL_80;
      }
    }

    v134 = v200;
LABEL_82:
    sub_1000050A4(v134, &unk_100939D90, "8\n\r");
    sub_10001BBA0(v127, v126);
    return;
  }

LABEL_68:
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v150 = type metadata accessor for Logger();
  sub_100006654(v150, qword_10094BB90);
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&_mh_execute_header, v151, v152, "Skip merging for different in eTag", v153, 2u);
  }

LABEL_80:
  sub_1000050A4(v200, &unk_100939D90, "8\n\r");
}

char *sub_10052118C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v171 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v160 - v12;
  v14 = type metadata accessor for REMCDManualSortHint();
  v191.receiver = v1;
  v191.super_class = v14;
  v15 = objc_msgSendSuper2(&v191, "newlyCreatedRecord");
  if (!v15)
  {
    return v15;
  }

  v172 = v9;
  v182 = v2;
  v16 = 0;
  sub_100226C14(&v192);
  v17 = &qword_100936000;
  v184 = v1;
  v181 = v13;
  v173 = v3;
  if (!v192)
  {
    v28 = 0;
    v146 = 0;
    v29 = 0xF000000000000000;
    v148 = 0xF000000000000000;
LABEL_17:
    v16 = v172;
    goto LABEL_18;
  }

  v203 = v192;
  v204 = v193;
  v205 = v194;
  sub_100451CD4(v195);
  v206 = v203;
  sub_1000050A4(&v206, &unk_10093B300, &unk_100797780);
  v207 = v204;
  sub_1000050A4(&v207, &qword_100939A08, &unk_100796A80);
  v208 = *(&v204 + 1);
  sub_1000050A4(&v208, &unk_100945230, &qword_1007A2590);
  v209 = v205;
  sub_1000050A4(&v209, &qword_10093E9C0, qword_100794F90);
  v210 = *(&v205 + 1);
  sub_1000050A4(&v210, &unk_100945240, &qword_1007A0A70);
  sub_10045312C(v196);
  v230[0] = v195[0];
  sub_1000050A4(v230, &unk_10093B300, &unk_100797780);
  v229 = v195[1];
  sub_1000050A4(&v229, &qword_100939A08, &unk_100796A80);
  v228 = v195[2];
  sub_1000050A4(&v228, &unk_100945230, &qword_1007A2590);
  v227 = v195[3];
  sub_1000050A4(&v227, &qword_10093E9C0, qword_100794F90);
  v226 = v195[4];
  sub_1000050A4(&v226, &unk_100945240, &qword_1007A0A70);
  v146 = sub_10015D850();
  v148 = v147;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v149 = swift_allocObject();
  v28 = v149;
  *(v149 + 16) = xmmword_100791300;
  if (qword_1009363E8 != -1)
  {
LABEL_99:
    swift_once();
  }

  v150 = *algn_100974F48;
  *(v28 + 4) = qword_100974F40;
  *(v28 + 5) = v150;

  v151 = sub_1001A5660(v28);
  swift_setDeallocating();
  sub_100034610((v28 + 32));
  swift_deallocClassInstance();
  sub_10045226C(v151, &v197);
  v151, v152, v153, v154, v155, v156, v157, v158;
  v225 = v196[0];
  sub_1000050A4(&v225, &unk_10093B300, &unk_100797780);
  v224 = v196[1];
  sub_1000050A4(&v224, &qword_100939A08, &unk_100796A80);
  v223 = v196[2];
  sub_1000050A4(&v223, &unk_100945230, &qword_1007A2590);
  v222 = v196[3];
  sub_1000050A4(&v222, &qword_10093E9C0, qword_100794F90);
  v221 = v196[4];
  sub_1000050A4(&v221, &unk_100945240, &qword_1007A0A70);
  sub_10045312C(v202);
  if (!v16)
  {
    v220 = v197;
    sub_1000050A4(&v220, &unk_10093B300, &unk_100797780);
    v219 = v198;
    sub_1000050A4(&v219, &qword_100939A08, &unk_100796A80);
    v218 = v199;
    sub_1000050A4(&v218, &unk_100945230, &qword_1007A2590);
    v217 = v200;
    sub_1000050A4(&v217, &qword_10093E9C0, qword_100794F90);
    v216 = v201;
    sub_1000050A4(&v216, &unk_100945240, &qword_1007A0A70);
    v28 = sub_10015D850();
    v29 = v159;
    v215 = v202[0];
    sub_1000050A4(&v215, &unk_10093B300, &unk_100797780);
    v214 = v202[1];
    sub_1000050A4(&v214, &qword_100939A08, &unk_100796A80);
    v213 = v202[2];
    sub_1000050A4(&v213, &unk_100945230, &qword_1007A2590);
    v212 = v202[3];
    sub_1000050A4(&v212, &qword_10093E9C0, qword_100794F90);
    v211 = v202[4];
    sub_1000050A4(&v211, &unk_100945240, &qword_1007A0A70);
    goto LABEL_17;
  }

  v185 = v16;
  v220 = v197;
  sub_1000050A4(&v220, &unk_10093B300, &unk_100797780);
  v219 = v198;
  sub_1000050A4(&v219, &qword_100939A08, &unk_100796A80);
  v218 = v199;
  sub_1000050A4(&v218, &unk_100945230, &qword_1007A2590);
  v217 = v200;
  sub_1000050A4(&v217, &qword_10093E9C0, qword_100794F90);
  v216 = v201;
  sub_1000050A4(&v216, &unk_100945240, &qword_1007A0A70);
  v16 = v172;
  if (v17[121] != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10094BB90);
  v19 = v1;
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    LODWORD(v183) = v21;
    v186 = v148;
    v22 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v187 = v180;
    *v22 = 136446978;
    v23 = [v19 ckIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    *&v188 = v25;
    *(&v188 + 1) = v27;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    v33 = sub_10000668C(v30, v31, &v187);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v22 + 4) = v33;
    *(v22 + 12) = 2080;
    [v19 listTypeRawValue];
    v41 = REMManualOrderingListType.init(intValue:)();
    LOWORD(v188) = v41;
    BYTE2(v188) = BYTE2(v41) & 1;
    sub_1000F5104(&qword_10094BBB8, &qword_1007B0130);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    v45 = sub_10000668C(v42, v43, &v187);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v22 + 14) = v45;
    *(v22 + 22) = 2080;
    v53 = [v19 listID];
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v1 = v184;
    v148 = v186;
    *&v188 = v55;
    *(&v188 + 1) = v57;
    v58 = String.init<A>(describing:)();
    v60 = v59;
    v61 = sub_10000668C(v58, v59, &v187);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v22 + 24) = v61;
    *(v22 + 32) = 2082;
    swift_getErrorValue();
    v69 = Error.localizedDescription.getter();
    v71 = v70;
    v72 = sub_10000668C(v69, v70, &v187);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v22 + 34) = v72;
    _os_log_impl(&_mh_execute_header, v20, v183, "newlyCreatedRecord: Failed to serialize/deserialize hintData in REMCDManualSortHint {ckIdentifier: %{public}s, list type: %s, listID: %s, error: %{public}s}", v22, 0x2Au);
    swift_arrayDestroy();

    v28 = 0;
    v29 = 0xF000000000000000;
    goto LABEL_17;
  }

  v28 = 0;
  v29 = 0xF000000000000000;
LABEL_18:
  v80 = 0;
  v180 = "yyyy-MM-dd hh:mm:ss";
  v176 = "aryAccountOnlyAsBytes";
  v177 = "SerializationVersion";
  v81 = __OFSUB__(HIDWORD(v28), v28);
  v164 = v81;
  v163 = HIDWORD(v28) - v28;
  v185 = v29;
  v186 = v148;
  v174 = "gRemindersInLocalAccountAsBytes";
  v175 = "aryAccountOnlyAsAsset";
  v169 = v148 >> 62;
  v170 = v29 >> 62;
  v183 = v146;
  v82 = __OFSUB__(HIDWORD(v146), v146);
  v162 = v82;
  v161 = HIDWORD(v146) - v146;
  v165 = BYTE6(v148);
  v166 = BYTE6(v29);
  v178 = (v173 + 48);
  v179 = (v173 + 56);
  v167 = (v173 + 8);
  v168 = (v173 + 16);
  v146 = &off_1008E3B48;
  v148 = v28;
  v173 = v28;
  do
  {
    v83 = *(&off_1008E3B48 + v80 + 32);
    if (v83 <= 3)
    {
      if (*(&off_1008E3B48 + v80 + 32) > 1u)
      {
        if (v83 == 2)
        {
          goto LABEL_27;
        }

        v17 = (v185 >> 60);
        if (v185 >> 60 != 15)
        {
          if (v170 > 1)
          {
            if (v170 == 2)
            {
              v104 = *(v148 + 16);
              v103 = *(v148 + 24);
              v1 = v103 - v104;
              if (__OFSUB__(v103, v104))
              {
                goto LABEL_96;
              }
            }

            else
            {
              v1 = 0;
            }
          }

          else
          {
            v1 = v166;
            if (v170)
            {
              v1 = v163;
              if (v164)
              {
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
                goto LABEL_99;
              }
            }
          }

          v107 = [objc_opt_self() sharedConfiguration];
          v108 = [v107 maxInlineAssetSizeBytes];

          if (v1 >= 1 && v108 >> 1 < v1)
          {
LABEL_81:
            v111 = objc_opt_self();
            isa = Data._bridgeToObjectiveC()().super.isa;
            v113 = [v111 assetForData:isa];

            v28 = v15;
            CKRecord.subscript.setter();
            CKRecord.subscript.setter();
            v1 = v184;
            goto LABEL_27;
          }
        }

        CKRecord.subscript.setter();
        v28 = [v15 encryptedValues];
        if (v17 <= 0xE)
        {
          *(&v189 + 1) = &type metadata for Data;
          v190 = &protocol witness table for Data;
          v1 = v184;
          v88 = v185;
          *&v188 = v148;
          *(&v188 + 1) = v185;
        }

        else
        {
          v190 = 0;
          v188 = 0u;
          v189 = 0u;
          v1 = v184;
          v88 = v185;
        }

        swift_getObjectType();
        sub_1001CB4B8(v148, v88);
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
      }

      else
      {
        if (!*(&off_1008E3B48 + v80 + 32))
        {
          v85 = [v1 eTag];
          if (v85)
          {
            v86 = v85;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v87 = 0;
          }

          else
          {
            v87 = 1;
          }

          v96 = v182;
          (*v179)(v16, v87, 1, v182);
          v97 = v181;
          sub_100100FB4(v16, v181);
          if ((*v178)(v97, 1, v96))
          {
            sub_1000050A4(v97, &unk_100939D90, "8\n\r");
            v188 = 0u;
            v189 = 0u;
            v190 = 0;
          }

          else
          {
            v98 = v171;
            (*v168)(v171, v97, v96);
            sub_1000050A4(v97, &unk_100939D90, "8\n\r");
            v99 = UUID.uuidString.getter();
            v101 = v100;
            v102 = v98;
            v16 = v172;
            (*v167)(v102, v96);
            *(&v189 + 1) = &type metadata for String;
            v190 = &protocol witness table for String;
            *&v188 = v99;
            *(&v188 + 1) = v101;
          }

          goto LABEL_33;
        }

        v17 = (v186 >> 60);
        if (v186 >> 60 != 15)
        {
          if (v169 > 1)
          {
            if (v169 == 2)
            {
              v106 = v183[2];
              v105 = v183[3];
              v1 = v105 - v106;
              if (__OFSUB__(v105, v106))
              {
                goto LABEL_98;
              }
            }

            else
            {
              v1 = 0;
            }
          }

          else
          {
            v1 = v165;
            if (v169)
            {
              v1 = v161;
              if (v162)
              {
                goto LABEL_97;
              }
            }
          }

          v109 = [objc_opt_self() sharedConfiguration];
          v110 = [v109 maxInlineAssetSizeBytes];

          if (v1 >= 1 && v110 >> 1 < v1)
          {
            goto LABEL_81;
          }
        }

        CKRecord.subscript.setter();
        v28 = [v15 encryptedValues];
        if (v17 <= 0xE)
        {
          *(&v189 + 1) = &type metadata for Data;
          v190 = &protocol witness table for Data;
          v94 = v183;
          v1 = v184;
          v95 = v186;
          *&v188 = v183;
          *(&v188 + 1) = v186;
        }

        else
        {
          v190 = 0;
          v188 = 0u;
          v189 = 0u;
          v94 = v183;
          v1 = v184;
          v95 = v186;
        }

        swift_getObjectType();
        sub_1001CB4B8(v94, v95);
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
        v148 = v173;
      }
    }

    else
    {
      if (*(&off_1008E3B48 + v80 + 32) > 5u)
      {
        if (v83 == 6)
        {
          v89 = [v1 listID];
          if (v89)
          {
            v90 = v89;
            v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;

            *(&v189 + 1) = &type metadata for String;
            v190 = &protocol witness table for String;
            *&v188 = v91;
            *(&v188 + 1) = v93;
          }

          else
          {
            v190 = 0;
            v188 = 0u;
            v189 = 0u;
          }
        }

        else if (v83 == 7)
        {
          v84 = [v1 listTypeRawValue];
          *(&v189 + 1) = &type metadata for Int16;
          v190 = &protocol witness table for Int16;
          LOWORD(v188) = v84;
        }

        else
        {
          *(&v189 + 1) = &type metadata for Int16;
          v190 = &protocol witness table for Int16;
          LOWORD(v188) = 1;
        }

LABEL_33:
        sub_10018E134();
LABEL_26:
        v28 = v15;
        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_27;
      }

      if (v83 != 4)
      {
        *(&v189 + 1) = type metadata accessor for Date();
        v190 = &protocol witness table for Date;
        sub_1000103CC(&v188);
        [v1 lastAccessedSinceReferenceDate];
        Date.init(timeIntervalSinceReferenceDate:)();
        sub_10018E134();
        goto LABEL_26;
      }
    }

LABEL_27:
    ++v80;
  }

  while (v80 != 9);
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v114 = type metadata accessor for Logger();
  sub_100006654(v114, qword_10094BB90);
  v115 = v1;
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.default.getter();
  v118 = os_log_type_enabled(v116, v117);
  v119 = v186;
  if (v118)
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v187 = v121;
    *v120 = 136446466;
    v122 = [v115 ckIdentifier];
    if (v122)
    {
      v123 = v122;
      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v125;
    }

    else
    {
      v124 = 0;
      v126 = 0;
    }

    *&v188 = v124;
    *(&v188 + 1) = v126;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v128 = Optional.descriptionOrNil.getter();
    v130 = v129;
    v126, v129, v131, v132, v133, v134, v135, v136;
    v137 = sub_10000668C(v128, v130, &v187);
    v130, v138, v139, v140, v141, v142, v143, v144;
    *(v120 + 4) = v137;
    *(v120 + 12) = 514;
    LOWORD(v137) = [v115 listTypeRawValue];

    *(v120 + 14) = v137;
    _os_log_impl(&_mh_execute_header, v116, v117, "REMCDManualSortHint+CloudKit: newlyCreatedRecord(): {ckIdentifier: %{public}s, listTypeRawValue: %{public}hd}", v120, 0x10u);
    sub_10000607C(v121);

    sub_100031A14(v183, v186);
    v127 = v173;
  }

  else
  {

    sub_100031A14(v183, v119);
    v127 = v148;
  }

  sub_100031A14(v127, v185);

  return v15;
}