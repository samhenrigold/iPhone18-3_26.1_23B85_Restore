void sub_100001824(id a1)
{
  v1 = qword_100025930;
  qword_100025930 = &off_1000218C0;
}

uint64_t sub_100001948(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((*&v12 & 0x7FFF8) == 8)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

int main(int argc, const char **argv, const char **envp)
{
  if (qword_100025160 != -1)
  {
    swift_once();
  }

  v3 = qword_1000263E0;
  sub_100011470();
  sub_10001350C();
  sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v20 = sub_1000025B4;
  v21 = v5;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100002920;
  v19 = &unk_100020C40;
  v6 = _Block_copy(&v16);
  v7 = v3;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, v6);
  _Block_release(v6);

  [*&v7[OBJC_IVAR____TtC3tzd6Daemon_listener] resume];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v20 = sub_1000025D4;
  v21 = v8;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100002920;
  v19 = &unk_100020C90;
  v9 = _Block_copy(&v16);
  v10 = v7;

  xpc_activity_register("com.apple.timezoneupdates.local-asset-check", XPC_ACTIVITY_CHECK_IN, v9);
  _Block_release(v9);
  v20 = sub_100011150;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100002920;
  v19 = &unk_100020CB8;
  v11 = _Block_copy(&v16);
  xpc_activity_register("com.apple.timezoneupdates.stale-data-cleanup", XPC_ACTIVITY_CHECK_IN, v11);
  _Block_release(v11);
  v12 = static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("tzd initialization complete; starting run loop", 46, 2, &_mh_execute_header, v13, v12, _swiftEmptyArrayStorage);

  v14 = [objc_opt_self() mainRunLoop];
  [v14 run];

  return 0;
}

uint64_t sub_100001FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100002090(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002108(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002188@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_1000021CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002204@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002230(uint64_t a1)
{
  v2 = sub_100002778(&qword_100025238, type metadata accessor for FileAttributeKey, &unk_100019250);
  v3 = sub_100002778(&unk_100025240, type metadata accessor for FileAttributeKey, &unk_10001904C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000022EC@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100002334(uint64_t a1)
{
  v2 = sub_100002778(&qword_100025228, type metadata accessor for FileProtectionType, &unk_1000191C0);
  v3 = sub_100002778(&qword_100025230, type metadata accessor for FileProtectionType, &unk_100019160);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000023F0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000242C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002480(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_1000024F4(void *a1, uint64_t *a2)
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

uint64_t sub_10000257C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000025BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000025DC(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_10000269C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10000292C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100002948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_100002990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000029F0()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  if (*v0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v0[1] == 0xE000000000000000;
  }

  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = !v2 && v3 == 0xE000000000000000;
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0;
    }
  }

  if (!v2 && v3 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {

    v6._countAndFlagsBits = 46;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v2;
    v7._object = v3;
    String.append(_:)(v7);
  }

  return v1;
}

id sub_100002B00(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_100002C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  sub_100003C28(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    URL.appendingPathComponent(_:)();
    v25 = objc_allocWithZone(NSDictionary);
    v26 = sub_100002B00(v11);
    strcpy(&v52, "DataVersion");
    HIDWORD(v52) = -352321536;
    v27 = [v26 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v27)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    v58 = v52;
    v59 = v53;
    v43 = a1;
    v44 = v26;
    if (*(&v53 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_28:
        LODWORD(v45) = static os_log_type_t.error.getter();
        sub_100003BE0(&qword_1000252B8, &qword_100019310);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1000192B0;
        *(v31 + 56) = sub_1000025DC(0, &qword_1000252E0, NSDictionary_ptr);
        *(v31 + 64) = sub_100003D00(&qword_1000252E8, &qword_1000252E0, NSDictionary_ptr);
        v32 = v44;
        *(v31 + 32) = v44;
        v33 = v32;
        URL._bridgeToObjectiveC()(v34);
        v36 = v35;
        *(v31 + 96) = sub_1000025DC(0, &qword_1000252C0, NSURL_ptr);
        *(v31 + 104) = sub_100003D00(&qword_1000252C8, &qword_1000252C0, NSURL_ptr);
        *(v31 + 72) = v36;
        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v37 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)("Version plist %{public}@ fetched from %{public}@ is invalid", 59, 2, &_mh_execute_header, v37, v45, v31);

        sub_1000041E8(v43, &qword_1000252B0, &qword_100019308);
        result = (*(v8 + 8))(v13, v7);
        v15 = 0;
        v17 = 0;
        v20 = 0;
        v21 = 0;
        v18 = 0;
        v19 = 0;
        goto LABEL_29;
      }

      v15 = v50;
      v17 = v51;
      strcpy(&v52, "BundleVersion");
      HIWORD(v52) = -4864;
      v28 = [v44 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v28)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v58 = v52;
      v59 = v53;
      if (*(&v53 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_32:

          goto LABEL_28;
        }

        v42 = v13;
        v20 = v50;
        v21 = v51;
        *&v52 = 0xD000000000000012;
        *(&v52 + 1) = 0x80000001000199D0;
        v29 = [v44 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v29)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v58 = v52;
        v59 = v53;
        v13 = v42;
        if (*(&v53 + 1))
        {
          if (swift_dynamicCast())
          {
            v45 = v7;
            v18 = v50;
            v19 = v51;
            strcpy(&v52, "AlertZones");
            BYTE11(v52) = 0;
            HIDWORD(v52) = -369098752;
            v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            v30 = [v44 __swift_objectForKeyedSubscript:v41];
            swift_unknownObjectRelease();
            if (v30)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v52 = 0u;
              v53 = 0u;
            }

            v58 = v52;
            v59 = v53;
            if (*(&v53 + 1))
            {
              sub_100003BE0(&qword_1000252F0, &qword_100019320);
              if ((swift_dynamicCast() & 1) == 0)
              {
LABEL_46:

                goto LABEL_47;
              }

              v24 = v50;
              strcpy(&v58, "ShouldAlertAll");
              HIBYTE(v58) = -18;
              v40 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
              v41 = [v44 __swift_objectForKeyedSubscript:v40];
              swift_unknownObjectRelease();
              if (v41)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v47 = 0u;
                v48 = 0u;
              }

              v49[0] = v47;
              v49[1] = v48;
              if (*(&v48 + 1))
              {
                sub_1000025DC(0, &qword_1000252F8, NSNumber_ptr);
                if (swift_dynamicCast())
                {
                  v40 = v46;
                  LODWORD(v41) = [v46 BOOLValue];

                  sub_1000041E8(v43, &qword_1000252B0, &qword_100019308);
                  (*(v8 + 8))(v42, v45);
                  *&v52 = v15;
                  *(&v52 + 1) = v17;
                  *&v53 = v20;
                  *(&v53 + 1) = v21;
                  v54 = v18;
                  v55 = v19;
                  v56 = v24;
                  v57 = v41;
                  v22 = v41;
                  *&v58 = v15;
                  *(&v58 + 1) = v17;
                  *&v59 = v20;
                  *(&v59 + 1) = v21;
                  v60 = v18;
                  v61 = v19;
                  v62 = v24;
                  v63 = v41;
                  sub_100003C98(&v52, &v50);
                  result = sub_100003CD0(&v58);
                  goto LABEL_30;
                }

                goto LABEL_46;
              }

              v38 = v49;
            }

            else
            {

              v38 = &v58;
            }

            sub_1000041E8(v38, &qword_1000252D8, &qword_100019318);
LABEL_47:
            v7 = v45;
            v13 = v42;
            goto LABEL_28;
          }

          goto LABEL_32;
        }
      }
    }

    sub_1000041E8(&v58, &qword_1000252D8, &qword_100019318);
    goto LABEL_28;
  }

  sub_1000041E8(v6, &qword_1000252B0, &qword_100019308);
  v14 = [objc_opt_self() timeZoneDataVersion];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1000251B0 != -1)
  {
    swift_once();
  }

  v18 = qword_100026478;
  v19 = qword_100026480;

  sub_1000041E8(a1, &qword_1000252B0, &qword_100019308);
  if (!v19)
  {

    v15 = 0;
    v17 = 0;
    v20 = 0;
    v21 = 0;
    v18 = 0;
LABEL_29:
    v24 = 0;
    v22 = 0;
    goto LABEL_30;
  }

  *&v52 = v15;
  *(&v52 + 1) = v17;
  v20 = 3157553;
  v21 = 0xE300000000000000;
  *&v53 = 3157553;
  *(&v53 + 1) = 0xE300000000000000;
  v54 = v18;
  v55 = v19;
  v56 = 0;
  v22 = 256;
  v57 = 256;
  *&v58 = v15;
  *(&v58 + 1) = v17;
  *&v59 = 3157553;
  *(&v59 + 1) = 0xE300000000000000;
  v60 = v18;
  v61 = v19;
  v62 = 0;
  v63 = 256;
  sub_100003C98(&v52, &v50);
  result = sub_100003CD0(&v58);
  v24 = 0;
LABEL_30:
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v20;
  *(a2 + 24) = v21;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = v24;
  *(a2 + 56) = v22;
  return result;
}

void sub_1000037D8(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = [objc_opt_self() defaultManager];
  if (qword_1000251A0 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  v31 = 0;
  v11 = [v9 destinationOfSymbolicLinkAtPath:v10 error:&v31];

  v12 = v31;
  if (!v11)
  {
    v17 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v18 = static os_log_type_t.fault.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Unable to determine current time zone version info; zoneinfo symlink broken", 75, 2, &_mh_execute_header, v19, v18, &_swiftEmptyArrayStorage);
LABEL_15:

    v26 = 0;
    v25 = 0;
    v23 = 0;
    v21 = 0;
    v28 = 0;
    v27 = 0;
    v20 = 0xE000000000000000;
    v24 = 0xE000000000000000;
    v22 = 0xE000000000000000;
    goto LABEL_16;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = v12;

  if (qword_100025170 != -1)
  {
    swift_once();
  }

  if (v13 == qword_1000263F8 && v15 == unk_100026400 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    (*(v3 + 56))(v8, 1, 1, v2);
  }

  else
  {
    URL.init(fileURLWithPath:)();

    URL.deletingLastPathComponent()();
    (*(v3 + 8))(v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
  }

  sub_100002C4C(v8, &v31);
  v20 = v32;
  if (!v32)
  {
    v29 = static os_log_type_t.error.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Unable to determine current time zone version info", 50, 2, &_mh_execute_header, v19, v29, &_swiftEmptyArrayStorage);
    goto LABEL_15;
  }

  v22 = v36;
  v21 = v37;
  v24 = v34;
  v23 = v35;
  v25 = v33;
  v26 = v31;
  v27 = v39;
  v28 = v38;
LABEL_16:
  *a1 = v26;
  *(a1 + 8) = v20;
  *(a1 + 16) = v25;
  *(a1 + 24) = v24;
  *(a1 + 32) = v23;
  *(a1 + 40) = v22;
  *(a1 + 48) = v21;
  *(a1 + 56) = v28 & 1;
  *(a1 + 57) = v27 & 1;
}

uint64_t sub_100003BE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003D00(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000025DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003D50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = [objc_opt_self() defaultManager];
  if (qword_100025188 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  *&v19[0] = 0;
  v7 = [v5 destinationOfSymbolicLinkAtPath:v6 error:v19];

  v8 = *&v19[0];
  if (v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    URL.init(fileURLWithPath:)();

    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    result = sub_100002C4C(v4, v19);
    v12 = v19[0];
    v13 = v19[1];
    v14 = v19[2];
    v15 = v20;
    v16 = v21;
  }

  else
  {
    v17 = *&v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = 0;
    v16 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  return result;
}

uint64_t sub_100003F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  sub_1000037D8(v23);
  result = sub_100003D50(&v31);
  if (v32)
  {
    v35[0] = v31;
    v35[1] = v32;
    v36 = v33;
    *v37 = v34[0];
    *&v37[10] = *(v34 + 10);
    v6 = sub_1000029F0();
    v8 = v7;
    v9 = sub_1000029F0();
    v22[2] = v6;
    v22[3] = v8;
    v22[0] = v9;
    v22[1] = v10;
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_100004194();
    v12 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000041E8(v4, &unk_100025840, &unk_1000194B0);

    if (v12 == -1)
    {
      result = sub_100003CD0(v23);
      v13 = v37[25];
      v14 = v37[24];
      v16 = *&v37[8];
      v15 = *&v37[16];
      v18 = *(&v36 + 1);
      v17 = *v37;
      v19 = v35;
      v20 = v36;
      goto LABEL_6;
    }

    result = sub_1000041E8(&v31, &qword_100025300, qword_100019328);
  }

  v13 = v30;
  v14 = v29;
  v16 = v27;
  v15 = v28;
  v18 = v25;
  v17 = v26;
  v19 = v23;
  v20 = v24;
LABEL_6:
  v21 = v19[1];
  *a1 = *v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v16;
  *(a1 + 48) = v15;
  *(a1 + 56) = v14;
  *(a1 + 57) = v13;
  return result;
}

unint64_t sub_100004194()
{
  result = qword_100025850;
  if (!qword_100025850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025850);
  }

  return result;
}

uint64_t sub_1000041E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003BE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t *sub_100004248(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  sub_10000532C(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000609C(i, v9);
      sub_100003BE0(&qword_1000252D8, &qword_100019318);
      sub_100003BE0(&qword_100025310, &qword_100019358);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000532C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100004388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v41 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v39 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    swift_errorRetain();
    v36 = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100019340;
    v15 = _convertErrorToNSError(_:)();
    *(v14 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v14 + 64) = sub_100003D00(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
    *(v14 + 32) = v15;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("timeZonesForCurrentClockWidgets() returned error %{public}@", 59, 2, &_mh_execute_header, v16, v36, v14);
  }

  if (a1)
  {
    aBlock[0] = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    v17 = aBlock[0];
    if (aBlock[0])
    {
      swift_beginAccess();
      sub_10000F0B0(v17);
      swift_endAccess();
    }

    else
    {
      v22 = a1;
      v36 = static os_log_type_t.fault.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100019340;
      *(v23 + 56) = sub_1000025DC(0, &qword_100025328, NSArray_ptr);
      *(v23 + 64) = sub_100003D00(&qword_100025330, &qword_100025328, NSArray_ptr);
      *(v23 + 32) = v22;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v24 = v22;
      v25 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Widget zones returned as unexpected type %@", 43, 2, &_mh_execute_header, v25, v36, v23);
    }

    v26 = static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100019340;
    swift_beginAccess();
    v28 = *(a4 + 16);
    *(v27 + 56) = sub_100003BE0(&qword_100025338, &qword_100019370);
    *(v27 + 64) = sub_100006204(&qword_100025340, &qword_100025338, &qword_100019370, &protocol conformance descriptor for [A]);
    *(v27 + 32) = v28;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

    v29 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("World clock time zones: %@", 26, 2, &_mh_execute_header, v29, v26, v27);

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    v31[2] = v41;
    v31[3] = a6;
    v31[4] = a4;
    v31[5] = a2;
    aBlock[4] = sub_1000061A0;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F608;
    aBlock[3] = &unk_100020F30;
    v32 = _Block_copy(aBlock);
    swift_errorRetain();

    v33 = v37;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000061AC();
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378, &protocol conformance descriptor for [A]);
    v34 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v11 + 8))(v34, v10);
    return (*(v38 + 8))(v33, v40);
  }

  else
  {
    v18 = static os_log_type_t.error.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Widget zones returned as nil", 28, 2, &_mh_execute_header, v19, v18, &_swiftEmptyArrayStorage);

    swift_beginAccess();

    v41(v20, a2);
  }
}

uint64_t sub_100004A50(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  a1(v6, a4);
}

void sub_100004ACC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100004B58(char a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  v12 = __chkstk_darwin(v11 - 8);
  if (a1)
  {
    v45 = v6;
    v46 = a3;
    v47 = a2;
    v43 = [objc_allocWithZone(UNMutableNotificationContent) init];
    aBlock = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x8000000100019B90;
    String.append(_:)(v13);
    v14._object = 0x8000000100019BC0;
    v14._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0x656C646E75622ELL;
    v15._object = 0xE700000000000000;
    String.append(_:)(v15);
    v16 = objc_allocWithZone(NSBundle);
    v17 = String._bridgeToObjectiveC()();

    v18 = [v16 initWithPath:v17];

    if (!v18)
    {
      v19 = static os_log_type_t.fault.getter();
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v20 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Could not locate bundle", 23, 2, &_mh_execute_header, v20, v19, &_swiftEmptyArrayStorage);
    }

    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = CFPreferencesCopyValue(v21, kCFPreferencesAnyApplication, v22, kCFPreferencesAnyHost);

    if (v23)
    {
      aBlock = v23;
      sub_100003BE0(&qword_100025338, &qword_100019370);
      swift_dynamicCast();
    }

    v44 = v7;
    v42 = v9;
    if (v18)
    {
      v24 = v18;
      isa = [v24 localizations];
      if (!isa)
      {
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v26 = objc_opt_self();
      v27 = Array._bridgeToObjectiveC()().super.isa;

      v28 = [v26 preferredLocalizationsFromArray:isa forPreferences:v27];

      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v29 + 16))
      {
      }
    }

    else
    {
    }

    String.LocalizationValue.init(stringLiteral:)();
    v30 = v18;
    static Locale.current.getter();

    String.init(localized:table:bundle:localization:locale:comment:)();
    v31 = String._bridgeToObjectiveC()();

    v32 = v43;
    [v43 setTitle:v31];

    String.LocalizationValue.init(stringLiteral:)();
    v33 = v30;
    static Locale.current.getter();
    String.init(localized:table:bundle:localization:locale:comment:)();
    v34 = String._bridgeToObjectiveC()();

    [v32 setBody:v34];

    v35 = String._bridgeToObjectiveC()();
    [v32 setCategoryIdentifier:v35];

    [v32 setShouldSuppressDefaultAction:1];
    v36 = v42;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v44 + 8))(v36, v45);
    v37 = v32;
    v38 = String._bridgeToObjectiveC()();

    v39 = [objc_opt_self() requestWithIdentifier:v38 content:v37 trigger:0];

    if (qword_100025160 != -1)
    {
      swift_once();
    }

    v40 = *(qword_1000263E0 + OBJC_IVAR____TtC3tzd6Daemon_notificationCenter);
    v52 = sub_100012B94;
    v53 = 0;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1000052C0;
    v51 = &unk_100020F58;
    v41 = _Block_copy(&aBlock);
    [v40 addNotificationRequest:v39 withCompletionHandler:v41];
    _Block_release(v41);
    v47();
  }

  else
  {
    (a2)(v12);
  }
}

void sub_1000052C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void *sub_10000532C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000538C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000534C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000054C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000536C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000056E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000538C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003BE0(&qword_100025318, &qword_100019360);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100003BE0(&qword_100025310, &qword_100019358);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000054C0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003BE0(&qword_100025320, &qword_100019368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003BE0(&qword_1000252D8, &qword_100019318);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000055F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BE0(&qword_100025358, &qword_100019380);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000056E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BE0(&qword_100025750, &qword_100019388);
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

uint64_t sub_1000057F4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = sub_100005F48;
  v7[3] = v6;
  v7[4] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;

  v56 = a1;

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = CFPreferencesCopyValue(v9, v10, v11, kCFPreferencesAnyHost);

  if (!v12)
  {
    v23 = static os_log_type_t.info.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("World clock preferences missing", 31, 2, &_mh_execute_header, v24, v23, &_swiftEmptyArrayStorage);

    goto LABEL_37;
  }

  v54 = a2;
  v55 = a3;
  *&aBlock = v12;
  swift_unknownObjectRetain();
  sub_100003BE0(&qword_100025308, &qword_100019350);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v13 = v57;
  v14 = v57[2];
  if (v14)
  {
    sub_10000534C(0, v14, 0);
    v15 = 4;
    while (1)
    {
      v16 = v13[v15];
      if (!*(v16 + 16))
      {
        goto LABEL_9;
      }

      v17 = sub_100012E54(2037672291, 0xE400000000000000);
      if ((v18 & 1) == 0)
      {
        break;
      }

      sub_100006040(*(v16 + 56) + 32 * v17, &aBlock);

LABEL_10:
      v57 = &_swiftEmptyArrayStorage;
      v20 = *(&_swiftEmptyArrayStorage + 2);
      v19 = *(&_swiftEmptyArrayStorage + 3);
      if (v20 >= v19 >> 1)
      {
        sub_10000534C((v19 > 1), v20 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v20 + 1;
      v21 = &_swiftEmptyArrayStorage + 32 * v20;
      v22 = v60;
      *(v21 + 2) = aBlock;
      *(v21 + 3) = v22;
      ++v15;
      if (!--v14)
      {

        goto LABEL_16;
      }
    }

LABEL_9:
    aBlock = 0u;
    v60 = 0u;
    goto LABEL_10;
  }

LABEL_16:
  v25 = sub_100004248(&_swiftEmptyArrayStorage);

  if (!v25)
  {
LABEL_33:
    v40 = static os_log_type_t.error.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v41 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("World clock cities not in correct format", 40, 2, &_mh_execute_header, v41, v40, &_swiftEmptyArrayStorage);

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v27 = v25[2];
  if (!v27)
  {
    v29 = &_swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v28 = 0;
  v29 = &_swiftEmptyArrayStorage;
  do
  {
    v30 = v28;
    while (1)
    {
      if (v30 >= v25[2])
      {
        __break(1u);
        return result;
      }

      v31 = v25[v30 + 4];
      if (*(v31 + 16))
      {
        break;
      }

LABEL_21:
      if (v27 == ++v30)
      {
        goto LABEL_35;
      }
    }

    v32 = sub_100012E54(0x656E6F5A656D6974, 0xE800000000000000);
    if ((v33 & 1) == 0)
    {

      goto LABEL_21;
    }

    sub_100006040(*(v31 + 56) + 32 * v32, &aBlock);

    result = swift_dynamicCast();
    if ((result & 1) == 0 || !v58)
    {
      goto LABEL_21;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100015478(0, *(v29 + 2) + 1, 1, v29);
      v29 = result;
    }

    v35 = *(v29 + 2);
    v34 = *(v29 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v53 = v35 + 1;
      v38 = v29;
      v39 = *(v29 + 2);
      result = sub_100015478((v34 > 1), v35 + 1, 1, v38);
      v36 = v53;
      v35 = v39;
      v29 = result;
    }

    v28 = v30 + 1;
    *(v29 + 2) = v36;
    v37 = &v29[16 * v35];
    *(v37 + 4) = v57;
    *(v37 + 5) = v58;
  }

  while (v27 - 1 != v30);
LABEL_35:

  sub_10000F0B0(v29);
  swift_unknownObjectRelease();
LABEL_36:
  a2 = v54;
  a3 = v55;
LABEL_37:
  v42 = objc_allocWithZone(NSBundle);
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 initWithPath:v43];

  if (!v44)
  {
    goto LABEL_41;
  }

  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 classNamed:v45];

  if (!v46)
  {

LABEL_41:

    sub_1000166DC(v52, 0, v56, a2, a3);
  }

  swift_getObjCClassMetadata();
  v47 = [swift_getObjCClassFromMetadata() timeZonesForCurrentClockWidgets];
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v8;
  v48[4] = sub_100005F90;
  v48[5] = v7;
  v61 = sub_10000601C;
  v62 = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_100004ACC;
  *(&v60 + 1) = &unk_100020EE0;
  v49 = _Block_copy(&aBlock);
  v50 = v47;

  v51 = [v50 addCompletionBlock:v49];
  _Block_release(v49);
}

uint64_t sub_100005F10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005F50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005F9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005FD4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006040(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000609C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BE0(&qword_1000252D8, &qword_100019318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006110(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006158()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000061AC()
{
  result = qword_100025348;
  if (!qword_100025348)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025348);
  }

  return result;
}

uint64_t sub_100006204(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000625C()
{
  result = MobileGestalt_get_current_device();
  qword_1000263C0 = result;
  return result;
}

id sub_100006284()
{
  result = [v0 attributes];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    strcpy(v8, "BundleVersion");
    v8[7] = -4864;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_100012E10(v7), (v5 & 1) != 0))
    {
      sub_100006040(*(v3 + 56) + 32 * v4, v8);
      sub_10000C7AC(v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_10000C7AC(v7);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000063B8()
{
  v0 = [objc_allocWithZone(MADownloadOptions) init];
  [v0 setDiscretionary:0];
  result = [v0 setAllowsCellularAccess:1];
  qword_1000263C8 = v0;
  return result;
}

uint64_t sub_10000641C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = type metadata accessor for NSFastEnumerationIterator();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for URL();
  v37 = *(v39 - 8);
  v9 = __chkstk_darwin(v39);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = v34 - v12;
  type metadata accessor for FileAttributeKey(0);
  sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey, &unk_100019250);
  v38 = a1;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  *&v42[0] = 0;
  v15 = [v4 setAttributes:isa ofItemAtPath:v14 error:v42];

  if (v15)
  {
    v16 = *&v42[0];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v4 enumeratorAtPath:v17];

    if (v18)
    {
      URL.init(fileURLWithPath:)();
      v34[0] = v18;
      NSEnumerator.makeIterator()();
      NSFastEnumerationIterator.next()();
      if (v46)
      {
        v19 = (v37 + 8);
        while (1)
        {
          sub_10000D140(v45, v44);
          sub_100006040(v44, v42);
          if (!swift_dynamicCast())
          {
            break;
          }

          v20 = Dictionary._bridgeToObjectiveC()().super.isa;
          URL.appendingPathComponent(_:)();

          URL.path.getter();
          v21 = *v19;
          (*v19)(v11, v39);
          v22 = String._bridgeToObjectiveC()();

          *&v42[0] = 0;
          v23 = [v4 setAttributes:v20 ofItemAtPath:v22 error:v42];

          if ((v23 & 1) == 0)
          {
            v32 = *&v42[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_10000D1A8(v44);
            (*(v35 + 8))(v40, v36);
            return v21(v41, v39);
          }

          v24 = *&v42[0];
          sub_10000D1A8(v44);
          NSFastEnumerationIterator.next()();
          if (!v46)
          {
            goto LABEL_8;
          }
        }

        v30 = static os_log_type_t.fault.getter();
        sub_100003BE0(&qword_1000252B8, &qword_100019310);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100019340;
        sub_100006040(v44, &v43);
        sub_100003BE0(&qword_100025508, &qword_1000194F8);
        if (swift_dynamicCast())
        {
          sub_10000D128(v42, v31 + 32);
        }

        else
        {
          *(v31 + 56) = &type metadata for String;
          *(v31 + 64) = sub_10000C674();
          *(v31 + 32) = 0x6E776F6E6B6E7528;
          *(v31 + 40) = 0xE900000000000029;
        }

        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v33 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)("FileManager.enumerator returned non-String %{public}@", 53, 2, &_mh_execute_header, v33, v30, v31);

        [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:256 userInfo:0];
        swift_willThrow();

        sub_10000D1A8(v44);
        (*(v35 + 8))(v40, v36);
        return (*v19)(v41, v39);
      }

      else
      {
LABEL_8:

        (*(v35 + 8))(v40, v36);
        return (*(v37 + 8))(v41, v39);
      }
    }

    else
    {
      v27 = static os_log_type_t.fault.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100019340;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_10000C674();
      *(v28 + 32) = a2;
      *(v28 + 40) = a3;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

      v29 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Could not create file enumerator for path %{public}@", 52, 2, &_mh_execute_header, v29, v27, v28);

      [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:256 userInfo:0];
      return swift_willThrow();
    }
  }

  else
  {
    v26 = *&v42[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

unint64_t MADownloadResult.debugDescription.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(20);

  v1 = MAStringForMADownloadResult();
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = v3;
  }

  else
  {
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v7;
  }

  v8 = v5;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0xD000000000000011;
}

uint64_t sub_100006CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  _StringGuts.grow(_:)(17);

  v6 = a3(a1);
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = v8;
  }

  else
  {
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v12;
  }

  v13 = v10;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return a2;
}

uint64_t sub_100006DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100025140 != -1)
  {
    swift_once();
  }

  result = qword_1000263C0;
  if (qword_1000263C0)
  {
    result = MobileGestalt_get_internalBuild();
  }

  byte_1000263D0 = result;
  return result;
}

void *sub_100006E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100025150 != -1)
  {
    swift_once();
  }

  if (byte_1000263D0 == 1)
  {
    v3 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 256);
    result = dlsym(v3, "SimulateCrash");
  }

  else
  {
    result = 0;
  }

  off_1000263D8 = result;
  return result;
}

void sub_100006E94(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100025150 != -1)
  {
    v42 = a1;
    swift_once();
    a1 = v42;
  }

  if (byte_1000263D0 == 1)
  {
    if (qword_100025158 != -1)
    {
      v43 = a1;
      swift_once();
      a1 = v43;
    }

    v3 = off_1000263D8;
    if (off_1000263D8)
    {
      v4 = a1;
      v5 = [a1 userInfo];
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v6 + 16) && (v7 = sub_100012E54(0x6150656C6946534ELL, 0xEA00000000006874), (v8 & 1) != 0))
      {
        sub_100006040(*(v6 + 56) + 32 * v7, v45);

        sub_1000025DC(0, &qword_100025510, NSString_ptr);
        if (swift_dynamicCast())
        {
          v9 = [v44 stringByDeletingLastPathComponent];
          v10 = v9;
          v11 = v9;
          if (!v9)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v11 = String._bridgeToObjectiveC()();

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v10 = String._bridgeToObjectiveC()();
          }

          v12 = objc_opt_self();
          v13 = v9;
          v14 = [v12 defaultManager];
          v45[0] = 0;
          v15 = [v14 contentsOfDirectoryAtPath:v11 error:v45];

          v16 = v45[0];
          if (v15)
          {
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v16;
          }

          else
          {
            v18 = v45[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v19 = [v12 defaultManager];
          v45[0] = 0;
          v20 = [v19 attributesOfItemAtPath:v44 error:v45];

          v21 = v45[0];
          if (v20)
          {
            type metadata accessor for FileAttributeKey(0);
            sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey, &unk_100019250);
            static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;
          }

          else
          {
            v23 = v45[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v24 = [v12 defaultManager];
          v45[0] = 0;
          v25 = [v24 attributesOfItemAtPath:v10 error:v45];

          v26 = v45[0];
          if (v25)
          {
            type metadata accessor for FileAttributeKey(0);
            sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey, &unk_100019250);
            static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;
          }

          else
          {
            v28 = v45[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v29 = getpid();
          v45[0] = 0;
          v45[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(82);
          v30 = [v4 description];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v34._countAndFlagsBits = v31;
          v34._object = v33;
          String.append(_:)(v34);

          v35._countAndFlagsBits = 0xD00000000000001BLL;
          v35._object = 0x800000010001A3A0;
          String.append(_:)(v35);
          sub_100003BE0(&qword_100025518, &qword_100019500);
          v36._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v36);

          v37._countAndFlagsBits = 0xD00000000000001ALL;
          v37._object = 0x800000010001A3C0;
          String.append(_:)(v37);
          v38._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v38);

          v39._object = 0x800000010001A3E0;
          v39._countAndFlagsBits = 0xD000000000000015;
          String.append(_:)(v39);
          sub_100003BE0(&qword_100025520, &qword_100019508);
          v40._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v40);

          v41 = String._bridgeToObjectiveC()();

          v3(v29, 0, v41);
        }
      }

      else
      {
      }
    }
  }
}

Swift::Int sub_1000074C0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000752C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000758C()
{
  v0 = String.utf8CString.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_10000BDB0(v0);
  }

  if (!mkdtemp((v0 + 32)))
  {
    v12 = NSPOSIXErrorDomain;
    [objc_allocWithZone(NSError) initWithDomain:v12 code:errno.getter() userInfo:0];

LABEL_9:
    swift_willThrow();
  }

  String.init(validatingUTF8:)();
  if (!v1)
  {
    sub_10000D1F4();
    swift_allocError();
    goto LABEL_9;
  }

  v2 = [objc_opt_self() defaultManager];
  sub_100003BE0(&qword_1000254E8, &qword_1000194E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100019340;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v4;
  *(inited + 40) = NSFileProtectionNone;
  v5 = NSFileProtectionKey;
  v6 = NSFileProtectionNone;
  sub_100013B0C(inited);
  swift_setDeallocating();
  sub_1000041E8(inited + 32, &qword_1000254F0, &qword_1000194E8);
  type metadata accessor for FileAttributeKey(0);
  sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey, &unk_100019250);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = String._bridgeToObjectiveC()();
  v18 = 0;
  v9 = [v2 setAttributes:isa ofItemAtPath:v8 error:&v18];

  if (v9)
  {
    v10 = v18;
    URL.init(fileURLWithPath:)();
  }

  else
  {
    v13 = v18;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100019340;
    v16 = _convertErrorToNSError(_:)();
    *(v15 + 56) = sub_1000025DC(0, &qword_100025500, NSObject_ptr);
    *(v15 + 64) = sub_100003D00(&qword_100025780, &qword_100025500, NSObject_ptr);
    *(v15 + 32) = v16;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Could not set protection class on temporary directory: %{public}@", 65, 2, &_mh_execute_header, v17, v14, v15);

    return swift_willThrow();
  }
}

id sub_10000795C()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 40);
  }

  result = [*(v0 + 16) state];
  *(v0 + 40) = result;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_1000079A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-v5];
  v7 = sub_100003BE0(&qword_1000254D8, &qword_1000194C8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___localURL;
  swift_beginAccess();
  sub_10000D2B8(v1 + v13, v12, &qword_1000254D8, &qword_1000194C8);
  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    return sub_10000D248(v12, a1);
  }

  sub_1000041E8(v12, &qword_1000254D8, &qword_1000194C8);
  v14 = [*(v1 + 16) getLocalFileUrl];
  if (v14)
  {
    v15 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(v6, v16, 1, v18);
  sub_10000D248(v6, a1);
  sub_10000D2B8(a1, v10, &qword_1000252B0, &qword_100019308);
  (*(v4 + 56))(v10, 0, 1, v3);
  swift_beginAccess();
  sub_10000D320(v10, v1 + v13);
  return swift_endAccess();
}

double sub_100007C48@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info;
  v4 = *(v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 16);
  v21[0] = *(v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info);
  v21[1] = v4;
  v22[0] = *(v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 32);
  *(v22 + 10) = *(v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 42);
  v5 = *(&v21[0] + 1);
  if (*(&v21[0] + 1) == 1)
  {
    sub_100007D7C(v1, v16);
    v7 = v17;
    v6 = v18[0];
    v19 = v17;
    v20[0] = v18[0];
    *(v20 + 10) = *(v18 + 10);
    v8 = *(v3 + 16);
    v14[0] = *v3;
    v14[1] = v8;
    v15[0] = *(v3 + 32);
    *(v15 + 10) = *(v3 + 42);
    *(v3 + 42) = *(v18 + 10);
    v9 = v16[0];
    v5 = v16[1];
    *v3 = v16[0];
    *(v3 + 8) = v5;
    *(v3 + 16) = v7;
    *(v3 + 32) = v6;
    sub_10000D2B8(v16, &v13, &qword_100025300, qword_100019328);
    sub_1000041E8(v14, &qword_1000254E0, &unk_1000194D0);
  }

  else
  {
    v9 = *&v21[0];
    v10 = *(v3 + 32);
    v19 = *(v3 + 16);
    v20[0] = v10;
    *(v20 + 10) = *(v3 + 42);
  }

  sub_10000D2B8(v21, v14, &qword_1000254E0, &unk_1000194D0);
  *a1 = v9;
  *(a1 + 8) = v5;
  v11 = v20[0];
  *(a1 + 16) = v19;
  *(a1 + 32) = v11;
  result = *(v20 + 10);
  *(a1 + 42) = *(v20 + 10);
  return result;
}

void sub_100007D7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000795C() != 2)
  {
    goto LABEL_4;
  }

  sub_1000079A0(v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v7, v13, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_100002C4C(v7, &v50);
    v24 = v13;
    v17 = v51;
    v19 = v53;
    v25 = v11;
    v20 = v54;
    v21 = v55;
    v22 = v56;
    v23 = v57;
    v48 = v50;
    v49 = v24;
    v47 = v52;
    if (!v51)
    {
      v29 = v25;
      LODWORD(v46) = static os_log_type_t.error.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100019340;
      URL._bridgeToObjectiveC()(&unk_100019000);
      v32 = v31;
      *(v30 + 56) = sub_1000025DC(0, &qword_1000252C0, NSURL_ptr);
      *(v30 + 64) = sub_100003D00(&qword_1000252C8, &qword_1000252C0, NSURL_ptr);
      *(v30 + 32) = v32;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v33 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Cannot fetch info from installed asset at %{public}@", 52, 2, &_mh_execute_header, v33, v46, v30);

      (*(v29 + 8))(v49, v10);
      v18 = v47;
      v16 = v48;
      v17 = 0;
      goto LABEL_5;
    }

    v45 = v25;
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    v63 = v55;
    v64 = v56;
    v65 = v57;
    v26 = sub_1000029F0();
    v28 = *(a1 + 24);
    v46 = *(a1 + 32);
    if (v26 == v28 && v27 == v46)
    {
    }

    else
    {
      v44 = v28;
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        v35 = static os_log_type_t.error.getter();
        sub_100003BE0(&qword_1000252B8, &qword_100019310);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1000192B0;
        *(v36 + 56) = &type metadata for String;
        v37 = sub_10000C674();
        *(v36 + 64) = v37;
        v38 = v46;
        *(v36 + 32) = v44;
        *(v36 + 40) = v38;

        v39 = sub_1000029F0();
        v41 = v40;
        sub_1000041E8(&v50, &qword_100025300, qword_100019328);
        *(v36 + 96) = &type metadata for String;
        *(v36 + 104) = v37;
        *(v36 + 72) = v39;
        *(v36 + 80) = v41;
        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v42 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)("Asset attribute version %{public}@ does not match info version %{public}@", 73, 2, &_mh_execute_header, v42, v35, v36);

        (*(v45 + 8))(v49, v10);
        goto LABEL_4;
      }
    }

    (*(v45 + 8))(v49, v10);
    v18 = v47;
    v16 = v48;
    goto LABEL_5;
  }

  sub_1000041E8(v9, &qword_1000252B0, &qword_100019308);
  v14 = static os_log_type_t.error.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v15 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Nil localURL for installed asset", 32, 2, &_mh_execute_header, v15, v14, &_swiftEmptyArrayStorage);

LABEL_4:
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
LABEL_5:
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
}

uint64_t sub_1000082D8(void *a1)
{
  v2 = v1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  v4 = OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___localURL;
  v5 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = (v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info);
  *v6 = xmmword_100019390;
  v6[1] = 0u;
  v6[2] = 0u;
  *(v6 + 42) = 0u;
  *(v2 + 16) = a1;
  v7 = a1;
  v8 = sub_100006284();
  v10 = v9;

  if (v10)
  {
    *(v2 + 24) = v8;
    *(v2 + 32) = v10;
  }

  else
  {

    sub_1000041E8(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___localURL, &qword_1000254D8, &qword_1000194C8);
    v11 = *(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 16);
    v13[0] = *(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info);
    v13[1] = v11;
    v14[0] = *(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 32);
    *(v14 + 10) = *(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 42);
    sub_1000041E8(v13, &qword_1000254E0, &unk_1000194D0);
    type metadata accessor for TZSAsset(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_100008468(void **a1, void *a2, unint64_t a3, unint64_t a4)
{
  v82 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - v16;
  v81 = v8;
  v80 = v11;
  if (a1)
  {
    v18 = v14;
    v19 = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100019340;
    aBlock = a1;
    type metadata accessor for MAQueryResult(0);
    v21 = String.init<A>(describing:)();
    v22 = v12;
    v23 = a4;
    v25 = v24;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_10000C674();
    *(v20 + 32) = v21;
    *(v20 + 40) = v25;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("MobileAsset query failed, error %{public}@", 42, 2, &_mh_execute_header, v26, v19, v20);

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    v28 = swift_allocObject();
    v28[2] = v82;
    v28[3] = v23;
    v28[4] = 0;
    v28[5] = a1;
    v95 = sub_10000C6D0;
    v96 = v28;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_10000F608;
    v94 = &unk_100021020;
    v29 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10000C6DC(&qword_100025348, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v81 + 8))(v10, v7);
    return (*(v22 + 8))(v18, v80);
  }

  v76 = v14;
  v77 = v10;
  v78 = v12;
  v31 = [a2 results];
  v79 = v7;
  if (!v31)
  {
    v52 = v78;
    v53 = v77;
    v37 = v82;
LABEL_61:
    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v70 = static OS_dispatch_queue.main.getter();
    v71 = swift_allocObject();
    v71[2] = v37;
    v71[3] = a4;
    v71[4] = v31;
    v95 = sub_10000C778;
    v96 = v71;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_10000F608;
    v94 = &unk_100021070;
    v72 = _Block_copy(&aBlock);

    v73 = v76;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10000C6DC(&qword_100025348, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378, &protocol conformance descriptor for [A]);
    v74 = v79;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v72);

    (*(v81 + 8))(v53, v74);
    return (*(v52 + 8))(v73, v80);
  }

  v83 = v17;
  v87 = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = static os_log_type_t.info.getter();
  v86 = sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v34 = swift_allocObject();
  v85 = xmmword_100019340;
  *(v34 + 16) = xmmword_100019340;
  *(v34 + 56) = sub_100003BE0(&qword_1000254C0, &qword_1000194C0);
  *(v34 + 64) = sub_100006204(&qword_1000254C8, &qword_1000254C0, &qword_1000194C0, &protocol conformance descriptor for [A]);
  *(v34 + 32) = v32;
  v35 = sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

  v84 = v35;
  v36 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Query returned results %{public}@", 33, 2, &_mh_execute_header, v36, v33, v34);

  v90 = _swiftEmptyArrayStorage;
  v37 = v82;
  if (v32 >> 62)
  {
    goto LABEL_58;
  }

  v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v75 = a4;
  if (v38)
  {
    v37 = 0;
    a4 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v43 = *(v32 + 8 * v37 + 32);
      }

      v44 = v43;
      v45 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v38 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_6;
      }

      v46 = [v43 attributes];
      if (!v46)
      {
        goto LABEL_64;
      }

      v47 = v46;
      v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v88, "BundleVersion");
      HIWORD(v88[1]) = -4864;
      AnyHashable.init<A>(_:)();
      if (*(v48 + 16) && (v49 = sub_100012E10(&aBlock), (v50 & 1) != 0))
      {
        sub_100006040(*(v48 + 56) + 32 * v49, v89);
        sub_10000C7AC(&aBlock);

        if (swift_dynamicCast())
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_10;
        }
      }

      else
      {

        sub_10000C7AC(&aBlock);
      }

      v39 = static os_log_type_t.error.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = v85;
      *(v40 + 56) = v87;
      *(v40 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
      *(v40 + 32) = v44;
      v41 = v44;
      v42 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Malformed asset; could not read tz version: %{public}@", 54, 2, &_mh_execute_header, v42, v39, v40);

LABEL_10:
      ++v37;
      if (v45 == v38)
      {
        v51 = v90;
        a4 = v75;
        v37 = v82;
        goto LABEL_24;
      }
    }
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v51 & 0x8000000000000000) == 0 && (v51 & 0x4000000000000000) == 0)
  {
    v86 = *(v51 + 16);
    if (v86)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

  v86 = _CocoaArrayWrapper.endIndex.getter();
  if (!v86)
  {
LABEL_60:

    v31 = 0;
    v52 = v78;
    v53 = v77;
    goto LABEL_61;
  }

LABEL_27:
  *&v85 = v51 & 0xC000000000000001;
  if ((v51 & 0xC000000000000001) != 0)
  {
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v51 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:

      sub_10000C7AC(&aBlock);
      __break(1u);
LABEL_66:

      result = sub_10000C7AC(&aBlock);
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v54 = *(v51 + 32);
  }

  v87 = v54;
  if (v86 == 1)
  {
LABEL_31:
    v55 = v87;
LABEL_32:

    type metadata accessor for TZSAsset(0);
    swift_allocObject();
    v31 = sub_1000082D8(v55);
    v52 = v78;
    v53 = v77;
    a4 = v75;
    v37 = v82;
    goto LABEL_61;
  }

  a4 = 1;
  while (1)
  {
    if (v85)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (a4 >= *(v51 + 16))
      {
        goto LABEL_57;
      }

      v56 = *(v51 + 8 * a4 + 32);
    }

    v55 = v56;
    v32 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      goto LABEL_55;
    }

    result = [v87 attributes];
    if (!result)
    {
      break;
    }

    v57 = result;
    v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    strcpy(v88, "BundleVersion");
    HIWORD(v88[1]) = -4864;
    AnyHashable.init<A>(_:)();
    if (!*(v58 + 16))
    {
      goto LABEL_65;
    }

    v59 = sub_100012E10(&aBlock);
    if ((v60 & 1) == 0)
    {
      goto LABEL_65;
    }

    sub_100006040(*(v58 + 56) + 32 * v59, v89);
    sub_10000C7AC(&aBlock);

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      goto LABEL_67;
    }

    v61 = v88[0];
    v62 = v88[1];
    result = [v55 attributes];
    if (!result)
    {
      goto LABEL_69;
    }

    v63 = result;
    v64 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    strcpy(v88, "BundleVersion");
    HIWORD(v88[1]) = -4864;
    AnyHashable.init<A>(_:)();
    if (!*(v64 + 16))
    {
      goto LABEL_66;
    }

    v65 = sub_100012E10(&aBlock);
    if ((v66 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_100006040(*(v64 + 56) + 32 * v65, v89);
    sub_10000C7AC(&aBlock);

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      goto LABEL_70;
    }

    v37 = v88[1];
    aBlock = v61;
    v92 = v62;
    v89[0] = v88[0];
    v89[1] = v88[1];
    v67 = type metadata accessor for Locale();
    v68 = v83;
    (*(*(v67 - 8) + 56))(v83, 1, 1, v67);
    sub_100004194();
    v69 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000041E8(v68, &unk_100025840, &unk_1000194B0);

    if (v69 == -1)
    {

      v87 = v55;
      ++a4;
      if (v32 == v86)
      {
        goto LABEL_32;
      }
    }

    else
    {

      ++a4;
      if (v32 == v86)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_100009290(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000C5F8();
  v7 = swift_allocError();
  *v8 = a4;
  *(v8 + 8) = 1;
  a1(a3, v7);
}

void sub_100009328(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100019340;
    aBlock[0] = a1;
    type metadata accessor for MADownloadResult(0);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10000C674();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Catalog download failed: %{public}@", 35, 2, &_mh_execute_header, v15, v10, v11);
  }

  else
  {
    v22 = v7;
    v16 = static os_log_type_t.info.getter();
    v21 = v3;
    v17 = v16;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Catalog download successful", 27, 2, &_mh_execute_header, v18, v17, _swiftEmptyArrayStorage);

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100009728;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F608;
    aBlock[3] = &unk_100021098;
    v20 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000C6DC(&qword_100025348, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v21 + 8))(v5, v2);
    (*(v22 + 8))(v9, v6);
  }
}

uint64_t sub_100009740(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  __chkstk_darwin(v6 - 8);
  v8 = v34 - v7;
  if (!a2)
  {
    if (!a1)
    {
      v19 = static os_log_type_t.info.getter();
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v20 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("No assets found", 15, 2, &_mh_execute_header, v20, v19, _swiftEmptyArrayStorage);

      return a3(0, 0, 0);
    }

    sub_100003F7C(v35);
    v10 = sub_1000029F0();
    v12 = v11;
    sub_100003CD0(v35);
    v14 = a1[3];
    v13 = a1[4];
    v34[4] = v10;
    v34[5] = v12;
    v34[2] = v14;
    v34[3] = v13;
    v15 = type metadata accessor for Locale();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    sub_100004194();

    v16 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000041E8(v8, &unk_100025840, &unk_1000194B0);

    if (v16 == -1)
    {
      v21 = sub_10000795C();
      if ((v21 - 2) < 2)
      {
        sub_100009CB8();
        goto LABEL_9;
      }

      if (v21 == 1)
      {
        sub_10000AF00();
        goto LABEL_9;
      }

      if (v21 != 4)
      {
        v26 = static os_log_type_t.error.getter();
        sub_100003BE0(&qword_1000252B8, &qword_100019310);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100019340;
        v28 = a1[2];
        *(v27 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
        *(v27 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
        *(v27 + 32) = v28;
        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v29 = v28;
        v30 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)("Unexpected state for asset %{public}@", 37, 2, &_mh_execute_header, v30, v26, v27);

        v31 = a1[5];
        sub_10000C5F8();
        v32 = swift_allocError();
        *v33 = v31;
        *(v33 + 8) = 0;

        a3(v14, v13, v32);

        goto LABEL_9;
      }

      v22 = static os_log_type_t.info.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100019340;
      v24 = a1[2];
      *(v23 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
      *(v23 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
      *(v23 + 32) = v24;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v25 = v24;
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Asset download in progress: %{public}@", 38, 2, &_mh_execute_header, v18, v22, v23);
    }

    else
    {
      v17 = static os_log_type_t.info.getter();
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("No newer assets found", 21, 2, &_mh_execute_header, v18, v17, _swiftEmptyArrayStorage);
    }

LABEL_9:
    a3(v14, v13, 0);
  }

  swift_errorRetain();
  a3(0, 0, a2);
}

uint64_t sub_100009CB8()
{
  v2 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  __chkstk_darwin(v2 - 8);
  v4 = v123 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v138 = v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v139 = v123 - v10;
  v11 = __chkstk_darwin(v9);
  v140 = v123 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v123 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v123 - v17;
  __chkstk_darwin(v16);
  v20 = v123 - v19;
  sub_100007C48(v148);
  if (!*(&v148[0] + 1))
  {
    goto LABEL_4;
  }

  v151 = v148[0];
  v152 = v148[1];
  v153[0] = v149[0];
  *(v153 + 10) = *(v149 + 10);
  sub_1000079A0(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000041E8(v148, &qword_100025300, qword_100019328);
    sub_1000041E8(v4, &qword_1000252B0, &qword_100019308);
LABEL_4:
    sub_10000C5F8();
    swift_allocError();
    *v21 = 1;
    *(v21 + 8) = 3;
    return swift_willThrow();
  }

  v130 = v0;
  (*(v6 + 32))(v20, v4, v5);
  sub_100003F7C(v150);
  v129 = sub_1000029F0();
  v137 = v23;
  sub_100003CD0(v150);
  v24 = [objc_opt_self() defaultManager];
  v136 = v1;
  v25 = v24;
  v26 = [v24 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();
  v29 = *(v6 + 8);
  v27 = v6 + 8;
  v28 = v29;
  v29(v15, v5);
  URL.path.getter();
  v30 = v136;
  sub_10000758C();
  v136 = v30;
  if (v30)
  {
    sub_1000041E8(v148, &qword_100025300, qword_100019328);

    v28(v18, v5);
    return (v28)(v20, v5);
  }

  v131 = v25;
  v132 = v20;
  v133 = v27;
  v134 = v28;
  v128 = v18;
  v135 = v5;

  sub_100003BE0(&qword_1000254E8, &qword_1000194E0);
  inited = swift_initStackObject();
  v125 = xmmword_1000192A0;
  *(inited + 16) = xmmword_1000192A0;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 40) = NSFileProtectionNone;
  *(inited + 64) = v32;
  *(inited + 72) = NSFileOwnerAccountID;
  *(inited + 80) = 0;
  *(inited + 104) = &type metadata for Int;
  *(inited + 112) = NSFileGroupOwnerAccountID;
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = 0;
  v33 = NSFileProtectionKey;
  v34 = NSFileProtectionNone;
  v35 = NSFileOwnerAccountID;
  v36 = NSFileGroupOwnerAccountID;
  v37 = sub_100013B0C(inited);
  swift_setDeallocating();
  sub_100003BE0(&qword_1000254F0, &qword_1000194E8);
  swift_arrayDestroy();
  v144 = &type metadata for Int;
  *&v142 = 493;
  sub_10000D140(&v142, v147);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127 = v37;
  v141 = v37;
  sub_10000BE70(v147, NSFilePosixPermissions, isUniquelyReferenced_nonNull_native);
  v126 = v141;
  sub_1000029F0();
  v39 = v139;
  URL.appendingPathComponent(_:)();

  if (qword_1000251A8 != -1)
  {
    swift_once();
  }

  v123[0] = qword_100026470;
  v123[1] = qword_100026468;
  URL.init(fileURLWithPath:)();
  sub_1000029F0();
  v40 = v138;
  URL.appendingPathComponent(_:)();

  v134(v15, v135);
  LOBYTE(v141) = 0;
  URL.path.getter();
  v41 = String._bridgeToObjectiveC()();

  v42 = v131;
  v43 = [v131 fileExistsAtPath:v41 isDirectory:&v141];

  if (v43)
  {
    if (v141 == 1)
    {

      sub_1000041E8(v148, &qword_100025300, qword_100019328);

      v44 = static os_log_type_t.info.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100019340;
      v46 = URL.path.getter();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_10000C674();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v49 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Asset installation bypassed; %{public}@ already exists", 54, 2, &_mh_execute_header, v49, v44, v45);

      v50 = v139;

      v51 = v49;
      v52 = v40;
      v53 = v128;
LABEL_12:
      v54 = v134;

      v55 = v52;
      v56 = v135;
      v54(v55, v135);
      v54(v50, v56);
      v54(v140, v56);
      v54(v53, v56);
      return (v54)(v132, v56);
    }

    v57 = static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100019340;
    v59 = URL.path.getter();
    v61 = v60;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_10000C674();
    *(v58 + 32) = v59;
    *(v58 + 40) = v61;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v62 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Asset installation failure: %{public}@ exists but is not a directory", 68, 2, &_mh_execute_header, v62, v57, v58);
  }

  v124 = static os_log_type_t.info.getter();
  v123[2] = sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v63 = swift_allocObject();
  *(v63 + 16) = v125;
  v64 = URL.path.getter();
  v66 = v65;
  *(v63 + 56) = &type metadata for String;
  v67 = sub_10000C674();
  *(v63 + 64) = v67;
  *(v63 + 32) = v64;
  *(v63 + 40) = v66;
  v51 = v131;
  v68 = URL.path.getter();
  *(v63 + 96) = &type metadata for String;
  *(v63 + 104) = v67;
  *(v63 + 72) = v68;
  *(v63 + 80) = v69;
  v70 = URL.path.getter();
  *(v63 + 136) = &type metadata for String;
  *(v63 + 144) = v67;
  v50 = v39;
  *(v63 + 112) = v70;
  *(v63 + 120) = v71;
  *&v125 = sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v72 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Beginning installation of %{public}@ to %{public}@ via %{public}@", 65, 2, &_mh_execute_header, v72, v124, v63);

  URL._bridgeToObjectiveC()(v73);
  v75 = v74;
  URL._bridgeToObjectiveC()(v76);
  v78 = v77;
  *&v142 = 0;
  LODWORD(v66) = [v51 copyItemAtURL:v75 toURL:v77 error:&v142];

  if (!v66)
  {
    v87 = v142;

    sub_1000041E8(v148, &qword_100025300, qword_100019328);

    v88 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *&v142 = v88;
    swift_errorRetain();
    sub_100003BE0(&qword_1000254F8, &qword_1000194F0);
    sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    if (swift_dynamicCast())
    {

      sub_100006E94(*&v147[0], v89, v90);
      swift_willThrow();
    }

    goto LABEL_23;
  }

  v79 = v142;
  v80 = String._bridgeToObjectiveC()();
  type metadata accessor for FileAttributeKey(0);
  sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey, &unk_100019250);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v142 = 0;
  v82 = [v51 createDirectoryAtPath:v80 withIntermediateDirectories:1 attributes:isa error:&v142];

  if (!v82)
  {
    v91 = v142;
    sub_1000041E8(v148, &qword_100025300, qword_100019328);

LABEL_22:

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_23;
  }

  v83 = v142;
  v84 = URL.path.getter();
  v85 = v136;
  sub_10000641C(v127, v84, v86);
  if (!v85)
  {

    URL._bridgeToObjectiveC()(v99);
    v101 = v100;
    URL._bridgeToObjectiveC()(v102);
    v104 = v103;
    *&v142 = 0;
    v105 = [v51 moveItemAtURL:v101 toURL:v103 error:&v142];

    if (v105)
    {
      v136 = 0;
      v106 = qword_100025188;
      v107 = v142;
      if (v106 != -1)
      {
        swift_once();
      }

      v127 = qword_100026428;
      v108 = String._bridgeToObjectiveC()();
      *&v142 = 0;
      v109 = [v51 removeItemAtPath:v108 error:&v142];

      if (v109)
      {
        v110 = v142;
      }

      else
      {
        v111 = v142;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v136 = 0;
      }

      v112 = v137;
      v113 = String._bridgeToObjectiveC()();
      URL.path.getter();
      v114 = String._bridgeToObjectiveC()();

      *&v142 = 0;
      v115 = [v51 createSymbolicLinkAtPath:v113 withDestinationPath:v114 error:&v142];

      if (v115)
      {
        v116 = v142;
        v117 = sub_1000029F0();
        v154[0] = v129;
        v154[1] = v112;
        v154[2] = v117;
        v154[3] = v118;
        v155 = 1;
        sub_10000E698(v154);

        v119 = *(v130 + 16);
        v145 = sub_10000AD10;
        v146 = 0;
        *&v142 = _NSConcreteStackBlock;
        *(&v142 + 1) = 1107296256;
        v143 = sub_10000AE10;
        v144 = &unk_100021228;
        v120 = _Block_copy(&v142);
        [v119 purge:v120];
        _Block_release(v120);
        v53 = v128;
        if (qword_100025160 != -1)
        {
          swift_once();
        }

        v121 = swift_allocObject();
        v122 = v152;
        v121[1] = v151;
        v121[2] = v122;
        v121[3] = v153[0];
        *(v121 + 58) = *(v153 + 10);
        sub_100013D70(0xD000000000000026, 0x800000010001A240, sub_10000D1A0, v121);

        v52 = v138;
        goto LABEL_12;
      }
    }

    v91 = v142;
    sub_1000041E8(v148, &qword_100025300, qword_100019328);
    goto LABEL_22;
  }

  sub_1000041E8(v148, &qword_100025300, qword_100019328);

LABEL_23:
  v92 = static os_log_type_t.error.getter();
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_100019340;
  v94 = _convertErrorToNSError(_:)();
  *(v93 + 56) = sub_1000025DC(0, &qword_100025500, NSObject_ptr);
  *(v93 + 64) = sub_100003D00(&qword_100025780, &qword_100025500, NSObject_ptr);
  *(v93 + 32) = v94;
  v95 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Asset installation failed: %{public}@", 37, 2, &_mh_execute_header, v95, v92, v93);

  v96 = _convertErrorToNSError(_:)();
  v156[0] = v96;
  memset(&v156[1], 0, 24);
  v157 = 3;
  sub_10000E698(v156);

  swift_willThrow();
  v97 = v134;
  v98 = v135;
  v134(v138, v135);
  v97(v139, v98);
  v97(v140, v98);
  v97(v128, v98);
  return (v97)(v132, v98);
}

void sub_10000AD10(uint64_t a1)
{
  if (a1)
  {
    v1 = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100019340;
    type metadata accessor for MAPurgeResult(0);
    v3 = String.init<A>(describing:)();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_10000C674();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v6 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Asset purge failed: %{public}@", 30, 2, &_mh_execute_header, v6, v1, v2);
  }
}

uint64_t sub_10000AE18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10000AE70(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_1000037D8(v10);
  v6 = sub_1000029F0();
  v8 = v7;
  sub_100003CD0(v10);

  sub_100016F34(a3, v6, v8, a1, a2);
}

void sub_10000AF00()
{
  v1 = v0;
  if (sub_10000795C() == 1)
  {
    v2 = *(v0 + 16);
    if (qword_100025148 != -1)
    {
      swift_once();
    }

    v3 = qword_1000263C8;
    v4 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_10000D120;
    v21[5] = v4;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_10000F768;
    v21[3] = &unk_1000211B0;
    v5 = _Block_copy(v21);

    [v2 startDownload:v3 then:v5];
    _Block_release(v5);
    v6 = static os_log_type_t.info.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100019340;
    *(v7 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
    *(v7 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
    *(v7 + 32) = v2;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v8 = v2;
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Download initiated for asset %{public}@", 39, 2, &_mh_execute_header, v9, v6, v7);
    goto LABEL_7;
  }

  if ((*(v0 + 40) - 2) < 3)
  {
    v10 = static os_log_type_t.info.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100019340;
    v12 = *(v0 + 16);
    *(v11 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
    *(v11 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
    *(v11 + 32) = v12;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v13 = v12;
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Asset already downloaded/downloading: %{public}@", 48, 2, &_mh_execute_header, v9, v10, v11);
LABEL_7:

    return;
  }

  v14 = static os_log_type_t.error.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100019340;
  v16 = *(v0 + 16);
  *(v15 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
  *(v15 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
  *(v15 + 32) = v16;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v17 = v16;
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Attempted download; bad asset state for %{public}@", 50, 2, &_mh_execute_header, v18, v14, v15);

  v19 = *(v1 + 40);
  sub_10000C5F8();
  swift_allocError();
  *v20 = v19;
  *(v20 + 8) = 0;
  swift_willThrow();
}

uint64_t sub_10000B304(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for DispatchQoS();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v23 = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000192B0;
    *&aBlock = a1;
    type metadata accessor for MADownloadResult(0);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_10000C674();
    *(v9 + 64) = v13;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + 16);

      v28 = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
      v29 = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
      *&aBlock = v15;
      sub_10000D128(&aBlock, v9 + 72);
    }

    else
    {
      *(v9 + 96) = &type metadata for String;
      *(v9 + 104) = v13;
      *(v9 + 72) = 0x296C696E28;
      *(v9 + 80) = 0xE500000000000000;
    }

    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Asset download failed with status %{public}@; asset = %{public}@", 64, 2, &_mh_execute_header, v20, v23, v9);

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v29 = nullsub_1;
    v30 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v27 = sub_10000F608;
    v28 = &unk_1000211D8;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = static os_log_type_t.info.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Asset download successful", 25, 2, &_mh_execute_header, v17, v16, _swiftEmptyArrayStorage);

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v29 = sub_10000B844;
    v30 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v27 = sub_10000F608;
    v28 = &unk_100021200;
    v19 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
  }

  sub_10000C6DC(&qword_100025348, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003BE0(&unk_100025830, &qword_100019378);
  sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v24);
}

uint64_t sub_10000B85C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (qword_100025160 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  return a1();
}

uint64_t sub_10000B8C4()
{

  sub_1000041E8(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___localURL, &qword_1000254D8, &qword_1000194C8);
  sub_10000D390(*(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info), *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 8), *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 16), *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 24), *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 32), *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 40), *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 48));
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TZSAsset(uint64_t a1)
{
  result = qword_100025398;
  if (!qword_100025398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B9C0(uint64_t a1)
{
  sub_10000BA7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000BA7C(uint64_t a1)
{
  if (!qword_1000253A8)
  {
    sub_100006110(&qword_1000252B0, &qword_100019308);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000253A8);
    }
  }
}

uint64_t sub_10000BAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003BE0(&unk_100025880, &unk_100019510);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10000D140(v22, v36);
      }

      else
      {
        sub_100006040(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_10000D140(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10000BDC4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

_OWORD *sub_10000BE70(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100012ECC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10000C018();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10000BAE0(v13, a3 & 1);
    v8 = sub_100012ECC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for FileAttributeKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000D1A8(v19);

    return sub_10000D140(a1, v19);
  }

  else
  {
    sub_10000BFB0(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_10000BFB0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000D140(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_10000C018()
{
  v1 = v0;
  sub_100003BE0(&unk_100025880, &unk_100019510);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100006040(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000D140(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_10000C19C(void (*a1)(void, void, uint64_t), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Beginning MobileAsset local catalog query", 41, 2, &_mh_execute_header, v6, v5, _swiftEmptyArrayStorage);

  v7 = objc_allocWithZone(MAAssetQuery);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithType:v8];

  if (v9)
  {
    if (qword_1000251B0 != -1)
    {
      swift_once();
    }

    if (qword_100026480)
    {
      v10 = String._bridgeToObjectiveC()();
      v11 = String._bridgeToObjectiveC()();
      [v9 addKeyValuePair:v10 with:v11];

      [v9 returnTypes:2];
      v12 = static os_log_type_t.info.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100019340;
      *(v13 + 56) = sub_1000025DC(0, &qword_1000254A8, MAAssetQuery_ptr);
      *(v13 + 64) = sub_100003D00(&qword_1000254B0, &qword_1000254A8, MAAssetQuery_ptr);
      *(v13 + 32) = v9;
      v14 = v9;
      v15 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Starting MobileAsset query %{public}@", 37, 2, &_mh_execute_header, v15, v12, v13);

      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = sub_10000C5F0;
      v16[4] = v4;
      v23[4] = sub_10000C650;
      v23[5] = v16;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_100009320;
      v23[3] = &unk_100020FD0;
      v17 = _Block_copy(v23);
      v18 = v14;

      [v18 queryMetaData:v17];
      _Block_release(v17);

      return;
    }
  }

  v19 = static os_log_type_t.fault.getter();
  v20 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Unable to construct MobileAsset query", 37, 2, &_mh_execute_header, v20, v19, _swiftEmptyArrayStorage);

  sub_10000C5F8();
  v21 = swift_allocError();
  *v22 = 0;
  *(v22 + 8) = 3;
  swift_errorRetain();
  a1(0, 0, v21);
}

uint64_t sub_10000C5B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000C5F8()
{
  result = qword_1000254A0;
  if (!qword_1000254A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000254A0);
  }

  return result;
}

uint64_t sub_10000C65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000C674()
{
  result = qword_100025740;
  if (!qword_100025740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025740);
  }

  return result;
}

uint64_t sub_10000C6DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C72C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10000C800(uint64_t a1, void **a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  if (a1)
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    aBlock = a2;
    v31 = a3;
    v29[0] = v13;
    v29[1] = v14;
    v15 = type metadata accessor for Locale();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_100004194();

    v16 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000041E8(v12, &unk_100025840, &unk_1000194B0);

    if (v16 != 1)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

      v26 = static os_log_type_t.debug.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100019340;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_10000C674();
      *(v27 + 32) = 0x65736C6166;
      *(v27 + 40) = 0xE500000000000000;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v28 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Beginning advancePipeline with forceCatalogDownload: %{public}@", 63, 2, &_mh_execute_header, v28, v26, v27);

      sub_10000C19C(sub_10000D0BC, v25);
    }
  }

  v17 = static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100019340;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10000C674();
  *(v18 + 32) = 1702195828;
  *(v18 + 40) = 0xE400000000000000;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Beginning advancePipeline with forceCatalogDownload: %{public}@", 63, 2, &_mh_execute_header, v19, v17, v18);

  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();
  if (qword_100025148 != -1)
  {
    swift_once();
  }

  v22 = qword_1000263C8;
  v34 = sub_100009328;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10000F768;
  v33 = &unk_100021138;
  v23 = _Block_copy(&aBlock);
  [v20 startCatalogDownload:v21 options:v22 then:v23];
  _Block_release(v23);

  return a4(0);
}

void sub_10000CC2C(void **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  v11 = static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Beginning MobileAsset local catalog query", 41, 2, &_mh_execute_header, v12, v11, _swiftEmptyArrayStorage);

  v13 = objc_allocWithZone(MAAssetQuery);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithType:v14];

  if (v15)
  {
    if (qword_1000251B0 != -1)
    {
      swift_once();
    }

    if (qword_100026480)
    {
      v16 = String._bridgeToObjectiveC()();
      v17 = String._bridgeToObjectiveC()();
      [v15 addKeyValuePair:v16 with:v17];

      [v15 returnTypes:2];
      v18 = static os_log_type_t.info.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100019340;
      *(v19 + 56) = sub_1000025DC(0, &qword_1000254A8, MAAssetQuery_ptr);
      *(v19 + 64) = sub_100003D00(&qword_1000254B0, &qword_1000254A8, MAAssetQuery_ptr);
      *(v19 + 32) = v15;
      v20 = v15;
      v21 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Starting MobileAsset query %{public}@", 37, 2, &_mh_execute_header, v21, v18, v19);

      v22 = swift_allocObject();
      v22[2] = v20;
      v22[3] = sub_10000D070;
      v22[4] = v10;
      v27[4] = sub_10000E670;
      v27[5] = v22;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      v27[2] = sub_100009320;
      v27[3] = &unk_100021110;
      v23 = _Block_copy(v27);
      v24 = v20;

      [v24 queryMetaData:v23];
      _Block_release(v23);

      return;
    }
  }

  v25 = static os_log_type_t.fault.getter();
  v26 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Unable to construct MobileAsset query", 37, 2, &_mh_execute_header, v26, v25, _swiftEmptyArrayStorage);

  sub_10000C800(0, a1, a2, a4, a5);
}

uint64_t sub_10000D030()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D07C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D0E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D128(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_10000D140(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000D150()
{

  return _swift_deallocObject(v0, 74, 7);
}

uint64_t sub_10000D1A8(void *a1)
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

unint64_t sub_10000D1F4()
{
  result = qword_100025528;
  if (!qword_100025528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025528);
  }

  return result;
}

uint64_t sub_10000D248(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D2B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003BE0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000D320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BE0(&qword_1000254D8, &qword_1000194C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10000D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
    sub_10000D3A0(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_10000D3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

void sub_10000D404()
{
  v0 = type metadata accessor for CocoaError.Code();
  v120 = *(v0 - 1);
  __chkstk_darwin(v0);
  v2 = &v104 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v115 = *(v3 - 1);
  v4 = __chkstk_darwin(v3);
  v6 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v110 = &v104 - v8;
  __chkstk_darwin(v7);
  v118 = &v104 - v9;
  v10 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v104 - v11;
  v13 = static os_log_type_t.info.getter();
  v111 = 0;
  v14 = sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v15 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Starting periodic cleanup of stale tz assets", 44, 2, &_mh_execute_header, v15, v13, _swiftEmptyArrayStorage);

  sub_1000037D8(&v125);
  v16 = v126;
  v17 = (v126 >> 56) & 0xF;
  v121 = v125;
  if ((v126 & 0x2000000000000000) == 0)
  {
    v17 = v125 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    sub_100003CD0(&v125);
    v51 = static os_log_type_t.fault.getter();
    v52 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Can't determine current tz data", 31, 2, &_mh_execute_header, v52, v51, _swiftEmptyArrayStorage);

    return;
  }

  v107 = v6;
  v18 = static os_log_type_t.debug.getter();
  v113 = sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v19 = swift_allocObject();
  v112 = xmmword_100019340;
  *(v19 + 16) = xmmword_100019340;
  v20 = sub_1000029F0();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_10000C674();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v114 = v14;
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Comparing assets against current version %{public}@", 51, 2, &_mh_execute_header, v23, v18, v19);

  v116 = objc_opt_self();
  v24 = [v116 defaultManager];
  if (qword_1000251A8 != -1)
  {
    goto LABEL_77;
  }

  while (2)
  {
    v109 = qword_100026468;
    v108 = qword_100026470;
    v25 = String._bridgeToObjectiveC()();
    v130 = 0;
    v26 = [v24 contentsOfDirectoryAtPath:v25 error:&v130];

    v24 = v130;
    if (!v26)
    {
      v53 = v130;
      sub_100003CD0(&v125);
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      static CocoaError.fileReadNoSuchFile.getter();
      sub_10000C6DC(&qword_100025530, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v54 = static _ErrorCodeProtocol.~= infix(_:_:)();

      (*(v120 + 8))(v2, v0);
      if (v54)
      {

        v111 = 0;
        v117 = _swiftEmptyArrayStorage;
        goto LABEL_53;
      }

      goto LABEL_74;
    }

    v106 = v3;
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v24;

    v29 = *(v27 + 16);
    if (!v29)
    {
      v117 = _swiftEmptyArrayStorage;
      goto LABEL_52;
    }

    v30 = 0;
    if (v121)
    {
      v31 = 0;
    }

    else
    {
      v31 = v16 == 0xE000000000000000;
    }

    v32 = v31;
    LODWORD(v120) = v32;
    v33 = v27 + 40;
    v119 = v29;
    v104 = (v29 - 1);
    v117 = _swiftEmptyArrayStorage;
    v105 = v27 + 40;
    do
    {
      v3 = (v33 + 16 * v30);
      v0 = v30;
      while (1)
      {
        if (v0 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_76;
        }

        v37 = *(v3 - 1);
        v2 = *v3;
        v39 = v127;
        v38 = v128;
        if ((v129 & 1) == 0)
        {
          break;
        }

        if ((v120 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v39 && v38 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {

          v40 = 0;
          v41 = 0xE000000000000000;
        }

        else if (!v39 && v38 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v40 = v121;
          v41 = v16;
        }

        else
        {
          v130 = v121;
          v131 = v16;

          v44._countAndFlagsBits = 46;
          v44._object = 0xE100000000000000;
          String.append(_:)(v44);
          v45._countAndFlagsBits = v39;
          v45._object = v38;
          String.append(_:)(v45);
          v40 = v130;
          v41 = v131;
        }

        v130 = v37;
        v131 = v2;
        v122 = v40;
        v123 = v41;
        v46 = type metadata accessor for Locale();
        (*(*(v46 - 8) + 56))(v12, 1, 1, v46);
        v102 = sub_100004194();
        v103 = v102;
        v24 = StringProtocol.compare<A>(_:options:range:locale:)();
        sub_1000041E8(v12, &unk_100025840, &unk_1000194B0);

        if (v24 != 1)
        {
          goto LABEL_42;
        }

LABEL_17:
        v0 = (v0 + 1);

        v3 += 2;
        if (v119 == v0)
        {
          goto LABEL_52;
        }
      }

      if ((v120 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v39 && v38 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

        v34 = 0;
        v35 = 0xE000000000000000;
      }

      else if (!v39 && v38 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v34 = v121;
        v35 = v16;
      }

      else
      {
        v130 = v121;
        v131 = v16;

        v42._countAndFlagsBits = 46;
        v42._object = 0xE100000000000000;
        String.append(_:)(v42);
        v43._countAndFlagsBits = v39;
        v43._object = v38;
        String.append(_:)(v43);
        v34 = v130;
        v35 = v131;
      }

      v130 = v37;
      v131 = v2;
      v122 = v34;
      v123 = v35;
      v36 = type metadata accessor for Locale();
      (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
      v102 = sub_100004194();
      v103 = v102;
      v24 = StringProtocol.compare<A>(_:options:range:locale:)();
      sub_1000041E8(v12, &unk_100025840, &unk_1000194B0);

      if (v24 != -1)
      {
        goto LABEL_17;
      }

LABEL_42:
      v24 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000536C(0, *(v24 + 2) + 1, 1);
        v24 = v124;
      }

      v49 = *(v24 + 2);
      v48 = *(v24 + 3);
      if (v49 >= v48 >> 1)
      {
        sub_10000536C((v48 > 1), v49 + 1, 1);
        v24 = v124;
      }

      v30 = v0 + 1;
      *(v24 + 2) = v49 + 1;
      v117 = v24;
      v50 = (v24 + 16 * v49);
      v50[4] = v37;
      v50[5] = v2;
      v33 = v105;
    }

    while (v104 != v0);
LABEL_52:
    sub_100003CD0(&v125);

    v3 = v106;
LABEL_53:
    v0 = static os_log_type_t.debug.getter();
    v55 = swift_allocObject();
    *(v55 + 16) = v112;
    v56 = v117;
    v57 = *(v117 + 2);
    *(v55 + 56) = &type metadata for Int;
    *(v55 + 64) = &protocol witness table for Int;
    *(v55 + 32) = v57;
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Found %{public}ld stale assets", 30, 2, &_mh_execute_header, v24, v0, v55);

    URL.init(fileURLWithPath:)();
    v58 = v56;
    v16 = v56[2];
    if (v16)
    {
      v12 = 0;
      v2 = (v115 + 8);
      v59 = v58 + 5;
      v60 = v110;
      while (v12 < v58[2])
      {

        URL.appendingPathComponent(_:)();

        v61 = [v116 defaultManager];
        URL._bridgeToObjectiveC()(v62);
        v64 = v63;
        v130 = 0;
        v65 = [v61 removeItemAtURL:v63 error:&v130];

        v0 = v130;
        if (!v65)
        {
          v84 = v130;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v85 = *v2;
          (*v2)(v60, v3);
          v85(v118, v3);
          goto LABEL_74;
        }

        ++v12;
        v24 = *v2;
        v66 = v130;
        v24(v60, v3);
        v59 += 2;
        v58 = v117;
        if (v16 == v12)
        {
          goto LABEL_58;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      swift_once();
      continue;
    }

    break;
  }

LABEL_58:
  v67 = [v116 defaultManager];
  if (qword_100025188 != -1)
  {
    swift_once();
  }

  v68 = String._bridgeToObjectiveC()();
  v130 = 0;
  v69 = [v67 destinationOfSymbolicLinkAtPath:v68 error:&v130];

  v70 = v130;
  v71 = v107;
  if (v69)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v70;

    URL.init(fileURLWithPath:)();

    v73 = URL.lastPathComponent.getter();
    v75 = v74;
    v76 = v71;
    v77 = *(v115 + 8);
    v78 = v3;
    v79 = v77(v76, v3);
    v130 = v73;
    v131 = v75;
    __chkstk_darwin(v79);
    v102 = &v130;
    LOBYTE(v73) = sub_10000BDC4(sub_10000E4A4, (&v104 - 4), v117);

    if (v73)
    {
      v80 = [v116 defaultManager];
      v81 = String._bridgeToObjectiveC()();
      v130 = 0;
      v82 = [v80 removeItemAtPath:v81 error:&v130];

      if (!v82)
      {
        v96 = v130;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v77(v118, v3);
        goto LABEL_74;
      }

      v83 = v130;
    }
  }

  else
  {
    v78 = v3;
    v86 = v130;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v87 = [v116 defaultManager];
  if (qword_100025190 != -1)
  {
    swift_once();
  }

  v88 = String._bridgeToObjectiveC()();
  v89 = [v87 fileExistsAtPath:v88];

  if (!v89)
  {
    (*(v115 + 8))(v118, v78);
    return;
  }

  v90 = [v116 defaultManager];
  v91 = String._bridgeToObjectiveC()();
  v130 = 0;
  v92 = [v90 removeItemAtPath:v91 error:&v130];

  if (v92)
  {
    v93 = *(v115 + 8);
    v94 = v130;
    v93(v118, v78);
    return;
  }

  v95 = v130;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v115 + 8))(v118, v78);
LABEL_74:
  v97 = static os_log_type_t.error.getter();
  v98 = swift_allocObject();
  *(v98 + 16) = v112;
  v99 = _convertErrorToNSError(_:)();
  *(v98 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
  *(v98 + 64) = sub_100003D00(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
  *(v98 + 32) = v99;
  v100 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Stale asset cleanup failed due to %{public}@", 44, 2, &_mh_execute_header, v100, v97, v98);

  v101 = _convertErrorToNSError(_:)();
  v130 = v101;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 2;
  sub_10000E698(&v130);
}

uint64_t sub_10000E4A4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t getEnumTagSinglePayload for TemporaryDirectoryError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TemporaryDirectoryError(_WORD *result, int a2, int a3)
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

unint64_t sub_10000E5F0()
{
  result = qword_100025538;
  if (!qword_100025538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025538);
  }

  return result;
}

void sub_10000E698(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 1)
  {
    sub_100003BE0(&qword_100025540, &qword_100019640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000192B0;
    *(inited + 32) = 0x6973726556646C6FLL;
    *(inited + 40) = 0xEA00000000006E6FLL;
    *(inited + 48) = String._bridgeToObjectiveC()();
    *(inited + 56) = 0x697372655677656ELL;
    *(inited + 64) = 0xEA00000000006E6FLL;
    *(inited + 72) = String._bridgeToObjectiveC()();
    sub_100013408(inited);
    swift_setDeallocating();
    sub_100003BE0(&qword_100025548, &qword_100019648);
    swift_arrayDestroy();
    v29 = String._bridgeToObjectiveC()();
    sub_1000025DC(0, &qword_100025500, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();

    return;
  }

  if (v1 != 3)
  {
    if (v1 != 2)
    {
      return;
    }

    v2 = sub_10000EE10();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_32;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (v4 >= 1)
      {
        sub_100003BE0(&qword_100025550, &qword_100019650);
        v5 = 0;
        while (1)
        {
          v6 = (v3 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v3 + 8 * v5 + 32);
          v7 = v6;
          v55 = 0x726F727265;
          v56 = 0xE500000000000000;
          v8 = [v6 domain];
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v10;

          v59 = v9;
          v60 = v11;
          v12._countAndFlagsBits = 58;
          v12._object = 0xE100000000000000;
          String.append(_:)(v12);
          v58 = [v7 code];
          v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v13);

          v14 = String._bridgeToObjectiveC()();

          v57 = v14;
          v15 = static _DictionaryStorage.allocate(capacity:)();

          v16 = v55;
          v17 = v56;
          v18 = v57;

          v19 = v18;
          v20 = sub_100012E54(v16, v17);
          if (v21)
          {
            break;
          }

          v15[(v20 >> 6) + 8] |= 1 << v20;
          v22 = (v15[6] + 16 * v20);
          *v22 = v16;
          v22[1] = v17;
          *(v15[7] + 8 * v20) = v19;
          v23 = v15[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_30;
          }

          ++v5;
          v15[2] = v25;

          sub_10000F45C(&v55);
          v26 = String._bridgeToObjectiveC()();
          sub_1000025DC(0, &qword_100025500, NSObject_ptr);
          v27 = Dictionary._bridgeToObjectiveC()().super.isa;

          AnalyticsSendEvent();

          if (v4 == v5)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v31 = sub_10000EE10();
  v3 = v31;
  if (v31 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_18;
    }

LABEL_35:

    return;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_35;
  }

LABEL_18:
  if (v32 < 1)
  {
LABEL_39:
    __break(1u);
    return;
  }

  sub_100003BE0(&qword_100025550, &qword_100019650);
  v33 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v34 = *(v3 + 8 * v33 + 32);
    }

    v35 = v34;
    v61 = 0x726F727265;
    v62 = 0xE500000000000000;
    v36 = [v34 domain];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v59 = v37;
    v60 = v39;
    v40._countAndFlagsBits = 58;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v58 = [v35 code];
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v41);

    v42 = String._bridgeToObjectiveC()();

    v63 = v42;
    v43 = static _DictionaryStorage.allocate(capacity:)();

    v44 = v61;
    v45 = v62;
    v46 = v63;

    v47 = v46;
    v48 = sub_100012E54(v44, v45);
    if (v49)
    {
      goto LABEL_29;
    }

    v43[(v48 >> 6) + 8] |= 1 << v48;
    v50 = (v43[6] + 16 * v48);
    *v50 = v44;
    v50[1] = v45;
    *(v43[7] + 8 * v48) = v47;
    v51 = v43[2];
    v24 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v24)
    {
      goto LABEL_31;
    }

    ++v33;
    v43[2] = v52;

    sub_10000F45C(&v61);
    v53 = String._bridgeToObjectiveC()();
    sub_1000025DC(0, &qword_100025500, NSObject_ptr);
    v54 = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }

  while (v32 != v33);
LABEL_26:
}

uint64_t sub_10000EE10()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_6;
  }

  v6 = sub_100012E54(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_100006040(*(v3 + 56) + 32 * v6, v16);

  sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_100003BE0(&qword_100025558, &qword_100019658);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100019630;
    *(v12 + 32) = v1;
    v13 = v1;
    return v12;
  }

  sub_100003BE0(&qword_100025558, &qword_100019658);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100019630;
  *(v9 + 32) = v1;
  v10 = v1;
  v11 = sub_10000EE10();
  v16[0] = v9;
  sub_10000EFC0(v11);

  return v16[0];
}

uint64_t sub_10000EFC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000F1A4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000F244(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10000F0B0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100015478(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000F1A4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_10000F244(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000F4C4();
          for (i = 0; i != v6; ++i)
          {
            sub_100003BE0(&qword_100025560, &qword_100019660);
            v9 = sub_10000F3D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10000F3D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10000F454;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F45C(uint64_t a1)
{
  v2 = sub_100003BE0(&qword_100025548, &qword_100019648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F4C4()
{
  result = qword_100025568;
  if (!qword_100025568)
  {
    sub_100006110(&qword_100025560, &qword_100019660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025568);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TZError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TZError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TZError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000F5C8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_10000F5E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10000F608(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000F64C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000142A8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000142A8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000131E4(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000142A8(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10000F768(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_10000F7BC()
{
  result = [objc_allocWithZone(type metadata accessor for Daemon()) init];
  qword_1000263E0 = result;
  return result;
}

void sub_10000F7EC()
{
  v1 = objc_allocWithZone(IDSService);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithService:v2];

  if (v3)
  {
    *&v0[OBJC_IVAR____TtC3tzd6Daemon_companionService] = v3;
    v4 = objc_allocWithZone(UNUserNotificationCenter);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithBundleIdentifier:v5];

    *&v0[OBJC_IVAR____TtC3tzd6Daemon_notificationCenter] = v6;
    v7 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:@"com.apple.timezoneupdates.tzd.server"];
    *&v0[OBJC_IVAR____TtC3tzd6Daemon_listener] = v7;
    *&v0[OBJC_IVAR____TtC3tzd6Daemon_assetDetectedType] = 0;
    v19.receiver = v0;
    v19.super_class = type metadata accessor for Daemon();
    v8 = objc_msgSendSuper2(&v19, "init");
    v9 = *&v8[OBJC_IVAR____TtC3tzd6Daemon_listener];
    v10 = v8;
    [v9 setDelegate:v10];
    v11 = OBJC_IVAR____TtC3tzd6Daemon_notificationCenter;
    [*&v10[OBJC_IVAR____TtC3tzd6Daemon_notificationCenter] setDelegate:v10];
    [*&v10[v11] setWantsNotificationResponsesDelivered];
    v12 = static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100019340;
    if (qword_100025150 != -1)
    {
      swift_once();
    }

    v14 = byte_1000263D0;
    v15 = sub_10000C674();
    v16 = 29545;
    if (!v14)
    {
      v16 = 0x746F6E207369;
    }

    v17 = 0xE600000000000000;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v15;
    if (v14)
    {
      v17 = 0xE200000000000000;
    }

    *(v13 + 32) = v16;
    *(v13 + 40) = v17;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Device %{public}@ internal build", 32, 2, &_mh_execute_header, v18, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000FAA0(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v34 = a2;
    v35 = v9;
    v36 = v8;
    v37 = v5;
    v12 = String.init(cString:)();
    v14 = v13;
    v15 = static os_log_type_t.debug.getter();
    v33[1] = sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000192B0;
    type = xpc_get_type(a1);
    *(v16 + 56) = &type metadata for OpaquePointer;
    *(v16 + 64) = &protocol witness table for OpaquePointer;
    *(v16 + 32) = type;
    *(v16 + 96) = &type metadata for String;
    v18 = sub_10000C674();
    *(v16 + 104) = v18;
    *(v16 + 72) = v12;
    *(v16 + 80) = v14;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("notifyd event type: %{public}@, event name: %{public}@", 54, 2, &_mh_execute_header, v19, v15, v16);

    if (v12 == 0xD00000000000003FLL && 0x800000010001AE30 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
      v20 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      v22 = v34;
      *(v21 + 16) = v34;
      v42 = sub_100015074;
      v43 = v21;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v23 = &unk_1000216E0;
LABEL_6:
      v40 = sub_10000F608;
      v41 = v23;
      v24 = _Block_copy(&aBlock);
      v25 = v22;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000061AC();
      sub_100003BE0(&unk_100025830, &qword_100019378);
      sub_100014338();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v37 + 8))(v7, v4);
      (*(v35 + 8))(v11, v36);
      return;
    }

    if (v12 == 0xD00000000000003BLL && 0x800000010001AE70 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
      v20 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      v22 = v34;
      *(v29 + 16) = v34;
      v42 = sub_100015050;
      v43 = v29;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v23 = &unk_100021690;
      goto LABEL_6;
    }

    v30 = static os_log_type_t.fault.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100019340;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = v18;
    *(v31 + 32) = v12;
    *(v31 + 40) = v14;
    v37 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Unexpected XPC event name %{public}@", 36, 2, &_mh_execute_header, v37, v30, v31);

    v32 = v37;
  }

  else
  {
    v26 = static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100019340;
    aBlock = a1;
    swift_unknownObjectRetain();
    sub_100003BE0(&unk_1000258F0, &qword_100019700);
    sub_100003BE0(&qword_100025508, &qword_1000194F8);
    swift_dynamicCast();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v28 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Unexpected XPC event %{public}@", 31, 2, &_mh_execute_header, v28, v26, v27);
  }
}

uint64_t sub_1000100F4(char a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v2;
  swift_unknownObjectRetain();
  v6 = v2;
  v7 = static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100019340;
  v9 = sub_10000C674();
  v10 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v10 = 0x65736C6166;
  }

  v11 = 0xE500000000000000;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = v9;
  if (a1)
  {
    v11 = 0xE400000000000000;
  }

  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Beginning advancePipeline with forceCatalogDownload: %{public}@", 63, 2, &_mh_execute_header, v12, v7, v8);

  if (a1)
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    if (qword_100025148 != -1)
    {
      swift_once();
    }

    v15 = qword_1000263C8;
    v20[4] = sub_100009328;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10000F768;
    v20[3] = &unk_100021460;
    v16 = _Block_copy(v20);
    [v13 startCatalogDownload:v14 options:v15 then:v16];
    _Block_release(v16);

    v17 = static os_log_type_t.debug.getter();
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Advanced asset pipeline", 23, 2, &_mh_execute_header, v18, v17, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_10000C19C(sub_1000150F0, v5);
  }
}

void sub_1000103AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    v5 = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100019340;
    v7 = _convertErrorToNSError(_:)();
    *(v6 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v6 + 64) = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr, &protocol conformance descriptor for NSObject);
    *(v6 + 32) = v7;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Error advancing asset pipeline: %{public}@", 42, 2, &_mh_execute_header, v8, v5, v6);

    if (!a2)
    {
      return;
    }
  }

  else
  {
    v9 = static os_log_type_t.debug.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Advanced asset pipeline", 23, 2, &_mh_execute_header, v10, v9, _swiftEmptyArrayStorage);

    if (!a2)
    {
      return;
    }
  }

  sub_100012694(a1, a2);
}

uint64_t sub_100010574(uint64_t a1)
{
  v2 = static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("New asset metadata notification", 31, 2, &_mh_execute_header, v3, v2, _swiftEmptyArrayStorage);

  v4 = os_transaction_create();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = v1;
  swift_unknownObjectRetain();
  v7 = static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100019340;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10000C674();
  *(v8 + 32) = 0x65736C6166;
  *(v8 + 40) = 0xE500000000000000;
  v9 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Beginning advancePipeline with forceCatalogDownload: %{public}@", 63, 2, &_mh_execute_header, v9, v7, v8);

  sub_10000C19C(sub_1000150F0, v5);
  swift_unknownObjectRelease();
}

uint64_t sub_10001070C(uint64_t a1)
{
  v2 = static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Asset downloaded notification", 29, 2, &_mh_execute_header, v3, v2, _swiftEmptyArrayStorage);

  v4 = os_transaction_create();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = v1;
  swift_unknownObjectRetain();
  v7 = static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100019340;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10000C674();
  *(v8 + 32) = 0x65736C6166;
  *(v8 + 40) = 0xE500000000000000;
  v9 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Beginning advancePipeline with forceCatalogDownload: %{public}@", 63, 2, &_mh_execute_header, v9, v7, v8);

  sub_10000C19C(sub_1000146C0, v5);
  swift_unknownObjectRelease();
}

uint64_t sub_1000108A4(void (*a1)(void (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  swift_unknownObjectRetain();
  a1(nullsub_1, v5);
}

uint64_t sub_10001098C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Begin isUpdateWaiting", 21, 2, &_mh_execute_header, v12, v11, _swiftEmptyArrayStorage);

  v13 = os_transaction_create();
  sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v16 = v20;
  v15[4] = v20;
  v15[5] = v13;
  aBlock[4] = sub_100014304;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F608;
  aBlock[3] = &unk_1000213C0;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  sub_100014328(a1, v16);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000061AC();
  sub_100003BE0(&unk_100025830, &qword_100019378);
  sub_100014338();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  swift_unknownObjectRelease();

  (*(v23 + 8))(v7, v5);
  return (*(v21 + 8))(v10, v22);
}

uint64_t sub_100010CB8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  result = sub_100014504();
  if (a2)
  {
    a2(result & 1);
    return sub_1000100F4(1, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

xpc_activity_state_t sub_100010E24(_xpc_activity_s *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    v13 = static os_log_type_t.info.getter();
    v22 = v5;
    v14 = v13;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Beginning periodic remote asset check", 37, 2, &_mh_execute_header, v15, v14, _swiftEmptyArrayStorage);

    v16 = os_transaction_create();
    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = v16;
    aBlock[4] = sub_100015024;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F608;
    aBlock[3] = &unk_100021640;
    v19 = _Block_copy(aBlock);
    v20 = a2;
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000061AC();
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100014338();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    swift_unknownObjectRelease();

    (*(v22 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

xpc_activity_state_t sub_100011150(_xpc_activity_s *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    v11 = static os_log_type_t.info.getter();
    v19 = v3;
    v12 = v11;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Beginning periodic stale data cleanup", 37, 2, &_mh_execute_header, v13, v12, _swiftEmptyArrayStorage);

    v14 = os_transaction_create();
    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    aBlock[4] = sub_100014FE0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F608;
    aBlock[3] = &unk_1000215F0;
    v17 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000061AC();
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100014338();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    swift_unknownObjectRelease();

    (*(v19 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_100011470()
{
  v1 = v0;
  sub_1000025DC(0, &qword_100025908, &off_1000206E0);
  v2 = [swift_getObjCClassFromMetadata() options];
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v14 = 0x496567617373654DLL;
    *(&v14 + 1) = 0xE900000000000044;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16))
    {
      v5 = sub_100012E10(v13);
      if (v6)
      {
        sub_100006040(*(v4 + 56) + 32 * v5, v12);

        sub_10000C7AC(v13);
        sub_10000D140(v12, &v14);
        swift_dynamicCast();
        *(v1 + OBJC_IVAR____TtC3tzd6Daemon_assetDetectedType) = v11;
        v7 = OBJC_IVAR____TtC3tzd6Daemon_companionService;
        [*(v1 + OBJC_IVAR____TtC3tzd6Daemon_companionService) setProtobufAction:"handleAssetDetectedMsg:" forIncomingRequestsOfType:?];
        v8 = *(v1 + v7);
        sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
        v9 = v8;
        v10 = static OS_dispatch_queue.main.getter();
        [v9 addDelegate:v1 queue:v10];

        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100011624(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  sub_100003BE0(&qword_100025750, &qword_100019388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100019340;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  v8 = sub_10001404C(inited);
  swift_setDeallocating();
  sub_1000141B4(inited + 32);
  v9 = OBJC_IVAR____TtC3tzd6Daemon_companionService;
  v10 = [*(v4 + OBJC_IVAR____TtC3tzd6Daemon_companionService) accounts];
  if (!v10)
  {
    __break(1u);
  }

  v11 = v10;
  sub_1000025DC(0, &qword_100025758, IDSAccount_ptr);
  sub_100014208(&qword_100025760, &qword_100025758, IDSAccount_ptr, &protocol conformance descriptor for NSObject);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_10000F64C(v12);

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = objc_allocWithZone(IDSProtobuf);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithProtobufData:isa type:a3 isResponse:0];

  if (!v16)
  {

LABEL_8:

    return;
  }

  v17 = *(v4 + v9);
  v18 = v16;
  v19 = v13;
  sub_100011CF4(v8);
  v20 = Set._bridgeToObjectiveC()().super.isa;

  sub_100003BE0(&qword_100025768, &qword_1000196C8);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100019340;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45[1] = v22;
  AnyHashable.init<A>(_:)();
  *(v21 + 96) = &type metadata for Double;
  *(v21 + 72) = 0x410FA40000000000;
  sub_100013C34(v21);
  swift_setDeallocating();
  sub_1000041E8(v21 + 32, &unk_100025770, &qword_1000196D0);
  v23 = v19;
  v24 = Dictionary._bridgeToObjectiveC()().super.isa;

  v44 = 0;
  v45[0] = 0;
  v25 = [v17 sendProtobuf:v18 fromAccount:v19 toDestinations:v20 priority:a4 options:v24 identifier:v45 error:&v44];

  v43 = v18;
  v26 = v45[0];
  if (v25)
  {
    v27 = v44;
    v28 = v26;
    v29 = static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1000192B0;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    *(v30 + 56) = sub_1000025DC(0, &qword_100025500, NSObject_ptr);
    *(v30 + 64) = sub_100014208(&qword_100025780, &qword_100025500, NSObject_ptr, &protocol conformance descriptor for NSObject);
    *(v30 + 32) = v31;
    if (v28)
    {
      v32 = v28;

      *(v30 + 96) = sub_1000025DC(0, &qword_100025510, NSString_ptr);
      *(v30 + 104) = sub_100014208(&unk_100025790, &qword_100025510, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v30 + 72) = v32;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v33 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("IDS send successful: %{public}@ with ID %{public}@", 50, 2, &_mh_execute_header, v33, v29, v30);

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v34 = v44;
  v35 = v26;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v36 = static os_log_type_t.info.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000192A0;
  v38 = Data._bridgeToObjectiveC()().super.isa;
  *(v37 + 56) = sub_1000025DC(0, &qword_100025500, NSObject_ptr);
  *(v37 + 64) = sub_100014208(&qword_100025780, &qword_100025500, NSObject_ptr, &protocol conformance descriptor for NSObject);
  *(v37 + 32) = v38;
  if (!v35)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v39 = v35;

  *(v37 + 96) = sub_1000025DC(0, &qword_100025510, NSString_ptr);
  *(v37 + 104) = sub_100014208(&unk_100025790, &qword_100025510, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v37 + 72) = v39;
  v40 = _convertErrorToNSError(_:)();
  *(v37 + 136) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
  *(v37 + 144) = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr, &protocol conformance descriptor for NSObject);
  *(v37 + 112) = v40;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v41 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("IDS send failed: %{public}@ with ID %{public}@, error %@", 56, 2, &_mh_execute_header, v41, v36, v37);
}

Swift::Int sub_100011CF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003BE0(&qword_1000257B0, &qword_1000196E0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
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

    v5 = *(a1 + 56 + 8 * v12);
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

void sub_1000120D4(void *a1)
{
  v2 = os_transaction_create();
  if (a1 && (v3 = [a1 assetVersion]) != 0)
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

  v25 = type metadata accessor for TZSAsset(0);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  swift_unknownObjectRetain();
  v9 = static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100019340;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_10000C674();
  *(v10 + 64) = v11;
  v12 = 0x29656E6F6E28;
  if (v7)
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  if (v7)
  {
    v13 = v7;
  }

  *(v10 + 32) = v12;
  *(v10 + 40) = v13;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("synchronizeAssetsConditional with version %{public}@", 52, 2, &_mh_execute_header, v14, v9, v10);

  if (v7)
  {

    sub_10000CC2C(v5, v7, v25, sub_100014F08, v8);
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v15 = static os_log_type_t.debug.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100019340;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v11;
    *(v16 + 32) = 1702195828;
    *(v16 + 40) = 0xE400000000000000;
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Beginning advancePipeline with forceCatalogDownload: %{public}@", 63, 2, &_mh_execute_header, v17, v15, v16);

    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    if (qword_100025148 != -1)
    {
      swift_once();
    }

    v20 = qword_1000263C8;
    aBlock[4] = sub_100009328;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F768;
    aBlock[3] = &unk_100021500;
    v21 = _Block_copy(aBlock);
    [v18 startCatalogDownload:v19 options:v20 then:v21];
    _Block_release(v21);

    v22 = static os_log_type_t.info.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100019340;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v11;
    *(v23 + 32) = 1701736302;
    *(v23 + 40) = 0xE400000000000000;
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Checked for updated assets in response to IDS; error: %{public}@", 64, 2, &_mh_execute_header, v24, v22, v23);
    swift_unknownObjectRelease();
  }
}

void sub_1000124D4(uint64_t a1)
{
  v2 = static os_log_type_t.info.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = xmmword_100019340;
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
    v8 = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    v9 = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr, &protocol conformance descriptor for NSObject);
    *&v7 = v5;
    sub_10000D128(&v7, v4 + 32);
  }

  else
  {
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_10000C674();
    *(v4 + 32) = 1701736302;
    *(v4 + 40) = 0xE400000000000000;
  }

  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Checked for updated assets in response to IDS; error: %{public}@", 64, 2, &_mh_execute_header, v6, v2, v4);
}

void sub_100012694(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v10 = [objc_allocWithZone(TZDAssetDetectedMsg) init];
    if (v10)
    {
      v4 = String._bridgeToObjectiveC()();
      [v10 setAssetVersion:v4];

      v5 = [v10 data];
      if (v5)
      {
        v6 = v5;
        v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        sub_100011624(v7, v9, *(v2 + OBJC_IVAR____TtC3tzd6Daemon_assetDetectedType), 300);
        sub_100012B40(v7, v9);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_1000127AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Daemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100012860(void *a1, void (**a2)(void))
{
  v4 = static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100019340;
  v6 = [a1 actionIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10000C674();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Notification response received: %{public}@", 42, 2, &_mh_execute_header, v10, v4, v5);

  v11 = [a1 actionIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 0xD00000000000004ALL && 0x800000010001A890 == v14)
  {

LABEL_5:
    v16 = objc_allocWithZone(FBSShutdownOptions);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithReason:v17];

    [v18 setRebootType:1];
    v19 = [objc_opt_self() sharedService];
    [v19 shutdownWithOptions:v18];

    goto LABEL_6;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_6:
  a2[2](a2);
  _Block_release(a2);
}

uint64_t sub_100012B40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_100012B94(uint64_t a1)
{
  v2 = static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("User notification posted", 24, 2, &_mh_execute_header, v3, v2, &_swiftEmptyArrayStorage);

  if (a1)
  {
    swift_errorRetain();
    v4 = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100019340;
    v6 = _convertErrorToNSError(_:)();
    *(v5 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v5 + 64) = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr, &protocol conformance descriptor for NSObject);
    *(v5 + 32) = v6;
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Failed to register notification request for updated time zones. Error: %{public}@", 81, 2, &_mh_execute_header, v7, v4, v5);
  }
}

id sub_100012D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100012E10(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100012F60(a1, v4);
}

unint64_t sub_100012E54(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100013028(a1, a2, v4);
}

unint64_t sub_100012ECC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000130E0(a1, v2);
}

unint64_t sub_100012F60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001424C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000C7AC(v8);
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

unint64_t sub_100013028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000130E0(uint64_t a1, uint64_t a2)
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

void sub_1000131E4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000025DC(0, &qword_100025758, IDSAccount_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000025DC(0, &qword_100025758, IDSAccount_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_100013408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BE0(&qword_100025550, &qword_100019650);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100012E54(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_10001350C()
{
  v0 = objc_opt_self();
  v1 = &off_100024000;
  v2 = [v0 defaultManager];
  if (qword_100025198 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = String.init(contentsOfFile:)();
    v7 = v6;
    v8 = objc_allocWithZone(NSRegularExpression);
    v9 = sub_100012D34(0xD000000000000041, 0x800000010001AF20, 0);

    v10 = String.UTF16View.count.getter();

    v11 = String._bridgeToObjectiveC()();
    v38 = v9;
    v12 = [v9 matchesInString:v11 options:0 range:{0, v10}];

    sub_1000025DC(0, &qword_100025900, NSTextCheckingResult_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() != 1)
      {
        goto LABEL_10;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_10;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;
    [v14 rangeAtIndex:1];

    Range<>.init(_:in:)();
    v1 = &off_100024000;
    if ((v16 & 1) == 0)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v13 + 32);
      }

      v30 = v29;

      [v30 rangeAtIndex:2];

      Range<>.init(_:in:)();
      v1 = &off_100024000;
      if ((v31 & 1) == 0)
      {
        String.subscript.getter();
        v37 = static String._fromSubstring(_:)();
        v33 = v32;

        String.subscript.getter();

        v34 = static String._fromSubstring(_:)();
        v36 = v35;

        v40[0] = v37;
        v40[1] = v33;
        v40[2] = v34;
        v40[3] = v36;
        v41 = 0;
        sub_10000E698(v40);

        v1 = &off_100024000;

LABEL_12:
        v20 = [v0 v1[300]];
        v21 = String._bridgeToObjectiveC()();
        v39[0] = 0;
        v22 = [v20 removeItemAtPath:v21 error:v39];

        if (v22)
        {
          v23 = v39[0];
        }

        else
        {
          v24 = v39[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v25 = static os_log_type_t.error.getter();
          sub_100003BE0(&qword_1000252B8, &qword_100019310);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_100019340;
          v27 = _convertErrorToNSError(_:)();
          *(v26 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
          *(v26 + 64) = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr, &protocol conformance descriptor for NSObject);
          *(v26 + 32) = v27;
          sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
          v28 = static OS_os_log.default.getter();
          os_log(_:dso:log:type:_:)("Could not read version transition file due to %{public}@", 56, 2, &_mh_execute_header, v28, v25, v26);
        }

        return;
      }

LABEL_11:
      v17 = static os_log_type_t.fault.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100019340;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_10000C674();
      *(v18 + 32) = v5;
      *(v18 + 40) = v7;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v19 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Corrupt version transition string %{public}@", 44, 2, &_mh_execute_header, v19, v17, v18);

      goto LABEL_12;
    }

LABEL_10:

    goto LABEL_11;
  }
}

unint64_t sub_100013B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BE0(&unk_100025880, &unk_100019510);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D2B8(v4, &v11, &qword_1000254F0, &qword_1000194E8);
      v5 = v11;
      result = sub_100012ECC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000D140(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100013C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BE0(&qword_1000257A8, &qword_1000196D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D2B8(v4, v13, &unk_100025770, &qword_1000196D0);
      result = sub_100012E10(v13);
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
      result = sub_10000D140(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100013D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.utf8CString.getter();
  v13 = os_transaction_create();

  sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v13;
  aBlock[4] = sub_100014FD4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F608;
  aBlock[3] = &unk_100021578;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000061AC();
  sub_100003BE0(&unk_100025830, &qword_100019378);
  sub_100014338();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

Swift::Int sub_10001404C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BE0(&qword_1000257B8, qword_1000196E8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100014208(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000025DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000142A8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000142B4()
{
  if (*(v0 + 24))
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014328(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100014338()
{
  result = qword_100025350;
  if (!qword_100025350)
  {
    sub_100006110(&unk_100025830, &qword_100019378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025350);
  }

  return result;
}

BOOL sub_10001439C(void *a1)
{
  v3 = [a1 valueForEntitlement:@"com.apple.private.timezoneupdates.tzd.access"];
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000041E8(v8, &qword_1000252D8, &qword_100019318);
    [a1 setExportedObject:v1];
    v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___TZUpdateProtocol];
    [a1 setExportedInterface:v4];

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v5 = static OS_dispatch_queue.main.getter();
    [a1 _setQueue:v5];

    v6 = &selRef_resume;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_1000041E8(v8, &qword_1000252D8, &qword_100019318);
    v6 = &selRef_invalidate;
  }

  [a1 *v6];
  return v3 != 0;
}

BOOL sub_100014504()
{
  v0 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  sub_100003D50(&v13);
  if (!v14)
  {
    return 0;
  }

  v18 = v13;
  v19 = v14;
  v20 = v15;
  v21[0] = v16[0];
  *(v21 + 10) = *(v16 + 10);
  v3 = sub_1000029F0();
  v5 = v4;
  sub_1000041E8(&v13, &qword_100025300, qword_100019328);
  sub_1000037D8(v17);
  v6 = sub_1000029F0();
  v8 = v7;
  sub_100003CD0(v17);
  v12[2] = v6;
  v12[3] = v8;
  v12[0] = v3;
  v12[1] = v5;
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_100004194();
  v10 = StringProtocol.compare<A>(_:options:range:locale:)();
  sub_1000041E8(v2, &unk_100025840, &unk_1000194B0);

  return v10 == -1;
}

uint64_t sub_1000146C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100014708(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    static os_log_type_t.info.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000192B0;
    if (a2)
    {
      v13 = v12;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_10000C674();
      v13[4] = a1;
      v13[5] = a2;
      if (a4)
      {

        v14 = _convertErrorToNSError(_:)();
        v13[12] = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
        v13[13] = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr, &protocol conformance descriptor for NSObject);
        v13[9] = v14;
        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v8 = static OS_os_log.default.getter();
        v9 = "IDS Message delivery failed for ID %{public}@ with error %@";
        v10 = 59;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100019340;
  if (!a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10000C674();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

  v8 = static OS_os_log.default.getter();
  v9 = "IDS Message delivered successfully with ID %{public}@";
  v10 = 53;
LABEL_7:
  v15 = v8;
  os_log(_:dso:log:type:_:)(v9, v10, 2, &_mh_execute_header);
}

void sub_10001491C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = static os_log_type_t.info.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000192A0;
  if (!a2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  *(v9 + 56) = sub_1000025DC(0, &qword_100025860, IDSProtobuf_ptr);
  v10[8] = sub_100014208(&qword_100025868, &qword_100025860, IDSProtobuf_ptr, &protocol conformance descriptor for NSObject);
  v10[4] = a2;
  if (!a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10[12] = &type metadata for String;
  v10[13] = sub_10000C674();
  v10[9] = a3;
  v10[10] = a4;
  if (!a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10[17] = sub_1000025DC(0, &qword_100025758, IDSAccount_ptr);
  v10[18] = sub_100014208(&unk_100025870, &qword_100025758, IDSAccount_ptr, &protocol conformance descriptor for NSObject);
  v10[14] = a1;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v11 = a2;

  v12 = a1;
  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Unhandled incoming protobuf %@ fromID: %{public}@ on account %{public}@", 71, 2, &_mh_execute_header, v13, v8, v10);
}

uint64_t sub_100014AF4(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 data];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    sub_100014E7C(v10, v12);
    v13.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100012B40(v10, v12);
  }

  else
  {
    v13.super.isa = 0;
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v14 = [objc_allocWithZone(TZDAssetDetectedMsg) initWithData:v13.super.isa];

  sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  aBlock[4] = sub_100014E60;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F608;
  aBlock[3] = &unk_1000214B0;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000061AC();
  sub_100003BE0(&unk_100025830, &qword_100019378);
  sub_100014338();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  sub_100014E68(v10, v12);
  (*(v23 + 8))(v4, v2);
  return (*(v21 + 8))(v7, v22);
}

uint64_t sub_100014E28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014E68(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100012B40(result, a2);
  }

  return result;
}

uint64_t sub_100014E7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100014ED0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014F34(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014F44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014F94()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014FE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000150F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v13 = static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100019340;
    v15 = _convertErrorToNSError(_:)();
    *(v14 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v14 + 64) = sub_1000172A0();
    *(v14 + 32) = v15;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Unable to fetch time zones from World Clock. Error: %{public}@", 62, 2, &_mh_execute_header, v16, v13, v14);

    a3(0);
  }

  else
  {
    sub_100003BE0(&qword_100025750, &qword_100019388);
    inited = swift_initStackObject();
    v28 = xmmword_100019340;
    *(inited + 16) = xmmword_100019340;
    static TimeZone.current.getter();
    v19 = TimeZone.identifier.getter();
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    v29 = a1;

    sub_10000F0B0(inited);
    v22 = v29;
    v23 = static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v24 = swift_allocObject();
    *(v24 + 16) = v28;
    *(v24 + 56) = sub_100003BE0(&qword_100025338, &qword_100019370);
    *(v24 + 64) = sub_100006204(&qword_100025340, &qword_100025338, &qword_100019370, &protocol conformance descriptor for [A]);
    *(v24 + 32) = v22;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

    v25 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Zones in use: %@", 16, 2, &_mh_execute_header, v25, v23, v24);

    v26 = sub_100016138(v22, a5);

    v27 = *(v26 + 16);

    return a3(v27 != 0);
  }
}

char *sub_100015478(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BE0(&qword_100025750, &qword_100019388);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100015584(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100015934(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000156D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003BE0(&qword_1000257B8, qword_1000196E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100015934(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000156D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100015AB4();
      goto LABEL_16;
    }

    sub_100015C10(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100015AB4()
{
  v1 = v0;
  sub_100003BE0(&qword_1000257B8, qword_1000196E8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_100015C10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003BE0(&qword_1000257B8, qword_1000196E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t *sub_100015E48(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_100016A5C(v9, a2, a3, a4, a5);

    swift_bridgeObjectRelease_n();
    return v10;
  }

  return result;
}

Swift::Int sub_100015EF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003BE0(&unk_100025920, &unk_100019710);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100016138(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000162D8(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100017308(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

Swift::Int sub_1000162D8(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v13 = Hasher._finalize()();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1000164B8(v25, a2, v24, a4);
}

Swift::Int sub_1000164B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003BE0(&qword_1000257B8, qword_1000196E8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1000166DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v14 = static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100019340;
    v16 = _convertErrorToNSError(_:)();
    *(v15 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v15 + 64) = sub_1000172A0();
    *(v15 + 32) = v16;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Unable to fetch time zones from World Clock. Error: %{public}@", 62, 2, &_mh_execute_header, v17, v14, v15);

    a4();
  }

  else
  {
    sub_100003BE0(&qword_100025750, &qword_100019388);
    inited = swift_initStackObject();
    v28 = xmmword_100019340;
    *(inited + 16) = xmmword_100019340;
    static TimeZone.current.getter();
    v19 = TimeZone.identifier.getter();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    v29 = a1;

    sub_10000F0B0(inited);
    v22 = v29;
    v23 = static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v24 = swift_allocObject();
    *(v24 + 16) = v28;
    *(v24 + 56) = sub_100003BE0(&qword_100025338, &qword_100019370);
    *(v24 + 64) = sub_100006204(&qword_100025340, &qword_100025338, &qword_100019370, &protocol conformance descriptor for [A]);
    *(v24 + 32) = v22;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

    v25 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Zones in use: %@", 16, 2, &_mh_execute_header, v25, v23, v24);

    v26 = sub_100016138(v22, a3);

    v27 = *(v26 + 16);

    sub_100004B58(v27 != 0, a4, a5);
  }
}

Swift::Int sub_100016A5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v35 = a4;
  v32 = a1;
  v7 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  __chkstk_darwin(v7 - 8);
  v34 = &v31 - v8;
  v36 = a3;
  v37 = a5;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;

  v33 = 0;
  v17 = 0;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_11:
    v21 = v18 | (v17 << 6);
    v22 = (*(v36 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = v21;
    v40 = v35;
    v41 = v37;
    v38 = v23;
    v39 = v24;
    v26 = type metadata accessor for Locale();
    v27 = v34;
    (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
    sub_100004194();

    v28 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_10001733C(v27);

    v14 = v42;
    if (v28 == -1)
    {
      *(v32 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_15:
        v30 = sub_100015EF4(v32, v31, v33, v36);

        return v30;
      }
    }
  }

  v19 = v17;
  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
      goto LABEL_15;
    }

    v20 = *(v10 + 8 * v17);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100016CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v12 = sub_100015E48(v13, v9, a1, a2, a3);

      goto LABEL_7;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_100016A5C((&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_7:
  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_100016E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100015584(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_100016F34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  if (*(a1 + 56))
  {

    sub_100004B58(1, a4, a5);
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {

      v8 = sub_100016CE0(v5, a2, a3);

      v9 = 1 << *(v8 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v8 + 64);
      v12 = (v9 + 63) >> 6;

      v13 = 0;
      v14 = _swiftEmptyArrayStorage;
      while (v11)
      {
LABEL_15:
        v16 = *(*(v8 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
        v17 = *(v16 + 16);
        v18 = *(v14 + 2);
        v19 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          goto LABEL_31;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v19 > *(v14 + 3) >> 1)
        {
          if (v18 <= v19)
          {
            v21 = v18 + v17;
          }

          else
          {
            v21 = v18;
          }

          v14 = sub_100015478(isUniquelyReferenced_nonNull_native, v21, 1, v14);
        }

        v11 &= v11 - 1;
        if (*(v16 + 16))
        {
          if ((*(v14 + 3) >> 1) - *(v14 + 2) < v17)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v22 = *(v14 + 2);
            v23 = __OFADD__(v22, v17);
            v24 = v22 + v17;
            if (v23)
            {
              goto LABEL_34;
            }

            *(v14 + 2) = v24;
          }
        }

        else
        {

          if (v17)
          {
            goto LABEL_32;
          }
        }
      }

      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {

          v25 = sub_100016E9C(v14);

          v26 = static os_log_type_t.debug.getter();
          sub_100003BE0(&qword_1000252B8, &qword_100019310);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_100019340;
          *(v27 + 56) = sub_100003BE0(&qword_100025910, &qword_100019708);
          *(v27 + 64) = sub_100006204(&qword_100025918, &qword_100025910, &qword_100019708, &protocol conformance descriptor for Set<A>);
          *(v27 + 32) = v25;
          sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

          v28 = static OS_os_log.default.getter();
          os_log(_:dso:log:type:_:)("Zones to present alerts for: %@", 31, 2, &_mh_execute_header, v28, v26, v27, 0);

          sub_1000057F4(v25, a4, a5);

          return;
        }

        v11 = *(v8 + 64 + 8 * v15);
        ++v13;
        if (v11)
        {
          v13 = v15;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    else
    {
      a4();
    }
  }
}

unint64_t sub_1000172A0()
{
  result = qword_1000257A0;
  if (!qword_1000257A0)
  {
    sub_1000025DC(255, &qword_1000252D0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000257A0);
  }

  return result;
}

Swift::Int sub_100017308@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1000162D8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10001733C(uint64_t a1)
{
  v2 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000173A4()
{
  v0._countAndFlagsBits = 0x656E6F7A656D6974;
  v0._object = 0xE90000000000002FLL;
  String.append(_:)(v0);
  qword_1000263E8 = 0x2F62642F7261762FLL;
  unk_1000263F0 = 0xE800000000000000;
}

void sub_100017410()
{
  v0._object = 0x800000010001B070;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  qword_1000263F8 = 0x6168732F7273752FLL;
  unk_100026400 = 0xEB000000002F6572;
}

void sub_100017484()
{
  v0._countAndFlagsBits = 7693161;
  v0._object = 0xE300000000000000;
  String.append(_:)(v0);
  qword_100026408 = 0x6168732F7273752FLL;
  unk_100026410 = 0xEB000000002F6572;
}

uint64_t sub_1000174EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100025178 != -1)
  {
    swift_once();
  }

  v5 = qword_100026408;
  v6 = unk_100026410;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001B050;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);

  qword_100026418 = v5;
  unk_100026420 = v6;
  return result;
}

uint64_t sub_1000175EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100025168 != -1)
  {
    swift_once();
  }

  v5 = qword_1000263E8;
  v6 = unk_1000263F0;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001B090;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);

  qword_100026448 = v5;
  unk_100026450 = v6;
  return result;
}

uint64_t sub_1000176D4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  if (qword_100025168 != -1)
  {
    swift_once();
  }

  v11 = qword_1000263E8;
  v12 = unk_1000263F0;
  swift_bridgeObjectRetain_n();
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  String.append(_:)(v9);

  *a4 = v11;
  *a5 = v12;
  return result;
}

uint64_t sub_100017788()
{
  result = sub_1000177AC();
  qword_100026478 = result;
  qword_100026480 = v1;
  return result;
}

uint64_t sub_1000177AC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100025180 != -1)
  {
    swift_once();
  }

  URL.init(fileURLWithPath:)();
  v4 = String.init(contentsOf:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_1000179BC()
{
  result = qword_100025780;
  if (!qword_100025780)
  {
    sub_1000025DC(255, &qword_100025500, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025780);
  }

  return result;
}