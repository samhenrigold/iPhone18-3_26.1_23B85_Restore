uint64_t sub_100001950()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082588);
  sub_100002D00(v0, qword_100082588);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t CFBBiomeReader.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_100001A64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100004F70(&qword_100082808, &qword_100068380);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-1] - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_100006F70();
    swift_allocError();
    v22 = 0;
    goto LABEL_16;
  }

  v12 = v9;
  v27[0] = 0x6D6165727473;
  v27[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v13 = sub_10005BC6C(v28), (v14 & 1) == 0))
  {
    sub_100006FC4(v28);
    goto LABEL_14;
  }

  sub_100007018(*(a1 + 56) + 32 * v13, v29);
  sub_100006FC4(v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_100006F70();
    swift_allocError();
    v22 = 2;
LABEL_16:
    *v21 = v22;
    return swift_willThrow();
  }

  v15 = v27[1];
  v30 = v27[0];
  strcpy(v27, "commonMetadata");
  HIBYTE(v27[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v16 = sub_10005BC6C(v28), (v17 & 1) == 0))
  {

    sub_100006FC4(v28);
LABEL_18:
    sub_100006F70();
    swift_allocError();
    v22 = 8;
    goto LABEL_16;
  }

  sub_100007018(*(a1 + 56) + 32 * v16, v29);
  sub_100006FC4(v28);
  sub_100004F70(&qword_100082818, &qword_100068388);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v18 = v27[0];
  strcpy(v27, "evaluationUuid");
  HIBYTE(v27[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v19 = sub_10005BC6C(v28), (v20 & 1) == 0))
  {

    sub_100006FC4(v28);
    goto LABEL_21;
  }

  sub_100007018(*(v18 + 56) + 32 * v19, v29);
  sub_100006FC4(v28);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  UUID.init(uuidString:)();

  if ((*(v8 + 48))(v6, 1, v12) == 1)
  {

    sub_1000071C8(v6, &qword_100082808, &qword_100068380);
LABEL_21:
    sub_100006F70();
    swift_allocError();
    v22 = 4;
    goto LABEL_16;
  }

  v24 = *(v8 + 32);
  v24(v11, v6, v12);
  v25 = type metadata accessor for CFBBiomeReader.Metadata(0);
  result = (v24)(a2 + *(v25 + 20), v11, v12);
  *a2 = v30;
  a2[1] = v15;
  *(a2 + *(v25 + 24)) = v18;
  return result;
}

uint64_t sub_100001EF4(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v53 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - v12;
  __chkstk_darwin(v11);
  v59 = &v53 - v14;
  v15 = type metadata accessor for CFBBiomeReader.Metadata(0);
  __chkstk_darwin(v15);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {

    sub_100001A64(v18, v17);
    if (!v1)
    {
      v20 = *(v15 + 20);
      v56 = v4;
      v21 = *(v4 + 16);
      v58 = v3;
      v54 = v21;
      v55 = v4 + 16;
      (v21)(v59, v17 + v20);
      v57 = v17;
      v22 = *v17;
      v23 = v17[1];
      v24 = v22 == 0x7478655474786574 && v23 == 0xE800000000000000;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        objc_allocWithZone(BMFeedbackTextToTextEvaluationData);
        v25 = sub_100003C54(a1);
        type metadata accessor for FBKSDonation();
        v26 = v59;
        v54(v13, v59, v58);
        v27 = sub_10002E92C(v25, v13);
        v28 = v57;
      }

      else
      {
        v29 = v22 == 0x67616D4974786574 && v23 == 0xE900000000000065;
        if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v28 = v57;
          objc_allocWithZone(BMEvaluationCommonMetadata);

          v31 = sub_100003C54(v30);
          v32 = v58;
          v33 = v31;
          v34 = sub_100005430(a1, 0x6C616E696769726FLL, 0xEF746E65746E6F43);
          if (!v34)
          {
            v34 = sub_1000159A0(_swiftEmptyArrayStorage);
          }

          v35 = v34;
          objc_allocWithZone(BMTextContent);
          v40 = sub_100003C54(v35);
          v45 = sub_1000055E0(a1, 0xD000000000000010, 0x800000010006ADC0);

          if (!v45)
          {
            v45 = sub_1000159A0(_swiftEmptyArrayStorage);
          }

          v26 = v59;
          objc_allocWithZone(BMImageContent);
          v46 = sub_100003C54(v45);
          v47 = [objc_allocWithZone(BMFeedbackTextToImageEvaluationData) initWithCommonMetadata:v33 originalContent:v40 generatedContent:v46];

          type metadata accessor for FBKSDonation();
          v54(v10, v26, v32);
          v27 = sub_10002E96C(v47, v10);
        }

        else
        {
          v37 = v22 == 0x67616D4974786574 && v23 == 0xEE006567616D4965;
          v38 = v58;
          if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            sub_100006F70();
            swift_allocError();
            *v44 = 3;
            swift_willThrow();
            (*(v56 + 8))(v59, v38);
            sub_10000716C(v57);
            return v15;
          }

          v28 = v57;
          objc_allocWithZone(BMEvaluationCommonMetadata);

          v41 = sub_100003C54(v39);
          v42 = sub_1000055E0(a1, 0x6C616E696769726FLL, 0xEF746E65746E6F43);
          if (!v42)
          {
            v42 = sub_1000159A0(_swiftEmptyArrayStorage);
          }

          v43 = v42;
          objc_allocWithZone(BMTextImageContent);
          v48 = sub_100003C54(v43);
          v49 = sub_1000055E0(a1, 0xD000000000000010, 0x800000010006ADC0);

          if (!v49)
          {
            v49 = sub_1000159A0(_swiftEmptyArrayStorage);
          }

          v26 = v59;
          objc_allocWithZone(BMImageContent);
          v50 = sub_100003C54(v49);
          v51 = v38;
          v52 = [objc_allocWithZone(BMFeedbackTextImageToImageEvaluationData) initWithCommonMetadata:v41 originalContent:v48 generatedContent:v50];

          type metadata accessor for FBKSDonation();
          v54(v7, v26, v51);
          v27 = sub_10002F178(v52, v7);
        }
      }

      v15 = v27;
      (*(v56 + 8))(v26, v58);
      sub_10000716C(v28);
      return v15;
    }
  }

  else
  {
    sub_100006F70();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  return v15;
}

uint64_t CFBBiomeReader.fetchDonation(donationID:database:)(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v2 = UUID.uuidString.getter();
  v4 = v3;
  if (qword_100082580 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002D00(v5, qword_100082588);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000049B8(v2, v4, v44);
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching donation with donationID: %s", v8, 0xCu);
    sub_100005ED8(v9);
  }

  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(877);
  v10._countAndFlagsBits = 0xD000000000000024;
  v10._object = 0x8000000100069FC0;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x7478655474786574;
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD0000000000000D6;
  v12._object = 0x8000000100069FF0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v13);

  v14._object = 0x800000010006A0D0;
  v14._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v2;
  v15._object = v4;
  String.append(_:)(v15);
  v16._object = 0x800000010006A100;
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x67616D4974786574;
  v17._object = 0xE900000000000065;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD0000000000000D6;
  v18._object = 0x8000000100069FF0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v19);

  v20._object = 0x800000010006A0D0;
  v20._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v2;
  v21._object = v4;
  String.append(_:)(v21);
  v22._object = 0x800000010006A100;
  v22._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v22);
  v23._object = 0xEE006567616D4965;
  v23._countAndFlagsBits = 0x67616D4974786574;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD0000000000000D6;
  v24._object = 0x8000000100069FF0;
  String.append(_:)(v24);
  v25._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v25);

  v26._object = 0x800000010006A0D0;
  v26._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v2;
  v27._object = v4;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x494D494C20290A22;
  v28._object = 0xEB00000000312054;
  String.append(_:)(v28);
  v29 = v45;
  v30 = BMSQLDatabase.execute(query:)();

  if ([v30 error])
  {
    goto LABEL_6;
  }

  if (![v30 next])
  {

    return 0;
  }

  v31 = [v30 row];
  if (v31)
  {
    v32 = v31;
    v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_100001EF4(v33);
  if (v43)
  {

    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v29))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v35, v29, "Error decoding donation: %@", v36, 0xCu);
      sub_1000071C8(v37, &qword_100082708, &qword_100068320);
    }

LABEL_6:
    swift_willThrow();

    return v29;
  }

  v29 = v34;

  v39 = [objc_allocWithZone(BMSQLDatabase) init];
  sub_100005A2C();
  v41 = v40;

  if (v41)
  {

    dispatch thunk of FBKSInteraction.firstEvaluation.setter();
  }

  return v29;
}

uint64_t sub_100002D00(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t CFBBiomeReader.fetchDonations(count:fromLatest:excludingEvaluationIDs:database:)(int a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 24) = a3;
  *(v5 + 80) = a2;
  *(v5 + 76) = a1;
  v6 = type metadata accessor for FBKSInteraction.FeatureDomain();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100002E04, v4, 0);
}

uint64_t sub_100002E04()
{
  v89 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 80))
  {
    v2 = 1129530692;
  }

  else
  {
    v2 = 4412225;
  }

  v3 = 0xE300000000000000;
  if (*(v0 + 80))
  {
    v3 = 0xE400000000000000;
  }

  v86 = v3;
  if (v1)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      sub_100004FD8(0, v4, 0);
      v5 = (v1 + 40);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;
        v87 = 34;
        v88 = 0xE100000000000000;

        v8._countAndFlagsBits = v6;
        v8._object = v7;
        String.append(_:)(v8);
        v9._countAndFlagsBits = 34;
        v9._object = 0xE100000000000000;
        String.append(_:)(v9);

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_100004FD8((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v12 = &_swiftEmptyArrayStorage[2 * v11];
        v12[4] = 34;
        v12[5] = 0xE100000000000000;
        v5 += 2;
        --v4;
      }

      while (v4);
      v0 = v83;
      v2 = v85;
    }

    *(v0 + 16) = _swiftEmptyArrayStorage;
    sub_100004F70(&qword_100082710, &qword_100068330);
    sub_100005F24();
    v1 = BidirectionalCollection<>.joined(separator:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (qword_100082580 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002D00(v15, qword_100082588);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v87);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1000049B8(v1, v14, &v87);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - Will filter out ids: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v82 = *(v0 + 76);
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(2283);
  v19._countAndFlagsBits = 0xD00000000000015CLL;
  v19._object = 0x800000010006A120;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v2;
  v20._object = v86;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000220;
  v21._object = 0x800000010006A280;
  String.append(_:)(v21);
  v22._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v22);

  v23 = v0;
  v24._countAndFlagsBits = 0xD000000000000081;
  v24._object = 0x800000010006A4B0;
  String.append(_:)(v24);
  v25._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0xD000000000000081;
  v26._object = 0x800000010006A4B0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD00000000000004ALL;
  v28._object = 0x800000010006A540;
  String.append(_:)(v28);
  v29._countAndFlagsBits = v1;
  v29._object = v14;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000083;
  v30._object = 0x800000010006A590;
  String.append(_:)(v30);
  v31._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0xD00000000000004CLL;
  v32._object = 0x800000010006A620;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v2;
  v33._object = v86;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x4D494C202020200ALL;
  v34._object = 0xEB00000000205449;
  String.append(_:)(v34);
  *(v0 + 72) = v82;
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0xD000000000000036;
  v36._object = 0x800000010006A670;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x7478655474786574;
  v37._object = 0xE800000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD0000000000000BELL;
  v38._object = 0x800000010006A6B0;
  String.append(_:)(v38);
  v39._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0xD00000000000004BLL;
  v40._object = 0x800000010006A770;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x67616D4974786574;
  v41._object = 0xE900000000000065;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD0000000000000BELL;
  v42._object = 0x800000010006A6B0;
  String.append(_:)(v42);
  v43._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0xD00000000000004BLL;
  v44._object = 0x800000010006A770;
  String.append(_:)(v44);
  v45._object = 0xEE006567616D4965;
  v45._countAndFlagsBits = 0x67616D4974786574;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD0000000000000BELL;
  v46._object = 0x800000010006A6B0;
  String.append(_:)(v46);
  v47._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0xD000000000000027;
  v48._object = 0x800000010006A7C0;
  String.append(_:)(v48);
  v49 = BMSQLDatabase.execute(query:)();

  if ([v49 error])
  {
    swift_willThrow();

    v50 = *(v0 + 8);

    return v50();
  }

  v84 = v0;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v87 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v87);
    _os_log_impl(&_mh_execute_header, v52, v53, "%s - No error occurred", v54, 0xCu);
    sub_100005ED8(v55);
  }

  v56 = &off_100081000;
  if ([v49 next])
  {
    v81 = (*(v23 + 56) + 8);
    v57 = &off_100081000;
    do
    {
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v87 = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v87);
        _os_log_impl(&_mh_execute_header, v58, v59, "%s - Will parse row", v60, 0xCu);
        sub_100005ED8(v61);
      }

      v62 = [v49 v57[253]];
      if (v62)
      {
        v63 = v62;
        v64 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v64 = 0;
      }

      v65 = sub_100001EF4(v64);
      v66 = v56;
      v67 = v84[8];
      v68 = v84[6];
      v69 = v65;

      v70 = v69;
      dispatch thunk of FBKSInteraction.featureDomain.getter();

      (*v81)(v67, v68);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v87 = v74;
        *v73 = 136315138;
        *(v73 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v87);
        _os_log_impl(&_mh_execute_header, v71, v72, "%s - FD is allowed, appending", v73, 0xCu);
        sub_100005ED8(v74);
      }

      v56 = v66;
      v75 = v70;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v56 = v66;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v57 = &off_100081000;
    }

    while (([v49 v56[252]] & 1) != 0);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_39;
    }

LABEL_41:

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v87 = v79;
      *v78 = 136315138;
      *(v78 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v87);

      _os_log_impl(&_mh_execute_header, v76, v77, "%s - query returned no results", v78, 0xCu);
      sub_100005ED8(v79);
    }

    else
    {
    }

    goto LABEL_44;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

LABEL_39:

LABEL_44:

  v80 = v84[1];

  return v80(_swiftEmptyArrayStorage);
}

Swift::Int sub_100003B54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003B9C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t CFBBiomeReader.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100003C54(uint64_t a1)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v1 initWithJSONDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

BOOL sub_100003D50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

Swift::Int sub_100003E54(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100003EC8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003F44(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003FC8@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100004020(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10000409C(uint64_t a1)
{
  v2 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068BD8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004108(uint64_t a1)
{
  v2 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068BD8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100004174(void *a1, uint64_t a2)
{
  v4 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068BD8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068BD8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000042A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100004304@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004320(uint64_t a1)
{
  v2 = sub_100007970(&qword_1000829D8, type metadata accessor for FileAttributeKey, &unk_100068B24);
  v3 = sub_100007970(&qword_1000829E0, type metadata accessor for FileAttributeKey, &unk_100068928);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000043E0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100004428@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004454(uint64_t a1)
{
  v2 = sub_100007970(&qword_1000829E8, type metadata accessor for URLResourceKey, &unk_100068830);
  v3 = sub_100007970(&unk_1000829F0, type metadata accessor for URLResourceKey, &unk_1000687D0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004510(uint64_t a1)
{
  v2 = sub_100007970(&qword_1000829A8, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068648);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000457C(uint64_t a1)
{
  v2 = sub_100007970(&qword_1000829A8, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068648);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000045E8(uint64_t a1)
{
  v2 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068BD8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068BD8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000046F0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004730(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004788(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100004800(void *a1, uint64_t *a2)
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

uint64_t sub_100004888(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000048D4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10000495C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000049B8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000049B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004A84(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007018(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005ED8(v11);
  return v7;
}

unint64_t sub_100004A84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100004B90(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100004B90(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004BDC(a1, a2);
  sub_100004D0C(&off_10007DC08);
  return v3;
}

void *sub_100004BDC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100010920(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100010920(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100004D0C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100004DF8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100004DF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004F70(&qword_100082840, &qword_1000683B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100004EEC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100004EFC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100004F70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100004FB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005018(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004FD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000051F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100004FF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000052FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100005018(void *result, int64_t a2, char a3, void *a4)
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

  sub_100004F70(&qword_100082858, &qword_1000683B8);
  v10 = *(type metadata accessor for FBKSInteraction.AnnotatedContent() - 8);
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
  v15 = *(type metadata accessor for FBKSInteraction.AnnotatedContent() - 8);
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

char *sub_1000051F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004F70(&qword_100082838, &qword_1000683A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000052FC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100004F70(&qword_100082820, &unk_100068390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004F70(&qword_100082828, &qword_100068ED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100005430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = sub_10005BC6C(v11), (v5 & 1) == 0))
  {
    sub_100006FC4(v11);
LABEL_8:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_9;
  }

  sub_100007018(*(a1 + 56) + 32 * v4, &v12);
  sub_100006FC4(v11);
  if (!*(&v13 + 1))
  {
LABEL_9:
    sub_1000071C8(&v12, &qword_100082860, &unk_1000683C0);
    goto LABEL_10;
  }

  sub_100004F70(&qword_100082818, &qword_100068388);
  if (swift_dynamicCast())
  {
    return v11[0];
  }

LABEL_10:
  if (qword_100082580 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100082588);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "dictionary is nil or not the right type, will skip", v10, 2u);
  }

  return 0;
}

uint64_t sub_1000055E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005430(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v16 = result;
    *&v12[0] = 0x7461446567616D69;
    *(&v12[0] + 1) = 0xE900000000000061;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10005BC6C(v13), (v6 & 1) != 0))
    {
      sub_100007018(*(v4 + 56) + 32 * v5, &v14);
      sub_100006FC4(v13);
      if (swift_dynamicCast())
      {
        *&v14 = 0x7461446567616D69;
        *(&v14 + 1) = 0xE900000000000061;
        AnyHashable.init<A>(_:)();
        v7 = objc_allocWithZone(NSData);
        v8 = String._bridgeToObjectiveC()();

        v9 = [v7 initWithBase64EncodedString:v8 options:0];

        if (v9)
        {
          v15 = sub_100007228();
          *&v14 = v9;
          sub_100007274(&v14, v12);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_10005E0B0(v12, v13, isUniquelyReferenced_nonNull_native);
          sub_100006FC4(v13);
          return v4;
        }

        else
        {
          sub_10005C570(v13, v12);
          sub_1000071C8(v12, &qword_100082860, &unk_1000683C0);
          sub_100006FC4(v13);
          return v16;
        }
      }
    }

    else
    {
      sub_100006FC4(v13);
    }

    sub_100006F70();
    swift_allocError();
    *v11 = 7;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1000057EC(uint64_t a1)
{
  if (!a1)
  {
    sub_100007118();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  strcpy(v12, "evaluationUuid");
  HIBYTE(v12[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v2 = sub_10005BC6C(v13), (v3 & 1) == 0))
  {
    sub_100006FC4(v13);
    goto LABEL_10;
  }

  sub_100007018(*(a1 + 56) + 32 * v2, v14);
  sub_100006FC4(v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_100007118();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  v5 = v12[0];
  v4 = v12[1];
  strcpy(v12, "userResponse");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v6 = sub_10005BC6C(v13), (v7 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v6, v14);
    sub_100006FC4(v13);
    if (swift_dynamicCast())
    {
      type metadata accessor for FBKSEvaluation();
      return sub_10001BA5C(v5, v4, v12[0]);
    }
  }

  else
  {

    sub_100006FC4(v13);
  }

  sub_100007118();
  swift_allocError();
  *v11 = 2;
  return swift_willThrow();
}

void sub_100005A2C()
{
  _StringGuts.grow(_:)(57);
  v1._countAndFlagsBits = 0x2A205443454C4553;
  v1._object = 0xEF22204D4F524620;
  String.append(_:)(v1);
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v2);

  v3._object = 0x800000010006ADA0;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v3);
  v31 = UUID.uuidString.getter();
  v32 = v4;
  v30 = sub_1000070C4();
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x2054494D494C2022;
  v9._object = 0xE900000000000031;
  String.append(_:)(v9);
  v10 = BMSQLDatabase.execute(query:)();

  v11 = [v10 error];
  if (v11)
  {
    v12 = v11;
    if (qword_100082580 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100002D00(v13, qword_100082588);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v14;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching evaluation: %@", v17, 0xCu);
      sub_1000071C8(v18, &qword_100082708, &qword_100068320);

      return;
    }

    goto LABEL_10;
  }

  if (![v10 next])
  {
LABEL_10:

    return;
  }

  v21 = [v10 row];
  if (v21)
  {
    v22 = v21;
    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v23 = 0;
  }

  sub_1000057EC(v23);
  if (v0)
  {

    if (qword_100082580 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002D00(v24, qword_100082588);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error decoding evaluation: %@", v27, 0xCu);
      sub_1000071C8(v28, &qword_100082708, &qword_100068320);
    }

    swift_willThrow();
  }

  else
  {
  }
}

uint64_t sub_100005ED8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100005F24()
{
  result = qword_100082718;
  if (!qword_100082718)
  {
    sub_100005F88(&qword_100082710, &qword_100068330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082718);
  }

  return result;
}

uint64_t sub_100005F88(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_100005FD0(int a1, char a2, uint64_t a3, void *a4)
{
  v5 = v4;
  LODWORD(v122) = a1;
  v9 = sub_100004F70(&qword_100082808, &qword_100068380);
  __chkstk_darwin(v9 - 8);
  v117 = &v109 - v10;
  v118 = type metadata accessor for UUID();
  v116 = *(v118 - 8);
  v11 = __chkstk_darwin(v118);
  v115 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v109 - v13;
  if (a2)
  {
    v14 = 1129530692;
  }

  else
  {
    v14 = 4412225;
  }

  v15 = 0xE300000000000000;
  if (a2)
  {
    v15 = 0xE400000000000000;
  }

  v120 = v14;
  *&v121 = v15;
  v123 = a4;
  if (a3)
  {
    v16 = *(a3 + 16);
    v17 = _swiftEmptyArrayStorage;
    if (v16)
    {
      v129 = v4;
      v128[0] = _swiftEmptyArrayStorage;
      sub_100004FD8(0, v16, 0);
      v17 = v128[0];
      v18 = (a3 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v126 = 34;
        v127 = 0xE100000000000000;

        v21._countAndFlagsBits = v20;
        v21._object = v19;
        String.append(_:)(v21);
        v22._countAndFlagsBits = 34;
        v22._object = 0xE100000000000000;
        String.append(_:)(v22);

        v23 = v126;
        v24 = v127;
        v128[0] = v17;
        v26 = v17[2];
        v25 = v17[3];
        if (v26 >= v25 >> 1)
        {
          sub_100004FD8((v25 > 1), v26 + 1, 1);
          v17 = v128[0];
        }

        v17[2] = v26 + 1;
        v27 = &v17[2 * v26];
        v27[4] = v23;
        v27[5] = v24;
        v18 += 2;
        --v16;
      }

      while (v16);
      v5 = v129;
    }

    v126 = v17;
    sub_100004F70(&qword_100082710, &qword_100068330);
    sub_100005F24();
    a3 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  if (qword_100082580 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100002D00(v30, qword_100082588);

  v124 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006AD50, &v126);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1000049B8(a3, v29, &v126);
    _os_log_impl(&_mh_execute_header, v32, v33, "%s - Will filter out ids: %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(1341);
  v35._countAndFlagsBits = 0xD00000000000011ALL;
  v35._object = 0x800000010006A860;
  String.append(_:)(v35);
  v37 = v120;
  v36 = v121;
  v38._countAndFlagsBits = v120;
  v38._object = v121;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD0000000000001ECLL;
  v39._object = 0x800000010006A980;
  String.append(_:)(v39);
  v40._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0xD000000000000071;
  v41._object = 0x800000010006AB70;
  String.append(_:)(v41);
  v42._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0xD000000000000071;
  v43._object = 0x800000010006AB70;
  String.append(_:)(v43);
  v44._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0xD000000000000055;
  v45._object = 0x800000010006ABF0;
  String.append(_:)(v45);
  v128[0] = 27;
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 0xD000000000000038;
  v47._object = 0x800000010006AC50;
  String.append(_:)(v47);
  v48._countAndFlagsBits = a3;
  v48._object = v29;
  String.append(_:)(v48);

  v49._countAndFlagsBits = 0xD000000000000073;
  v49._object = 0x800000010006AC90;
  String.append(_:)(v49);
  v50._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 0xD00000000000003CLL;
  v51._object = 0x800000010006AD10;
  String.append(_:)(v51);
  v52._countAndFlagsBits = v37;
  v52._object = v36;
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x2054494D494C0ALL;
  v53._object = 0xE700000000000000;
  String.append(_:)(v53);
  LODWORD(v128[0]) = v122;
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  v55 = BMSQLDatabase.execute(query:)();

  if ([v55 error])
  {
    swift_willThrow();

    return v29;
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v126 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006AD50, &v126);
    _os_log_impl(&_mh_execute_header, v56, v57, "%s - No error occurred", v58, 0xCu);
    sub_100005ED8(v59);
  }

  if (![v55 next])
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_54;
  }

  v122 = "ORDER BY rn, eventTimestamp ";
  v113 = (v116 + 48);
  v111 = (v116 + 32);
  v110 = (v116 + 16);
  v29 = _swiftEmptyArrayStorage;
  v109 = v116 + 8;
  *&v60 = 136315394;
  v121 = v60;
  *&v60 = 138412290;
  v119 = v60;
  v123 = v55;
  while (2)
  {
    v112 = v29;
    while (1)
    {
      v61 = v55;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();

      v64 = os_log_type_enabled(v62, v63);
      v129 = v5;
      if (v64)
      {
        v65 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v65 = v121;
        *(v65 + 4) = sub_1000049B8(0xD000000000000043, v122 | 0x8000000000000000, &v126);
        *(v65 + 12) = 2080;
        v66 = v61;
        v67 = [v66 description];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v71 = sub_1000049B8(v68, v70, &v126);
        v55 = v123;

        *(v65 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v62, v63, "%s - Will parse results %s", v65, 0x16u);
        swift_arrayDestroy();
      }

      v72 = [v61 row];
      if (v72)
      {
        break;
      }

      v82 = 0;
LABEL_45:
      sub_100006F70();
      swift_allocError();
      *v89 = v82;
      swift_willThrow();
      swift_errorRetain();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = v119;
        swift_errorRetain();
        v94 = _swift_stdlib_bridgeErrorToNSError();
        *(v92 + 4) = v94;
        *v93 = v94;
        _os_log_impl(&_mh_execute_header, v90, v91, "Error parsing donation from row: %@", v92, 0xCu);
        sub_1000071C8(v93, &qword_100082708, &qword_100068320);
      }

      else
      {
      }

      v5 = 0;
      if (([v61 next] & 1) == 0)
      {
        v29 = v112;
        if (v112[2])
        {
          goto LABEL_61;
        }

        goto LABEL_57;
      }
    }

    v73 = v72;
    v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = v61;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v78 = v121;
      *(v78 + 4) = sub_1000049B8(0xD000000000000043, v122 | 0x8000000000000000, &v126);
      *(v78 + 12) = 2080;
      v120 = v75;
      v79 = [v75 row];
      if (v79)
      {
        v80 = v79;
        v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v81 = 0;
      }

      v128[0] = v81;
      sub_100004F70(&qword_100082830, &qword_1000683A0);
      v83 = String.init<A>(describing:)();
      v85 = sub_1000049B8(v83, v84, &v126);

      *(v78 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v76, v77, "%s - Will parse row %s", v78, 0x16u);
      swift_arrayDestroy();

      v55 = v123;
      v75 = v120;
    }

    else
    {
    }

    strcpy(v125, "evaluationUuid");
    v125[15] = -18;
    AnyHashable.init<A>(_:)();
    if (!*(v74 + 16) || (v86 = sub_10005BC6C(&v126), (v87 & 1) == 0))
    {

      sub_100006FC4(&v126);
LABEL_44:
      v82 = 4;
      goto LABEL_45;
    }

    sub_100007018(*(v74 + 56) + 32 * v86, v128);
    sub_100006FC4(&v126);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_44;
    }

    v88 = v117;
    UUID.init(uuidString:)();

    if ((*v113)(v88, 1, v118) == 1)
    {
      sub_1000071C8(v88, &qword_100082808, &qword_100068380);
      v82 = 5;
      goto LABEL_45;
    }

    v95 = *v111;
    v96 = v114;
    v97 = v88;
    v98 = v118;
    (*v111)(v114, v97, v118);
    (*v110)(v115, v96, v98);
    v29 = v112;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1000659C8(0, v29[2] + 1, 1, v29);
    }

    v100 = v29[2];
    v99 = v29[3];
    if (v100 >= v99 >> 1)
    {
      v29 = sub_1000659C8((v99 > 1), v100 + 1, 1, v29);
    }

    v101 = v116;
    v102 = v118;
    (*(v116 + 8))(v114, v118);
    v29[2] = v100 + 1;
    v95(v29 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v100, v115, v102);
    v103 = [v75 next];
    v5 = v129;
    if (v103)
    {
      continue;
    }

    break;
  }

LABEL_54:
  if (!v29[2])
  {
LABEL_57:

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v126 = v107;
      *v106 = 136315138;
      *(v106 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006AD50, &v126);

      _os_log_impl(&_mh_execute_header, v104, v105, "%s - query returned no results", v106, 0xCu);
      sub_100005ED8(v107);
    }

    else
    {
    }
  }

LABEL_61:

  return v29;
}

unint64_t sub_100006F70()
{
  result = qword_100082810;
  if (!qword_100082810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082810);
  }

  return result;
}

uint64_t sub_100007018(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for CFBBiomeReader.Metadata(uint64_t a1)
{
  result = qword_1000828C8;
  if (!qword_1000828C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000070C4()
{
  result = qword_100082848;
  if (!qword_100082848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082848);
  }

  return result;
}

unint64_t sub_100007118()
{
  result = qword_100082850;
  if (!qword_100082850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082850);
  }

  return result;
}

uint64_t sub_10000716C(uint64_t a1)
{
  v2 = type metadata accessor for CFBBiomeReader.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000071C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004F70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100007228()
{
  result = qword_100082868;
  if (!qword_100082868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100082868);
  }

  return result;
}

_OWORD *sub_100007274(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_100007284(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for CFBBiomeReader.FetchEvaluationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CFBBiomeReader.FetchEvaluationError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100007460(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000075C4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100007658();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100007658()
{
  if (!qword_1000828D8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000828D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for CFBBiomeReader.FetchDonationsError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CFBBiomeReader.FetchDonationsError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100007894(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100007970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100007BB4()
{
  result = qword_100082980;
  if (!qword_100082980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082980);
  }

  return result;
}

unint64_t sub_100007C0C()
{
  result = qword_100082988;
  if (!qword_100082988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082988);
  }

  return result;
}

unint64_t sub_100007EA4()
{
  result = qword_1000829D0;
  if (!qword_1000829D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000829D0);
  }

  return result;
}

void sub_100007F6C(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v4 forKey:v5];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  [a1 encodeObject:isa forKey:v7];

  sub_100008714(0, &qword_100082AA0, NSNumber_ptr);
  v8 = NSNumber.init(integerLiteral:)(*(v2 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_feedbackId)).super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v8 forKey:v9];

  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v10 forKey:v11];
}

id sub_10000817C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  sub_100008714(0, &qword_100082AA8, NSString_ptr);
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_100008714(0, &unk_100082AB0, NSDate_ptr);
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v16)
  {
LABEL_8:

    goto LABEL_9;
  }

  v17 = v16;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v10, v8, v4);
  sub_100008714(0, &qword_100082AA0, NSNumber_ptr);
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v18)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  v19 = v18;
  v20 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v23;

    v24 = &v2[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_formIdentifier];
    *v24 = v13;
    v24[1] = v15;
    (*(v5 + 16))(&v2[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_date], v10, v4);
    v25 = [v19 integerValue];

    (*(v5 + 8))(v10, v4);
    *&v2[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_feedbackId] = v25;
    v26 = &v2[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_build];
    v27 = v32;
    *v26 = v22;
    v26[1] = v27;
    v28 = type metadata accessor for FeedbackSubmission(0);
    v33.receiver = v2;
    v33.super_class = v28;
    v29 = objc_msgSendSuper2(&v33, "init");

    return v29;
  }

  (*(v5 + 8))(v10, v4);
LABEL_9:
  type metadata accessor for FeedbackSubmission(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100008548()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackSubmission(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeedbackSubmission(uint64_t a1)
{
  result = qword_100082A90;
  if (!qword_100082A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008668(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t sub_100008714(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000875C()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082B20);
  sub_100002D00(v0, qword_100082B20);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1000087D0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000883C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000887C()
{
  static Strings.Daemon.bundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  byte_100082B38 = has_internal_diagnostics;
  return result;
}

uint64_t sub_1000088CC()
{
  if (qword_1000825A8 != -1)
  {
    swift_once();
  }

  if (byte_100082B38 == 1)
  {
    result = static Strings.feedbackInternalBundleIdentifier.getter();
  }

  else
  {
    result = static Strings.fbaBundleIdentifier.getter();
  }

  qword_100082B40 = result;
  *algn_100082B48 = v1;
  return result;
}

uint64_t sub_100008938()
{
  if (qword_1000825A8 != -1)
  {
    result = swift_once();
  }

  v0 = 168;
  if (byte_100082B38)
  {
    v0 = 24;
  }

  qword_100082B50 = v0;
  return result;
}

id sub_1000089A0()
{
  type metadata accessor for CFBNotificationController(0);
  swift_allocObject();
  result = sub_10000B89C();
  qword_100085DD8 = result;
  return result;
}

uint64_t sub_100008A14()
{
  v1[27] = v0;
  v2 = type metadata accessor for Date();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = sub_100004F70(&qword_100082BA8, &qword_100068D58);
  v1[32] = swift_task_alloc();
  sub_100004F70(&unk_100083410, &qword_100068D50);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_100008B98, v0, 0);
}

uint64_t sub_100008B98()
{
  v9 = v0;
  if (qword_1000825A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 296) = sub_100002D00(v1, qword_100082B20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000012, 0x800000010006B030, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 304) = v6;
  *v6 = v0;
  v6[1] = sub_100008D48;

  return sub_10000A8F0();
}

uint64_t sub_100008D48(char a1)
{
  v2 = *(*v1 + 216);
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_100008E60, v2, 0);
}

uint64_t sub_100008E60()
{
  if ((*(v0 + 384) & 1) == 0)
  {
    sub_10000BD34();
    swift_allocError();
    swift_willThrow();

    v1 = *(v0 + 8);
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);
LABEL_5:

    return v1();
  }

  v3 = *(v0 + 288);
  v4 = *(v0 + 216);
  *(v0 + 312) = *(v4 + OBJC_IVAR____TtC9feedbackd25CFBNotificationController_notificationCenter);
  v5 = swift_allocObject();
  *(v0 + 320) = v5;
  *(v5 + 16) = 0;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_10000C058(&qword_100082BB8, type metadata accessor for CFBNotificationController, &unk_100068D10);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v7;
  v8[4] = v4;
  v8[5] = v5;
  swift_retain_n();

  sub_10000A644(0, 0, v3, &unk_100068D70, v8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Will wait on notification permission check", v11, 2u);
  }

  v12 = *(v0 + 320);
  swift_beginAccess();
  if (*(v12 + 16))
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Did finish waiting on notification permission check", v15, 2u);
    }

    v16 = [objc_allocWithZone(UNMutableNotificationContent) init];
    *(v0 + 344) = v16;
    v17._countAndFlagsBits = 0xD000000000000016;
    v17._object = 0x800000010006AF90;
    FBKSLocalizedString(key:)(v17);
    v18 = String._bridgeToObjectiveC()();

    [v16 setTitle:v18];

    v19._countAndFlagsBits = 0xD000000000000018;
    v19._object = 0x800000010006AFB0;
    FBKSLocalizedString(key:)(v19);
    v20 = String._bridgeToObjectiveC()();

    [v16 setBody:v20];

    sub_1000159A0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 setUserInfo:isa];

    [v16 setInterruptionLevel:1];
    static Strings.Notification.cfbCategoryIdentifier.getter();
    v22 = String._bridgeToObjectiveC()();

    [v16 setCategoryIdentifier:v22];

    v23 = v16;
    v24 = String._bridgeToObjectiveC()();
    *(v0 + 352) = [objc_opt_self() requestWithIdentifier:v24 content:v23 trigger:0];

    v25 = swift_task_alloc();
    *(v0 + 360) = v25;
    *v25 = v0;
    v25[1] = sub_1000099E8;

    return sub_10000A8F0();
  }

  else
  {
    v26 = swift_task_alloc();
    *(v0 + 328) = v26;
    *v26 = v0;
    v26[1] = sub_100009434;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }
}

uint64_t sub_100009434()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_100009938;
  }

  else
  {
    v4 = sub_100009560;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100009560()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[40];
    swift_beginAccess();
    if (*(v3 + 16))
    {
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Did finish waiting on notification permission check", v6, 2u);
      }

      v7 = [objc_allocWithZone(UNMutableNotificationContent) init];
      v0[43] = v7;
      v8._countAndFlagsBits = 0xD000000000000016;
      v8._object = 0x800000010006AF90;
      FBKSLocalizedString(key:)(v8);
      v9 = String._bridgeToObjectiveC()();

      [v7 setTitle:v9];

      v10._countAndFlagsBits = 0xD000000000000018;
      v10._object = 0x800000010006AFB0;
      FBKSLocalizedString(key:)(v10);
      v11 = String._bridgeToObjectiveC()();

      [v7 setBody:v11];

      sub_1000159A0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v7 setUserInfo:isa];

      [v7 setInterruptionLevel:1];
      static Strings.Notification.cfbCategoryIdentifier.getter();
      v13 = String._bridgeToObjectiveC()();

      [v7 setCategoryIdentifier:v13];

      v14 = v7;
      v15 = String._bridgeToObjectiveC()();
      v0[44] = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0];

      v16 = swift_task_alloc();
      v0[45] = v16;
      *v16 = v0;
      v16[1] = sub_1000099E8;

      return sub_10000A8F0();
    }

    else
    {
      v17 = swift_task_alloc();
      v0[41] = v17;
      *v17 = v0;
      v17[1] = sub_100009434;

      return static Task<>.sleep(nanoseconds:)(1000000000);
    }
  }
}

uint64_t sub_100009938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000099E8(char a1)
{
  v2 = *(*v1 + 216);
  *(*v1 + 385) = a1;

  return _swift_task_switch(sub_100009B00, v2, 0);
}

uint64_t sub_100009B00()
{
  if ((*(v0 + 385) & 1) == 0)
  {
    v4 = *(v0 + 344);
    v3 = *(v0 + 352);
    sub_10000BF94();
    swift_allocError();
    swift_willThrow();

    v2 = *(v0 + 8);
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 344);

    v2 = *(v0 + 8);
LABEL_5:

    return v2();
  }

  v6 = *(v0 + 352);
  v7 = *(v0 + 312);
  v8 = *(v0 + 280);
  v9 = *(v0 + 216);
  v10 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  *(v0 + 368) = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  swift_beginAccess();
  sub_10000C0A0(v9 + v10, v8, &unk_100083410, &qword_100068D50);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100009D9C;
  v11 = swift_continuation_init();
  *(v0 + 136) = sub_100004F70(&qword_100082BC8, &qword_100068D78);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100021DB8;
  *(v0 + 104) = &unk_10007DF40;
  *(v0 + 112) = v11;
  [v7 addNotificationRequest:v6 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100009D9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 216);
  if (v2)
  {
    v4 = sub_10000A304;
  }

  else
  {
    v4 = sub_100009EBC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100009EBC()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v5 = *(v0[31] + 48);
  sub_10000C0A0(v0[27] + v0[46], v2, &unk_100083410, &qword_100068D50);
  sub_10000C0A0(v1, v2 + v5, &unk_100083410, &qword_100068D50);
  v6 = *(v4 + 48);
  if (v6(v2, 1, v3) == 1)
  {
    if (v6(v2 + v5, 1, v0[28]) == 1)
    {
      sub_1000071C8(v0[32], &unk_100083410, &qword_100068D50);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = v0[28];
    sub_10000C0A0(v0[32], v0[34], &unk_100083410, &qword_100068D50);
    v8 = v6(v2 + v5, 1, v7);
    v9 = v0[34];
    if (v8 != 1)
    {
      v26 = v0[32];
      v28 = v0[29];
      v27 = v0[30];
      v29 = v0[28];
      (*(v28 + 32))(v27, v2 + v5, v29);
      sub_10000C058(&qword_100082BD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v28 + 8);
      v31(v27, v29);
      v31(v9, v29);
      sub_1000071C8(v26, &unk_100083410, &qword_100068D50);
      if (v30)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    (*(v0[29] + 8))(v0[34], v0[28]);
  }

  sub_1000071C8(v0[32], &qword_100082BA8, &qword_100068D58);
LABEL_7:
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Race condition detected in notification posts count", v12, 2u);
  }

LABEL_10:
  v13 = v0[46];
  v14 = v0[44];
  v32 = v0[43];
  v33 = v0[35];
  v15 = v0[33];
  v16 = v0[29];
  v17 = v0[30];
  v19 = v0[27];
  v18 = v0[28];
  static Date.now.getter();
  v20 = [objc_opt_self() standardUserDefaults];
  Date.timeIntervalSince1970.getter();
  v22 = v21;
  v23 = String._bridgeToObjectiveC()();
  [v20 setDouble:v23 forKey:v22];

  sub_1000071C8(v33, &unk_100083410, &qword_100068D50);
  (*(v16 + 32))(v15, v17, v18);
  (*(v16 + 56))(v15, 0, 1, v18);
  swift_beginAccess();
  sub_10000BFE8(v15, v19 + v13);
  swift_endAccess();

  v24 = v0[1];

  return v24();
}

uint64_t sub_10000A304()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[35];
  swift_willThrow();

  sub_1000071C8(v3, &unk_100083410, &qword_100068D50);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000A3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_10000A484;

  return sub_10000AFDC();
}

uint64_t sub_10000A484()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 40);

    return _swift_task_switch(sub_10000A5C8, v6, 0);
  }
}

uint64_t sub_10000A5C8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  *(v1 + 16) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000C0A0(a3, v22 - v9, &qword_1000833B0, &qword_100068D60);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000071C8(v10, &qword_1000833B0, &qword_100068D60);
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

      sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);

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

  sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000A8F0()
{
  v1[5] = v0;
  v2 = type metadata accessor for Calendar.Component();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Calendar();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  sub_100004F70(&unk_100083410, &qword_100068D50);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10000AAC4, v0, 0);
}

uint64_t sub_10000AAC4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  static Calendar.current.getter();
  (*(v2 + 104))(v1, enum case for Calendar.Component.hour(_:), v3);
  if (qword_1000825B8 != -1)
  {
    swift_once();
  }

  if (__OFSUB__(0, qword_100082B50))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[7];
  v37 = v0[6];
  v38 = v0[9];
  static Date.now.getter();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v36 = *(v6 + 8);
  v36(v4, v5);
  (*(v11 + 8))(v10, v37);
  (*(v9 + 8))(v8, v38);
  v12 = *(v6 + 48);
  if (v12(v7, 1, v5) == 1)
  {
    sub_1000071C8(v0[13], &unk_100083410, &qword_100068D50);
    if (qword_1000825A0 == -1)
    {
LABEL_6:
      v13 = type metadata accessor for Logger();
      sub_100002D00(v13, qword_100082B20);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to get interval start for notification limits.", v16, 2u);
      }

LABEL_9:
      v17 = 0;
      goto LABEL_15;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  v18 = v0[14];
  v19 = v0[12];
  v20 = v0[5];
  v21 = *(v0[15] + 32);
  v21(v0[18], v0[13], v18);
  v22 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  swift_beginAccess();
  sub_10000C0A0(v20 + v22, v19, &unk_100083410, &qword_100068D50);
  if (v12(v19, 1, v18) == 1)
  {
    v23 = v0[12];
    v36(v0[18], v0[14]);
    sub_1000071C8(v23, &unk_100083410, &qword_100068D50);
  }

  else
  {
    v21(v0[16], v0[12], v0[14]);
    sub_10000C058(&qword_100083470, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      if (qword_1000825A0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100002D00(v28, qword_100082B20);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[18];
      v33 = v0[16];
      v34 = v0[14];
      if (v31)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Reached maximum number of notifications for this interval.", v35, 2u);
      }

      v36(v33, v34);
      v36(v32, v34);
      goto LABEL_9;
    }

    v24 = v0[18];
    v25 = v0[14];
    v36(v0[16], v25);
    v36(v24, v25);
  }

  v17 = 1;
LABEL_15:

  v26 = v0[1];

  return v26(v17);
}

uint64_t sub_10000AFFC()
{
  v1 = *(v0[27] + OBJC_IVAR____TtC9feedbackd25CFBNotificationController_notificationCenter);
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_10000B128;
  v2 = swift_continuation_init();
  v0[25] = sub_100004F70(&unk_1000833D0, &qword_100068D38);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100021E64;
  v0[21] = &unk_10007DEA0;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000B128()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_10000B21C, v1, 0);
}

uint64_t sub_10000B21C()
{
  v1 = v0[28];
  v0[29] = v0[26];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_10000B344;
  v2 = swift_continuation_init();
  v0[25] = sub_100004F70(&qword_100082BA0, &unk_100068D40);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100021EC8;
  v0[21] = &unk_10007DEC8;
  v0[22] = v2;
  [v1 requestAuthorizationWithOptions:7 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_10000B344()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 216);
  if (v2)
  {
    v4 = sub_10000B82C;
  }

  else
  {
    v4 = sub_10000B464;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000B464()
{
  v26 = v0;
  v1 = *(v0 + 208);
  if (qword_1000825A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v3 = type metadata accessor for Logger();
  sub_100002D00(v3, qword_100082B20);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v10 = v1;
    v11 = v25;
    *v8 = 136446722;
    *(v0 + 144) = [v7 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, &v25);

    *(v8 + 4) = v14;
    *(v8 + 12) = 1026;
    *(v8 + 14) = v10;
    *(v8 + 18) = 2112;
    *(v8 + 20) = v7;
    *v9 = v7;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Previous status [%{public}s], authorized? %{BOOL,public}d\nSettings: %@", v8, 0x1Cu);
    sub_1000071C8(v9, &qword_100082708, &qword_100068320);

    sub_100005ED8(v11);
  }

  v16 = [*(v0 + 232) authorizationStatus];
  if (v16 <= 1)
  {
    if (!v16)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Not Determined";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v16 == 1)
    {
      v20 = *(v0 + 232);
      sub_10000BCE0();
      swift_allocError();
      *v21 = 5;
      swift_willThrow();

      v22 = *(v0 + 8);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    if (v16 == 3)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Provisional";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v16 == 4)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Ephemeral";
LABEL_22:
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, v19, v23, 2u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_20:
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = "Notification status is Unknown Default";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = "Notification status is Authorized";
    goto LABEL_22;
  }

LABEL_23:

  v22 = *(v0 + 8);
LABEL_24:

  return v22();
}

uint64_t sub_10000B82C()
{
  v1 = *(v0 + 232);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id sub_10000B89C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_notificationCenter;
  if (qword_1000825B0 != -1)
  {
    swift_once();
  }

  sub_10000BC7C();
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.userInitiated(_:), v2);
  v9 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v5, v2);
  v10 = objc_allocWithZone(UNUserNotificationCenter);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithBundleIdentifier:v11 queue:v9];

  *&v1[v8] = v12;
  v13 = type metadata accessor for CFBNotificationController(0);
  v15.receiver = v1;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_10000BAC8()
{
  sub_1000071C8(v0 + OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate, &unk_100083410, &qword_100068D50);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for CFBNotificationController(uint64_t a1)
{
  result = qword_100082B88;
  if (!qword_100082B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000BB7C(uint64_t a1)
{
  sub_10000BC24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000BC24(uint64_t a1)
{
  if (!qword_100082B98)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100082B98);
    }
  }
}

unint64_t sub_10000BC7C()
{
  result = qword_100083480;
  if (!qword_100083480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100083480);
  }

  return result;
}

unint64_t sub_10000BCE0()
{
  result = qword_1000833E0;
  if (!qword_1000833E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000833E0);
  }

  return result;
}

unint64_t sub_10000BD34()
{
  result = qword_100082BB0;
  if (!qword_100082BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082BB0);
  }

  return result;
}

uint64_t sub_10000BD98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BDE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BEA0;

  return sub_10000A3F0(a1, v4, v5, v7, v6);
}

uint64_t sub_10000BEA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000BF94()
{
  result = qword_100082BC0;
  if (!qword_100082BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082BC0);
  }

  return result;
}

uint64_t sub_10000BFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004F70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for CFBNotificationController.NotificationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CFBNotificationController.NotificationError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000C1F4()
{
  result = qword_100082BD8;
  if (!qword_100082BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082BD8);
  }

  return result;
}

uint64_t sub_10000C258()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082BE0);
  v1 = sub_100002D00(v0, qword_100082BE0);
  if (qword_100082608 != -1)
  {
    swift_once();
  }

  v2 = sub_100002D00(v0, qword_100085DF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000C320()
{
  type metadata accessor for NotificationScheduler();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100085DE8 = v0;
  return result;
}

uint64_t sub_10000C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v7[21] = type metadata accessor for FormLaunchConfiguration(0);
  v7[22] = swift_task_alloc();
  sub_100004F70(&unk_100083410, &qword_100068D50);
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_10000C434, v6, 0);
}

uint64_t sub_10000C434()
{
  v11 = v0;
  if (qword_1000825C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 192) = sub_100002D00(v1, qword_100082BE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006B0A0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  if (qword_100082610 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 152);
  *(v0 + 200) = qword_100085E10;
  v7 = *(v6 + 80);
  *(v0 + 97) = v7;
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_10000C62C;

  return sub_1000220CC(v7);
}

uint64_t sub_10000C62C(char a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 98) = a1;

  return _swift_task_switch(sub_10000C744, v2, 0);
}

uint64_t sub_10000C744()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v1 = qword_100085DF0;
  *(v0 + 216) = qword_100085DF0;

  return _swift_task_switch(sub_10000C7DC, v1, 0);
}

uint64_t sub_10000C7DC()
{
  v1 = *(v0 + 160);
  *(v0 + 224) = sub_10001F450();

  return _swift_task_switch(sub_10000C848, v1, 0);
}

uint64_t sub_10000C848()
{
  v1 = *(v0 + 98);
  v2 = *(*(v0 + 224) + 16);

  if (v1 != 1 || v2 != 0)
  {
    if ((*(v0 + 97) & 1) == 0)
    {
      v4 = *(v0 + 216);

      return _swift_task_switch(sub_10000CD44, v4, 0);
    }

    goto LABEL_10;
  }

  if (*(v0 + 97))
  {
LABEL_10:
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Used configuration to notify immediately", v7, 2u);
    }
  }

  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_10000C9C8;
  v9 = *(v0 + 184);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);

  return sub_100025744(v9, v14, v15, v12, v13, v10, v11);
}

uint64_t sub_10000C9C8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_10000CDC8;
  }

  else
  {
    v4 = sub_10000CAF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000CAF4()
{
  v16 = v0[27];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v3[8];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  sub_10000F9EC(v1, v2 + v3[9]);
  Date.init()();
  *v2 = v8;
  *(v2 + 8) = v7;
  *(v2 + 16) = v6;
  *(v2 + 24) = v5;
  v11 = *(v4 + 16);
  *(v2 + 32) = *v4;
  *(v2 + 48) = v11;
  v12 = *(v4 + 32);
  v13 = *(v4 + 48);
  v14 = *(v4 + 64);
  *(v2 + 112) = *(v4 + 80);
  *(v2 + 80) = v13;
  *(v2 + 96) = v14;
  *(v2 + 64) = v12;
  *(v2 + v3[7]) = 0;
  *(v2 + v3[10]) = 0;

  sub_10000FA5C(v4, (v0 + 2));

  return _swift_task_switch(sub_10000CC44, v16, 0);
}

uint64_t sub_10000CC44()
{
  v1 = *(v0 + 160);
  sub_10001FB30(*(v0 + 176));

  return _swift_task_switch(sub_10000CCB8, v1, 0);
}

uint64_t sub_10000CCB8()
{
  v1 = v0[23];
  sub_10000F990(v0[22]);
  sub_1000071C8(v1, &unk_100083410, &qword_100068D50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10000CD44()
{
  sub_10001FC88(*(v0 + 152), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000CDC8()
{
  v11 = v0;
  v0[13] = v0[30];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v4 = v0[14];
      v3 = v0[15];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1000049B8(v4, v3, &v10);
      _os_log_impl(&_mh_execute_header, v1, v2, "Posting notification for [%{public}s] was halted because we have already posted the max amount allowed for this interval. Will enqueue notification for later", v5, 0xCu);
      sub_100005ED8(v6);
    }

    v7 = v0[27];

    return _swift_task_switch(sub_10000CFD0, v7, 0);
  }

  else
  {

    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10000CFD0()
{
  v1 = *(v0 + 160);
  sub_10001FC88(*(v0 + 152), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return _swift_task_switch(sub_10000D048, v1, 0);
}

uint64_t sub_10000D048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000D0BC()
{
  v1[36] = v0;
  sub_100004F70(&unk_100083410, &qword_100068D50);
  v1[37] = swift_task_alloc();
  sub_100004F70(&qword_100082CA8, &unk_100069A60);
  v1[38] = swift_task_alloc();
  v2 = type metadata accessor for FormItem();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  sub_100004F70(&qword_100082CB0, &qword_100068EB0);
  v1[42] = swift_task_alloc();
  v3 = type metadata accessor for FormLaunchConfiguration(0);
  v1[43] = v3;
  v1[44] = *(v3 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();

  return _swift_task_switch(sub_10000D2A4, v0, 0);
}

uint64_t sub_10000D2A4()
{
  v9 = v0;
  if (qword_1000825C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[49] = sub_100002D00(v1, qword_100082BE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD00000000000001ALL, 0x800000010006B080, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  if (qword_100082610 != -1)
  {
    swift_once();
  }

  v0[50] = qword_100085E10;
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  v6[1] = sub_10000D490;

  return sub_1000220CC(0);
}

uint64_t sub_10000D490(char a1)
{
  v2 = *(*v1 + 288);
  *(*v1 + 97) = a1;

  return _swift_task_switch(sub_10000D5A8, v2, 0);
}

uint64_t sub_10000D5A8(uint64_t a1)
{
  if (*(v1 + 97) == 1)
  {
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v2 = qword_100085DF0;
    *(v1 + 416) = qword_100085DF0;

    return _swift_task_switch(sub_10000D75C, v2, 0);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Too soon to post another notification. Will not inspect pending queue", v5, 2u);
    }

    v6 = *(v1 + 8);

    return v6();
  }
}

uint64_t sub_10000D75C()
{
  v1 = *(v0 + 288);
  *(v0 + 424) = sub_1000200EC();

  return _swift_task_switch(sub_10000D7C8, v1, 0);
}

uint64_t sub_10000D7C8()
{
  result = *(v0 + 424);
  v2 = *(result + 16);
  *(v0 + 432) = v2;
  if (v2)
  {
    *(v0 + 440) = 0;
    if (*(result + 16))
    {
      *(v0 + 448) = *(result + 32);
      *(v0 + 456) = *(result + 40);
      *(v0 + 98) = *(result + 48);

      v3 = swift_task_alloc();
      *(v0 + 464) = v3;
      *v3 = v0;
      v3[1] = sub_10000D944;

      return sub_1000220CC(0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10000D944(char a1)
{
  v2 = *(*v1 + 288);
  *(*v1 + 99) = a1;

  return _swift_task_switch(sub_10000DA5C, v2, 0);
}

uint64_t sub_10000DA5C()
{
  if (*(v0 + 99) == 1)
  {
    v1 = *(v0 + 416);

    return _swift_task_switch(sub_10000DB7C, v1, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10000DB7C()
{
  v1 = v0[36];
  sub_10001D9C4(v0[42], v0[56], v0[57]);

  return _swift_task_switch(sub_10000DBF4, v1, 0);
}

uint64_t sub_10000DBF4()
{
  v27 = v0;
  v1 = *(v0 + 336);
  if ((*(*(v0 + 352) + 48))(v1, 1, *(v0 + 344)) == 1)
  {

    result = sub_1000071C8(v1, &qword_100082CB0, &qword_100068EB0);
    v3 = *(v0 + 440) + 1;
    if (v3 == *(v0 + 432))
    {

      v4 = *(v0 + 8);

      return v4();
    }

    else
    {
      *(v0 + 440) = v3;
      v16 = *(v0 + 424);
      if (v3 >= *(v16 + 16))
      {
        __break(1u);
      }

      else
      {
        v17 = v16 + 24 * v3;
        *(v0 + 448) = *(v17 + 32);
        *(v0 + 456) = *(v17 + 40);
        *(v0 + 98) = *(v17 + 48);

        v18 = swift_task_alloc();
        *(v0 + 464) = v18;
        *v18 = v0;
        v18[1] = sub_10000D944;

        return sub_1000220CC(0);
      }
    }
  }

  else
  {
    v5 = *(v0 + 384);
    v6 = *(v0 + 376);
    sub_10000F8C8(v1, v5);
    sub_10000F92C(v5, v6);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 376);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      v13 = *v10;
      v14 = v10[1];

      sub_10000F990(v10);
      v15 = sub_1000049B8(v13, v14, &v26);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found pending notification %s", v11, 0xCu);
      sub_100005ED8(v12);
    }

    else
    {

      sub_10000F990(v10);
    }

    v19 = *(v0 + 384);
    type metadata accessor for SeedPortal();
    *(v0 + 472) = static SeedPortal.shared.getter();
    v20 = *v19;
    *(v0 + 480) = *v19;
    v21 = v19[1];
    *(v0 + 488) = v21;
    v22 = v19[2];
    *(v0 + 496) = v22;
    v23 = v19[3];
    *(v0 + 504) = v23;
    v24 = swift_task_alloc();
    *(v0 + 512) = v24;
    *v24 = v0;
    v24[1] = sub_10000DF98;
    v25 = *(v0 + 304);

    return sub_10001A628(v25, v20, v21, v22, v23, 0);
  }

  return result;
}

uint64_t sub_10000DF98()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 288);
  if (v0)
  {
    v4 = sub_10000E3E0;
  }

  else
  {
    v4 = sub_10000E0E0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000E0E0()
{
  v36 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 384);
    v5 = *(v0 + 360);
    sub_1000071C8(v3, &qword_100082CA8, &unk_100069A60);
    sub_10000F92C(v4, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 360);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136446210;
      v12 = *v9;
      v13 = v9[1];

      sub_10000F990(v9);
      v14 = sub_1000049B8(v12, v13, &v35);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not authenticate for Form %{public}s", v10, 0xCu);
      sub_100005ED8(v11);
    }

    else
    {

      sub_10000F990(v9);
    }

    sub_10000BCE0();
    *(v0 + 544) = swift_allocError();
    *v28 = 1;
    v29 = _convertErrorToNSError(_:)();
    *(v0 + 552) = v29;
    v30 = swift_task_alloc();
    *(v0 + 560) = v30;
    *v30 = v0;
    v30[1] = sub_10000EDFC;
    v31 = *(v0 + 98);
    v32 = *(v0 + 448);
    v33 = *(v0 + 456);
    v34 = *(v0 + 384);

    return sub_10001DC88(v34, v31, v32, v33, v29);
  }

  else
  {
    v15 = *(v0 + 384);
    (*(v2 + 32))(*(v0 + 328), v3, v1);
    v16 = *(v15 + 48);
    *(v0 + 16) = *(v15 + 32);
    *(v0 + 32) = v16;
    v18 = *(v15 + 80);
    v17 = *(v15 + 96);
    v19 = *(v15 + 64);
    *(v0 + 96) = *(v15 + 112);
    *(v0 + 64) = v18;
    *(v0 + 80) = v17;
    *(v0 + 48) = v19;
    v20 = swift_task_alloc();
    *(v0 + 528) = v20;
    *v20 = v0;
    v20[1] = sub_10000E888;
    v21 = *(v0 + 496);
    v22 = *(v0 + 504);
    v23 = *(v0 + 480);
    v24 = *(v0 + 488);
    v25 = *(v0 + 328);
    v26 = *(v0 + 296);

    return sub_100025744(v26, v23, v24, v21, v22, v25, v0 + 16);
  }
}

uint64_t sub_10000E3E0()
{
  v29 = v0;
  v1 = *(v0 + 520);
  *(v0 + 568) = v1;
  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 456);
    if (v4)
    {
      v6 = *(v0 + 448);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136446210;
      v9 = sub_1000049B8(v6, v5, &v28);

      *(v7 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Posting pending notification [%{public}s] halted because we have already posted the max amount allowed for this interval", v7, 0xCu);
      sub_100005ED8(v8);
    }

    else
    {
    }

    sub_10000F990(*(v0 + 384));

    v23 = *(v0 + 440) + 1;
    if (v23 == *(v0 + 432))
    {

      v24 = *(v0 + 8);

      return v24();
    }

    else
    {
      *(v0 + 440) = v23;
      v25 = *(v0 + 424);
      if (v23 >= *(v25 + 16))
      {
        __break(1u);
      }

      else
      {
        v26 = v25 + 24 * v23;
        *(v0 + 448) = *(v26 + 32);
        *(v0 + 456) = *(v26 + 40);
        *(v0 + 98) = *(v26 + 48);

        v27 = swift_task_alloc();
        *(v0 + 464) = v27;
        *v27 = v0;
        v27[1] = sub_10000D944;

        return sub_1000220CC(0);
      }
    }
  }

  else
  {

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v12 = 136446466;
      *(v12 + 4) = sub_1000049B8(0xD00000000000001ALL, 0x800000010006B080, &v28);
      *(v12 + 12) = 2114;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s error: %{public}@", v12, 0x16u);
      sub_1000071C8(v13, &qword_100082708, &qword_100068320);

      sub_100005ED8(v14);
    }

    v16 = _convertErrorToNSError(_:)();
    *(v0 + 576) = v16;
    v17 = swift_task_alloc();
    *(v0 + 584) = v17;
    *v17 = v0;
    v17[1] = sub_10000F0F8;
    v18 = *(v0 + 98);
    v19 = *(v0 + 448);
    v20 = *(v0 + 456);
    v21 = *(v0 + 384);

    return sub_10001DC88(v21, v18, v19, v20, v16);
  }

  return result;
}

uint64_t sub_10000E888()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 288);
  if (v0)
  {
    v4 = sub_10000F3E4;
  }

  else
  {
    v4 = sub_10000E9A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000E9A0()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v21 = *(v0 + 496);
  v22 = *(v0 + 416);
  v4 = *(v0 + 384);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 296);
  v8 = *(v4 + 48);
  *(v0 + 104) = *(v4 + 32);
  *(v0 + 120) = v8;
  v10 = *(v4 + 80);
  v9 = *(v4 + 96);
  v11 = *(v4 + 112);
  *(v0 + 136) = *(v4 + 64);
  *(v0 + 184) = v11;
  *(v0 + 168) = v9;
  *(v0 + 152) = v10;
  v12 = v6[8];
  v13 = *(v4 + v6[7]);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v5 + v12, 1, 1, v14);
  v15 = *(v4 + v6[10]);
  sub_10000F9EC(v7, v5 + v6[9]);

  sub_10000FA5C(v0 + 104, v0 + 192);
  Date.init()();
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 16) = v21;
  *(v5 + 24) = v1;
  v16 = *(v0 + 120);
  *(v5 + 32) = *(v0 + 104);
  *(v5 + 48) = v16;
  v17 = *(v0 + 136);
  v18 = *(v0 + 152);
  v19 = *(v0 + 168);
  *(v5 + 112) = *(v0 + 184);
  *(v5 + 80) = v18;
  *(v5 + 96) = v19;
  *(v5 + 64) = v17;
  *(v5 + v6[7]) = v13;
  *(v5 + v6[10]) = v15;

  return _swift_task_switch(sub_10000EB30, v22, 0);
}

uint64_t sub_10000EB30()
{
  v1 = *(v0 + 416);
  sub_10001FB30(*(v0 + 368));

  return _swift_task_switch(sub_10000EBA4, v1, 0);
}

uint64_t sub_10000EBA4()
{
  v1 = *(v0 + 288);
  sub_100020464(*(v0 + 448), *(v0 + 456), *(v0 + 98));

  return _swift_task_switch(sub_10000EC20, v1, 0);
}

uint64_t sub_10000EC20()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 296);
  sub_10000F990(*(v0 + 368));
  sub_1000071C8(v5, &unk_100083410, &qword_100068D50);
  (*(v3 + 8))(v2, v4);
  result = sub_10000F990(v1);
  v7 = *(v0 + 440) + 1;
  if (v7 == *(v0 + 432))
  {

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 440) = v7;
    v9 = *(v0 + 424);
    if (v7 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = v9 + 24 * v7;
      *(v0 + 448) = *(v10 + 32);
      *(v0 + 456) = *(v10 + 40);
      *(v0 + 98) = *(v10 + 48);

      v11 = swift_task_alloc();
      *(v0 + 464) = v11;
      *v11 = v0;
      v11[1] = sub_10000D944;

      return sub_1000220CC(0);
    }
  }

  return result;
}

uint64_t sub_10000EDFC()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 288);

  return _swift_task_switch(sub_10000EF64, v2, 0);
}

uint64_t sub_10000EF64()
{
  result = sub_10000F990(*(v0 + 384));
  v2 = *(v0 + 440) + 1;
  if (v2 == *(v0 + 432))
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 440) = v2;
    v4 = *(v0 + 424);
    if (v2 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v5 = v4 + 24 * v2;
      *(v0 + 448) = *(v5 + 32);
      *(v0 + 456) = *(v5 + 40);
      *(v0 + 98) = *(v5 + 48);

      v6 = swift_task_alloc();
      *(v0 + 464) = v6;
      *v6 = v0;
      v6[1] = sub_10000D944;

      return sub_1000220CC(0);
    }
  }

  return result;
}

uint64_t sub_10000F0F8()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 288);

  return _swift_task_switch(sub_10000F244, v2, 0);
}

uint64_t sub_10000F244()
{
  v1 = *(v0 + 384);

  result = sub_10000F990(v1);
  v3 = *(v0 + 440) + 1;
  if (v3 == *(v0 + 432))
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 440) = v3;
    v5 = *(v0 + 424);
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = v5 + 24 * v3;
      *(v0 + 448) = *(v6 + 32);
      *(v0 + 456) = *(v6 + 40);
      *(v0 + 98) = *(v6 + 48);

      v7 = swift_task_alloc();
      *(v0 + 464) = v7;
      *v7 = v0;
      v7[1] = sub_10000D944;

      return sub_1000220CC(0);
    }
  }

  return result;
}

uint64_t sub_10000F3E4()
{
  v29 = v0;
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  v1 = *(v0 + 536);
  *(v0 + 568) = v1;
  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 456);
    if (v4)
    {
      v6 = *(v0 + 448);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136446210;
      v9 = sub_1000049B8(v6, v5, &v28);

      *(v7 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Posting pending notification [%{public}s] halted because we have already posted the max amount allowed for this interval", v7, 0xCu);
      sub_100005ED8(v8);
    }

    else
    {
    }

    sub_10000F990(*(v0 + 384));

    v23 = *(v0 + 440) + 1;
    if (v23 == *(v0 + 432))
    {

      v24 = *(v0 + 8);

      return v24();
    }

    else
    {
      *(v0 + 440) = v23;
      v25 = *(v0 + 424);
      if (v23 >= *(v25 + 16))
      {
        __break(1u);
      }

      else
      {
        v26 = v25 + 24 * v23;
        *(v0 + 448) = *(v26 + 32);
        *(v0 + 456) = *(v26 + 40);
        *(v0 + 98) = *(v26 + 48);

        v27 = swift_task_alloc();
        *(v0 + 464) = v27;
        *v27 = v0;
        v27[1] = sub_10000D944;

        return sub_1000220CC(0);
      }
    }
  }

  else
  {

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v12 = 136446466;
      *(v12 + 4) = sub_1000049B8(0xD00000000000001ALL, 0x800000010006B080, &v28);
      *(v12 + 12) = 2114;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s error: %{public}@", v12, 0x16u);
      sub_1000071C8(v13, &qword_100082708, &qword_100068320);

      sub_100005ED8(v14);
    }

    v16 = _convertErrorToNSError(_:)();
    *(v0 + 576) = v16;
    v17 = swift_task_alloc();
    *(v0 + 584) = v17;
    *v17 = v0;
    v17[1] = sub_10000F0F8;
    v18 = *(v0 + 98);
    v19 = *(v0 + 448);
    v20 = *(v0 + 456);
    v21 = *(v0 + 384);

    return sub_10001DC88(v21, v18, v19, v20, v16);
  }

  return result;
}

uint64_t sub_10000F8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormLaunchConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormLaunchConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F990(uint64_t a1)
{
  v2 = type metadata accessor for FormLaunchConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FAB8()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082CB8);
  sub_100002D00(v0, qword_100082CB8);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000FB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_100004F70(&qword_100082D18, &qword_100068F10);
  v6 = __chkstk_darwin(v5 - 8);
  v45 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = v44 - v8;
  v9 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  __chkstk_darwin(v9 - 8);
  v11 = v44 - v10;
  v12 = type metadata accessor for FBKSInteraction.Content();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v44 - v17;
  sub_10000C0A0(a2, v11, &qword_100082CD8, &qword_100068EC8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000071C8(v11, &qword_100082CD8, &qword_100068EC8);
    if (qword_1000825D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002D00(v19, qword_100082CB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No content. Cannot create annotated content", v22, 2u);
    }

    v23 = 1;
    v24 = v47;
LABEL_7:
    v25 = type metadata accessor for FBKSInteraction.AnnotatedContent();
    return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
  }

  (*(v13 + 32))(v18, v11, v12);
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v27 = sub_10005BCB0(0x4E79616C70736964, 0xEB00000000656D61);
  if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_100007018(*(a1 + 56) + 32 * v27, v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 16) || (v29 = v48, v30 = sub_10005BCB0(0x7470697263736564, 0xEB000000006E6F69), (v31 & 1) == 0) || (sub_100007018(*(a1 + 56) + 32 * v30, v50), (swift_dynamicCast() & 1) == 0))
  {
LABEL_20:

LABEL_21:
    sub_100013CEC();
    swift_allocError();
    *v36 = 0xD000000000000037;
    v36[1] = 0x800000010006B220;
    swift_willThrow();
    return (*(v13 + 8))(v18, v12);
  }

  v32 = v49;
  if (!*(a1 + 16) || (v44[4] = v48, v33 = sub_10005BCB0(0x656D614E656C6966, 0xE800000000000000), (v34 & 1) == 0) || (sub_100007018(*(a1 + 56) + 32 * v33, v50), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_20;
  }

  v44[1] = v48;
  v44[2] = v49;
  v44[3] = v32;
  v35 = v51;
  sub_1000101D4(a1, v46);
  if (!v35)
  {
    (*(v13 + 16))(v16, v18, v12);
    v37 = *(a1 + 16);
    v44[0] = v29;
    if (v37 && (v38 = sub_10005BCB0(0x70756F7267, 0xE500000000000000), (v39 & 1) != 0))
    {
      sub_100007018(*(a1 + 56) + 32 * v38, v50);
      v40 = swift_dynamicCast();
      v41 = v48;
      if (!v40)
      {
        v41 = 0;
      }

      v51 = v41;
    }

    else
    {
      v51 = 0;
    }

    sub_10000C0A0(v46, v45, &qword_100082D18, &qword_100068F10);
    if (*(a1 + 16))
    {
      v42 = sub_10005BCB0(0x6E6F697469646461, 0xEE006F666E496C61);
      if (v43)
      {
        sub_100007018(*(a1 + 56) + 32 * v42, v50);
        sub_100004F70(&qword_100082D20, &qword_100068F18);
        swift_dynamicCast();
      }
    }

    v24 = v47;
    FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
    sub_1000071C8(v46, &qword_100082D18, &qword_100068F10);
    (*(v13 + 8))(v18, v12);
    v23 = 0;
    goto LABEL_7;
  }

  (*(v13 + 8))(v18, v12);
}

uint64_t sub_1000101D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10005BCB0(0x657079546E6F6369, 0xE800000000000000), (v5 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v4, v11);
    sub_100007274(v11, v12);
    sub_100007018(v12, v11);
    sub_100004F70(&qword_100082828, &qword_100068ED0);
    if (swift_dynamicCast())
    {
      v6 = sub_100014ED4(v10);

      sub_100010364(v6, a2);
      sub_100005ED8(v12);
    }

    else
    {
      sub_100013CEC();
      swift_allocError();
      *v9 = 0xD000000000000024;
      v9[1] = 0x800000010006B260;
      swift_willThrow();
      return sub_100005ED8(v12);
    }
  }

  else
  {
    v8 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_100010364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000825D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100082CB8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v4;
    v39 = v5;
    *&v43[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1000049B8(0x293A5F2868746977, 0xE800000000000000, v43);
    *(v10 + 12) = 2080;
    sub_100004F70(&qword_100082860, &unk_1000683C0);
    v12 = Dictionary.description.getter();
    v14 = sub_1000049B8(v12, v13, v43);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s dictionary: %s", v10, 0x16u);
    swift_arrayDestroy();
    v4 = v38;
    v5 = v39;
  }

  v15 = sub_1000108A4(a1);
  if (!v16)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v17 = v15;
  v18 = v16;
  if ((v15 != 0x7261726F706D6574 || v16 != 0xE900000000000079) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v33 = v40;
    static FBKSInteraction.AnnotatedContent.IconType.withString(value:)();

    (*(v5 + 32))(a2, v33, v4);
    v30 = *(v5 + 56);
    v31 = a2;
    return v30(v31, 0, 1, v4);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v19 = a2;
  v20 = sub_10005BCB0(v17, v18);
  v22 = v21;

  if (v22)
  {
    sub_10000C0A0(*(a1 + 56) + 32 * v20, &v41, &qword_100082860, &unk_1000683C0);
    v43[0] = v41;
    v43[1] = v42;
    if (!*(&v42 + 1))
    {
      sub_1000071C8(v43, &qword_100082860, &unk_1000683C0);
      goto LABEL_21;
    }

    sub_100004F70(&qword_100082D20, &qword_100068F18);
    if (swift_dynamicCast())
    {
      v23 = v44;
      if (*(v44 + 16))
      {
        v24 = sub_10005BCB0(0xD000000000000011, 0x800000010006B2C0);
        if (v25)
        {
          v26 = (*(v23 + 56) + 16 * v24);
          v28 = *v26;
          v27 = v26[1];

          v29 = v40;
          *v40 = v28;
          v29[1] = v27;
          (*(v5 + 104))(v29, enum case for FBKSInteraction.AnnotatedContent.IconType.temporary(_:), v4);
          (*(v5 + 32))(v19, v29, v4);
          v30 = *(v5 + 56);
          v31 = v19;
          return v30(v31, 0, 1, v4);
        }
      }

LABEL_17:
    }
  }

LABEL_21:
  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  *&v43[0] = 0xD000000000000024;
  *(&v43[0] + 1) = 0x800000010006B290;
  sub_100004F70(&qword_100082860, &unk_1000683C0);
  v34._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v34);

  v35 = v43[0];
  sub_100013CEC();
  swift_allocError();
  *v36 = v35;
  return swift_willThrow();
}

uint64_t sub_1000108A4(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100010D64(v2, *(a1 + 36), 0, a1);

  return v4;
}

void *sub_100010920(uint64_t a1, uint64_t a2)
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

  sub_100004F70(&qword_100082840, &qword_1000683B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100010994(uint64_t a1, unint64_t a2)
{
  sub_100013D40(a1, a2);
  sub_100010A3C(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_100010A00@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_100010A3C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_100013C98(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_100010920(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_100013C98(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100010BB8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_100010D64(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100010DB8(uint64_t a1)
{
  v2 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v192 = *(v2 - 8);
  v193 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v190 = &v168 - v6;
  v7 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v8 = __chkstk_darwin(v7 - 8);
  v189 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v185 = &v168 - v11;
  __chkstk_darwin(v10);
  v188 = &v168 - v12;
  v13 = sub_100004F70(&qword_100082CD0, &qword_100068EC0);
  v14 = __chkstk_darwin(v13 - 8);
  v184 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v187 = &v168 - v17;
  v18 = __chkstk_darwin(v16);
  v183 = &v168 - v19;
  __chkstk_darwin(v18);
  v186 = &v168 - v20;
  v21 = type metadata accessor for String.Encoding();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000825D8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_100002D00(v25, qword_100082CB8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  v191 = v5;
  if (v29)
  {
    v30 = a1;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v198 = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_1000049B8(0xD00000000000001CLL, 0x800000010006B200, &v198);
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s", v31, 0xCu);
    sub_100005ED8(v32);

    a1 = v30;
  }

  v33 = dispatch thunk of FBKSInteraction.diagnostics.getter();
  if (!v34)
  {
    goto LABEL_12;
  }

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

LABEL_12:
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Donation doesn't have diagnostics text", v43, 2u);
    }

    return;
  }

  static String.Encoding.utf8.getter();
  v36 = String.data(using:allowLossyConversion:)();
  v38 = v37;

  (*(v22 + 8))(v24, v21);
  v182 = v38;
  if (v38 >> 60 == 15)
  {
    sub_100013CEC();
    v39 = swift_allocError();
    *v40 = 0xD000000000000024;
    v40[1] = 0x800000010006B130;
    v194 = v39;
    swift_willThrow();
    return;
  }

  v44 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v197[0] = 0;
  v46 = [v44 JSONObjectWithData:isa options:0 error:v197];

  v47 = *&v197[0];
  if (!v46)
  {
    v61 = v47;
    v62 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v194 = 0;
    goto LABEL_19;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100007018(&v198, v197);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = &type metadata for Any;
  if (os_log_type_enabled(v48, v49))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v181 = a1;
    v53 = v52;
    v196 = v52;
    *v51 = 136315138;
    sub_100007018(v197, &v195);
    v54 = String.init<A>(describing:)();
    v180 = v26;
    v55 = v36;
    v56 = v54;
    v57 = v44;
    v59 = v58;
    sub_100005ED8(v197);
    v60 = sub_1000049B8(v56, v59, &v196);
    v44 = v57;

    *(v51 + 4) = v60;
    v36 = v55;
    v50 = &type metadata for Any;
    _os_log_impl(&_mh_execute_header, v48, v49, "Annotations %s", v51, 0xCu);
    sub_100005ED8(v53);
    a1 = v181;
  }

  else
  {

    sub_100005ED8(v197);
  }

  sub_100007018(&v198, v197);
  v67 = sub_100004F70(&qword_100082828, &qword_100068ED0);
  if (!swift_dynamicCast())
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_36;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "Diagnostics JSON structure is not annotated content. Likely not an error";
    goto LABEL_35;
  }

  v179 = v44;
  v68 = v195;
  if (!v195[2] || (v69 = sub_10005BCB0(0x6E6F6973726576, 0xE700000000000000), (v70 & 1) == 0) || (sub_100007018(v68[7] + 32 * v69, v197), (swift_dynamicCast() & 1) == 0) || v195 != 1)
  {

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_36;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "Diagnostics JSON is invalid version, likely not an error";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v73, v74, v76, v75, 2u);

LABEL_36:
    sub_100013E3C(v36, v182);

LABEL_37:
    sub_100005ED8(&v198);
    return;
  }

  v169 = v36;
  v72 = 0;
  v175 = (v192 + 32);
  v172 = "encodeAnnotations(donation:)";
  v170 = (v192 + 48);
  v171 = "generatedContentAnnotation";
  *&v71 = 136315138;
  v176 = v71;
  v177 = v67;
  v181 = a1;
  while (1)
  {
    v77 = *(&off_10007DC30 + v72 + 32);
    if (v77 <= 1)
    {
      if (*(&off_10007DC30 + v72 + 32))
      {
        if (v68[2])
        {
          v118 = sub_10005BCB0(0xD00000000000001ALL, v172 | 0x8000000000000000);
          if (v119)
          {
            sub_100007018(v68[7] + 32 * v118, v197);
            if (!swift_dynamicCast())
            {

              v165 = 0x800000010006B1A0;
              sub_100013CEC();
              v62 = swift_allocError();
              v167 = 0xD00000000000002DLL;
              goto LABEL_115;
            }

            v180 = v72;
            v120 = v195;

            v121 = Logger.logObject.getter();
            v122 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v121, v122))
            {
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              *&v197[0] = v124;
              *v123 = v176;
              v125 = Dictionary.description.getter();
              v127 = v121;
              v128 = sub_1000049B8(v125, v126, v197);

              *(v123 + 4) = v128;
              _os_log_impl(&_mh_execute_header, v127, v122, "generatedAnnotatedContent %s", v123, 0xCu);
              sub_100005ED8(v124);

              a1 = v181;
            }

            else
            {
            }

            dispatch thunk of FBKSInteraction.generatedContent.getter();
            v144 = v189;
            v152 = v194;
            sub_10000FB1C(v120, v189, v187);
            v194 = v152;
            if (v152)
            {
LABEL_110:

              sub_1000071C8(v144, &qword_100082CD8, &qword_100068EC8);
              sub_100005ED8(&v198);
              v62 = v194;
LABEL_116:
              v194 = 0;
              goto LABEL_117;
            }

            sub_1000071C8(v144, &qword_100082CD8, &qword_100068EC8);

            dispatch thunk of FBKSInteraction.generatedAnnotatedContent.setter();
            v153 = v184;
            dispatch thunk of FBKSInteraction.generatedAnnotatedContent.getter();
            v154 = (*v170)(v153, 1, v193);
            sub_1000071C8(v153, &qword_100082CD0, &qword_100068EC0);
            if (v154 != 1)
            {
              v155 = Logger.logObject.getter();
              v156 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v155, v156))
              {
                v157 = swift_slowAlloc();
                *v157 = 0;
                _os_log_impl(&_mh_execute_header, v155, v156, "Clearing non-annotated generated content", v157, 2u);
              }

              v158 = type metadata accessor for FBKSInteraction.Content();
              (*(*(v158 - 8) + 56))(v185, 1, 1, v158);
              dispatch thunk of FBKSInteraction.generatedContent.setter();
            }

LABEL_98:
            v50 = &type metadata for Any;
LABEL_99:
            v72 = v180;
            goto LABEL_40;
          }
        }

        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v129, v130))
        {
          goto LABEL_39;
        }

        v131 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v180 = v72;
        v133 = v50;
        v134 = a1;
        v135 = v140;
        *&v197[0] = v140;
        *v131 = v176;
        v136 = 0xD00000000000001ALL;
        v137 = v172 | 0x8000000000000000;
      }

      else
      {
        if (v68[2])
        {
          v80 = sub_10005BCB0(0xD000000000000019, v171 | 0x8000000000000000);
          if (v81)
          {
            sub_100007018(v68[7] + 32 * v80, v197);
            if (swift_dynamicCast())
            {
              v180 = v72;
              v82 = v195;

              v83 = Logger.logObject.getter();
              v84 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                v86 = swift_slowAlloc();
                *&v197[0] = v86;
                *v85 = v176;
                v87 = Dictionary.description.getter();
                v89 = v83;
                v90 = sub_1000049B8(v87, v88, v197);

                *(v85 + 4) = v90;
                _os_log_impl(&_mh_execute_header, v89, v84, "originalAnnotatedContent %s", v85, 0xCu);
                sub_100005ED8(v86);

                a1 = v181;
              }

              else
              {
              }

              dispatch thunk of FBKSInteraction.originalContent.getter();
              v144 = v188;
              v145 = v194;
              sub_10000FB1C(v82, v188, v186);
              v194 = v145;
              if (v145)
              {
                goto LABEL_110;
              }

              sub_1000071C8(v144, &qword_100082CD8, &qword_100068EC8);

              dispatch thunk of FBKSInteraction.originalAnnotatedContent.setter();
              v146 = v183;
              dispatch thunk of FBKSInteraction.originalAnnotatedContent.getter();
              v147 = (*v170)(v146, 1, v193);
              sub_1000071C8(v146, &qword_100082CD0, &qword_100068EC0);
              if (v147 != 1)
              {
                v148 = Logger.logObject.getter();
                v149 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v148, v149))
                {
                  v150 = swift_slowAlloc();
                  *v150 = 0;
                  _os_log_impl(&_mh_execute_header, v148, v149, "Clearing non-annotated original content", v150, 2u);
                }

                v151 = type metadata accessor for FBKSInteraction.Content();
                (*(*(v151 - 8) + 56))(v185, 1, 1, v151);
                dispatch thunk of FBKSInteraction.originalContent.setter();
              }

              goto LABEL_98;
            }

            v165 = 0x800000010006B1D0;
            sub_100013CEC();
            v62 = swift_allocError();
            v167 = 0xD00000000000002CLL;
LABEL_115:
            *v166 = v167;
            v166[1] = v165;
            swift_willThrow();
            sub_100005ED8(&v198);
            goto LABEL_116;
          }
        }

        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v129, v130))
        {
          goto LABEL_39;
        }

        v131 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v180 = v72;
        v133 = v50;
        v134 = a1;
        v135 = v139;
        *&v197[0] = v139;
        *v131 = v176;
        v137 = v171 | 0x8000000000000000;
        v136 = 0xD000000000000019;
      }

LABEL_38:
      *(v131 + 4) = sub_1000049B8(v136, v137, v197);
      _os_log_impl(&_mh_execute_header, v129, v130, "%s, is nil will skip", v131, 0xCu);
      sub_100005ED8(v135);
      a1 = v134;
      v50 = v133;
      v72 = v180;

LABEL_39:

      goto LABEL_40;
    }

    if (v77 == 2)
    {
      break;
    }

    if (v77 == 3)
    {
      if (!v68[2] || (v78 = sub_10005BCB0(0x74736F6E67616964, 0xEB00000000736369), (v79 & 1) == 0))
      {
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v180 = v72;
          v133 = v50;
          v134 = a1;
          v135 = v138;
          *&v197[0] = v138;
          *v131 = v176;
          v136 = 0x74736F6E67616964;
          v137 = 0xEB00000000736369;
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      sub_100007018(v68[7] + 32 * v78, v197);
      if (!swift_dynamicCast())
      {

        v165 = 0x800000010006B160;
        sub_100013CEC();
        v62 = swift_allocError();
        v167 = 0xD00000000000001ELL;
        goto LABEL_115;
      }

      dispatch thunk of FBKSInteraction.diagnostics.setter();
    }

    else
    {

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v111, v112))
      {
        LODWORD(v178) = v112;
        v180 = v72;
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v195 = v114;
        *v113 = v176;
        if (v68[2] && (v115 = sub_10005BCB0(0x6E6F6973726576, 0xE700000000000000), (v116 & 1) != 0))
        {
          v117 = a1;
          sub_100007018(v68[7] + 32 * v115, v197);
        }

        else
        {
          v117 = a1;
          memset(v197, 0, sizeof(v197));
        }

        sub_100004F70(&qword_100082860, &unk_1000683C0);
        v141 = String.init<A>(describing:)();
        v143 = sub_1000049B8(v141, v142, &v195);

        *(v113 + 4) = v143;
        _os_log_impl(&_mh_execute_header, v111, v178, "Version %s", v113, 0xCu);
        sub_100005ED8(v114);

        a1 = v117;
        v50 = &type metadata for Any;
        goto LABEL_99;
      }
    }

LABEL_40:
    if (++v72 == 5)
    {
      sub_100013E3C(v169, v182);

      goto LABEL_37;
    }
  }

  if (!v68[2] || (v91 = sub_10005BCB0(0x6E6F436172747865, 0xEC000000746E6574), (v92 & 1) == 0))
  {
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v180 = v72;
      v133 = v50;
      v134 = a1;
      v135 = v132;
      *&v197[0] = v132;
      *v131 = v176;
      v136 = 0x6E6F436172747865;
      v137 = 0xEC000000746E6574;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  sub_100007018(v68[7] + 32 * v91, v197);
  sub_100004F70(&qword_100082CF0, &unk_100068ED8);
  if (!swift_dynamicCast())
  {

    v165 = 0x800000010006B180;
    sub_100013CEC();
    v62 = swift_allocError();
    v167 = 0xD00000000000001FLL;
    goto LABEL_115;
  }

  v93 = v195;
  v94 = v195[2];
  if (!v94)
  {

LABEL_101:
    dispatch thunk of FBKSInteraction.extraContent.setter();
    goto LABEL_40;
  }

  v168 = v68;
  *&v197[0] = _swiftEmptyArrayStorage;
  sub_100004FB8(0, v94, 0);
  v95 = 0;
  v178 = *&v197[0];
  v180 = v72;
  v174 = v93;
  v173 = v94;
  while (1)
  {
    if (v95 >= v93[2])
    {
      __break(1u);
    }

    v96 = Dictionary._bridgeToObjectiveC()().super.isa;
    v195 = 0;
    v97 = [v179 dataWithJSONObject:v96 options:0 error:&v195];

    v98 = v195;
    if (!v97)
    {
      v164 = v98;
      v62 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v194 = 0;
      goto LABEL_109;
    }

    v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100013E50(&qword_100082D10, &protocol conformance descriptor for FBKSInteraction.AnnotatedContent);
    v102 = v191;
    v103 = v193;
    v104 = v194;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v194 = v104;
    if (v104)
    {
      break;
    }

    sub_100013C98(v99, v101);

    v105 = *v175;
    v106 = v190;
    (*v175)(v190, v102, v103);

    v107 = v178;
    *&v197[0] = v178;
    v109 = *(v178 + 16);
    v108 = *(v178 + 24);
    if (v109 >= v108 >> 1)
    {
      sub_100004FB8((v108 > 1), v109 + 1, 1);
      v106 = v190;
      v103 = v193;
      v107 = *&v197[0];
    }

    ++v95;
    *(v107 + 16) = v109 + 1;
    v110 = (*(v192 + 80) + 32) & ~*(v192 + 80);
    v178 = v107;
    v105((v107 + v110 + *(v192 + 72) * v109), v106, v103);
    v50 = &type metadata for Any;
    v72 = v180;
    v93 = v174;
    if (v173 == v95)
    {

      a1 = v181;
      v68 = v168;
      goto LABEL_101;
    }
  }

  sub_100013C98(v99, v101);

  v62 = v194;
  v194 = 0;
LABEL_109:
  sub_100005ED8(&v198);

LABEL_117:
  v36 = v169;
LABEL_19:
  v198 = v62;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100013DF0();
  if (swift_dynamicCast())
  {
    v63 = *&v197[0];
    if ([*&v197[0] code] == 3840)
    {

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Diagnostics string does not contain JSON. Likely not an error", v66, 2u);
      }

      sub_100013E3C(v36, v182);

      return;
    }
  }

  swift_errorRetain();
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    *v161 = 138412290;
    swift_errorRetain();
    v163 = _swift_stdlib_bridgeErrorToNSError();
    *(v161 + 4) = v163;
    *v162 = v163;
    _os_log_impl(&_mh_execute_header, v159, v160, "Error decoding annotate content: %@", v161, 0xCu);
    sub_1000071C8(v162, &qword_100082708, &qword_100068320);
  }

  swift_willThrow();
  sub_100013E3C(v36, v182);
  v194 = v62;
}

id sub_10001288C(uint64_t a1, char a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v4 = JSONEncoder.init()();
  type metadata accessor for FBKSInteraction.AnnotatedContent();
  sub_100013E50(&qword_100082CE0, &protocol conformance descriptor for FBKSInteraction.AnnotatedContent);
  v5 = v4;
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v7;
  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v16[0] = 0;
  v5 = [v10 JSONObjectWithData:isa options:0 error:v16];

  if (!v5)
  {
    v5 = *&v16[0];
    _convertNSErrorToError(_:)();

LABEL_8:
    swift_willThrow();
    sub_100013C98(v8, v9);
LABEL_9:

    return v5;
  }

  v12 = *&v16[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004F70(&qword_100082828, &qword_100068ED0);
  if (!swift_dynamicCast())
  {
    sub_100013CEC();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    goto LABEL_8;
  }

  v5 = v15;
  if (a2)
  {
    sub_10005C614(0x64616F6C796170, 0xE700000000000000, v16);
    sub_100013C98(v8, v9);

    sub_1000071C8(v16, &qword_100082860, &unk_1000683C0);
    return v15;
  }

  else
  {
    sub_100013C98(v8, v9);
  }

  return v5;
}

void *sub_100012AFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v5 = sub_100004F70(&qword_100082CD0, &qword_100068EC0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v66 - v9;
  v11 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v76 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v75 = &v66 - v16;
  __chkstk_darwin(v15);
  v18 = &v66 - v17;
  v68 = sub_100015ADC(_swiftEmptyArrayStorage);
  v77 = v68;
  v69 = a1;
  dispatch thunk of FBKSInteraction.originalAnnotatedContent.getter();
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_1000071C8(v10, &qword_100082CD0, &qword_100068EC0);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v20 = sub_10001288C(v18, 1);
    if (v2)
    {
      (*(v12 + 8))(v18, v11);
LABEL_10:

      return a1;
    }

    v21 = v20;
    v3 = 0;
    v83 = sub_100004F70(&qword_100082828, &qword_100068ED0);
    *&v82 = v21;
    sub_100007274(&v82, v78);
    v22 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v22;
    sub_10005E1FC(v78, 0xD000000000000019, 0x800000010006B110, isUniquelyReferenced_nonNull_native);
    (*(v12 + 8))(v18, v11);
    v68 = v80;
    v77 = v80;
  }

  a1 = v69;
  dispatch thunk of FBKSInteraction.generatedAnnotatedContent.getter();
  v24 = v3;
  if (v19(v8, 1, v11) == 1)
  {
    sub_1000071C8(v8, &qword_100082CD0, &qword_100068EC0);
    goto LABEL_12;
  }

  v25 = v75;
  (*(v12 + 32))(v75, v8, v11);
  v26 = sub_10001288C(v25, 1);
  if (v24)
  {
    (*(v12 + 8))(v25, v11);
    goto LABEL_10;
  }

  v27 = v26;
  v83 = sub_100004F70(&qword_100082828, &qword_100068ED0);
  *&v82 = v27;
  sub_100007274(&v82, v78);
  v28 = v77;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v28;
  sub_10005E1FC(v78, 0xD00000000000001ALL, 0x800000010006B0F0, v29);
  (*(v12 + 8))(v25, v11);
  v68 = v80;
  v77 = v80;
LABEL_12:
  v30 = dispatch thunk of FBKSInteraction.extraContent.getter();
  v31 = *(v30 + 16);
  if (v31)
  {
    *&v78[0] = _swiftEmptyArrayStorage;
    sub_100004FF8(0, v31, 0);
    v32 = 0;
    v72 = v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v33 = *&v78[0];
    v70 = v31;
    v71 = v12 + 16;
    v73 = (v12 + 8);
    v74 = v11;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        __break(1u);
      }

      v75 = v33;
      (*(v12 + 16))(v76, v72 + *(v12 + 72) * v32, v11);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      a1 = JSONEncoder.init()();
      sub_100013E50(&qword_100082CE0, &protocol conformance descriptor for FBKSInteraction.AnnotatedContent);
      v34 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v24)
      {

        goto LABEL_27;
      }

      v36 = v34;
      v37 = v35;
      v38 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v82 = 0;
      v40 = [v38 JSONObjectWithData:isa options:0 error:&v82];

      if (!v40)
      {
        v45 = v82;

        _convertNSErrorToError(_:)();

        goto LABEL_26;
      }

      v41 = v82;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100004F70(&qword_100082828, &qword_100068ED0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_100013C98(v36, v37);
      v42 = v80;
      (*v73)(v76, v74);
      v33 = v75;
      *&v78[0] = v75;
      v44 = *(v75 + 2);
      v43 = *(v75 + 3);
      if (v44 >= v43 >> 1)
      {
        sub_100004FF8((v43 > 1), v44 + 1, 1);
        v33 = *&v78[0];
      }

      ++v32;
      *(v33 + 2) = v44 + 1;
      *&v33[8 * v44 + 32] = v42;
      v24 = 0;
      v11 = v74;
      if (v70 == v32)
      {

        v47 = v77;
        goto LABEL_28;
      }
    }

    sub_100013CEC();
    swift_allocError();
    *v46 = 0;
    v46[1] = 0;
LABEL_26:
    swift_willThrow();

    sub_100013C98(v36, v37);
    v11 = v74;
LABEL_27:
    (*v73)(v76, v11);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
    v47 = v68;
LABEL_28:
    v83 = sub_100004F70(&qword_100082CF0, &unk_100068ED8);
    *&v82 = v33;
    sub_100007274(&v82, v78);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v47;
    sub_10005E1FC(v78, 0x6E6F436172747865, 0xEC000000746E6574, v48);
    v49 = v80;
    v77 = v80;
    v50 = dispatch thunk of FBKSInteraction.diagnostics.getter();
    if (v51)
    {
      v83 = &type metadata for String;
      *&v82 = v50;
      *(&v82 + 1) = v51;
      sub_100007274(&v82, v78);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v49;
      sub_10005E1FC(v78, 0x74736F6E67616964, 0xEB00000000736369, v52);
      v53 = v80;
    }

    else
    {
      sub_10005C614(0x74736F6E67616964, 0xEB00000000736369, &v82);
      sub_1000071C8(&v82, &qword_100082860, &unk_1000683C0);
      v53 = v77;
    }

    v83 = &type metadata for Int;
    *&v82 = 1;
    sub_100007274(&v82, v78);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v53;
    sub_10005E1FC(v78, 0x6E6F6973726576, 0xE700000000000000, v54);
    v55 = objc_opt_self();
    v56 = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v82 = 0;
    v57 = [v55 dataWithJSONObject:v56 options:v67 error:&v82];

    v58 = v82;
    if (v57)
    {
      v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      sub_100013D40(v59, v61);
      v62 = sub_100010BB8(v59, v61);
      if (v63)
      {
        a1 = v62;
        sub_100013C98(v59, v61);
      }

      else
      {
        v80 = v59;
        v81 = v61;
        sub_100013D40(v59, v61);
        sub_100004F70(&qword_100082CF8, &qword_100068EE8);
        if (swift_dynamicCast())
        {
          sub_100013D94(v78, &v82);
          sub_100013DAC(&v82, v83);
          HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
          sub_100013C98(v59, v61);
          if (HasContiguous)
          {
            sub_100013DAC(&v82, v83);
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            sub_100013C98(v59, v61);
            a1 = *&v78[0];
            sub_100005ED8(&v82);
            return a1;
          }

          sub_100005ED8(&v82);
        }

        else
        {
          sub_100013C98(v59, v61);
          v79 = 0;
          memset(v78, 0, sizeof(v78));
          sub_1000071C8(v78, &qword_100082D00, &unk_100068EF0);
        }

        a1 = sub_100010994(v59, v61);
      }

      sub_100013C98(v59, v61);
      return a1;
    }

    a1 = v58;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

void sub_100013608(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004F70(&qword_100082CD0, &qword_100068EC0);
  v8 = __chkstk_darwin(v7 - 8);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v12 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = &v44 - v16;
  if (qword_1000825D8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100002D00(v17, qword_100082CB8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v49 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45 = v18;
    v24 = v4;
    v25 = v23;
    v50 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1000049B8(0xD00000000000001CLL, 0x800000010006B0D0, &v50);
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s", v22, 0xCu);
    sub_100005ED8(v25);
    v4 = v24;
    v2 = v1;
  }

  v26 = dispatch thunk of FBKSDonation.usesAnnotatedContent.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  if (v26)
  {
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Writing AnnotatedContent flow to write Donation", v30, 2u);
    }

    sub_100012AFC(a1, 0);
    if (!v2)
    {
      dispatch thunk of FBKSInteraction.diagnostics.setter();
      dispatch thunk of FBKSInteraction.diagnostics.getter();
      if (v31)
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134217984;
          *(v34 + 4) = String.count.getter();

          _os_log_impl(&_mh_execute_header, v32, v33, "diagnostics JSON string size: %ld", v34, 0xCu);
        }

        else
        {
        }
      }

      dispatch thunk of FBKSInteraction.originalAnnotatedContent.getter();
      v45 = *(v5 + 48);
      if (v45(v11, 1, v4))
      {
        sub_1000071C8(v11, &qword_100082CD0, &qword_100068EC0);
        v36 = 1;
        v37 = v47;
      }

      else
      {
        v38 = v46;
        (*(v5 + 16))(v46, v11, v4);
        sub_1000071C8(v11, &qword_100082CD0, &qword_100068EC0);
        v37 = v47;
        FBKSInteraction.AnnotatedContent.payload.getter();
        (*(v5 + 8))(v38, v4);
        v36 = 0;
      }

      v39 = type metadata accessor for FBKSInteraction.Content();
      v47 = *(*(v39 - 8) + 56);
      (v47)(v37, v36, 1, v39);
      dispatch thunk of FBKSInteraction.originalContent.setter();
      v40 = v48;
      dispatch thunk of FBKSInteraction.generatedAnnotatedContent.getter();
      if (v45(v40, 1, v4))
      {
        sub_1000071C8(v40, &qword_100082CD0, &qword_100068EC0);
        v41 = 1;
        v42 = v49;
      }

      else
      {
        v43 = v46;
        (*(v5 + 16))(v46, v40, v4);
        sub_1000071C8(v40, &qword_100082CD0, &qword_100068EC0);
        v42 = v49;
        FBKSInteraction.AnnotatedContent.payload.getter();
        (*(v5 + 8))(v43, v4);
        v41 = 0;
      }

      (v47)(v42, v41, 1, v39);
      dispatch thunk of FBKSInteraction.generatedContent.setter();
    }
  }

  else
  {
    if (v29)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Donation doesn't have annotated content", v35, 2u);
    }
  }
}

uint64_t sub_100013C98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100013CEC()
{
  result = qword_100082CE8;
  if (!qword_100082CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082CE8);
  }

  return result;
}

uint64_t sub_100013D40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100013D94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100013DAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100013DF0()
{
  result = qword_100082D08;
  if (!qword_100082D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100082D08);
  }

  return result;
}

uint64_t sub_100013E3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100013C98(result, a2);
  }

  return result;
}

uint64_t sub_100013E50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSInteraction.AnnotatedContent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013E94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100013EAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100013EB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100013F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100013F68(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_100013F98()
{
  v0 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];

  dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.setter();

  dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.setter();

  dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewProceedButtonTitle.setter();

  dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewDeclineButtonTitle.setter();
  dispatch thunk of FBKSLaunchConfiguration.skipsPrompt.setter();
  dispatch thunk of FBKSLaunchConfiguration.alwaysLaunchInRemoteAlert.setter();
  FBKSPromptStyle.rawValue.getter();
  result = FBKSPromptStyle.init(rawValue:)();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    dispatch thunk of FBKSLaunchConfiguration.promptStyle.setter();
    dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.setter();
    return v0;
  }

  return result;
}

uint64_t sub_100014070@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v32 = *v2;
  v5 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v31 = v2[1];
    object = *(&v31 + 1);
    v6 = v32;
    if (!*(&v31 + 1))
    {
      if ((a1 & 1) == 0)
      {
LABEL_13:
        sub_1000142C4(&v32, &v30);
        v18._countAndFlagsBits = 0xD000000000000018;
        v18._object = 0x800000010006B300;
        v19 = FBKSLocalizedString(key:)(v18);
        countAndFlagsBits = v19._countAndFlagsBits;
        object = v19._object;
        v30 = v2[2];
        v13 = *(&v30 + 1);
        if (*(&v30 + 1))
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

LABEL_7:
      sub_1000142C4(&v32, &v30);
      v10._object = 0x800000010006B3B0;
      v10._countAndFlagsBits = 0xD000000000000016;
      v11 = FBKSLocalizedString(key:)(v10);
      countAndFlagsBits = v11._countAndFlagsBits;
      object = v11._object;
      v30 = v2[2];
      v13 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {
        goto LABEL_12;
      }

LABEL_14:
      v20 = v30;
      sub_1000142C4(&v31, &v29);
      goto LABEL_17;
    }
  }

  else if (a1)
  {
    v8._countAndFlagsBits = 0xD000000000000014;
    v8._object = 0x800000010006B3D0;
    v9 = FBKSLocalizedString(key:)(v8);
    v6 = v9._countAndFlagsBits;
    v5 = v9._object;
    v31 = v2[1];
    object = *(&v31 + 1);
    if (!*(&v31 + 1))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14._object = 0x800000010006B2E0;
    v14._countAndFlagsBits = 0xD000000000000016;
    v15 = FBKSLocalizedString(key:)(v14);
    v6 = v15._countAndFlagsBits;
    v5 = v15._object;
    v31 = v2[1];
    object = *(&v31 + 1);
    if (!*(&v31 + 1))
    {
      goto LABEL_13;
    }
  }

  countAndFlagsBits = v31;
  sub_1000142C4(&v32, &v30);
  v30 = v2[2];
  v13 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    goto LABEL_14;
  }

  if ((a1 & 1) == 0)
  {
LABEL_15:
    v16 = "DEFAULT_FEEDBACK_MESSAGE";
    sub_1000142C4(&v31, &v29);
    v17 = 0xD00000000000002ALL;
    goto LABEL_16;
  }

LABEL_12:
  v16 = "_OR_SURVEY_DECLINE_BUTTON";
  sub_1000142C4(&v31, &v29);
  v17 = 0xD000000000000028;
LABEL_16:
  v21 = v16 | 0x8000000000000000;
  v22 = FBKSLocalizedString(key:)(*&v17);
  v20 = v22._countAndFlagsBits;
  v13 = v22._object;
LABEL_17:
  v29 = v2[3];
  v23 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v24 = v29;
    sub_1000142C4(&v30, v28);
  }

  else
  {
    sub_1000142C4(&v30, v28);
    v25._countAndFlagsBits = 0xD000000000000029;
    v25._object = 0x800000010006B350;
    v26 = FBKSLocalizedString(key:)(v25);
    v24 = v26._countAndFlagsBits;
    v23 = v26._object;
  }

  result = sub_1000142C4(&v29, v28);
  *a2 = v6;
  a2[1] = v5;
  a2[2] = countAndFlagsBits;
  a2[3] = object;
  a2[4] = v20;
  a2[5] = v13;
  a2[6] = v24;
  a2[7] = v23;
  return result;
}

uint64_t sub_1000142C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083D50, &qword_100068FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100014334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100014358(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_1000143B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100014430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v5 = type metadata accessor for FBKSForm.Question();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v42 - v10;
  v11 = sub_100004F70(&qword_100082D28, &qword_100069050);
  v12 = __chkstk_darwin(v11 - 8);
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  objc_allocWithZone(type metadata accessor for FBKSForm());

  v16 = FBKSForm.init(identifier:)();
  v17 = a4 + 64;
  v18 = 1 << *(a4 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a4 + 64);
  v43 = (v18 + 63) >> 6;
  v44 = v6 + 16;
  v53 = (v6 + 32);
  v47 = v6;
  v48 = a4;
  v49 = (v6 + 8);

  v22 = 0;
  v45 = v15;
  v50 = a4 + 64;
  v51 = v5;
  while (v20)
  {
    v23 = v22;
LABEL_15:
    v27 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = v27 | (v23 << 6);
    v30 = v47;
    v29 = v48;
    v31 = v46;
    (*(v47 + 16))(v46, *(v48 + 48) + *(v47 + 72) * v28, v5);
    v32 = *(*(v29 + 56) + 8 * v28);
    v33 = sub_100004F70(&qword_100082D30, &qword_100069058);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v36 = v52;
    v35(v52, v31, v5);
    *&v36[v34] = v32;
    v26 = v36;
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

    v15 = v45;
LABEL_16:
    sub_1000148B0(v26, v15);
    v37 = sub_100004F70(&qword_100082D30, &qword_100069058);
    if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
    {

      dispatch thunk of FBKSForm.authenticationMethod.setter();
      return v16;
    }

    v38 = *&v15[*(v37 + 48)];
    (*v53)(v9, v15, v5);
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = v38 + 40;
      do
      {

        dispatch thunk of FBKSForm.prefill(question:answer:)();

        v40 += 16;
        --v39;
      }

      while (v39);
    }

    v5 = v51;
    result = (*v49)(v9, v51);
    v17 = v50;
  }

  if (v43 <= v22 + 1)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v43;
  }

  v25 = v24 - 1;
  v26 = v52;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v43)
    {
      v41 = sub_100004F70(&qword_100082D30, &qword_100069058);
      (*(*(v41 - 8) + 56))(v26, 1, 1, v41);
      v20 = 0;
      v22 = v25;
      goto LABEL_16;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000148B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082D28, &qword_100069050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100014920(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001492C(uint64_t a1, int a2)
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

uint64_t sub_100014974(uint64_t result, int a2, int a3)
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

uint64_t CFBBiomeDonator.__allocating_init()()
{
  v0 = swift_allocObject();
  CFBBiomeDonator.init()();
  return v0;
}

void *CFBBiomeDonator.init()()
{
  swift_defaultActor_initialize();
  v1 = [BiomeLibrary() Feedback];
  swift_unknownObjectRelease();
  v2 = [v1 EvaluationResponse];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  v0[14] = v3;
  v4 = [BiomeLibrary() Feedback];
  swift_unknownObjectRelease();
  v5 = [v4 TextToTextEvaluationData];
  swift_unknownObjectRelease();
  v6 = [v5 source];

  v0[15] = v6;
  v7 = [BiomeLibrary() Feedback];
  swift_unknownObjectRelease();
  v8 = [v7 TextToImageEvaluationData];
  swift_unknownObjectRelease();
  v9 = [v8 source];

  v0[16] = v9;
  v10 = [BiomeLibrary() Feedback];
  swift_unknownObjectRelease();
  v11 = [v10 TextImageToImageEvaluationData];
  swift_unknownObjectRelease();
  v12 = [v11 source];

  v0[17] = v12;
  return v0;
}

void CFBBiomeDonator.write(donation:)(void *a1)
{
  sub_100013608(a1);
  if (!v2)
  {
    v4 = sub_10002F1B8();
    if (v4)
    {
      if (v4 == 1)
      {
        sub_100008714(0, &qword_100082D40, BMFeedbackTextToImageEvaluationData_ptr);
        v5 = sub_10002FED8(a1);
        v6 = v1[16];
      }

      else
      {
        sub_100008714(0, &qword_100082D38, BMFeedbackTextImageToImageEvaluationData_ptr);
        v5 = sub_1000303F0(a1);
        v6 = v1[17];
      }
    }

    else
    {
      sub_100008714(0, &qword_100082D48, BMFeedbackTextToTextEvaluationData_ptr);
      v5 = sub_10002FE9C(a1);
      v6 = v1[15];
    }

    [v6 sendEvent:v5];
  }
}

void CFBBiomeDonator.write(evaluation:)(void *a1)
{
  v3 = v1;
  sub_100008714(0, &qword_100082D50, BMFeedbackEvaluationResponse_ptr);
  v5 = sub_1000308C0(a1);
  if (!v2)
  {
    v6 = v5;
    [*(v3 + 112) sendEvent:v5];
  }
}

void CFBBiomeDonator.invalidate(evaluationID:)()
{
  v1 = v0;
  v2 = objc_allocWithZone(BMFeedbackEvaluationResponse);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithEvaluationUuid:isa userResponse:6];

  [*(v1 + 112) sendEvent:v4];
}

uint64_t CFBBiomeDonator.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100014ED4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004F70(&qword_100082E60, &unk_100069158);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_100007018(*(a1 + 56) + 32 * v12, v32);
        *&v31 = v14;
        *(&v31 + 1) = v15;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v16 = v31;
        sub_100007274(v30, &v23);

        sub_100004F70(&qword_100082860, &unk_1000683C0);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_10005BCB0(v16, *(&v16 + 1));
        if (v17)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          result = sub_1000160C4(&v24, v2[7] + 32 * v9);
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          v18 = (v2[7] + 32 * result);
          v19 = v25;
          *v18 = v24;
          v18[1] = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100015148(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004F70(&unk_100083D30, &qword_100069138);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100007274(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100007274(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100007274(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100015410(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004F70(&qword_100082E38, &qword_100069128);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100007274(&v22, v24);
        sub_100007274(v24, v25);
        sub_100007274(v25, &v23);
        result = sub_10005BCB0(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100005ED8(v11);
          result = sub_100007274(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100007274(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100015668(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v3 = 0xD000000000000016;
    if (a1 != 2)
    {
      v3 = 0xD000000000000048;
    }

    v4 = 0xD000000000000012;
    if (!a1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      _StringGuts.grow(_:)(29);

      v5._countAndFlagsBits = static Strings.fbaBundleIdentifier.getter();
      String.append(_:)(v5);

      return 0xD00000000000001BLL;
    }
  }

  else
  {
    v1 = 0xD00000000000002DLL;
    if (a1 != 7)
    {
      v1 = 0xD00000000000001FLL;
    }

    if (a1 == 6)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1000157FC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100015E48(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100015834(uint64_t a1)
{
  v2 = sub_1000161A0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100015870(uint64_t a1)
{
  v2 = sub_1000161A0();
  v3 = sub_1000161F4();
  v4 = sub_100007EA4();

  return Error<>._code.getter(a1, v2, v3, v4);
}

unint64_t sub_1000158E0()
{
  v1 = *v0;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = sub_100015668(v1);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_100015ADC(inited);
  swift_setDeallocating();
  sub_1000071C8(inited + 32, &qword_100082E58, &qword_100069150);
  return v6;
}

unint64_t sub_1000159A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004F70(&unk_100083D30, &qword_100069138);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C0A0(v4, v13, &unk_100083920, qword_1000693D0);
      result = sub_10005BC6C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007274(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100015ADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004F70(&qword_100082E38, &qword_100069128);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C0A0(v4, &v13, &qword_100082E58, &qword_100069150);
      v5 = v13;
      v6 = v14;
      result = sub_10005BCB0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007274(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100015C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004F70(&qword_100082E40, &qword_100069130);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10005BCB0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100015D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004F70(&qword_100082E48, &qword_100069140);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C0A0(v4, &v11, &qword_100082E50, &qword_100069148);
      v5 = v11;
      result = sub_10005BD28(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007274(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100015E48(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

id sub_100015E58(uint64_t a1, unint64_t a2)
{
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, SharedLog);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000049B8(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  sub_100004F70(&qword_100082E30, &qword_100069120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v11 = sub_100015C0C(inited);
  swift_setDeallocating();
  sub_1000071C8(inited + 32, &qword_100083430, &qword_1000696F0);
  static Strings.Daemon.errorDomain.getter();
  sub_100015410(v11);

  v12 = objc_allocWithZone(NSError);
  v13 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithDomain:v13 code:0 userInfo:isa];

  return v15;
}

uint64_t sub_1000160C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082860, &unk_1000683C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001614C()
{
  result = qword_100082E68;
  if (!qword_100082E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082E68);
  }

  return result;
}

unint64_t sub_1000161A0()
{
  result = qword_100082E70;
  if (!qword_100082E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082E70);
  }

  return result;
}

unint64_t sub_1000161F4()
{
  result = qword_100082E78;
  if (!qword_100082E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082E78);
  }

  return result;
}

uint64_t sub_100016248(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100018BB8(&qword_100082EB8, &type metadata accessor for FBKSInteraction.FeatureDomain, &protocol conformance descriptor for FBKSInteraction.FeatureDomain), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100018BB8(&qword_100082EC0, &type metadata accessor for FBKSInteraction.FeatureDomain, &protocol conformance descriptor for FBKSInteraction.FeatureDomain);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100016460()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082E88);
  sub_100002D00(v0, qword_100082E88);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000164D4()
{
  sub_100004F70(&qword_100082EC8, &qword_1000692F8);
  v0 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000692D0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for FBKSInteraction.FeatureDomain.mailSummarization(_:), v0);
  v6(v5 + v2, enum case for FBKSInteraction.FeatureDomain.messagesSummarization(_:), v0);
  v7 = sub_10001796C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100082EA0 = v7;
  return result;
}

uint64_t sub_100016618()
{
  v1 = v0;
  v2 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000192A8(v1, v8, type metadata accessor for CFBDonationCheck.Result.Invalid);
  v9 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return 0x676E696C706D6173;
  }

  v11 = &v8[*(v9 + 48)];
  v12 = *v11;
  v13 = v11[1];
  (*(v3 + 32))(v5, v8, v2);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v14 = FBKSInteraction.FeatureDomain.description.getter();
  v16 = v15;

  v20 = v14;
  v21 = v16;
  v17._object = 0x800000010006B5E0;
  v17._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v12;
  v18._object = v13;
  String.append(_:)(v18);

  v10 = v20;
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_10001687C()
{
  v1 = v0;
  v2 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000192A8(v1, v8, type metadata accessor for CFBDonationCheck.Result);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0x64696C6176;
  }

  sub_100019310(v8, v6);
  v10 = sub_100016618();
  sub_100019374(v6);
  return v10;
}

uint64_t sub_1000169E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004F70(&qword_100082CD0, &qword_100068EC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  dispatch thunk of FBKSInteraction.originalAnnotatedContent.getter();
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000071C8(v8, &qword_100082CD0, &qword_100068EC0);
    v12 = type metadata accessor for FBKSInteraction.Content();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v11, 1, 1, v12);
    dispatch thunk of FBKSInteraction.originalContent.getter();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result != 1)
    {
      return sub_1000071C8(v11, &qword_100082CD8, &qword_100068EC8);
    }
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1000071C8(v8, &qword_100082CD0, &qword_100068EC0);
    FBKSInteraction.AnnotatedContent.payload.getter();
    (*(v3 + 8))(v5, v2);
    v15 = type metadata accessor for FBKSInteraction.Content();
    v16 = *(v15 - 8);
    v17 = *(v16 + 56);
    v17(v11, 0, 1, v15);
    (*(v16 + 32))(a1, v11, v15);
    return (v17)(a1, 0, 1, v15);
  }

  return result;
}

uint64_t sub_100016D08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100016DC8, 0, 0);
}

uint64_t sub_100016DC8()
{
  v35 = v0;
  v1 = sub_1000175C0(0x20000000000001uLL);
  if (v1 != 0x20000000000000 && vcvtd_n_f64_u64(v1, 0x35uLL) > 1.0)
  {
    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100002D00(v2, qword_100082E88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Dropping donation due to sampling rate", v5, 2u);
    }

    v6 = v0[2];

    v7 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = 0;
    goto LABEL_19;
  }

  if (qword_1000825E8 != -1)
  {
    swift_once();
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  v12 = qword_100082EA0;
  dispatch thunk of FBKSInteraction.featureDomain.getter();
  v13 = sub_100016248(v9, v12);
  v14 = *(v10 + 8);
  v14(v9, v11);
  if ((v13 & 1) == 0)
  {
    v8 = 1;
LABEL_19:
    v30 = v0[2];
    v31 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
    (*(*(v31 - 8) + 56))(v30, v8, 1, v31);

    v32 = v0[1];

    return v32();
  }

  if (qword_1000825E0 != -1)
  {
    swift_once();
  }

  v15 = v0[3];
  v16 = type metadata accessor for Logger();
  v0[7] = sub_100002D00(v16, qword_100082E88);
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[6];
    v21 = v0[4];
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v22 = 136315138;
    dispatch thunk of FBKSInteraction.featureDomain.getter();
    sub_100018BB8(&qword_100082EB0, &type metadata accessor for FBKSInteraction.FeatureDomain, &protocol conformance descriptor for FBKSInteraction.FeatureDomain);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v14(v20, v21);
    v26 = sub_1000049B8(v23, v25, &v34);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Feature domain: %s is contained within domains to check spotlight index dupes, will validate", v22, 0xCu);
    sub_100005ED8(v33);
  }

  v27 = swift_task_alloc();
  v0[8] = v27;
  *v27 = v0;
  v27[1] = sub_100017244;
  v28 = v0[3];

  return sub_100018304(v28);
}

uint64_t sub_100017244(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return _swift_task_switch(sub_100017344, 0, 0);
}

uint64_t sub_100017344(uint64_t a1)
{
  v21 = v1;
  v2 = v1[10];
  if (v2)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v1[9];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000049B8(v5, v2, &v20);
      _os_log_impl(&_mh_execute_header, v3, v4, "Found duplicate donation ID: %s", v6, 0xCu);
      sub_100005ED8(v7);
    }

    v8 = v1[9];
    v9 = v1[2];
    v10 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
    v11 = (v9 + *(v10 + 48));
    dispatch thunk of FBKSInteraction.featureDomain.getter();
    *v11 = v8;
    v11[1] = v2;
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    v12 = 0;
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "SpotlightID is not a duplicate", v15, 2u);
    }

    v12 = 1;
  }

  v16 = v1[2];
  v17 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  (*(*(v17 - 8) + 56))(v16, v12, 1, v17);

  v18 = v1[1];

  return v18();
}

unint64_t sub_1000175C0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10001764C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100004F70(&qword_100082ED8, &qword_100069308);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100018BB8(&qword_100082EE0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100018BB8(&qword_100082EE8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10001796C(uint64_t a1)
{
  v2 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100004F70(&qword_100082ED0, &qword_100069300);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100018BB8(&qword_100082EB8, &type metadata accessor for FBKSInteraction.FeatureDomain, &protocol conformance descriptor for FBKSInteraction.FeatureDomain);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100018BB8(&qword_100082EC0, &type metadata accessor for FBKSInteraction.FeatureDomain, &protocol conformance descriptor for FBKSInteraction.FeatureDomain);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100017C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v4 = type metadata accessor for FBKSInteraction.StructuredValue();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  sub_1000169E8(&v44 - v18);
  sub_100018B48(v19, v17);
  v20 = type metadata accessor for FBKSInteraction.Content();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    sub_1000071C8(v17, &qword_100082CD8, &qword_100068EC8);
LABEL_10:
    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100002D00(v30, qword_100082E88);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "donation has no structured content", v33, 2u);
    }

    goto LABEL_15;
  }

  if ((*(v21 + 88))(v17, v20) != enum case for FBKSInteraction.Content.structured(_:))
  {
    (*(v21 + 8))(v17, v20);
    goto LABEL_10;
  }

  (*(v21 + 96))(v17, v20);
  (*(v5 + 32))(v13, v17, v4);
  v22 = *(v5 + 16);
  v22(v11, v13, v4);
  v46 = *(v5 + 88);
  if (v46(v11, v4) == enum case for FBKSInteraction.StructuredValue.dictionary(_:))
  {
    v45 = v5;
    v44 = *(v5 + 96);
    v44(v11, v4);
    v23 = *v11;
    if (*(v23 + 16) && (v24 = sub_10005BCB0(a2, v47), (v25 & 1) != 0))
    {
      v26 = v45;
      v22(v8, (*(v23 + 56) + *(v45 + 72) * v24), v4);

      v27 = v46(v8, v4);
      v28 = *(v26 + 8);
      if (v27 == enum case for FBKSInteraction.StructuredValue.string(_:))
      {
        v28(v13, v4);
        sub_1000071C8(v19, &qword_100082CD8, &qword_100068EC8);
        v44(v8, v4);
        return *v8;
      }

      v39 = v26;
      v28(v8, v4);
    }

    else
    {

      v39 = v45;
    }

    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100002D00(v40, qword_100082E88);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "dictionary is not a string", v43, 2u);
    }

    (*(v39 + 8))(v13, v4);
  }

  else
  {
    v34 = *(v5 + 8);
    v34(v11, v4);
    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100002D00(v35, qword_100082E88);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "structured content is not a dictionary", v38, 2u);
    }

    v34(v13, v4);
  }

LABEL_15:
  sub_1000071C8(v19, &qword_100082CD8, &qword_100068EC8);
  return 0;
}

uint64_t sub_100018304(uint64_t a1)
{
  v1[14] = a1;
  v2 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000183C4, 0, 0);
}

uint64_t sub_1000183C4()
{
  v47 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  dispatch thunk of FBKSInteraction.featureDomain.getter();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for FBKSInteraction.FeatureDomain.mailSummarization(_:))
  {
    v5 = 0xEF4449746867696CLL;
    v6 = 0x746F70536C69616DLL;
  }

  else
  {
    if (v4 != enum case for FBKSInteraction.FeatureDomain.messagesSummarization(_:))
    {
      (*(v0[16] + 8))(v0[17], v0[15]);
      if (qword_1000825E0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100002D00(v40, qword_100082E88);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_34;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "donation duplicate key is nil";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v36, v37, v39, v38, 2u);

LABEL_34:

      goto LABEL_35;
    }

    v6 = 0xD000000000000012;
    v5 = 0x800000010006B600;
  }

  v7 = sub_100017C8C(v0[14], v6, v5);
  if (!v8)
  {

    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100002D00(v35, qword_100082E88);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_34;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "donation spotlightID is nil";
    goto LABEL_26;
  }

  v9 = v7;
  v10 = v8;
  if (qword_1000825E0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100002D00(v11, qword_100082E88);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v46[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000049B8(v9, v10, v46);
    _os_log_impl(&_mh_execute_header, v12, v13, "Will search for id: %s", v14, 0xCu);
    sub_100005ED8(v15);
  }

  v16 = [objc_allocWithZone(BMSQLDatabase) init];
  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(255);
  v17._countAndFlagsBits = 0xD0000000000000C7;
  v17._object = 0x800000010006B620;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v6;
  v18._object = v5;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD000000000000023;
  v19._object = 0x800000010006B6F0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x524548570A290A22;
  v21._object = 0xEE00223D64692045;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v9;
  v22._object = v10;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 34;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = BMSQLDatabase.execute(query:)();

  [v24 next];
  v25 = [v24 row];
  if (!v25)
  {

    v36 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "No duplicate row for spotlightID existed";
      goto LABEL_32;
    }

LABEL_33:

    goto LABEL_34;
  }

  v26 = v25;
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v0[11] = 0x746E756F63;
  v0[12] = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v27 + 16) || (v28 = sub_10005BC6C((v0 + 2)), (v29 & 1) == 0))
  {

    sub_100006FC4((v0 + 2));
    goto LABEL_28;
  }

  sub_100007018(*(v27 + 56) + 32 * v28, (v0 + 7));
  sub_100006FC4((v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_28:
    v36 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "duplicate row count existed, but count didn't exist";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v36, v41, v43, v42, 2u);

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v30 = v0[13];

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_1000049B8(v9, v10, v46);
    *(v33 + 12) = 2048;
    *(v33 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "Duplicate count for spotlightID %s is %ld", v33, 0x16u);
    sub_100005ED8(v34);
  }

  if (v30 <= 0)
  {

LABEL_35:
    v9 = 0;
    v10 = 0;
  }

  v44 = v0[1];

  return v44(v9, v10);
}