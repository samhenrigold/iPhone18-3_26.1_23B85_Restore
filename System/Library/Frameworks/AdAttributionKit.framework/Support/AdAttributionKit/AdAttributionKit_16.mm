uint64_t sub_10018B0D0(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *v1;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_10018DF84;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100225248;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v7];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v23, aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v24 = v21;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100184EC8();
    v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v10;
      v14 = v11;

      v15 = a1;
      v16 = swift_allocObject();
      *(v16 + 16) = v5;
      *(v16 + 24) = v9;

      v15(&v24, v13, v14, sub_10018DF30, v16);

      swift_beginAccess();
      v17 = *(v5 + 16);
      if (v17 >> 8 <= 0xFE)
      {
        if ((v17 & 0x100) == 0)
        {
          sub_10001BABC(v13, v14);
          swift_unknownObjectRelease();

          sub_10000DB58(v23);
          return v17 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v20 = v17;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v13, v14);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v23);
  return 0;
}

uint64_t sub_10018B470(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *v1;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_10018DF84;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002251F8;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v7];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v23, aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v24 = v21;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DAEC();
    v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v10;
      v14 = v11;

      v15 = a1;
      v16 = swift_allocObject();
      *(v16 + 16) = v5;
      *(v16 + 24) = v9;

      v15(&v24, v13, v14, sub_10018DF30, v16);

      swift_beginAccess();
      v17 = *(v5 + 16);
      if (v17 >> 8 <= 0xFE)
      {
        if ((v17 & 0x100) == 0)
        {
          sub_10001BABC(v13, v14);
          swift_unknownObjectRelease();

          sub_10000DB58(v23);
          return v17 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v20 = v17;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v13, v14);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v23);
  return 0;
}

void __swiftcall ImpressionIntakeRequest.init(compactJWS:interactionType:clientBundleID:)(AttributionKitCommon::ImpressionIntakeRequest *__return_ptr retstr, Swift::String compactJWS, AttributionKitCommon::InteractionType interactionType, Swift::String clientBundleID)
{
  retstr->compactJWS = compactJWS;
  retstr->interactionType = interactionType & 1;
  retstr->clientBundleID = clientBundleID;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImpressionIntakeRequest.recordImpression(advertisedItemID:)(Swift::UInt64 advertisedItemID)
{
  v2 = v1;
  if (qword_10023E5B0 != -1)
  {
    v3 = advertisedItemID;
    swift_once();
    advertisedItemID = v3;
  }

  v4 = __chkstk_darwin(advertisedItemID);
  __chkstk_darwin(v4);
  sub_10018914C(v2, sub_1001889A0);
}

void sub_10018B918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001A9410;
  v12[3] = &unk_100225540;
  v11 = _Block_copy(v12);

  [a1 recordImpressionWithAdvertisedItemID:a6 intakeRequestData:isa reply:v11];
  _Block_release(v11);
}

uint64_t ImpressionIntakeRequest.processReengagement(advertisedItemID:reengagementURL:)(uint64_t a1)
{
  v2 = v1;
  if (qword_10023E5B0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v9 = __chkstk_darwin(a1);
  v10 = v3;
  __chkstk_darwin(v9);
  v8[2] = sub_10018D5A0;
  v8[3] = v4;
  return sub_100189508(v2, sub_100188BBC, v8, v5);
}

void sub_10018BB00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  __chkstk_darwin(v12 - 8);
  v14 = aBlock - v13;
  v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014B50(a7, v14, &qword_10023C230, &qword_1001B4FB0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v19 = 0;
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    URL._bridgeToObjectiveC()(v18);
    v19 = v20;
    (*(v17 + 8))(v14, v16);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A9410;
  aBlock[3] = &unk_1002254C8;
  v21 = _Block_copy(aBlock);

  [a1 processReengagementWithAdvertisedItemID:a6 intakeRequestData:v15.super.isa reengagementURL:v19 reply:v21];
  _Block_release(v21);
}

uint64_t sub_10018BCF4()
{
  v1 = 0x7463617265746E69;
  if (*v0 != 1)
  {
    v1 = 0x7542746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4A746361706D6F63;
  }
}

uint64_t sub_10018BD6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10018D650(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10018BD94(uint64_t a1)
{
  v2 = sub_10018D5A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018BDD0(uint64_t a1)
{
  v2 = sub_10018D5A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ImpressionIntakeRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023E988, &qword_1001C5060);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_10018D5A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_10018D5FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double ImpressionIntakeRequest.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10018D780(a2, v6);
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

void sub_10018C010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10018C078(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000CDE0(&qword_10023E488, &qword_1001C3E28);
  sub_10018DC00(&qword_10023E9D0, &qword_10023E488, &qword_1001C3E28);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (v5)
  {
    v2 = v4;
  }

  else
  {
    v2 = v4 & 1;
  }

  return v2 | (v5 << 8);
}

uint64_t sub_10018C2F0@<X0>(uint64_t a3@<X8>)
{
  v13 = a3;
  v3 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  v6 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10018DC00(&qword_10023E9D8, &qword_10023CF90, &unk_1001BF9B8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_10014AFF8(v11, v9, &qword_10023CF90, &unk_1001BF9B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v5 = *v9;
  }

  else
  {
    sub_10014AFF8(v9, v5, &qword_10023C230, &qword_1001B4FB0);
  }

  swift_storeEnumTagMultiPayload();
  return sub_10014AFF8(v5, v13, &qword_10023E798, &qword_1001C4380);
}

uint64_t sub_10018C6C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000CDE0(&qword_10023E4A0, &qword_1001C3EE0);
  sub_10018DC00(&qword_10023E9E0, &qword_10023E4A0, &qword_1001C3EE0);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (v5)
  {
    v2 = v4;
  }

  else
  {
    v2 = v4 & 1;
  }

  return v2 | (v5 << 8);
}

uint64_t sub_10018C938@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000CDE0(&qword_10023E4B0, &qword_1001C3FD8);
  sub_10018DC00(&qword_10023E9F8, &qword_10023E4B0, &qword_1001C3FD8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v5 = v7;
  v6 = v8;
  if (v9)
  {
    v5 = v7;
    v6 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v9;
  return result;
}

uint64_t sub_10018CBD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000CDE0(&qword_10023EA30, &qword_1001C5288);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000DAC0(v13, static Logger.xpc);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v6;
    v18 = v17;
    *v16 = 138543362;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error fetching synchronous remote object proxy: %{public}@", v16, 0xCu);
    sub_10000DAF8(v18, &qword_100239F10, &qword_1001B4FD0);
    v6 = v24;
  }

  *v12 = 3;
  swift_storeEnumTagMultiPayload();
  v20 = *(*a2 + 104);
  swift_beginAccess();
  sub_100014B50(a2 + v20, v8, &qword_10023EA30, &qword_1001C5288);
  v21 = (*(v10 + 48))(v8, 1, v9);
  result = sub_10000DAF8(v8, &qword_10023EA30, &qword_1001C5288);
  if (v21 == 1)
  {
    sub_10014AFF8(v12, v6, &qword_10023E798, &qword_1001C4380);
    (*(v10 + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    sub_10018DE94(v6, a2 + v20);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018CF3C(uint64_t a1, uint64_t a2)
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, static Logger.xpc);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching synchronous remote object proxy: %{public}@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  result = swift_beginAccess();
  if (*(a2 + 17) == 255)
  {
    *(a2 + 16) = 259;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018D0C0(uint64_t a1, uint64_t a2)
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, static Logger.xpc);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching synchronous remote object proxy: %{public}@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  result = swift_beginAccess();
  if (*(a2 + 32) == 255)
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    *(a2 + 16) = xmmword_1001C5050;
    *(a2 + 32) = 1;
    return sub_10018DBE8(v10, v11, 255);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000CDE0(&qword_10023EA30, &qword_1001C5288);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17[-v12];
  sub_10018C2F0(&v17[-v12]);
  v14 = *(*a3 + 104);
  swift_beginAccess();
  sub_100014B50(a3 + v14, v9, &qword_10023EA30, &qword_1001C5288);
  v15 = (*(v11 + 48))(v9, 1, v10);
  result = sub_10000DAF8(v9, &qword_10023EA30, &qword_1001C5288);
  if (v15 == 1)
  {
    sub_10014AFF8(v13, v7, &qword_10023E798, &qword_1001C4380);
    (*(v11 + 56))(v7, 0, 1, v10);
    swift_beginAccess();
    sub_10018DE94(v7, a3 + v14);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018D494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10018C938(v10);
  v4 = v10[0];
  v5 = v10[1];
  v6 = v11;
  result = swift_beginAccess();
  if (*(a3 + 32) == 255)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    *(a3 + 16) = v4;
    *(a3 + 24) = v5;
    *(a3 + 32) = v6;
    sub_10018DBDC(v4, v5, v6);
    sub_10018DBE8(v8, v9, 255);
    return sub_10017DBBC(v4, v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018D53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10018C078(a1, a2);
  result = swift_beginAccess();
  if (*(a3 + 17) == 255)
  {
    *(a3 + 16) = v4 & 0x1FF;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10018D5A8()
{
  result = qword_10023E990;
  if (!qword_10023E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E990);
  }

  return result;
}

unint64_t sub_10018D5FC()
{
  result = qword_10023E998;
  if (!qword_10023E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E998);
  }

  return result;
}

uint64_t sub_10018D650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4A746361706D6F63 && a2 == 0xEA00000000005357;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7542746E65696C63 && a2 == 0xEE004449656C646ELL)
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

uint64_t sub_10018D780@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023EA20, &qword_1001C5280);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_10018D5A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_10018DDDC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v22;
  v20 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000DB58(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

unint64_t sub_10018D9D0()
{
  result = qword_10023E9A0;
  if (!qword_10023E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9A0);
  }

  return result;
}

unint64_t sub_10018DA28()
{
  result = qword_10023E9A8;
  if (!qword_10023E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9A8);
  }

  return result;
}

unint64_t sub_10018DA80()
{
  result = qword_10023E9B0;
  if (!qword_10023E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9B0);
  }

  return result;
}

uint64_t sub_10018DAD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10018DAEC()
{
  result = qword_10023E9C8;
  if (!qword_10023E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9C8);
  }

  return result;
}

uint64_t sub_10018DB40()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10018DB80()
{
  result = qword_10023E9F0;
  if (!qword_10023E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9F0);
  }

  return result;
}

uint64_t sub_10018DBDC(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_10014C744(result, a2);
  }

  return result;
}

uint64_t sub_10018DBE8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10017DBBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10018DC00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018DC8C()
{
  result = qword_10023EA00;
  if (!qword_10023EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA00);
  }

  return result;
}

unint64_t sub_10018DCE0()
{
  result = qword_10023EA08;
  if (!qword_10023EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA08);
  }

  return result;
}

unint64_t sub_10018DD34()
{
  result = qword_10023EA10;
  if (!qword_10023EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA10);
  }

  return result;
}

unint64_t sub_10018DD88()
{
  result = qword_10023EA18;
  if (!qword_10023EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA18);
  }

  return result;
}

unint64_t sub_10018DDDC()
{
  result = qword_10023EA28;
  if (!qword_10023EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA28);
  }

  return result;
}

unint64_t sub_10018DE38()
{
  result = qword_10023EA48;
  if (!qword_10023EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA48);
  }

  return result;
}

uint64_t sub_10018DE94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023EA30, &qword_1001C5288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10018DFB0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1001A9410;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [v11 *a7];
  _Block_release(v13);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventRequest.submitConversionEvent(conversionEvent:)(AttributionKitCommon::BiomeEventRequest::ConversionEvent *conversionEvent)
{
  if (qword_10023E528 != -1)
  {
    v1 = conversionEvent;
    swift_once();
    conversionEvent = v1;
  }

  if (qword_10023FDA0)
  {
    sub_100189A6C(&conversionEvent->conversionID.value._countAndFlagsBits, sub_10018DF88);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventRequest.submitPurchaseEvent(purchaseEvent:)(AttributionKitCommon::BiomeEventRequest::PurchaseEvent *purchaseEvent)
{
  if (qword_10023E528 != -1)
  {
    v1 = purchaseEvent;
    swift_once();
    purchaseEvent = v1;
  }

  if (qword_10023FDA0)
  {
    sub_100189E44(purchaseEvent, sub_10018DF9C);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventRequest.clearBiome(clearEvent:)(Swift::String clearEvent)
{
  if (qword_10023E528 != -1)
  {
    countAndFlagsBits = clearEvent._countAndFlagsBits;
    swift_once();
    clearEvent._countAndFlagsBits = countAndFlagsBits;
  }

  if (qword_10023FDA0)
  {
    v2 = __chkstk_darwin(clearEvent._countAndFlagsBits);
    __chkstk_darwin(v2);
    sub_10018A20C(sub_1001889A0);
  }
}

void sub_10018E290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100225800;
  v9 = _Block_copy(v10);

  [a1 clearBiomeWithClearEvent:v8 reply:v9];
  _Block_release(v9);
}

void __swiftcall BiomeEventRequest.ConversionEvent.init(conversionID:advertisedItemID:conversionType:adNetworkID:sourceID:publisherItemID:marketplaceID:storefrontID:impressionDate:conversionDate:)(AttributionKitCommon::BiomeEventRequest::ConversionEvent *__return_ptr retstr, Swift::String_optional conversionID, Swift::UInt64_optional advertisedItemID, Swift::Int_optional conversionType, Swift::String_optional adNetworkID, Swift::UInt32_optional sourceID, Swift::UInt64_optional publisherItemID, Swift::String_optional marketplaceID, Swift::String_optional storefrontID, Swift::Double_optional impressionDate, Swift::Double_optional conversionDate)
{
  retstr->conversionID = conversionID;
  retstr->advertisedItemID.value = advertisedItemID.value;
  retstr->advertisedItemID.is_nil = advertisedItemID.is_nil;
  *(&retstr->conversionType.value + 7) = conversionType.value;
  LOBYTE(retstr->adNetworkID.value._countAndFlagsBits) = conversionType.is_nil;
  *&retstr->adNetworkID.value._object = adNetworkID;
  *(&retstr->publisherItemID.value + 3) = sourceID.value;
  HIBYTE(retstr->publisherItemID.value) = sourceID.is_nil;
  retstr->marketplaceID.value._countAndFlagsBits = publisherItemID.value;
  LOBYTE(retstr->marketplaceID.value._object) = publisherItemID.is_nil;
  retstr->storefrontID = marketplaceID;
  *&retstr->impressionDate.value = storefrontID;
  *(&retstr->conversionDate.value + 7) = *&impressionDate.is_nil;
  LOBYTE(retstr[1].conversionID.value._countAndFlagsBits) = v11 & 1;
  retstr[1].conversionID.value._object = v12;
  LOBYTE(retstr[1].advertisedItemID.value) = v13 & 1;
}

unint64_t sub_10018E470(unsigned __int8 a1)
{
  v1 = 0x69737265766E6F63;
  if (a1 > 4u)
  {
    if (a1 == 8)
    {
      v1 = 0x6973736572706D69;
    }

    if (a1 == 7)
    {
      v1 = 0x6F726665726F7473;
    }

    v4 = 0x656873696C627570;
    if (a1 != 5)
    {
      v4 = 0x6C7074656B72616DLL;
    }

    if (a1 <= 6u)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0x726F7774654E6461;
    if (a1 != 3)
    {
      v2 = 0x4449656372756F73;
    }

    if (a1 == 2)
    {
      v2 = 0x69737265766E6F63;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
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

uint64_t sub_10018E5E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10018F084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10018E60C(uint64_t a1)
{
  v2 = sub_10018E928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018E648(uint64_t a1)
{
  v2 = sub_10018E928();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BiomeEventRequest.ConversionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EA50, &qword_1001C52B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_10018E928();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v9 = *(v3 + 68);
  v11[11] = 4;
  v11[8] = v9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[7] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[6] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[5] = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[4] = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[3] = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10018E928()
{
  result = qword_10023EA58;
  if (!qword_10023EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA58);
  }

  return result;
}

double BiomeEventRequest.ConversionEvent.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10018F3D4(a2, v9);
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

void __swiftcall BiomeEventRequest.PurchaseEvent.init(advertisedItemID:conversionID:storefrontID:amountCharged:inAppPurchaseType:inAppPurchaseSubscriptionDuration:purchaseDate:)(AttributionKitCommon::BiomeEventRequest::PurchaseEvent *__return_ptr retstr, Swift::UInt64_optional advertisedItemID, Swift::String_optional conversionID, Swift::String_optional storefrontID, Swift::Int64_optional amountCharged, Swift::Int_optional inAppPurchaseType, Swift::Int_optional inAppPurchaseSubscriptionDuration, Swift::Double_optional purchaseDate)
{
  retstr->advertisedItemID.value = advertisedItemID.value;
  retstr->advertisedItemID.is_nil = advertisedItemID.is_nil;
  retstr->conversionID = conversionID;
  retstr->storefrontID = storefrontID;
  retstr->amountCharged.value = amountCharged.value;
  retstr->amountCharged.is_nil = amountCharged.is_nil;
  *(&retstr->inAppPurchaseType.value + 7) = inAppPurchaseType.value;
  BYTE6(retstr->inAppPurchaseSubscriptionDuration.value) = inAppPurchaseType.is_nil;
  *(&retstr->purchaseDate.value + 5) = inAppPurchaseSubscriptionDuration.value;
  LOBYTE(retstr[1].advertisedItemID.value) = inAppPurchaseSubscriptionDuration.is_nil;
  *&retstr[1].advertisedItemID.is_nil = v8;
  LOBYTE(retstr[1].conversionID.value._countAndFlagsBits) = v9 & 1;
}

uint64_t sub_10018EAB4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x69737265766E6F63;
    if (v1 != 1)
    {
      v5 = 0x6F726665726F7473;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    if (v1 != 5)
    {
      v2 = 0x6573616863727570;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0x6843746E756F6D61;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10018EBB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10018F9D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10018EBE0(uint64_t a1)
{
  v2 = sub_10018F97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018EC1C(uint64_t a1)
{
  v2 = sub_10018F97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BiomeEventRequest.PurchaseEvent.encode(to:)(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023EA60, &qword_1001C52B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_10018F97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
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
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

__n128 BiomeEventRequest.PurchaseEvent.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10018FC34(a2, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10018EEF8(uint64_t a1)
{
  v2 = sub_100190058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018EF34(uint64_t a1)
{
  v2 = sub_100190058();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BiomeEventRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023EA70, &qword_1001C52C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_100190058();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10018F084(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x69737265766E6F63 && a2 == 0xEC00000044496E6FLL;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001001CE7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F7774654E6461 && a2 == 0xEB0000000044496BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEF44496D65744972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xED00004449656361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEC0000004449746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEE00657461446E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657461446E6FLL)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_10018F3D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = sub_10000CDE0(&qword_10023EAC8, qword_1001C5740);
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v34 - v6;
  sub_10000DA7C(a1, a1[3]);
  sub_10018E928();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v8 = v5;
  LOBYTE(v62[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v62[0]) = 1;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v84 = v13 & 1;
  LOBYTE(v62[0]) = 2;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v14 & 1;
  LOBYTE(v62[0]) = 3;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = v15;
  LOBYTE(v62[0]) = 4;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v85 = BYTE4(v16) & 1;
  LOBYTE(v62[0]) = 5;
  v46 = v16;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = v17 & 1;
  LOBYTE(v62[0]) = 6;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v19;
  v40 = v18;
  LOBYTE(v62[0]) = 7;
  v42 = 0;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v20;
  LOBYTE(v62[0]) = 8;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = 0;
  v81 = v21 & 1;
  v86 = 9;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = 0;
  v23 = v22;
  v25 = v24;
  (*(v8 + 8))(v7, v51);
  v80 = v25 & 1;
  v37 = v12;
  *&v52 = v12;
  *(&v52 + 1) = v11;
  *&v53 = v49;
  LODWORD(v51) = v84;
  BYTE8(v53) = v84;
  *&v54 = v48;
  LODWORD(v42) = v83;
  BYTE8(v54) = v83;
  *&v55 = v47;
  *(&v55 + 1) = v50;
  LODWORD(v56) = v46;
  v36 = v85;
  BYTE4(v56) = v85;
  v26 = v44;
  *(&v56 + 1) = v43;
  v35 = v82;
  LOBYTE(v57) = v82;
  v27 = v40;
  *(&v57 + 1) = v40;
  *&v58 = v44;
  v28 = v41;
  *(&v58 + 1) = v39;
  *&v59 = v41;
  *(&v59 + 1) = v38;
  HIDWORD(v34) = v81;
  LOBYTE(v60) = v81;
  *(&v60 + 1) = v23;
  v25 &= 1u;
  v61 = v25;
  sub_1000FECE8(&v52, v62);
  sub_10000DB58(a1);
  v62[0] = v37;
  v62[1] = v11;
  v62[2] = v49;
  v63 = v51;
  v64 = v48;
  v65 = v42;
  v66 = v47;
  v67 = v50;
  v68 = v46;
  v69 = v36;
  v70 = v43;
  v71 = v35;
  v72 = v27;
  v73 = v26;
  v74 = v39;
  v75 = v28;
  v76 = v38;
  v77 = BYTE4(v34);
  v78 = v23;
  v79 = v25;
  result = sub_1000FED44(v62);
  v30 = v59;
  *(a2 + 96) = v58;
  *(a2 + 112) = v30;
  *(a2 + 128) = v60;
  *(a2 + 144) = v61;
  v31 = v55;
  *(a2 + 32) = v54;
  *(a2 + 48) = v31;
  v32 = v57;
  *(a2 + 64) = v56;
  *(a2 + 80) = v32;
  v33 = v53;
  *a2 = v52;
  *(a2 + 16) = v33;
  return result;
}

unint64_t sub_10018F97C()
{
  result = qword_10023EA68;
  if (!qword_10023EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA68);
  }

  return result;
}

uint64_t sub_10018F9D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001001CE7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEC00000044496E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEC0000004449746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6843746E756F6D61 && a2 == 0xED00006465677261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001001CE7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001001CE7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10018FC34@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023EAC0, &qword_1001C5738);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v44 = a1;
  sub_10000DA7C(a1, v9);
  sub_10018F97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v44);
  }

  v10 = v6;
  LOBYTE(v51) = 0;
  v11 = v5;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v69 = v13 & 1;
  LOBYTE(v51) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v42 = v14;
  LOBYTE(v51) = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = v18;
  v41 = v17;
  LOBYTE(v51) = 3;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v19 & 1;
  LOBYTE(v51) = 4;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v67 = v20 & 1;
  LOBYTE(v51) = 5;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = v21 & 1;
  v70 = 6;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v23;
  v25 = *(v10 + 8);
  v37 = v22;
  v25(v8, v11);
  v26 = v24 & 1;
  v65 = v24 & 1;
  v36 = v12;
  *&v45 = v12;
  v35 = v69;
  BYTE8(v45) = v69;
  *&v46 = v42;
  *(&v46 + 1) = v16;
  *&v47 = v41;
  *(&v47 + 1) = v43;
  v27 = v39;
  *&v48 = v40;
  v34 = v68;
  BYTE8(v48) = v68;
  *&v49 = v39;
  LOBYTE(v11) = v67;
  BYTE8(v49) = v67;
  v28 = v38;
  *&v50[0] = v38;
  LOBYTE(v12) = v66;
  BYTE8(v50[0]) = v66;
  *&v50[1] = v37;
  BYTE8(v50[1]) = v26;
  sub_1000FEBE4(&v45, &v51);
  sub_10000DB58(v44);
  v51 = v36;
  v52 = v35;
  v53 = v42;
  v54 = v16;
  v55 = v41;
  v56 = v43;
  v57 = v40;
  v58 = v34;
  v59 = v27;
  v60 = v11;
  v61 = v28;
  v62 = v12;
  v63 = v37;
  v64 = v26;
  result = sub_1000FEC40(&v51);
  v30 = v50[0];
  a2[4] = v49;
  a2[5] = v30;
  *(a2 + 89) = *(v50 + 9);
  v31 = v46;
  *a2 = v45;
  a2[1] = v31;
  v32 = v48;
  a2[2] = v47;
  a2[3] = v32;
  return result;
}

unint64_t sub_100190058()
{
  result = qword_10023EA78;
  if (!qword_10023EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA78);
  }

  return result;
}

__n128 sub_1001900BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1001900F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
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

uint64_t sub_10019014C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1001901D8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100190204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100190260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_100190314()
{
  result = qword_10023EA80;
  if (!qword_10023EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA80);
  }

  return result;
}

unint64_t sub_10019036C()
{
  result = qword_10023EA88;
  if (!qword_10023EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA88);
  }

  return result;
}

unint64_t sub_1001903C4()
{
  result = qword_10023EA90;
  if (!qword_10023EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA90);
  }

  return result;
}

unint64_t sub_10019041C()
{
  result = qword_10023EA98;
  if (!qword_10023EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA98);
  }

  return result;
}

unint64_t sub_100190474()
{
  result = qword_10023EAA0;
  if (!qword_10023EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EAA0);
  }

  return result;
}

unint64_t sub_1001904CC()
{
  result = qword_10023EAA8;
  if (!qword_10023EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EAA8);
  }

  return result;
}

unint64_t sub_100190524()
{
  result = qword_10023EAB0;
  if (!qword_10023EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EAB0);
  }

  return result;
}

unint64_t sub_10019057C()
{
  result = qword_10023EAB8;
  if (!qword_10023EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EAB8);
  }

  return result;
}

uint64_t sub_1001905D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001905F8()
{
  v0 = objc_allocWithZone(NSXPCConnection);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_;
  v5 = [v3 interfaceWithProtocol:v4];

  [v2 setExportedInterface:v5];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient(0)) init];
  [v2 setExportedObject:v6];

  v7 = &OBJC_PROTOCOL____TtP20AttributionKitCommon27TokenHandoffServiceProtocol_;
  v8 = [v3 interfaceWithProtocol:v7];

  [v2 setRemoteObjectInterface:v8];
  v16 = sub_10017E9F0;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_100225878;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10017E9FC;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_1002258A0;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler:v10];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for TokenHandoffServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_10023FDA8 = result;
  return result;
}

uint64_t sub_10019089C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100190B44()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, static Logger.impressionIntake);
  sub_10000DAC0(v0, static Logger.impressionIntake);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100190EC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100026610(v5, a2);
  sub_10000DAC0(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100190F64(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_10000DAC0(v4, a2);
}

uint64_t sub_100190FDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_10000DAC0(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100191098(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0xD000000000000015;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001001CA450;
    v12 = 0xD00000000000001ALL;
    if (a1 == 6)
    {
      v12 = 0xD000000000000015;
    }

    else
    {
      v11 = 0x80000001001CA490;
    }

    v13 = 0x6973736572706D69;
    v14 = 0xEF657079742D6E6FLL;
    if (a1 == 4)
    {
      v13 = 0x6D617473656D6974;
      v14 = 0xE900000000000070;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000001001CA470;
    v6 = 0xD00000000000001ALL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
      v5 = 0x80000001001CA1F0;
    }

    v7 = 0x80000001001CA410;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v7 = 0x80000001001CA430;
    }

    else
    {
      v8 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001001CA430;
        v3 = 0xD000000000000019;
        goto LABEL_41;
      }

      v15 = "impression-identifier";
      goto LABEL_35;
    }

    if (a2 != 2)
    {
      v2 = 0x80000001001CA1F0;
      v3 = 0xD000000000000011;
      goto LABEL_41;
    }

    v16 = "advertised-item-identifier";
    goto LABEL_40;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = "ad-network-identifier";
LABEL_35:
      v2 = (v15 - 32) | 0x8000000000000000;
      goto LABEL_41;
    }

    v16 = "eligible-for-re-engagement";
LABEL_40:
    v2 = (v16 - 32) | 0x8000000000000000;
    v3 = 0xD00000000000001ALL;
    goto LABEL_41;
  }

  if (a2 == 4)
  {
    v3 = 0x6D617473656D6974;
  }

  else
  {
    v3 = 0x6973736572706D69;
    v2 = 0xEF657079742D6E6FLL;
  }

LABEL_41:
  if (v9 == v3 && v10 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_1001912D8(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_100191428(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10019158C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100223FD8, *a1);

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

uint64_t sub_1001915EC@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100223FD8, v3);

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

uint64_t sub_100191650(uint64_t a1)
{
  v2 = sub_10019185C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019168C(uint64_t a1)
{
  v2 = sub_10019185C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppImpressionHeader.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000CDE0(&qword_10023EC50, &qword_1001C57E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000DA7C(a1, a1[3]);
  sub_10019185C();
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

unint64_t sub_10019185C()
{
  result = qword_10023EC58;
  if (!qword_10023EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EC58);
  }

  return result;
}

uint64_t AppImpressionHeader.init(from:)(void *a1)
{
  result = sub_100192530(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1001918DC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100192530(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t AppImpressionPayload.impressionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppImpressionPayload.adNetworkID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppImpressionPayload(0) + 40));

  return v1;
}

unint64_t sub_100191AB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100192E4C(*a1);
  *a2 = result;
  return result;
}

void sub_100191AE0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xE900000000000070;
    v9 = 0x6D617473656D6974;
    v10 = 0xD000000000000015;
    v11 = 0x80000001001CA450;
    if (v2 != 6)
    {
      v10 = 0xD00000000000001ALL;
      v11 = 0x80000001001CA490;
    }

    if (v2 != 4)
    {
      v9 = 0x6973736572706D69;
      v8 = 0xEF657079742D6E6FLL;
    }

    if (*v1 <= 5u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (*v1 > 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001001CA470;
    v4 = 0xD000000000000011;
    if (v2 == 2)
    {
      v4 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x80000001001CA1F0;
    }

    v5 = 0xD000000000000015;
    v6 = 0x80000001001CA410;
    if (*v1)
    {
      v5 = 0xD000000000000019;
      v6 = 0x80000001001CA430;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_100191C04()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6D617473656D6974;
    v6 = 0xD000000000000015;
    if (v1 != 6)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v1 != 4)
    {
      v5 = 0x6973736572706D69;
    }

    if (*v0 <= 5u)
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
    v2 = 0xD000000000000011;
    if (v1 == 2)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000015;
    if (*v0)
    {
      v3 = 0xD000000000000019;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100191D20@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100192E4C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100191D54(uint64_t a1)
{
  v2 = sub_100192760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100191D90(uint64_t a1)
{
  v2 = sub_100192760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppImpressionPayload.encode(to:)(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023EC60, &qword_1001C57E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_100192760();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100192808(&qword_10023A108, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AppImpressionPayload(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    sub_1001927B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AppImpressionPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000CDE0(&qword_10023EC78, &qword_1001C57F0);
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AppImpressionPayload(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DA7C(a1, a1[3]);
  sub_100192760();
  v26 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v12 = v22;
  v34 = 0;
  sub_100192808(&qword_10023A0E0, &protocol conformance descriptor for UUID);
  v13 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v11, v13, v4);
  v33 = 1;
  *&v11[v9[5]] = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v24;
  *&v11[v9[6]] = v14;
  v31 = 3;
  *&v11[v9[7]] = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = 4;
  *&v11[v9[8]] = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 5;
  sub_10019284C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = 6;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = &v11[v9[10]];
  *v17 = v16;
  v17[1] = v18;
  v27 = 7;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v15 + 8))(v26, v25);
  v11[v9[11]] = v19;
  sub_1001928A0(v11, v21);
  sub_10000DB58(a1);
  return sub_100192904(v11);
}

uint64_t sub_100192530(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023ED68, &unk_1001C5BB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019185C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000DB58(a1);
  return v7;
}

uint64_t type metadata accessor for AppImpressionPayload(uint64_t a1)
{
  result = qword_10023ECE0;
  if (!qword_10023ECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100192760()
{
  result = qword_10023EC68;
  if (!qword_10023EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EC68);
  }

  return result;
}

unint64_t sub_1001927B4()
{
  result = qword_10023EC70;
  if (!qword_10023EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EC70);
  }

  return result;
}

uint64_t sub_100192808(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019284C()
{
  result = qword_10023EC80;
  if (!qword_10023EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EC80);
  }

  return result;
}

uint64_t sub_1001928A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppImpressionPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100192904(uint64_t a1)
{
  v2 = type metadata accessor for AppImpressionPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100192A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100192B14(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100192BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100192BCC()
{
  if (!qword_10023ECF0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10023ECF0);
    }
  }
}

unint64_t sub_100192C40()
{
  result = qword_10023ED38;
  if (!qword_10023ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED38);
  }

  return result;
}

unint64_t sub_100192C98()
{
  result = qword_10023ED40;
  if (!qword_10023ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED40);
  }

  return result;
}

unint64_t sub_100192CF0()
{
  result = qword_10023ED48;
  if (!qword_10023ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED48);
  }

  return result;
}

unint64_t sub_100192D48()
{
  result = qword_10023ED50;
  if (!qword_10023ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED50);
  }

  return result;
}

unint64_t sub_100192DA0()
{
  result = qword_10023ED58;
  if (!qword_10023ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED58);
  }

  return result;
}

unint64_t sub_100192DF8()
{
  result = qword_10023ED60;
  if (!qword_10023ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED60);
  }

  return result;
}

unint64_t sub_100192E4C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224028, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t ConversionType.isInstall.getter(unsigned __int8 a1)
{
  if (!a1)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t ConversionType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64616F6C6E776F64;
  }

  if (a1 == 1)
  {
    return 0x6F6C6E776F646572;
  }

  return 0x6761676E652D6572;
}

uint64_t sub_100193044(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C6E776F646572;
  v4 = 0xEA00000000006461;
  if (v2 != 1)
  {
    v3 = 0x6761676E652D6572;
    v4 = 0xED0000746E656D65;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6F6C6E776F646572;
  v8 = 0xEA00000000006461;
  if (*a2 != 1)
  {
    v7 = 0x6761676E652D6572;
    v8 = 0xED0000746E656D65;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

Swift::Int sub_100193168()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10019321C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001932BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10019336C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20AttributionKitCommon14ConversionTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10019339C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000006461;
  v5 = 0x6F6C6E776F646572;
  if (v2 != 1)
  {
    v5 = 0x6761676E652D6572;
    v4 = 0xED0000746E656D65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64616F6C6E776F64;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s20AttributionKitCommon14ConversionTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224180, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10019351C()
{
  result = qword_10023ED70;
  if (!qword_10023ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED70);
  }

  return result;
}

unint64_t sub_100193574()
{
  result = qword_10023ED78;
  if (!qword_10023ED78)
  {
    sub_10000CCC0(&qword_10023ED80, &qword_1001C5CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED78);
  }

  return result;
}

AttributionKitCommon::SystemEnvironment_optional __swiftcall SystemEnvironment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224210, v2);

  if (v3 == 1)
  {
    v4.value = AttributionKitCommon_SystemEnvironment_production;
  }

  else
  {
    v4.value = AttributionKitCommon_SystemEnvironment_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SystemEnvironment.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x69746375646F7270;
  }

  else
  {
    return 0x6D706F6C65766564;
  }
}

uint64_t sub_100193680(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69746375646F7270;
  }

  else
  {
    v3 = 0x6D706F6C65766564;
  }

  if (v2)
  {
    v4 = 0xEB00000000746E65;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x69746375646F7270;
  }

  else
  {
    v5 = 0x6D706F6C65766564;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xEB00000000746E65;
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

unint64_t sub_100193738()
{
  result = qword_10023ED88;
  if (!qword_10023ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED88);
  }

  return result;
}

Swift::Int sub_10019378C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10019381C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100193898(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100193924@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100224210, *a1);

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

void sub_100193984(uint64_t *a1@<X8>)
{
  v2 = 0x6D706F6C65766564;
  if (*v1)
  {
    v2 = 0x69746375646F7270;
  }

  v3 = 0xEB00000000746E65;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100193A90()
{
  result = qword_10023ED90;
  if (!qword_10023ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED90);
  }

  return result;
}

uint64_t sub_100193B30()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = sub_100193EF8;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100193C64;

  return sub_10017F6F0(sub_1001889A0, v3);
}

uint64_t sub_100193C64(char a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100193DC0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_100193DC0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_100193E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001A9410;
  v9[3] = &unk_100225C28;
  v8 = _Block_copy(v9);

  [a1 isEligibleForPurchaseProcessingWithAppItemID:a6 reply:v8];
  _Block_release(v8);
}

uint64_t PurchaseIntakeRequest.processInAppPurchase(appItemID:inAppPurchaseDetails:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100193F20, 0, 0);
}

uint64_t sub_100193F20()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = sub_10019432C;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10019405C;
  v5 = v0[3];

  return sub_10017FAF4(v5, sub_100188BBC, v3);
}

uint64_t sub_10019405C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001941DC;
  }

  else
  {
    v2 = sub_100194170;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100194170()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001941DC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100194248(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001A9410;
  v12[3] = &unk_100225C00;
  v11 = _Block_copy(v12);

  [a1 processInAppPurchaseWithAppItemID:a6 inAppPurchaseData:isa reply:v11];
  _Block_release(v11);
}

uint64_t PurchaseIntakeRequest.reportPurchaseIntakeFailure(appItemID:error:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100194354, 0, 0);
}

uint64_t sub_100194354()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = sub_100194680;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10019448C;

  return sub_10017FE68(sub_100188BBC, v4);
}

uint64_t sub_10019448C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100194964;
  }

  else
  {
    v2 = sub_100194958;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001945A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = _convertErrorToNSError(_:)();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001A9410;
  v13[3] = &unk_100225BD8;
  v12 = _Block_copy(v13);

  [a1 reportPurchaseIntakeFailureWithAppItemID:a6 error:v11 reply:v12];
  _Block_release(v12);
}

uint64_t sub_100194688(uint64_t a1)
{
  v2 = sub_100194814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001946C4(uint64_t a1)
{
  v2 = sub_100194814();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseIntakeRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023ED98, &qword_1001C5E88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_100194814();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100194814()
{
  result = qword_10023EDA0;
  if (!qword_10023EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDA0);
  }

  return result;
}

unint64_t sub_10019488C()
{
  result = qword_10023EDA8;
  if (!qword_10023EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDA8);
  }

  return result;
}

unint64_t sub_1001948E4()
{
  result = qword_10023EDB0;
  if (!qword_10023EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDB0);
  }

  return result;
}

uint64_t sub_100194938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100194968()
{
  if (*v0)
  {
    return 0x746E756F63736964;
  }

  else
  {
    return 0x6169725465657266;
  }
}

uint64_t sub_1001949AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169725465657266 && a2 == 0xE90000000000006CLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63736964 && a2 == 0xEA00000000006465)
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

uint64_t sub_100194A98(uint64_t a1)
{
  v2 = sub_100194ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194AD4(uint64_t a1)
{
  v2 = sub_100194ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100194B10(uint64_t a1)
{
  v2 = sub_100194F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194B4C(uint64_t a1)
{
  v2 = sub_100194F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100194B88(uint64_t a1)
{
  v2 = sub_100194F74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194BC4(uint64_t a1)
{
  v2 = sub_100194F74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseIntakeOfferType.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_10000CDE0(&qword_10023EDB8, &qword_1001C5FD0);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_10000CDE0(&qword_10023EDC0, &qword_1001C5FD8);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_10000CDE0(&qword_10023EDC8, &qword_1001C5FE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000DA7C(a1, a1[3]);
  sub_100194ECC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100194F20();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_100194F74();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_100194ECC()
{
  result = qword_10023EDD0;
  if (!qword_10023EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDD0);
  }

  return result;
}

unint64_t sub_100194F20()
{
  result = qword_10023EDD8;
  if (!qword_10023EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDD8);
  }

  return result;
}

unint64_t sub_100194F74()
{
  result = qword_10023EDE0;
  if (!qword_10023EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDE0);
  }

  return result;
}

Swift::Int PurchaseIntakeOfferType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100195054@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001950A0(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1001950A0(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023EE28, &qword_1001C6380);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_10000CDE0(&qword_10023EE30, &qword_1001C6388);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10000CDE0(&qword_10023EE38, &unk_1001C6390);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10000DA7C(a1, a1[3]);
  sub_100194ECC();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_10000DB58(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1001A9350();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_10000CDE0(&qword_10023E930, &qword_1001C4C60);
    *v19 = &type metadata for PurchaseIntakeOfferType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000DB58(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_100194F20();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_100194F74();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_10000DB58(v26);
  return v31 & 1;
}

unint64_t sub_100195560()
{
  result = qword_10023EDE8;
  if (!qword_10023EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDE8);
  }

  return result;
}

unint64_t sub_1001955F8()
{
  result = qword_10023EDF0;
  if (!qword_10023EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDF0);
  }

  return result;
}

unint64_t sub_100195650()
{
  result = qword_10023EDF8;
  if (!qword_10023EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDF8);
  }

  return result;
}

unint64_t sub_1001956A8()
{
  result = qword_10023EE00;
  if (!qword_10023EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE00);
  }

  return result;
}

unint64_t sub_100195700()
{
  result = qword_10023EE08;
  if (!qword_10023EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE08);
  }

  return result;
}

unint64_t sub_100195758()
{
  result = qword_10023EE10;
  if (!qword_10023EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE10);
  }

  return result;
}

unint64_t sub_1001957B0()
{
  result = qword_10023EE18;
  if (!qword_10023EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE18);
  }

  return result;
}

unint64_t sub_100195808()
{
  result = qword_10023EE20;
  if (!qword_10023EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE20);
  }

  return result;
}

void __swiftcall PostbackProxyRequest.init(advertisedItemID:fineConversionValue:coarseConversionValue:lockPostback:conversionTag:)(AttributionKitCommon::PostbackProxyRequest *__return_ptr retstr, Swift::UInt64 advertisedItemID, Swift::Int fineConversionValue, AttributionKitCommon::CoarseConversionValue_optional coarseConversionValue, Swift::Bool lockPostback, Swift::String_optional conversionTag)
{
  retstr->advertisedItemID = advertisedItemID;
  retstr->fineConversionValue = fineConversionValue;
  retstr->coarseConversionValue = coarseConversionValue;
  retstr->lockPostback = lockPostback;
  retstr->conversionTag = conversionTag;
}

uint64_t sub_1001958AC()
{
  if (qword_10023E5B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100181A08;
  v2 = *(v0 + 16);

  return sub_100180080(v2, sub_100195D84, 0);
}

unint64_t sub_1001959A4()
{
  v1 = *v0;
  v2 = 0x74736F506B636F6CLL;
  if (v1 != 3)
  {
    v2 = 0x69737265766E6F63;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000015;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100195A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100195EB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100195A8C(uint64_t a1)
{
  v2 = sub_100195E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100195AC8(uint64_t a1)
{
  v2 = sub_100195E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PostbackProxyRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EE40, &qword_1001C63A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_100195E60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = *(v3 + 16);
    v10[12] = 2;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double PostbackProxyRequest.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10019607C(a2, v6);
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

void sub_100195D84(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100225ED0;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:isa reply:v9];
  _Block_release(v9);
}

unint64_t sub_100195E60()
{
  result = qword_10023EE48;
  if (!qword_10023EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE48);
  }

  return result;
}

uint64_t sub_100195EB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001001CE7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001001CE910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001CE930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736F506B636F6CLL && a2 == 0xEC0000006B636162 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
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

uint64_t sub_10019607C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023EE68, &qword_1001C6578);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_100195E60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 2;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = v23;
  v21 = 3;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v10;
  v18 = v11;
  v20 = 4;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  result = sub_10000DB58(a1);
  v16 = v19;
  *a2 = v9;
  *(a2 + 8) = v16;
  LOBYTE(v16) = v18;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_1001962D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_100196330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1001963B0()
{
  result = qword_10023EE50;
  if (!qword_10023EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE50);
  }

  return result;
}

unint64_t sub_100196408()
{
  result = qword_10023EE58;
  if (!qword_10023EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE58);
  }

  return result;
}

unint64_t sub_100196460()
{
  result = qword_10023EE60;
  if (!qword_10023EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE60);
  }

  return result;
}

uint64_t sub_1001964B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

AttributionKitCommon::MeasurementWindowConfiguration __swiftcall MeasurementWindowConfiguration.init(sourceIDDigits:conversionValueTier:isPublisherItemIDIncluded:isMarketplaceIDIncluded:isCountryCodeIncluded:)(Swift::Int sourceIDDigits, AttributionKitCommon::ConversionValueTier conversionValueTier, Swift::Bool isPublisherItemIDIncluded, Swift::Bool isMarketplaceIDIncluded, Swift::Bool isCountryCodeIncluded)
{
  if (isPublisherItemIDIncluded)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFF00 | conversionValueTier;
  if (isMarketplaceIDIncluded)
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  if (isCountryCodeIncluded)
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | v7 | v8;
  result.sourceIDDigits = sourceIDDigits;
  result.conversionValueTier = v9;
  result.isPublisherItemIDIncluded = BYTE1(v9);
  result.isMarketplaceIDIncluded = BYTE2(v9);
  result.isCountryCodeIncluded = HIBYTE(v9);
  return result;
}

unint64_t sub_100196520()
{
  v1 = *v0;
  v2 = 0x4449656372756F73;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1001965D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001969E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001965FC(uint64_t a1)
{
  v2 = sub_10019686C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196638(uint64_t a1)
{
  v2 = sub_10019686C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MeasurementWindowConfiguration.encode(to:)(void *a1, uint64_t a2, char a3)
{
  v6 = sub_10000CDE0(&qword_10023EE70, &qword_1001C6580);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000DA7C(a1, a1[3]);
  sub_10019686C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_1001968C0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10019686C()
{
  result = qword_10023EE78;
  if (!qword_10023EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE78);
  }

  return result;
}

unint64_t sub_1001968C0()
{
  result = qword_10023EE80;
  if (!qword_10023EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE80);
  }

  return result;
}

uint64_t MeasurementWindowConfiguration.init(from:)(void *a1)
{
  result = sub_100196BA4(a1);
  if (v1)
  {
    return v3 & 0x10101FF;
  }

  return result;
}

uint64_t sub_100196944@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100196BA4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 9) = BYTE1(v5) & 1;
    *(a1 + 10) = BYTE2(v5) & 1;
    *(a1 + 11) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_1001969E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656372756F73 && a2 == 0xEE00737469676944;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001001CE950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001CE970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CE990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001CE9B0 == a2)
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

uint64_t sub_100196BA4(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023EEA0, &qword_1001C6758);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_10019686C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v13 = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 1;
  sub_100196FD8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = 2;
  v8[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 3;
  v8[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v9 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000DB58(a1);
  return v6;
}

uint64_t initializeBufferWithCopyOfBuffer for MeasurementWindowConfiguration(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MeasurementWindowConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MeasurementWindowConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100196ED4()
{
  result = qword_10023EE88;
  if (!qword_10023EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE88);
  }

  return result;
}

unint64_t sub_100196F2C()
{
  result = qword_10023EE90;
  if (!qword_10023EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE90);
  }

  return result;
}

unint64_t sub_100196F84()
{
  result = qword_10023EE98;
  if (!qword_10023EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE98);
  }

  return result;
}

unint64_t sub_100196FD8()
{
  result = qword_10023EEA8;
  if (!qword_10023EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EEA8);
  }

  return result;
}

void sub_100197038(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100226140;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:isa reply:v9];
  _Block_release(v9);
}

void __swiftcall PostbackUpdateTestingRequest.init(fineCV:coarseCV:conversionTag:clientBundleID:)(AttributionKitCommon::PostbackUpdateTestingRequest *__return_ptr retstr, Swift::Int fineCV, AttributionKitCommon::CoarseConversionValue_optional coarseCV, Swift::String_optional conversionTag, Swift::String clientBundleID)
{
  retstr->fineCV = fineCV;
  retstr->coarseCV = coarseCV;
  retstr->conversionTag = conversionTag;
  retstr->clientBundleID = clientBundleID;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PostbackUpdateTestingRequest.updateConversionValue()()
{
  if (qword_10023E528 != -1)
  {
    swift_once();
  }

  if (qword_10023FDA0)
  {
    sub_10018A5AC(v0, sub_100197038);
  }
}

uint64_t sub_1001971B4()
{
  v1 = 0x5643656E6966;
  v2 = 0x69737265766E6F63;
  if (*v0 != 2)
  {
    v2 = 0x7542746E65696C63;
  }

  if (*v0)
  {
    v1 = 0x5643657372616F63;
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

uint64_t sub_100197244@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100197560(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019726C(uint64_t a1)
{
  v2 = sub_1001974B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001972A8(uint64_t a1)
{
  v2 = sub_1001974B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PostbackUpdateTestingRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EEB0, &qword_1001C6760);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_1001974B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 8);
    v10[13] = 1;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1001974B0()
{
  result = qword_10023EEB8;
  if (!qword_10023EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EEB8);
  }

  return result;
}

double PostbackUpdateTestingRequest.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001976D0(a2, v6);
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

uint64_t sub_100197560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5643656E6966 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5643657372616F63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7542746E65696C63 && a2 == 0xEE004449656C646ELL)
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

uint64_t sub_1001976D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023EED8, qword_1001C6940);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1001974B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = v24;
  v22 = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  HIDWORD(v19) = v10;
  v20 = v11;
  v21 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v8;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = sub_10000DB58(a1);
  *a2 = v9;
  *(a2 + 8) = BYTE4(v19);
  *(a2 + 16) = v20;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_100197924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019796C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1001979DC()
{
  result = qword_10023EEC0;
  if (!qword_10023EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EEC0);
  }

  return result;
}

unint64_t sub_100197A34()
{
  result = qword_10023EEC8;
  if (!qword_10023EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EEC8);
  }

  return result;
}

unint64_t sub_100197A8C()
{
  result = qword_10023EED0;
  if (!qword_10023EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EED0);
  }

  return result;
}

uint64_t sub_100197AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100197AF8()
{
  result = sub_100197C68();
  qword_10023FF00 = result;
  return result;
}

uint64_t sub_100197B18()
{
  v1 = v0;
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, static Logger.xpc);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinitializing ServiceConnection", v5, 2u);
  }

  [*(v1 + 16) invalidate];
  return v1;
}

uint64_t sub_100197C10()
{
  sub_100197B18();

  return swift_deallocClassInstance();
}

uint64_t sub_100197C68()
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000DAC0(v0, static Logger.xpc);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "initializing ServiceConnection", v3, 2u);
  }

  v4 = objc_allocWithZone(NSXPCConnection);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithMachServiceName:v5 options:0];

  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
  [v6 setExportedInterface:v8];

  v9 = [objc_allocWithZone(type metadata accessor for XPCClient(0)) init];
  [v6 setExportedObject:v9];

  v10 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon15ServiceProtocol_];
  [v6 setRemoteObjectInterface:v10];

  v18 = sub_10017E9F0;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10001F3F8;
  v17 = &unk_100226168;
  v11 = _Block_copy(&v14);
  [v6 setInterruptionHandler:v11];
  _Block_release(v11);
  v18 = sub_10017E9FC;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10001F3F8;
  v17 = &unk_100226190;
  v12 = _Block_copy(&v14);
  [v6 setInvalidationHandler:v12];
  _Block_release(v12);
  [v6 resume];
  type metadata accessor for ServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t sub_100197F6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TokenHandoffRequest.handoffUTToken(advertisedItemID:tokenData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100197FB4, 0, 0);
}

uint64_t sub_100197FB4()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_10019820C;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100188038;
  v5 = *(v0 + 72);

  return sub_1001803CC(v5, sub_100198218, v3);
}

void sub_100198100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = Data._bridgeToObjectiveC()().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001A9410;
  v13[3] = &unk_100226318;
  v12 = _Block_copy(v13);

  [a1 handoffTokenWithAdvertisedItemID:a6 tokenData:isa requestData:v11 reply:v12];
  _Block_release(v12);
}

uint64_t TokenHandoffRequest.handoffUTMetrics(advertisedItemID:eventsData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100198248, 0, 0);
}

uint64_t sub_100198248()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_100198394;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100187DBC;
  v5 = *(v0 + 72);

  return sub_1001803CC(v5, sub_100198C78, v3);
}

uint64_t TokenHandoffRequest.handoffPODToken(advertisedItemID:tokenData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_10023E530 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v7 = __chkstk_darwin(a1);
  __chkstk_darwin(v7);
  return sub_10018A968(a4, sub_100198C78);
}

void sub_1001984D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16[4] = a4;
  v16[5] = a5;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1001A9410;
  v16[3] = a9;
  v15 = _Block_copy(v16);

  [a1 *a10];
  _Block_release(v15);
}

uint64_t sub_10019861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69766E456E616B73 && a2 == 0xEF746E656D6E6F72)
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

uint64_t sub_1001986AC(uint64_t a1)
{
  v2 = sub_10019886C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001986E8(uint64_t a1)
{
  v2 = sub_10019886C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TokenHandoffRequest.encode(to:)(void *a1, char a2)
{
  v4 = sub_10000CDE0(&qword_10023EFA0, &qword_1001C69A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_10000DA7C(a1, a1[3]);
  sub_10019886C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_10004CEFC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10019886C()
{
  result = qword_10023EFA8;
  if (!qword_10023EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFA8);
  }

  return result;
}

void *sub_1001988D8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100198920(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_100198920(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023EFC8, &qword_1001C6B68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_10000DA7C(a1, a1[3]);
  sub_10019886C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10004DBC4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_10000DB58(a1);
  }

  return v7;
}

uint64_t getEnumTagSinglePayload for TokenHandoffRequest(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_100198B54()
{
  result = qword_10023EFB0;
  if (!qword_10023EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFB0);
  }

  return result;
}

unint64_t sub_100198BAC()
{
  result = qword_10023EFB8;
  if (!qword_10023EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFB8);
  }

  return result;
}

unint64_t sub_100198C04()
{
  result = qword_10023EFC0;
  if (!qword_10023EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFC0);
  }

  return result;
}

uint64_t sub_100198C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100198C84(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001A9410;
  v7[3] = &unk_100226380;
  v6 = _Block_copy(v7);

  [v5 getSnoutStoriesWithReply:v6];
  _Block_release(v6);
}

uint64_t SnoutRequest.getSnoutStories()()
{
  if (qword_10023E528 != -1)
  {
    swift_once();
  }

  if (!qword_10023FDA0)
  {
    return 0;
  }

  result = sub_10018AD18(sub_100198C84, &v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100198DDC(uint64_t a1)
{
  v2 = sub_100198F68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198E18(uint64_t a1)
{
  v2 = sub_100198F68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SnoutRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023EFD0, &qword_1001C6B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_100198F68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100198F68()
{
  result = qword_10023EFD8;
  if (!qword_10023EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFD8);
  }

  return result;
}

unint64_t sub_100198FE0()
{
  result = qword_10023EFE0;
  if (!qword_10023EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFE0);
  }

  return result;
}

unint64_t sub_100199038()
{
  result = qword_10023EFE8;
  if (!qword_10023EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFE8);
  }

  return result;
}

uint64_t sub_10019908C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DeveloperBillingEvent.purchaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperBillingEvent(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeveloperBillingEvent(uint64_t a1)
{
  result = qword_10023F080;
  if (!qword_10023F080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeveloperBillingEvent.init(price:quantity:offerType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = type metadata accessor for DeveloperBillingEvent(0);
  result = Date.init()();
  *(a6 + *(v8 + 28)) = a5;
  return result;
}

uint64_t sub_100199234()
{
  v1 = 0x6563697270;
  v2 = 0x6573616863727570;
  if (*v0 != 2)
  {
    v2 = 0x707954726566666FLL;
  }

  if (*v0)
  {
    v1 = 0x797469746E617571;
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

uint64_t sub_1001992B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019A028(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001992E0(uint64_t a1)
{
  v2 = sub_100199614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019931C(uint64_t a1)
{
  v2 = sub_100199614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeveloperBillingEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EFF0, &qword_1001C6CF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_100199614();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v14 = *(v3 + 4);
  v12 = 0;
  type metadata accessor for Decimal(0);
  sub_100199AE4(&qword_10023AF98, type metadata accessor for Decimal, &protocol conformance descriptor for NSDecimal);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = type metadata accessor for DeveloperBillingEvent(0);
    LOBYTE(v13) = 2;
    type metadata accessor for Date();
    sub_100199AE4(&qword_10023F000, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = *(v3 + *(v10 + 28));
    v12 = 3;
    sub_100199668();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100199614()
{
  result = qword_10023EFF8;
  if (!qword_10023EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFF8);
  }

  return result;
}

unint64_t sub_100199668()
{
  result = qword_10023F008;
  if (!qword_10023F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F008);
  }

  return result;
}

uint64_t DeveloperBillingEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Date();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000CDE0(&qword_10023F010, &qword_1001C6CF8);
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for DeveloperBillingEvent(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  sub_10000DA7C(a1, v13);
  sub_100199614();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v25);
  }

  v20 = v6;
  v14 = v23;
  type metadata accessor for Decimal(0);
  v30 = 0;
  sub_100199AE4(&qword_10023A6C0, type metadata accessor for Decimal, &protocol conformance descriptor for NSDecimal);
  v15 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v12 = v26;
  *(v12 + 4) = v27;
  v29 = 1;
  *(v12 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 2;
  sub_100199AE4(&qword_10023F018, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v22 + 32);
  v19 = *(v10 + 24);
  v17(&v12[v19], v16, v4);
  v28 = 3;
  sub_100199B2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v9, v15);
  v12[*(v10 + 28)] = v29;
  sub_100199B80(v12, v21);
  sub_10000DB58(v25);
  return sub_100199BE4(v12);
}

uint64_t sub_100199AE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100199B2C()
{
  result = qword_10023F020;
  if (!qword_10023F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F020);
  }

  return result;
}

uint64_t sub_100199B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperBillingEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199BE4(uint64_t a1)
{
  v2 = type metadata accessor for DeveloperBillingEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100199C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 <= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a1 + *(a3 + 28));
    }

    v14 = v13 - 2;
    if (v12 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100199D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_100199E1C(uint64_t a1)
{
  type metadata accessor for Decimal(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100199EC0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100199EC0()
{
  if (!qword_10023F090)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10023F090);
    }
  }
}

unint64_t sub_100199F24()
{
  result = qword_10023F0C8;
  if (!qword_10023F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F0C8);
  }

  return result;
}

unint64_t sub_100199F7C()
{
  result = qword_10023F0D0;
  if (!qword_10023F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F0D0);
  }

  return result;
}

unint64_t sub_100199FD4()
{
  result = qword_10023F0D8[0];
  if (!qword_10023F0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10023F0D8);
  }

  return result;
}

uint64_t sub_10019A028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065)
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

uint64_t sub_10019A198(void *a1)
{
  type metadata accessor for Result();
  result = type metadata accessor for Optional();
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

uint64_t sub_10019A23C()
{
  v1 = *(*v0 + 104);
  type metadata accessor for Result();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10019A2F4()
{
  sub_10019A23C();

  return swift_deallocClassInstance();
}

Swift::Int JWSError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t static JWS.headerDictionary(fromJWS:)(uint64_t a1, unint64_t a2)
{
  v36 = 46;
  v37 = 0xE100000000000000;
  v35 = &v36;

  if (sub_100146984(0x7FFFFFFFFFFFFFFFLL, 0, sub_10019C2D8, v34, a1, a2, v4)[2] != 3)
  {

    sub_10009DAF4();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  v36 = v5;
  v37 = v7;
  v8 = sub_10003E5C8();
  v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v11 = v10;

  v36 = v9;
  v37 = v11;
  v32 = v8;
  v33 = v8;
  v31 = v8;
  v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v14 = v13;

  v36 = v12;
  v37 = v14;

  v15 = String.count.getter();

  v16 = v15 & 3;
  if (v15 <= 0)
  {
    v16 = -(-v15 & 3);
  }

  if (v16)
  {
    v17._countAndFlagsBits = 61;
    v17._object = 0xE100000000000000;
    v18 = String.init(repeating:count:)(v17, 4 - v16);
    String.append(_:)(v18);
  }

  v19 = Data.init(base64Encoded:options:)();
  v21 = v20;

  if (v21 >> 60 == 15)
  {
    sub_10009DAF4();
    swift_allocError();
    *v22 = 1;
    return swift_willThrow();
  }

  v25 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v36 = 0;
  v27 = [v25 JSONObjectWithData:isa options:0 error:{&v36, &type metadata for String, v31, v32, v33, 47, 0xE100000000000000}];

  if (v27)
  {
    v28 = v36;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&qword_10023B938, &qword_1001C6F00);
    if (swift_dynamicCast())
    {
      sub_10005CB30(v19, v21);
      return 95;
    }

    sub_10009DAF4();
    swift_allocError();
    *v30 = 1;
  }

  else
  {
    v29 = v36;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  return sub_10005CB30(v19, v21);
}

Swift::String __swiftcall String.base64URLEncodedToBase64()()
{
  sub_10003E5C8();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  v10 = v0;

  v3 = String.count.getter();

  v4 = v3 & 3;
  if (v3 <= 0)
  {
    v4 = -(-v3 & 3);
  }

  if (v4)
  {
    v5._countAndFlagsBits = 61;
    v5._object = 0xE100000000000000;
    v6 = String.init(repeating:count:)(v5, 4 - v4);
    String.append(_:)(v6);
  }

  v7 = v10;
  v8 = v2;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t static JWS.payloadDictionary(fromJWS:)(uint64_t a1, unint64_t a2)
{
  v36 = 46;
  v37 = 0xE100000000000000;
  v35 = &v36;

  if (sub_100146984(0x7FFFFFFFFFFFFFFFLL, 0, sub_10019C8BC, v34, a1, a2, v4)[2] != 3)
  {

    sub_10009DAF4();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  v36 = v5;
  v37 = v7;
  v8 = sub_10003E5C8();
  v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v11 = v10;

  v36 = v9;
  v37 = v11;
  v32 = v8;
  v33 = v8;
  v31 = v8;
  v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v14 = v13;

  v36 = v12;
  v37 = v14;

  v15 = String.count.getter();

  v16 = v15 & 3;
  if (v15 <= 0)
  {
    v16 = -(-v15 & 3);
  }

  if (v16)
  {
    v17._countAndFlagsBits = 61;
    v17._object = 0xE100000000000000;
    v18 = String.init(repeating:count:)(v17, 4 - v16);
    String.append(_:)(v18);
  }

  v19 = Data.init(base64Encoded:options:)();
  v21 = v20;

  if (v21 >> 60 == 15)
  {
    sub_10009DAF4();
    swift_allocError();
    *v22 = 2;
    return swift_willThrow();
  }

  v25 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v36 = 0;
  v27 = [v25 JSONObjectWithData:isa options:0 error:{&v36, &type metadata for String, v31, v32, v33, 47, 0xE100000000000000}];

  if (v27)
  {
    v28 = v36;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&qword_10023B938, &qword_1001C6F00);
    if (swift_dynamicCast())
    {
      sub_10005CB30(v19, v21);
      return 95;
    }

    sub_10009DAF4();
    swift_allocError();
    *v30 = 2;
  }

  else
  {
    v29 = v36;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  return sub_10005CB30(v19, v21);
}

char *static JWS.compactJWS(from:payload:signingKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v80 = a4;
  v81 = a7;
  v78 = a2;
  v79 = a5;
  v76 = a3;
  v9 = type metadata accessor for P256.Signing.ECDSASignature();
  v75 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  v77 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v19 = JSONEncoder.init()();
  (*(v16 + 104))(v18, enum case for JSONEncoder.DateEncodingStrategy.millisecondsSince1970(_:), v15);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v20 = v87;
  v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v20)
  {
    goto LABEL_2;
  }

  v23 = v21;
  v24 = v22;
  v72 = v14;
  v73 = v12;
  v70 = v9;
  v71 = v11;
  v80 = a9;
  v25 = Data.base64EncodedString(options:)(0);
  v87 = v19;
  v86 = v25;
  v84 = 43;
  v85 = 0xE100000000000000;
  v82 = 45;
  v83 = 0xE100000000000000;
  sub_10003E5C8();
  v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v28 = v27;

  v86._countAndFlagsBits = v26;
  v86._object = v28;
  v84 = 47;
  v85 = 0xE100000000000000;
  v82 = 95;
  v83 = 0xE100000000000000;
  v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v31 = v30;

  v86._countAndFlagsBits = v29;
  v86._object = v31;
  v84 = 61;
  v85 = 0xE100000000000000;
  v82 = 0;
  v83 = 0xE000000000000000;
  v74 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v81 = v32;
  sub_10001BABC(v23, v24);

  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v79 = 0;
  v80 = v33;
  v36 = v34;
  v86 = Data.base64EncodedString(options:)(0);
  v84 = 43;
  v85 = 0xE100000000000000;
  v82 = 45;
  v83 = 0xE100000000000000;
  v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v39 = v38;

  v86._countAndFlagsBits = v37;
  v86._object = v39;
  v84 = 47;
  v85 = 0xE100000000000000;
  v82 = 95;
  v83 = 0xE100000000000000;
  v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v42 = v41;

  v86._countAndFlagsBits = v40;
  v86._object = v42;
  v84 = 61;
  v85 = 0xE100000000000000;
  v82 = 0;
  v83 = 0xE000000000000000;
  v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v44 = v43;
  sub_10001BABC(v80, v36);

  v86._countAndFlagsBits = v74;
  v86._object = v81;

  v45._countAndFlagsBits = 46;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);

  v46._countAndFlagsBits = v11;
  v46._object = v44;
  String.append(_:)(v46);

  v47 = v72;
  static String.Encoding.utf8.getter();
  v48 = String.data(using:allowLossyConversion:)();
  v50 = v49;

  (*(v77 + 8))(v47, v73);
  if (v50 >> 60 == 15)
  {

    sub_10009DAF4();
    swift_allocError();
    *v51 = 4;
    swift_willThrow();
LABEL_2:

    return v11;
  }

  v80 = v44;
  v52 = v48;
  v86._countAndFlagsBits = v48;
  v86._object = v50;
  sub_10019C2F4();
  v53 = v71;
  v54 = v79;
  P256.Signing.PrivateKey.signature<A>(for:)();
  if (v54)
  {

    sub_10005CB30(v48, v50);
  }

  else
  {
    v55 = P256.Signing.ECDSASignature.rawRepresentation.getter();
    v77 = v56;
    v78 = v55;
    v57 = Data.base64EncodedString(options:)(0);
    v79 = 0;
    v86 = v57;
    v84 = 43;
    v85 = 0xE100000000000000;
    v82 = 45;
    v83 = 0xE100000000000000;
    v58 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v60 = v59;

    v86._countAndFlagsBits = v58;
    v86._object = v60;
    v84 = 47;
    v85 = 0xE100000000000000;
    v82 = 95;
    v83 = 0xE100000000000000;
    v61 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v63 = v62;

    v86._countAndFlagsBits = v61;
    v86._object = v63;
    v84 = 61;
    v85 = 0xE100000000000000;
    v82 = 0;
    v83 = 0xE000000000000000;
    v64 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v66 = v65;
    sub_10001BABC(v78, v77);

    sub_10000CDE0(&qword_10023BC10, &qword_1001BA520);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1001B75D0;
    v68 = v80;
    v69 = v81;
    *(v67 + 32) = v74;
    *(v67 + 40) = v69;
    *(v67 + 48) = v11;
    *(v67 + 56) = v68;
    *(v67 + 64) = v64;
    *(v67 + 72) = v66;
    v86._countAndFlagsBits = v67;
    sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
    sub_1000B5134();
    v11 = BidirectionalCollection<>.joined(separator:)();
    sub_10005CB30(v52, v50);

    (*(v75 + 8))(v53, v70);
  }

  return v11;
}

Swift::String __swiftcall Data.base64URLEncodedString()()
{
  Data.base64EncodedString(options:)(0);
  sub_10003E5C8();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t JWS.signature.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));

  return v2;
}

uint64_t JWS.compactJWS.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 76));

  return v2;
}

uint64_t JWS.init(compactJWS:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v107 = a5;
  v108 = a7;
  v127 = a4;
  v109 = *(a3 - 8);
  v110 = a6;
  v13 = __chkstk_darwin(a1);
  v106 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v15 - 8);
  v114 = v15;
  __chkstk_darwin(v13);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = 46;
  v118 = 0xE100000000000000;
  v116 = &v117;

  v105 = a1;
  v22 = sub_100146984(0x7FFFFFFFFFFFFFFFLL, 0, sub_10019C8BC, v115, a1, a2, &v128);
  if (v22[2] != 3)
  {

    sub_10009DAF4();
    swift_allocError();
    *v43 = 0;
    return swift_willThrow();
  }

  v104 = v8;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v23 = JSONDecoder.init()();
  (*(v19 + 104))(v21, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v18);
  v112 = v23;
  result = dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  if (!v22[2])
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v103 = a3;
  v111 = a8;

  v25 = static String._fromSubstring(_:)();
  v27 = v26;

  v117 = v25;
  v118 = v27;
  v125 = 45;
  v126 = 0xE100000000000000;
  v123 = 43;
  v124 = 0xE100000000000000;
  sub_10003E5C8();
  v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v30 = v29;

  v117 = v28;
  v118 = v30;
  v125 = 95;
  v126 = 0xE100000000000000;
  v123 = 47;
  v124 = 0xE100000000000000;
  v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v33 = v32;

  v117 = v31;
  v118 = v33;

  v34 = String.count.getter();

  v35 = v34 & 3;
  if (v34 <= 0)
  {
    v35 = -(-v34 & 3);
  }

  if (v35)
  {
    v36._countAndFlagsBits = 61;
    v36._object = 0xE100000000000000;
    v37 = String.init(repeating:count:)(v36, 4 - v35);
    String.append(_:)(v37);
  }

  v38 = Data.init(base64Encoded:options:)();
  v40 = v39;

  v41 = v111;
  if (v40 >> 60 == 15)
  {

    sub_10009DAF4();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();
  }

  v102 = a2;
  v44 = v114;
  v45 = v104;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v45)
  {

    sub_10005CB30(v38, v40);
  }

  v101 = v38;
  v104 = v40;
  result = (*(v113 + 32))(v41, v17, v44);
  if (v22[2] < 2uLL)
  {
    goto LABEL_36;
  }

  v46 = static String._fromSubstring(_:)();
  v48 = v47;

  v117 = v46;
  v118 = v48;
  v125 = 45;
  v126 = 0xE100000000000000;
  v123 = 43;
  v124 = 0xE100000000000000;
  v49 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v51 = v50;

  v117 = v49;
  v118 = v51;
  v125 = 95;
  v126 = 0xE100000000000000;
  v123 = 47;
  v124 = 0xE100000000000000;
  v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v54 = v53;

  v117 = v52;
  v118 = v54;

  v55 = String.count.getter();

  v56 = v55 & 3;
  if (v55 <= 0)
  {
    v56 = -(-v55 & 3);
  }

  if (v56)
  {
    v57._countAndFlagsBits = 61;
    v57._object = 0xE100000000000000;
    v58 = String.init(repeating:count:)(v57, 4 - v56);
    String.append(_:)(v58);
  }

  v59 = Data.init(base64Encoded:options:)();
  v61 = v60;

  v62 = v103;
  v63 = v110;
  if (v61 >> 60 != 15)
  {
    v69 = v106;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v70 = v62;
    v71 = v61;
    v72 = v59;
    v73 = v111;
    v100 = v71;
    v117 = v114;
    v118 = v70;
    v119 = v127;
    v120 = v107;
    v121 = v63;
    v122 = v108;
    v74 = v70;
    v99 = type metadata accessor for JWS(0, &v117);
    result = (*(v109 + 32))(v73 + *(v99 + 68), v69, v74);
    if (v22[2] >= 3uLL)
    {

      v75 = static String._fromSubstring(_:)();
      v77 = v76;

      v117 = v75;
      v118 = v77;
      v125 = 45;
      v126 = 0xE100000000000000;
      v123 = 43;
      v124 = 0xE100000000000000;
      v117 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v118 = v78;
      v125 = 95;
      v126 = 0xE100000000000000;
      v123 = 47;
      v124 = 0xE100000000000000;
      v79 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v81 = v80;

      v117 = v79;
      v118 = v81;

      v82 = String.count.getter();

      v83 = v82 & 3;
      if (v82 <= 0)
      {
        v83 = -(-v82 & 3);
      }

      if (v83)
      {
        v84._countAndFlagsBits = 61;
        v84._object = 0xE100000000000000;
        v85 = String.init(repeating:count:)(v84, 4 - v83);
        String.append(_:)(v85);
      }

      v86 = HIBYTE(v77) & 0xF;
      if ((v77 & 0x2000000000000000) == 0)
      {
        v86 = v75 & 0xFFFFFFFFFFFFLL;
      }

      v87 = v72;
      if (v86)
      {
        v88 = Data.init(base64Encoded:options:)();
        v90 = v89;

        v91 = v100;
        if (v90 >> 60 != 15)
        {
          sub_10005CB30(v88, v90);

          sub_10005CB30(v101, v104);
          result = sub_10005CB30(v87, v91);
          v94 = v99;
          v95 = v111;
          v96 = (v111 + *(v99 + 72));
          *v96 = v75;
          v96[1] = v77;
          v97 = (v95 + *(v94 + 76));
          v98 = v102;
          *v97 = v105;
          v97[1] = v98;
          return result;
        }
      }

      else
      {

        v91 = v100;
      }

      sub_10009DAF4();
      swift_allocError();
      *v92 = 3;
      swift_willThrow();
      sub_10005CB30(v87, v91);
      sub_10005CB30(v101, v104);

      v65 = 1;
      v63 = v110;
      v66 = v111;
      v67 = v127;
      v68 = v114;
      v62 = v103;
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return result;
  }

  sub_10009DAF4();
  swift_allocError();
  *v64 = 2;
  swift_willThrow();
  sub_10005CB30(v101, v104);

  v65 = 0;
  v66 = v111;
  v67 = v127;
  v68 = v114;
LABEL_31:
  result = (*(v113 + 8))(v66, v68);
  if (v65)
  {
    v117 = v68;
    v118 = v62;
    v119 = v67;
    v120 = v107;
    v121 = v63;
    v122 = v108;
    v93 = type metadata accessor for JWS(0, &v117);
    return (*(v109 + 8))(v66 + *(v93 + 68), v62);
  }

  return result;
}

unint64_t sub_10019C2F4()
{
  result = qword_10023F160;
  if (!qword_10023F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F160);
  }

  return result;
}

unint64_t sub_10019C364()
{
  result = qword_10023F168[0];
  if (!qword_10023F168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10023F168);
  }

  return result;
}

uint64_t sub_10019C3D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10019C46C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *sub_10019C644(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((v11 + 7 + v14) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = (&result[v15] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v27 = a2 & 0x7FFFFFFF;
            v27[1] = 0;
          }

          else
          {
            v27[1] = a2 - 1;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

uint64_t InAppPurchaseDetails.purchaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseDetails(0) + 28);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InAppPurchaseDetails(uint64_t a1)
{
  result = qword_10023F2C8;
  if (!qword_10023F2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InAppPurchaseDetails.subscriptionDuration.getter()
{
  v1 = *(v0 + *(type metadata accessor for InAppPurchaseDetails(0) + 36));

  return v1;
}

uint64_t InAppPurchaseDetails.init(price:quantity:currencyCode:purchaseDate:purchaseType:subscriptionDuration:offerType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v15 = type metadata accessor for InAppPurchaseDetails(0);
  v16 = v15[7];
  v17 = type metadata accessor for Date();
  result = (*(*(v17 - 8) + 32))(a9 + v16, a7, v17);
  *(a9 + v15[8]) = a8;
  v19 = (a9 + v15[9]);
  *v19 = a10;
  v19[1] = a11;
  *(a9 + v15[10]) = a12;
  return result;
}

uint64_t sub_10019CAF4(uint64_t a1)
{
  v2 = sub_10019D2F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CB30(uint64_t a1)
{
  v2 = sub_10019D2F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10019CB6C()
{
  v1 = 0x62616D75736E6F63;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x75736E6F436E6F6ELL;
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

uint64_t sub_10019CC04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019DE7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019CC2C(uint64_t a1)
{
  v2 = sub_10019D248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CC68(uint64_t a1)
{
  v2 = sub_10019D248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019CCA4(uint64_t a1)
{
  v2 = sub_10019D398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CCE0(uint64_t a1)
{
  v2 = sub_10019D398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019CD1C(uint64_t a1)
{
  v2 = sub_10019D344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CD58(uint64_t a1)
{
  v2 = sub_10019D344();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019CD94(uint64_t a1)
{
  v2 = sub_10019D29C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CDD0(uint64_t a1)
{
  v2 = sub_10019D29C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InAppPurchaseDetails.InAppPurchaseType.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_10000CDE0(&qword_10023F1F0, &qword_1001C7000);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v20 - v4;
  v5 = sub_10000CDE0(&qword_10023F1F8, &qword_1001C7008);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v23 = &v20 - v6;
  v7 = sub_10000CDE0(&qword_10023F200, &qword_1001C7010);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10000CDE0(&qword_10023F208, &qword_1001C7018);
  v20 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_10000CDE0(&qword_10023F210, &qword_1001C7020);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  sub_10000DA7C(a1, a1[3]);
  sub_10019D248();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_10019D2F0();
      v9 = v23;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_10019D29C();
      v9 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_10019D344();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_10019D398();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_10019D248()
{
  result = qword_10023F218;
  if (!qword_10023F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F218);
  }

  return result;
}

unint64_t sub_10019D29C()
{
  result = qword_10023F220;
  if (!qword_10023F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F220);
  }

  return result;
}

unint64_t sub_10019D2F0()
{
  result = qword_10023F228;
  if (!qword_10023F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F228);
  }

  return result;
}

unint64_t sub_10019D344()
{
  result = qword_10023F230;
  if (!qword_10023F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F230);
  }

  return result;
}

unint64_t sub_10019D398()
{
  result = qword_10023F238;
  if (!qword_10023F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F238);
  }

  return result;
}

void *sub_10019D404@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10019DFFC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10019D44C()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x707954726566666FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x797469746E617571;
  if (v1 != 1)
  {
    v4 = 0x79636E6572727563;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_10019D544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019EF44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019D56C(uint64_t a1)
{
  v2 = sub_10019E63C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019D5A8(uint64_t a1)
{
  v2 = sub_10019E63C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InAppPurchaseDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023F240, &qword_1001C7028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_10019E63C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v14 = *(v3 + 4);
  v12 = 0;
  type metadata accessor for Decimal(0);
  sub_100199AE4(&qword_10023AF98, type metadata accessor for Decimal, &protocol conformance descriptor for NSDecimal);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = type metadata accessor for InAppPurchaseDetails(0);
    LOBYTE(v13) = 3;
    type metadata accessor for Date();
    sub_100199AE4(&qword_10023F000, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = *(v3 + *(v9 + 32));
    v12 = 4;
    sub_10019E690();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = *(v3 + *(v9 + 40));
    v12 = 6;
    sub_100199668();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InAppPurchaseDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Date();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000CDE0(&qword_10023F258, &qword_1001C7030);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v23 - v7;
  v9 = type metadata accessor for InAppPurchaseDetails(0);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  sub_10000DA7C(a1, v12);
  sub_10019E63C();
  v28 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v29);
  }

  v23 = v6;
  v13 = v25;
  v14 = v26;
  type metadata accessor for Decimal(0);
  v34 = 0;
  sub_100199AE4(&qword_10023A6C0, type metadata accessor for Decimal, &protocol conformance descriptor for NSDecimal);
  v15 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v11;
  *v11 = v30;
  *(v11 + 4) = v31;
  v33 = 1;
  *(v11 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = 2;
  *(v11 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v11 + 5) = v17;
  v33 = 3;
  sub_100199AE4(&qword_10023F018, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v16 + v9[7], v18, v4);
  v32 = 4;
  sub_10019E6E4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v16 + v9[8]) = v33;
  v33 = 5;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = (v16 + v9[9]);
  *v20 = v19;
  v20[1] = v21;
  v32 = 6;
  sub_100199B2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v28, v15);
  *(v16 + v9[10]) = v33;
  sub_1000E1A30(v16, v24);
  sub_10000DB58(v29);
  return sub_1000A0B90(v16);
}

uint64_t sub_10019DE7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62616D75736E6F63 && a2 == 0xEA0000000000656CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75736E6F436E6F6ELL && a2 == 0xED0000656C62616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001CEA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CEA90 == a2)
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

void *sub_10019DFFC(void *a1)
{
  v39 = sub_10000CDE0(&qword_10023F388, &qword_1001C76D8);
  v34 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v31 - v2;
  v40 = sub_10000CDE0(&qword_10023F390, &qword_1001C76E0);
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v31 - v3;
  v4 = sub_10000CDE0(&qword_10023F398, &qword_1001C76E8);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_10000CDE0(&qword_10023F3A0, &qword_1001C76F0);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10000CDE0(&qword_10023F3A8, &qword_1001C76F8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_10000DA7C(a1, v14);
  sub_10019D248();
  v15 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1001A5460();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_10019D344();
        v29 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_10019D398();
        v23 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_10000DB58(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_10019D2F0();
      v28 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_10019D29C();
      v30 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = type metadata accessor for DecodingError();
  swift_allocError();
  v11 = v25;
  sub_10000CDE0(&qword_10023E930, &qword_1001C4C60);
  *v11 = &type metadata for InAppPurchaseDetails.InAppPurchaseType;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v24 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_10000DB58(v44);
  return v11;
}

unint64_t sub_10019E63C()
{
  result = qword_10023F248;
  if (!qword_10023F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F248);
  }

  return result;
}

unint64_t sub_10019E690()
{
  result = qword_10023F250;
  if (!qword_10023F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F250);
  }

  return result;
}

unint64_t sub_10019E6E4()
{
  result = qword_10023F260;
  if (!qword_10023F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F260);
  }

  return result;
}

unint64_t sub_10019E73C()
{
  result = qword_10023F268;
  if (!qword_10023F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F268);
  }

  return result;
}

uint64_t sub_10019E7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10019E864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10019E908(uint64_t a1)
{
  type metadata accessor for Decimal(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100079458(319, &qword_10023A190, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100079458(319, &qword_10023F090, &type metadata for PurchaseIntakeOfferType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10019EA78()
{
  result = qword_10023F318;
  if (!qword_10023F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F318);
  }

  return result;
}

unint64_t sub_10019EAD0()
{
  result = qword_10023F320;
  if (!qword_10023F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F320);
  }

  return result;
}

unint64_t sub_10019EB28()
{
  result = qword_10023F328;
  if (!qword_10023F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F328);
  }

  return result;
}

unint64_t sub_10019EB80()
{
  result = qword_10023F330;
  if (!qword_10023F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F330);
  }

  return result;
}

unint64_t sub_10019EBD8()
{
  result = qword_10023F338;
  if (!qword_10023F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F338);
  }

  return result;
}

unint64_t sub_10019EC30()
{
  result = qword_10023F340;
  if (!qword_10023F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F340);
  }

  return result;
}

unint64_t sub_10019EC88()
{
  result = qword_10023F348;
  if (!qword_10023F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F348);
  }

  return result;
}

unint64_t sub_10019ECE0()
{
  result = qword_10023F350;
  if (!qword_10023F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F350);
  }

  return result;
}

unint64_t sub_10019ED38()
{
  result = qword_10023F358;
  if (!qword_10023F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F358);
  }

  return result;
}

unint64_t sub_10019ED90()
{
  result = qword_10023F360;
  if (!qword_10023F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F360);
  }

  return result;
}

unint64_t sub_10019EDE8()
{
  result = qword_10023F368;
  if (!qword_10023F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F368);
  }

  return result;
}

unint64_t sub_10019EE40()
{
  result = qword_10023F370;
  if (!qword_10023F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F370);
  }

  return result;
}

unint64_t sub_10019EE98()
{
  result = qword_10023F378;
  if (!qword_10023F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F378);
  }

  return result;
}

unint64_t sub_10019EEF0()
{
  result = qword_10023F380;
  if (!qword_10023F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F380);
  }

  return result;
}

uint64_t sub_10019EF44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001CEAB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065)
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

AttributionKitCommon::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224260, v2);

  if (v3 == 1)
  {
    v4.value = AttributionKitCommon_InteractionType_click;
  }

  else
  {
    v4.value = AttributionKitCommon_InteractionType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t InteractionType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6B63696C63;
  }

  else
  {
    return 2003134838;
  }
}

unint64_t sub_10019F230()
{
  result = qword_10023F3B0;
  if (!qword_10023F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F3B0);
  }

  return result;
}

uint64_t sub_10019F284@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100224260, *a1);

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

unint64_t sub_10019F3A4()
{
  result = qword_10023F3B8;
  if (!qword_10023F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F3B8);
  }

  return result;
}

uint64_t sub_10019F3F8()
{
  v0 = objc_allocWithZone(NSXPCConnection);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_;
  v5 = [v3 interfaceWithProtocol:v4];

  [v2 setExportedInterface:v5];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient(0)) init];
  [v2 setExportedObject:v6];

  v7 = &OBJC_PROTOCOL____TtP20AttributionKitCommon31ImpressionIntakeServiceProtocol_;
  v8 = [v3 interfaceWithProtocol:v7];

  [v2 setRemoteObjectInterface:v8];
  v16 = sub_10017E9F0;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_1002268D8;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10017E9FC;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_100226900;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler:v10];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for ImpressionIntakeServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_10023FF08 = result;
  return result;
}

uint64_t sub_10019F69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DevelopmentPostbackConfiguration.postbackURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DevelopmentPostbackConfiguration(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DevelopmentPostbackConfiguration(uint64_t a1)
{
  result = qword_10023F528;
  if (!qword_10023F528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DevelopmentPostbackConfiguration.marketplaceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DevelopmentPostbackConfiguration(0) + 24));

  return v1;
}

uint64_t DevelopmentPostbackConfiguration.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for DevelopmentPostbackConfiguration(0) + 32));

  return v1;
}

uint64_t DevelopmentPostbackConfiguration.measurementWindowConfigurations.getter()
{
  type metadata accessor for DevelopmentPostbackConfiguration(0);
}

uint64_t DevelopmentPostbackConfiguration.init(bundleID:postbackURL:marketplaceID:sourceID:countryCode:interactionType:conversionType:measurementWindowConfigurations:conversionTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for DevelopmentPostbackConfiguration(0);
  v20 = v19[5];
  v21 = type metadata accessor for URL();
  result = (*(*(v21 - 8) + 32))(&a9[v20], a3, v21);
  v23 = &a9[v19[6]];
  *v23 = a4;
  *(v23 + 1) = a5;
  *&a9[v19[7]] = a6;
  v24 = &a9[v19[8]];
  *v24 = a7;
  *(v24 + 1) = a8;
  a9[v19[9]] = a10 & 1;
  a9[v19[10]] = a11;
  *&a9[v19[11]] = a12;
  v25 = &a9[v19[12]];
  *v25 = a13;
  v25[8] = a14 & 1;
  return result;
}

uint64_t sub_10019F9FC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4449656C646E7562;
    v6 = 0x6C7074656B72616DLL;
    if (a1 != 2)
    {
      v6 = 0x4449656372756F73;
    }

    if (a1)
    {
      v5 = 0x6B63616274736F70;
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
    v1 = 0x69737265766E6F63;
    v2 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v2 = 0x69737265766E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x437972746E756F63;
    if (a1 != 4)
    {
      v3 = 0x7463617265746E69;
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

uint64_t sub_10019FB64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001A0C0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019FB8C(uint64_t a1)
{
  v2 = sub_10019FF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019FBC8(uint64_t a1)
{
  v2 = sub_10019FF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DevelopmentPostbackConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023F480, &qword_1001C7880);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_10019FF7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for DevelopmentPostbackConfiguration(0);
    LOBYTE(v11) = 1;
    type metadata accessor for URL();
    sub_1001A0670(&qword_10023F490, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = *(v3 + v9[9]);
    v12 = 5;
    sub_10018D5FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = *(v3 + v9[10]);
    v12 = 6;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + v9[11]);
    v12 = 7;
    sub_10000CDE0(&qword_10023F498, &qword_1001C7888);
    sub_1001A06B4(&qword_10023F4A0, sub_10019FFD0, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10019FF7C()
{
  result = qword_10023F488;
  if (!qword_10023F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F488);
  }

  return result;
}

unint64_t sub_10019FFD0()
{
  result = qword_10023F4A8;
  if (!qword_10023F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F4A8);
  }

  return result;
}

uint64_t DevelopmentPostbackConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for URL();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10000CDE0(&qword_10023F4B0, &qword_1001C7890);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v32 - v7;
  v9 = type metadata accessor for DevelopmentPostbackConfiguration(0);
  __chkstk_darwin(v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v38 = a1;
  sub_10000DA7C(a1, v12);
  sub_10019FF7C();
  v37 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v38);
  }

  v13 = v6;
  v14 = v34;
  v15 = v35;
  v32 = v9;
  LOBYTE(v39) = 0;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[1] = v16;
  LOBYTE(v39) = 1;
  sub_1001A0670(&qword_10023F4B8, &protocol conformance descriptor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v32;
  (*(v15 + 32))(v11 + *(v32 + 20), v13, v4);
  LOBYTE(v39) = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = (v11 + v17[6]);
  *v19 = v18;
  v19[1] = v20;
  LOBYTE(v39) = 3;
  v21 = v17;
  v22 = v14;
  *(v11 + v21[7]) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v39) = 4;
  v23 = v36;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = (v11 + v21[8]);
  *v25 = v24;
  v25[1] = v26;
  v40 = 5;
  sub_10018DDDC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v11 + v21[9]) = v39;
  v40 = 6;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v11 + v21[10]) = v39;
  sub_10000CDE0(&qword_10023F498, &qword_1001C7888);
  v40 = 7;
  sub_1001A06B4(&qword_10023F4C0, sub_1001A072C, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v11 + v21[11]) = v39;
  LOBYTE(v39) = 8;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v21) = v28;
  (*(v22 + 8))(v37, v23);
  v29 = v33;
  v30 = v11 + *(v32 + 48);
  *v30 = v27;
  v30[8] = v21 & 1;
  sub_1001A0780(v11, v29);
  sub_10000DB58(v38);
  return sub_100028928(v11);
}

uint64_t sub_1001A0670(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A06B4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023F498, &qword_1001C7888);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A072C()
{
  result = qword_10023F4C8;
  if (!qword_10023F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F4C8);
  }

  return result;
}

uint64_t sub_1001A0780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DevelopmentPostbackConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A0828(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001A08E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001A098C(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1001A0AA4(319, &unk_10023F538, &type metadata for MeasurementWindowConfiguration, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1001A0AA4(319, &qword_10023A198, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001A0AA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1001A0B08()
{
  result = qword_10023F588;
  if (!qword_10023F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F588);
  }

  return result;
}

unint64_t sub_1001A0B60()
{
  result = qword_10023F590;
  if (!qword_10023F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F590);
  }

  return result;
}

unint64_t sub_1001A0BB8()
{
  result = qword_10023F598;
  if (!qword_10023F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F598);
  }

  return result;
}

uint64_t sub_1001A0C0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xED00004449656361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001001CEB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
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

void sub_1001A0F2C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100226AD8;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:isa reply:v9];
  _Block_release(v9);
}

uint64_t PostbackRequest.init(fineConversionValue:coarseConversionValue:lockPostback:conversionTypes:conversionTag:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_1001A1050()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100181A08;
  v2 = *(v0 + 16);

  return sub_100180604(v2, sub_1001A0F2C, 0);
}

unint64_t sub_1001A1148()
{
  v1 = 0x74736F506B636F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x69737265766E6F63;
  }

  v2 = 0xD000000000000013;
  if (*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1001A1208@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001A15AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001A1230(uint64_t a1)
{
  v2 = sub_1001A14F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A126C(uint64_t a1)
{
  v2 = sub_1001A14F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PostbackRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023F5A0, &qword_1001C7A58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_1001A14F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v13 = 1;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 16);
    v10[15] = 3;
    sub_10000CDE0(&unk_10023D8E8, &qword_1001C7A60);
    sub_1001A1C38(&qword_10023F5B0, sub_100047180, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[14] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1001A14F8()
{
  result = qword_10023F5A8;
  if (!qword_10023F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5A8);
  }

  return result;
}

double PostbackRequest.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001A1778(a2, v6);
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

uint64_t sub_1001A15AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001001CE910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001CE930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736F506B636F6CLL && a2 == 0xEC0000006B636162 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEF73657079546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
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

uint64_t sub_1001A1778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023F5D0, &unk_1001C7C28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1001A14F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = v24;
  v22 = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000CDE0(&unk_10023D8E8, &qword_1001C7A60);
  v21 = 3;
  sub_1001A1C38(&qword_10023F5D8, sub_1000470F4, &protocol conformance descriptor for <> Set<A>);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v19;
  v20 = 4;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v8;
  v14 = v13;
  (*(v6 + 8))(v12, v5);
  result = sub_10000DB58(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 9) = v18 & 1;
  *(a2 + 16) = v17;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_1001A1A58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1001A1AB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1001A1B34()
{
  result = qword_10023F5B8;
  if (!qword_10023F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5B8);
  }

  return result;
}

unint64_t sub_1001A1B8C()
{
  result = qword_10023F5C0;
  if (!qword_10023F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5C0);
  }

  return result;
}

unint64_t sub_1001A1BE4()
{
  result = qword_10023F5C8;
  if (!qword_10023F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5C8);
  }

  return result;
}

uint64_t sub_1001A1C38(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&unk_10023D8E8, &qword_1001C7A60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A1CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Result.init<>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for ServiceResult(0, a2, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  sub_100080044();
  type metadata accessor for Result();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001A1DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001A1E98(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1001A1EC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

Swift::Int sub_1001A1F78(uint64_t a1)
{
  Hasher.init(_seed:)();
  PurchaseIntakeOfferType.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_1001A1FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A1DCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A200C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1001A34F8();
  *a2 = result;
  return result;
}

uint64_t sub_1001A2040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001A2094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001A20F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A1EC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001A212C@<X0>(_BYTE *a1@<X8>)
{
  result = static MessageRegistration.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001A2164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001A21B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001A220C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001A2260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ServiceResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for ServiceResult.FailureCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v41 = v7;
  v8 = type metadata accessor for KeyedEncodingContainer();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v42 = v34 - v9;
  v10 = type metadata accessor for ServiceResult.SuccessCodingKeys(255, v4, v5, v6);
  v11 = swift_getWitnessTable();
  v36 = v10;
  v34[1] = v11;
  v12 = type metadata accessor for KeyedEncodingContainer();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = __chkstk_darwin(v12);
  v35 = v34 - v14;
  v37 = *(v4 - 8);
  v15 = __chkstk_darwin(v13);
  v34[0] = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 1);
  __chkstk_darwin(v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v6;
  v46 = v4;
  type metadata accessor for ServiceResult.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v20 = type metadata accessor for KeyedEncodingContainer();
  v48 = *(v20 - 8);
  v49 = v20;
  __chkstk_darwin(v20);
  v22 = v34 - v21;
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v17 + 16))(v19, v47, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v19;
    v52 = 1;
    v24 = v42;
    v25 = v49;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v51 = v23;
    sub_1001A2810();
    v26 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v43 + 8))(v24, v26);
    return (*(v48 + 8))(v22, v25);
  }

  else
  {
    v28 = v37;
    v29 = v34[0];
    v30 = v46;
    (*(v37 + 32))(v34[0], v19, v46);
    v50 = 0;
    v31 = v35;
    v32 = v49;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v31, v33);
    (*(v28 + 8))(v29, v30);
    return (*(v48 + 8))(v22, v32);
  }
}

unint64_t sub_1001A2810()
{
  result = qword_10023F5E0;
  if (!qword_10023F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5E0);
  }

  return result;
}

uint64_t ServiceResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a1;
  v65 = a5;
  v8 = type metadata accessor for ServiceResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v62 = v8;
  v55 = type metadata accessor for KeyedDecodingContainer();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v63 = &v50 - v9;
  v10 = type metadata accessor for ServiceResult.SuccessCodingKeys(255, a2, a3, a4);
  v58 = swift_getWitnessTable();
  v59 = v10;
  v53 = type metadata accessor for KeyedDecodingContainer();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v60 = &v50 - v11;
  type metadata accessor for ServiceResult.CodingKeys(255, a2, a3, a4);
  v68 = swift_getWitnessTable();
  v12 = type metadata accessor for KeyedDecodingContainer();
  v13 = *(v12 - 8);
  v66 = v12;
  v67 = v13;
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v56 = a2;
  v57 = a3;
  v16 = type metadata accessor for ServiceResult(0, a2, a3, a4);
  v64 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v50 - v21;
  __chkstk_darwin(v20);
  v24 = &v50 - v23;
  sub_10000DA7C(v74, v74[3]);
  v25 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v69 = v22;
    v51 = v19;
    v68 = v24;
    v26 = v66;
    v27 = v15;
    *&v70 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v72 = ArraySlice.init<A>(_:)();
    *(&v72 + 1) = v28;
    *&v73 = v29;
    *(&v73 + 1) = v30;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v31 = v70;
    if (v70 == 2 || (v50 = v72, v70 = v72, v71 = v73, (Collection.isEmpty.getter() & 1) == 0))
    {
      v40 = type metadata accessor for DecodingError();
      swift_allocError();
      v42 = v41;
      sub_10000CDE0(&qword_10023E930, &qword_1001C4C60);
      *v42 = v16;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
      swift_willThrow();
      (*(v67 + 8))(v15, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        LOBYTE(v70) = 1;
        v32 = v63;
        v33 = v27;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v65;
        v35 = v67;
        sub_1001A3028();
        v36 = v55;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v54 + 8))(v32, v36);
        (*(v35 + 8))(v33, v26);
        swift_unknownObjectRelease();
        v37 = v51;
        *v51 = v70;
        swift_storeEnumTagMultiPayload();
        v38 = *(v64 + 32);
        v39 = v68;
        v38(v68, v37, v16);
      }

      else
      {
        LOBYTE(v70) = 0;
        v43 = v60;
        v44 = v27;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v45 = v67;
        v46 = v64;
        v47 = v53;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v52 + 8))(v43, v47);
        (*(v45 + 8))(v44, v26);
        swift_unknownObjectRelease();
        v49 = v69;
        swift_storeEnumTagMultiPayload();
        v38 = *(v46 + 32);
        v39 = v68;
        v38(v68, v49, v16);
        v34 = v65;
      }

      v38(v34, v39, v16);
    }
  }

  return sub_10000DB58(v74);
}

unint64_t sub_1001A3028()
{
  result = qword_10023F5E8[0];
  if (!qword_10023F5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10023F5E8);
  }

  return result;
}

uint64_t sub_1001A30C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001A312C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1001A3240(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1001A353C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v8 = *a1;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = a6;
  v9 = _Block_copy(v10);

  [v8 *a7];
  _Block_release(v9);
}

uint64_t sub_1001A3610()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100180A28(sub_1001A3528, 0);
}

uint64_t sub_1001A371C()
{
  if (qword_10023E528 != -1)
  {
    swift_once();
  }

  if (qword_10023FDA0)
  {
    sub_10018B0D0(sub_1001A3514);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A37F0(uint64_t a1)
{
  v2 = sub_1001A397C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A382C(uint64_t a1)
{
  v2 = sub_1001A397C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WoofRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023F7F0, &qword_1001C8070);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_1001A397C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1001A397C()
{
  result = qword_10023F7F8;
  if (!qword_10023F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F7F8);
  }

  return result;
}