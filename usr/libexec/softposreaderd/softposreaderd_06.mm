void sub_10008C99C()
{
  if (qword_10039D3A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A0738);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v2 = 136315394;
    v3 = _typeName(_:qualified:)();
    v5 = sub_100008F6C(v3, v4, &v10);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2080;
    v6 = showFunction(signature:_:)(0x544F6C65636E6163, 0xEB00000000292841, _swiftEmptyArrayStorage);
    v8 = sub_100008F6C(v6, v7, &v10);

    *(v2 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s.%s", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10008CB74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008CBD0()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  v13[1] = &xmmword_1002C4CC0;
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.background(_:), v2);
  static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v5, v2);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_10008D750(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10000BEC0(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v14;
  *(v14 + 16) = v10;
  return v11;
}

_UNKNOWN **sub_10008CF0C()
{
  sub_10008C598();
  if (v0)
  {
    return &off_10037E090;
  }

  else
  {
    return 0xD0000000000009E5;
  }
}

uint64_t sub_10008CFAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a6;
  v55 = a8;
  v52 = a7;
  v53 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v14 - 8);
  v51[2] = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D3A0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A0738);
  sub_1000094F4(a3, a4);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  sub_100009548(a3, a4);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v51[1] = a1;
    v20 = v19;
    aBlock[0] = swift_slowAlloc();
    *v20 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = sub_100008F6C(v21, v22, aBlock);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1002C1690;
    v25 = String.redactedTokenFromBase64()();
    *(v24 + 56) = &type metadata for String;
    *(v24 + 32) = v25;
    static String.Encoding.utf8.getter();
    v26 = String.init(data:encoding:)();
    v28 = 4271950;
    if (v27)
    {
      v28 = v26;
    }

    v29 = 0xE300000000000000;
    if (v27)
    {
      v29 = v27;
    }

    *(v24 + 64) = v28;
    *(v24 + 72) = v29;
    *(v24 + 88) = &type metadata for String;
    *(v24 + 96) = 0x3E6B636F6C623CLL;
    *(v24 + 104) = 0xE700000000000000;
    *(v24 + 152) = &type metadata for String;
    *(v24 + 120) = &type metadata for String;
    *(v24 + 128) = 0x3E6B636F6C623CLL;
    *(v24 + 136) = 0xE700000000000000;
    v30 = showFunction(signature:_:)(0xD000000000000044, 0x80000001003488F0, v24);
    v32 = v31;

    v33 = sub_100008F6C(v30, v32, aBlock);

    *(v20 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000094F4(a3, a4);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  sub_100009548(a3, a4);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    static String.Encoding.utf8.getter();
    v38 = String.init(data:encoding:)();
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v38 = 4271950;
      v40 = 0xE300000000000000;
    }

    v41 = sub_100008F6C(v38, v40, aBlock);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "PAYLOAD %s", v36, 0xCu);
    sub_10000959C(v37);
  }

  v42 = swift_allocObject();
  v44 = v53;
  v43 = v54;
  v42[2] = v53;
  v42[3] = v43;
  v45 = v55;
  v42[4] = v52;
  v42[5] = v45;
  aBlock[4] = sub_10008D6C4;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100381F20;
  v46 = _Block_copy(aBlock);
  sub_1000696D8(v44, v43);

  v47 = v56;
  static DispatchQoS.unspecified.getter();
  v62 = _swiftEmptyArrayStorage;
  sub_10008D750(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10000BEC0(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  v48 = v58;
  v49 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);
  (*(v60 + 8))(v48, v49);
  (*(v57 + 8))(v47, v59);
}

uint64_t sub_10008D67C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008D6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008D6E8(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A0698, &qword_1002C4D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008D750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008D798@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SLAMScript.SEFWDetails(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100090134(v1, v12, type metadata accessor for SLAMScript.SEFWDetails);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v13 = type metadata accessor for URL();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_10008FED0();
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
    URL.init(filePath:directoryHint:relativeTo:)();
    return sub_10009019C(v12, type metadata accessor for SLAMScript.SEFWDetails);
  }
}

uint64_t sub_10008D9FC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0820);
  sub_10000403C(v0, qword_1003A0820);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

void sub_10008DC14(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100004074(&qword_1003A0A78, &qword_1002C4D70);
  __chkstk_darwin(v6 - 8);
  v8 = v55 - v7;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A0820);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v59[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100008F6C(a1, a2, v59);
    _os_log_impl(&_mh_execute_header, v10, v11, "LogSink: %s", v12, 0xCu);
    sub_10000959C(v13);
  }

  sub_10000411C(0, &qword_1003A0A80, NSPredicate_ptr);
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002C1660;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10009058C();
  *(v14 + 32) = 0xD000000000000044;
  *(v14 + 40) = 0x8000000100349CC0;
  v15 = NSPredicate.init(format:_:)();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 evaluateWithObject:v16];

  if (!v17)
  {
    return;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "SLAM lib started replaying failed c-apdus", v20, 2u);
  }

  v59[0] = a1;
  v59[1] = a2;
  v57 = 0x2B645C20786469;
  v58 = 0xE700000000000000;
  v21 = type metadata accessor for Locale();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_10008AB88();
  v22 = StringProtocol.range<A>(of:options:range:locale:)();
  v24 = v23;
  v26 = v25;
  sub_10000BD44(v8, &qword_1003A0A78, &qword_1002C4D70);
  if (v26)
  {
    return;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v56 = v3;
    v55[0] = v30;
    v59[0] = v30;
    *v29 = 136315138;
    String.subscript.getter();
    v55[1] = v22;
    v31 = static String._fromSubstring(_:)();
    v33 = v32;

    v34 = sub_100008F6C(v31, v33, v59);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "found index: %s", v29, 0xCu);
    sub_10000959C(v55[0]);
    v3 = v56;
  }

  if (v24 >> 14 < String.index(_:offsetBy:)() >> 14)
  {
    __break(1u);
    goto LABEL_23;
  }

  v35 = String.subscript.getter();
  v39 = v38;
  if (!((v35 ^ v36) >> 14))
  {
LABEL_23:

    return;
  }

  v40 = v35;
  v41 = v36;
  v42 = v37;
  v43 = sub_1000B96BC(v35, v36, v37, v38, 10);
  if ((v44 & 0x100) != 0)
  {
    v45 = sub_1001882E8(v40, v41, v42, v39, 10);
    v48 = v47;

    if (v48)
    {
      return;
    }
  }

  else
  {
    v45 = v43;
    v46 = v44;

    if (v46)
    {
      return;
    }
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v49, v50, "%ld of c-apdus will replay", v51, 0xCu);
  }

  v52 = *(v3 + 80);
  v53 = __OFADD__(v52, v45);
  v54 = &v45[v52];
  if (v53)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 80) = v54;
  }
}

void sub_10008E290(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A0820);
  sub_1000094F4(a1, a2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_100009548(a1, a2);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41[0] = v14;
    *v13 = 136315138;
    v15 = Data.hexString()();
    v16 = sub_100008F6C(v15._countAndFlagsBits, v15._object, v41);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "C-APDU: %s", v13, 0xCu);
    sub_10000959C(v14);
    v5 = v4;
  }

  sub_1000094F4(a3, a4);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  sub_100009548(a3, a4);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41[0] = v20;
    *v19 = 136315138;
    v21 = Data.hexString()();
    v22 = sub_100008F6C(v21._countAndFlagsBits, v21._object, v41);

    *(v19 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "R-APDU: %s", v19, 0xCu);
    sub_10000959C(v20);
  }

  v23 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_31;
    }

    v25 = *(a3 + 16);
    v24 = *(a3 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v27 < 2)
    {
      goto LABEL_31;
    }
  }

  else if (v23)
  {
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_47:
      __break(1u);
      return;
    }

    if (HIDWORD(a3) - a3 < 2)
    {
      goto LABEL_31;
    }
  }

  else if (BYTE6(a4) < 2uLL)
  {
    goto LABEL_31;
  }

  if (v23 == 2)
  {
    v28 = *(a3 + 24);
  }

  else if (v23 == 1)
  {
    v28 = a3 >> 32;
  }

  else
  {
    v28 = BYTE6(a4);
  }

  if (__OFSUB__(v28, 2))
  {
    goto LABEL_44;
  }

  v29 = Data._Representation.subscript.getter();
  if (v23 == 2)
  {
    v30 = *(a3 + 24);
  }

  else if (v23 == 1)
  {
    v30 = a3 >> 32;
  }

  else
  {
    v30 = BYTE6(a4);
  }

  if (__OFSUB__(v30, 1))
  {
    goto LABEL_45;
  }

  v31 = Data._Representation.subscript.getter() | (v29 << 8);
  if (v31 != 36864)
  {
    v32 = v5[9];
    v33 = v31;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v5[11];
    v5[11] = 0x8000000000000000;
    sub_1001804E4(v33, v32, isUniquelyReferenced_nonNull_native);
    v5[11] = v40;
    swift_endAccess();
  }

LABEL_31:
  v35 = v5[9];
  v36 = v35 + 1;
  if (__OFADD__(v35, 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v5[9] = v36;
  v37 = 100 * v36;
  if ((v36 * 100) >> 64 != (100 * v36) >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v38 = v5[10];
  if (!v38)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v37 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_43;
  }

  if (v37 / v38 <= 100)
  {
    v39 = v5[7];
    if (v39)
    {
      v39();
    }
  }
}

id sub_10008E6AC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SLAMScript.SEFWDetails(0);
  __chkstk_darwin(v45);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for SLAMScript(0);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A0820);
  v46 = a1;
  sub_100090134(a1, v13, type metadata accessor for SLAMScript);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v41 = v2;
    v42 = v6;
    v20 = v19;
    v47 = v19;
    *v18 = 136315138;
    v21 = &v13[*(v11 + 36)];
    v22 = v7;
    v23 = *v21;
    v24 = v21[1];

    sub_10009019C(v13, type metadata accessor for SLAMScript);
    v25 = sub_100008F6C(v23, v24, &v47);
    v7 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\nSLAMSwift.performScript(): %s\n*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***", v18, 0xCu);
    sub_10000959C(v20);
    v3 = v41;
    v6 = v42;

    v4 = v43;
  }

  else
  {

    sub_10009019C(v13, type metadata accessor for SLAMScript);
  }

  v26 = *(v4 + 56);
  v27 = v46;
  if (v26)
  {
    v26(0);
  }

  sub_100090134(v27, v10, type metadata accessor for SLAMScript.SEFWDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_10008F69C(*v10, v10[1]);
    }

    if (EnumCaseMultiPayload == 4)
    {
      return sub_10008FA20(*v10);
    }

    v39 = v44;
    (*(v7 + 32))(v44, v10, v6);
    v40 = URL.path(percentEncoded:)(0);
    sub_1000903C0(v40._countAndFlagsBits, v40._object);
    if (!v3)
    {
      sub_10008F318(v40._countAndFlagsBits, v40._object);
    }

    (*(v7 + 8))(v39, v6);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v10;
      v30 = v10[1];
      v31 = v10[2];
      v32 = v10[3];
      sub_1000903C0(*v10, v30);
      if (!v3)
      {
        sub_10008EF20(v29, v30, v31, v32);
      }
    }

    else
    {
      v36 = *v10;
      v37 = v10[1];
      v38 = v10[2];
      sub_1000903C0(*v10, v37);
      if (!v3)
      {
        sub_10008EB78(v36, v37, v38);
      }
    }
  }

  else
  {
    v34 = *v10;
    v35 = v10[1];
    sub_1000903C0(*v10, v35);
    if (!v3)
    {
      sub_10008F318(v34, v35);
    }
  }
}

void sub_10008EB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A0820);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v31 = v10;
    v14 = sub_100008F6C(v12, v13, &v32);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = a3;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002C1670;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    *(v16 + 88) = &type metadata for UInt64;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = a3;

    v17 = showFunction(signature:_:)(0xD00000000000001DLL, 0x8000000100349CA0, v16);
    v19 = v18;

    v20 = sub_100008F6C(v17, v19, &v32);
    a3 = v15;

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v31, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v21 = objc_opt_self();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 PerformScript:a3 sefwPath:v22 seHandle:v4 logSink:v4];

  if (v23)
  {
    v24 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v24;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not perform script, error: %@", v27, 0xCu);
      sub_10000BD44(v28, &unk_10039E220, &qword_1002C3D60);
    }

    swift_willThrow();
  }
}

void sub_10008EF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A0820);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v33 = v12;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v34);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1670;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 88) = &type metadata for String;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = a3;
    *(v17 + 72) = a4;

    v18 = showFunction(signature:_:)(0xD000000000000019, 0x8000000100349C80, v17);
    v20 = v19;

    v21 = sub_100008F6C(v18, v20, &v34);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v33, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = objc_opt_self();
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 PerformScriptWithName:v23 sefwPath:v24 seHandle:v5 logSink:v5];

  if (v25)
  {
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v26;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not perform script, error: %@", v29, 0xCu);
      sub_10000BD44(v30, &unk_10039E220, &qword_1002C3D60);
    }

    swift_willThrow();
  }
}

void sub_10008F318(uint64_t a1, uint64_t a2)
{
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A0820);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v27 = v7;
    v11 = sub_100008F6C(v9, v10, &v28);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    v13 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100349C60, v12);
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v28);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v27, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 PerformOnlyScriptInSEFW:v18 seHandle:v2 logSink:v2];

  if (v19)
  {
    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v20;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not perform script, error: %@", v23, 0xCu);
      sub_10000BD44(v24, &unk_10039E220, &qword_1002C3D60);
    }

    swift_willThrow();
  }
}

void sub_10008F69C(uint64_t a1, uint64_t a2)
{
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A0820);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v27 = v7;
    v11 = sub_100008F6C(v9, v10, &v28);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    v13 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100349C40, v12);
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v28);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v27, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 PerformScriptWithName:v18 seHandle:v2 logSink:v2];

  if (v19)
  {
    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v20;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not perform script, error: %@", v23, 0xCu);
      sub_10000BD44(v24, &unk_10039E220, &qword_1002C3D60);
    }

    swift_willThrow();
  }
}

id sub_10008FA20(uint64_t a1)
{
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A0820);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v23);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002C1660;
    *(v10 + 56) = &type metadata for UInt64;
    *(v10 + 32) = a1;
    v11 = showFunction(signature:_:)(0xD000000000000018, 0x8000000100349C20, v10);
    v13 = v12;

    v14 = sub_100008F6C(v11, v13, &v23);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  result = [objc_opt_self() PerformScript:a1 seHandle:v1 logSink:v1];
  if (result)
  {
    v16 = result;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v16;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not perform script, error: %@", v19, 0xCu);
      sub_10000BD44(v20, &unk_10039E220, &qword_1002C3D60);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10008FD60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_10008FDB8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 0;
}

uint64_t sub_10008FE64()
{
  sub_10000959C(v0 + 2);
  sub_1000048A0(v0[7], v0[8]);

  return swift_deallocClassInstance();
}

uint64_t sub_10008FED0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SLAMScript.SEFWDetails(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100090134(v1, v8, type metadata accessor for SLAMScript.SEFWDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*(v3 + 32))(v5, v8, v2);
        countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
        (*(v3 + 8))(v5, v2);
        return countAndFlagsBits;
      }

      goto LABEL_9;
    }

    return *v8;
  }

  if (!EnumCaseMultiPayload)
  {
    return *v8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *v8;

    return v10;
  }

LABEL_9:
  sub_10009019C(v8, type metadata accessor for SLAMScript.SEFWDetails);
  return 0xD000000000000027;
}

uint64_t sub_1000900DC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_100090134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009019C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1000901FC()
{
  v0 = swift_allocObject();
  v0[2] = _swiftEmptyArrayStorage;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100090670;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008FD60;
  aBlock[3] = &unk_100381F70;
  v3 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LOBYTE(v1) = [v1 InspectSEFW:v2 closure:v3 error:aBlock];
  _Block_release(v3);

  v4 = aBlock[0];
  if (v1)
  {
    swift_beginAccess();
    v5 = v0[2];
    v6 = v4;
  }

  else
  {
    v5 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void sub_1000903C0(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 isReadableFileAtPath:v5];

  if (v6)
  {
    if (qword_10039D3A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_1003A0820);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100008F6C(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s is readable", v10, 0xCu);
      sub_10000959C(v11);
    }
  }

  else
  {
    sub_100020148(2027, 0, 0, 0);
    swift_willThrow();
  }
}

unint64_t sub_10009058C()
{
  result = qword_1003A0A88;
  if (!qword_1003A0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0A88);
  }

  return result;
}

unint64_t sub_1000905E0()
{
  result = qword_1003A0A90;
  if (!qword_1003A0A90)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0A90);
  }

  return result;
}

uint64_t sub_100090638()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000906A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100090778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SLAMScript.SEFWDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100090834(uint64_t a1)
{
  type metadata accessor for SLAMScript.SEFWDetails(319);
  if (v1 <= 0x3F)
  {
    sub_1000908E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000908E0()
{
  if (!qword_1003A0B00)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003A0B00);
    }
  }
}

void sub_100090940(uint64_t a1)
{
  sub_100090A00(319, &qword_1003A0BC0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100090A00(319, &unk_1003A0BC8, &type metadata for UInt64);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100090A00(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_100090A5C()
{
  result = qword_1003A0BF8;
  if (!qword_1003A0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0BF8);
  }

  return result;
}

char *sub_100090AB0()
{
  v0 = type metadata accessor for TLVTag();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TLV();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  v6 = __chkstk_darwin(v4);
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v37 - v8;
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A1210);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = v9;
    v14 = v13;
    v45 = swift_slowAlloc();
    *v14 = 136315394;
    sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
    v15 = _typeName(_:qualified:)();
    v40 = v1;
    v17 = sub_100008F6C(v15, v16, &v45);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100349F40, _swiftEmptyArrayStorage);
    v20 = sub_100008F6C(v18, v19, &v45);
    v1 = v40;

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();

    v9 = v38;
  }

  static TLVTag.readerConfigProfileIDs.getter();
  v21 = v41;
  sub_10011EC38(v3, v9);
  if (v21)
  {
    (*(v1 + 1))(v3, v0);
  }

  else
  {
    (*(v1 + 1))(v3, v0);
    v22 = TLV.children.getter();
    v23 = *(v22 + 16);
    if (v23)
    {
      v37[2] = 0;
      v38 = v9;
      v45 = _swiftEmptyArrayStorage;
      sub_10004E2DC(0, v23, 0);
      v3 = v45;
      v24 = *(v44 + 16);
      v25 = *(v44 + 80);
      v37[1] = v22;
      v26 = v22 + ((v25 + 32) & ~v25);
      v39 = *(v44 + 72);
      v40 = v24;
      v44 += 16;
      v41 = (v44 - 8);
      do
      {
        v27 = v42;
        v28 = v43;
        v40(v42, v26, v43);
        v29 = TLV.hexStringValue.getter();
        v31 = v30;
        v32 = *v41;
        (*v41)(v27, v28);
        v45 = v3;
        v34 = *(v3 + 2);
        v33 = *(v3 + 3);
        if (v34 >= v33 >> 1)
        {
          sub_10004E2DC((v33 > 1), v34 + 1, 1);
          v3 = v45;
        }

        *(v3 + 2) = v34 + 1;
        v35 = &v3[16 * v34];
        *(v35 + 4) = v29;
        *(v35 + 5) = v31;
        v26 += v39;
        --v23;
      }

      while (v23);
      v32(v38, v43);
    }

    else
    {

      (*(v44 + 8))(v9, v43);
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100090F5C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0C00);
  sub_10000403C(v0, qword_1003A0C00);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

int64x2_t sub_100090FC8()
{
  result = vdupq_n_s64(1uLL);
  *(v0 + 16) = result;
  *(v0 + 32) = 0x2000000;
  *(v0 + 36) = 3;
  *(v0 + 40) = xmmword_1002C4E30;
  *(v0 + 56) = xmmword_1002C4E40;
  *(v0 + 72) = result;
  *(v0 + 88) = 3;
  return result;
}

uint64_t sub_10009100C(uint64_t a1)
{
  *(v1 + 32) = 0x2000000;
  *(v1 + 40) = xmmword_1002C4E30;
  *(v1 + 56) = xmmword_1002C4E40;
  *(v1 + 36) = 3;
  *(v1 + 72) = vdupq_n_s64(1uLL);
  *(v1 + 88) = 3;
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;
  return v1;
}

id sub_100091050()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000910B0(v0);
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;
    v4 = v2;
    sub_1000927C8(v3);
  }

  sub_1000927D8(v1);
  return v2;
}

id sub_1000910B0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedHardwareManager];
  v8 = 0;
  v3 = [v2 startSecureElementManagerSessionAndReturnError:&v8];

  v4 = v8;
  if (v3)
  {
    *(a1 + 32) = 1;
    v5 = v4;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

void *sub_100091198()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000911F8(v0);
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;
    v4 = v2;
    sub_1000927C8(v3);
  }

  sub_1000927D8(v1);
  return v2;
}

void *sub_1000911F8(uint64_t a1)
{
  v2 = sub_100091050();
  if (v2)
  {
    v3 = v2;
    if (qword_10039D3C0 != -1)
    {
      swift_once();
    }

    NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  }

  v4 = *(a1 + 16);
  v5 = v4;
  return v4;
}

void sub_100091444()
{
  if (qword_10039D3B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A0C00);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "session ended in status inspector", v2, 2u);
  }
}

uint64_t sub_10009152C()
{
  if (*(v0 + 32) == 1)
  {
    *(v0 + 32) = 0;
    v1 = sub_100091050();
    if (v1)
    {
      v2 = v1;
      v5[4] = sub_100091444;
      v5[5] = 0;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 1107296256;
      v5[2] = sub_100003974;
      v5[3] = &unk_100382028;
      v3 = _Block_copy(v5);
      [v2 endSessionWithCompletion:v3];
      _Block_release(v3);
    }
  }

  sub_1000927C8(*(v0 + 16));
  sub_1000927C8(*(v0 + 24));
  sub_1000927A0(*(v0 + 40), *(v0 + 48));
  sub_100092780(*(v0 + 56));
  sub_1000927A0(*(v0 + 64), *(v0 + 72));
  sub_100092780(*(v0 + 80));
  return v0;
}

uint64_t sub_10009162C()
{
  sub_10009152C();

  return swift_deallocClassInstance();
}

uint64_t sub_100091684()
{
  v1 = *(v0 + 35);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_1000916B8();
    *(v0 + 35) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1000916B8()
{
  v0 = sub_100091050();
  if (v0)
  {
    v1 = v0;
    v6 = sub_10009F524();
    if (qword_10039D3B0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_1003A0C00);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6 & 1;
      _os_log_impl(&_mh_execute_header, v8, v9, "isValidSEPairing: %{BOOL}d", v10, 8u);
    }
  }

  else
  {
    if (qword_10039D3B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000403C(v2, qword_1003A0C00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "StatusInspector has no NFSession so can't validate SE-SEP pairing. Check it next time.", v5, 2u);
    }

    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_100091C28()
{
  result = *(v0 + 36);
  if (result == 3)
  {
    if (sub_100091684())
    {
      if (*(v0 + 32) == 1)
      {
        v2 = sub_100091198();
        v3 = v2;
        if (v2)
        {
        }

        result = v3 == 0;
      }

      else
      {
        result = 2;
      }
    }

    else
    {
      result = 1;
    }

    *(v0 + 36) = result;
  }

  return result;
}

uint64_t sub_100091C90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_100091D18();
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    *(v0 + 40) = v3;
    *(v0 + 48) = v6;

    sub_1000927A0(v4, v5);
  }

  sub_1000927B4(v1, v2);
  return v3;
}

void *sub_100091D18()
{
  if ((sub_100091684() & 1) == 0)
  {
    return 0;
  }

  result = sub_100091198();
  if (result)
  {
    v1 = result;
    v2 = sub_10011DBA8();

    return v2;
  }

  return result;
}

char *sub_100091EF0()
{
  v1 = *(v0 + 56);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_100091F50();
    v3 = *(v0 + 56);
    *(v0 + 56) = v2;

    sub_100092780(v3);
  }

  sub_100092790(v1);
  return v2;
}

char *sub_100091F50()
{
  if ((sub_100091684() & 1) == 0)
  {
    return 0;
  }

  result = sub_100091198();
  if (result)
  {
    v1 = result;
    v2 = sub_100090AB0();

    return v2;
  }

  return result;
}

uint64_t sub_10009211C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_1000921A4();
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    *(v0 + 64) = v3;
    *(v0 + 72) = v6;

    sub_1000927A0(v4, v5);
  }

  sub_1000927B4(v1, v2);
  return v3;
}

void *sub_1000921A4()
{
  if ((sub_100091684() & 1) == 0)
  {
    return 0;
  }

  result = sub_100091198();
  if (result)
  {
    v1 = result;
    v2 = sub_10011D5D4();

    return v2;
  }

  return result;
}

uint64_t sub_100092468()
{
  v1 = *(v0 + 80);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000924C8();
    v3 = *(v0 + 80);
    *(v0 + 80) = v2;

    sub_100092780(v3);
  }

  sub_100092790(v1);
  return v2;
}

id sub_1000924C8()
{
  result = sub_100091050();
  if (result)
  {
    v1 = result;
    v2 = [result stateInformation];

    if (v2)
    {
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v3 + 16))
      {
        sub_10000BDA4(v3 + 32, v5);

        sub_100004074(&qword_1003A0190, &unk_1002C4040);
        if (swift_dynamicCast())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000925A4()
{
  result = *(v0 + 88);
  if (result == 3)
  {
    result = sub_1000925D0();
    *(v0 + 88) = result;
  }

  return result;
}

uint64_t sub_1000925D0()
{
  if ((sub_100091684() & 1) == 0)
  {
    return 1;
  }

  v0 = sub_100091050();
  if (!v0)
  {
    return 2;
  }

  v1 = v0;
  if (qword_10039D3D0 != -1)
  {
    swift_once();
  }

  NFSecureElementManagerSession.select(_:)(AID_PIN_APPLET, *algn_1003A6AB8);

  return 0;
}

uint64_t sub_100092780(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double sub_100092790(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1000927A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_1000927B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1000927C8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1000927D8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000927E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100092800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_10004E3C4(0, v1, 0);
  v3 = v2 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v7 = *(v2 + 36);
  v28 = v2 + 72;
  v29 = v1;
  v30 = v7;
  v31 = v2 + 64;
  v32 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v33 = v6;
    v10 = *(*(v2 + 48) + v5);
    v11 = (*(v2 + 56) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1660;
    *(v14 + 56) = &type metadata for UInt8;
    *(v14 + 64) = &protocol witness table for UInt8;
    *(v14 + 32) = v10;
    sub_1000094F4(v12, v13);
    v15 = String.init(format:_:)();
    v34 = v16;
    v17 = Data.hexString()();
    result = sub_100009548(v12, v13);
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_10004E3C4((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[4 * v19];
    v20[2]._countAndFlagsBits = v15;
    v20[2]._object = v34;
    v20[3] = v17;
    v2 = v32;
    v8 = 1 << *(v32 + 32);
    if (v5 >= v8)
    {
      goto LABEL_24;
    }

    v3 = v31;
    v21 = *(v31 + 8 * v9);
    if ((v21 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v30;
    if (v30 != *(v32 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v5 & 0x3F));
    if (v22)
    {
      v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v9 << 6;
      v24 = v9 + 1;
      v25 = (v28 + 8 * v9);
      while (v24 < (v8 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_100064AB0(v5, v30, 0);
          v8 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_100064AB0(v5, v30, 0);
    }

LABEL_4:
    v6 = v33 + 1;
    v5 = v8;
    if (v33 + 1 == v29)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100092AE4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0E40);
  sub_10000403C(v0, qword_1003A0E40);
  sub_100023B24();
  return static SPRLogger.kernelManager.getter();
}

uint64_t sub_100092B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v31 = type metadata accessor for URL.DirectoryHint();
  v29 = *(v31 - 8);
  v4 = v29;
  __chkstk_darwin(v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KernelManager();
  static KernelManager.getDefaultSEFWPath(isProduction:)();
  v27 = v10;
  v28 = v14;
  v30 = v11;
  (*(v11 + 56))(v9, 1, 1, v10);
  v15 = *(v4 + 104);
  v16 = v31;
  v15(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v31);
  v26 = v15;
  URL.init(filePath:directoryHint:relativeTo:)();
  v28 = *(v11 + 32);
  v28(v36 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultSefwURL, v13, v10);
  v37 = 0xD000000000000021;
  v38 = 0x800000010034A150;
  v17 = enum case for URL.DirectoryHint.notDirectory(_:);
  v15(v6, enum case for URL.DirectoryHint.notDirectory(_:), v16);
  v25 = sub_10008AB88();
  v18 = v33;
  URL.appending<A>(component:directoryHint:)();
  v29 = *(v29 + 8);
  (v29)(v6, v16);
  v20 = v27;
  v19 = v28;
  v28(v36 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL, v13, v27);
  v37 = 0xD00000000000001DLL;
  v38 = 0x800000010034A180;
  v26(v6, v17, v16);
  URL.appending<A>(component:directoryHint:)();
  (*(v30 + 8))(v18, v20);
  (v29)(v6, v16);
  v21 = v36;
  v19(v36 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL, v13, v20);
  v22 = (v21 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_seid);
  v23 = v35;
  *v22 = v34;
  v22[1] = v23;
  *(v21 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_isProduction) = v32;
  return v21;
}

uint64_t sub_100092F30(void *a1)
{
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A0E40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD00000000000001BLL, 0x800000010034A130, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_100097438(a1);
  if (v1)
  {
    return 0;
  }

  v14 = dispatch thunk of KernelManager.useLegacyFlow.getter();

  return v14 & 1;
}

id sub_100093144(void *a1)
{
  v3 = type metadata accessor for KernelManager.DeviceStateType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v33[1] = sub_10000403C(v7, qword_1003A0E40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v34 = v6;
  v35 = v4;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v33[0] = v3;
    v12 = v11;
    v36 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, &v36);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = showFunction(signature:_:)(0xD000000000000018, 0x800000010034A110, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, &v36);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();

    v3 = v33[0];
  }

  sub_100097438(a1);
  if (v1)
  {
    return v9;
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v19 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v19 + 104) > 0 || *(v19 + 112) == 1)
  {
    result = [*(v19 + 88) wait];
  }

  v21 = *(v19 + 96);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 96) = v23;
    [*(v19 + 88) unlock];
    v24 = *(v19 + 72);
    result = [*(v19 + 88) lock];
    v25 = *(v19 + 96);
    v22 = __OFSUB__(v25, 1);
    v26 = v25 - 1;
    if (!v22)
    {
      *(v19 + 96) = v26;
      if (!v26)
      {
        [*(v19 + 88) broadcast];
      }

      [*(v19 + 88) unlock];
      if (v24)
      {
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Detected an SEFW update. Querying minimal device state.", v29, 2u);
        }

        v30 = &enum case for KernelManager.DeviceStateType.minimal(_:);
      }

      else
      {
        v30 = &enum case for KernelManager.DeviceStateType.normal(_:);
      }

      v32 = v34;
      v31 = v35;
      (*(v35 + 104))(v34, *v30, v3);
      dispatch thunk of KernelManager.getDeviceState(_:)();
      (*(v31 + 8))(v32, v3);
      v9 = sub_1000935D0();

      return v9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000935D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v5 = __chkstk_darwin(v4 - 8);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v50 - v7;
  v61 = sub_10018436C(_swiftEmptyArrayStorage);
  v9 = BeeStateInfo.capks.getter();
  if (v9)
  {
    v10 = sub_100092800(v9);

    if (v10[2])
    {
      sub_100004074(&qword_1003A0FD8, &qword_1002C4F60);
      v11 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v11 = &_swiftEmptyDictionarySingleton;
    }

    v59._countAndFlagsBits = v11;

    sub_100097BDC(v12, 1, &v59);

    countAndFlagsBits = v59._countAndFlagsBits;
    *(&v60 + 1) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    v59._countAndFlagsBits = countAndFlagsBits;
    sub_10002D530(&v59, 0);
  }

  v14 = BeeStateInfo.configurationId.getter();
  if (v15 >> 60 != 15)
  {
    v16 = v14;
    v17 = v15;
    v18 = Data.hexString()();
    sub_10005D568(v18._countAndFlagsBits, v18._object, v8);
    if ((*(v2 + 48))(v8, 1, v1) == 1)
    {
      sub_10000BD44(v8, &qword_1003A0178, &unk_1002C3BB0);
      v59 = 0;
      v60 = 0u;
    }

    else
    {
      v19 = UUID.uuidString.getter();
      *(&v60 + 1) = &type metadata for String;
      v59._countAndFlagsBits = v19;
      v59._object = v20;
      (*(v2 + 8))(v8, v1);
    }

    sub_10002D530(&v59, 1);
    sub_10001A074(v16, v17);
  }

  v21 = BeeStateInfo.terminalProfiles.getter();
  if (!v21)
  {
LABEL_35:
    *(&v60 + 1) = type metadata accessor for BeeStateInfo.SystemStatus();
    sub_10000BE5C(&v59._countAndFlagsBits);
    BeeStateInfo.status.getter();
    sub_10002D530(&v59, 3);
    v44 = BeeStateInfo.jsblSequenceCounter.getter();
    *(&v60 + 1) = &type metadata for String;
    v59._countAndFlagsBits = v44;
    v59._object = v45;
    sub_10002D530(&v59, 4);
    v46 = BeeStateInfo.loadAndInstallBundleId.getter();
    *(&v60 + 1) = &type metadata for String;
    v59._countAndFlagsBits = v46;
    v59._object = v47;
    sub_10002D530(&v59, 5);
    v48 = BeeStateInfo.hardwareType.getter();
    *(&v60 + 1) = &type metadata for Int;
    v59._countAndFlagsBits = v48;
    sub_10002D530(&v59, 6);
    return v61;
  }

  v22 = v21;
  v54 = v0;
  v23 = *(v21 + 16);
  if (!v23)
  {
    v55 = _swiftEmptyArrayStorage;
LABEL_34:

    *(&v60 + 1) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v59._countAndFlagsBits = v55;
    sub_10002D530(&v59, 2);
    goto LABEL_35;
  }

  v50 = 0;
  v57 = v1;
  v24 = 0;
  v25 = v21 + 32;
  v56 = (v2 + 48);
  v51 = (v2 + 8);
  v52 = (v2 + 32);
  v55 = _swiftEmptyArrayStorage;
  while (v24 < *(v22 + 16))
  {
    v26 = (v25 + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    ++v24;
    sub_1000094F4(*v26, v27);
    v29 = Data.hexString()();
    if (String.count.getter() == 32)
    {
      v30 = (v29._object >> 56) & 0xF;
      v59 = v29;
      if ((v29._object & 0x2000000000000000) == 0)
      {
        v30 = v29._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      *&v60 = 0;
      *(&v60 + 1) = v30;

      while (String.Iterator.next()().value._object)
      {
        Character.hexDigitValue.getter();
        v32 = v31;

        if (v32)
        {

          goto LABEL_25;
        }
      }

      v59 = v29;

      String.index(_:offsetBy:)();
      String.insert(_:at:)();
      String.index(_:offsetBy:)();
      String.insert(_:at:)();
      String.index(_:offsetBy:)();
      String.insert(_:at:)();
      String.index(_:offsetBy:)();

      String.insert(_:at:)();
      v33 = v58;
      UUID.init(uuidString:)();

      if (!(*v56)(v33, 1, v57))
      {
        v34 = v53;
        v35 = v33;
        v36 = v57;
        (*v52)(v53, v35, v57);
        v37 = UUID.uuidString.getter();
        v39 = v38;
        sub_100009548(v28, v27);
        (*v51)(v34, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_10004D4B0(0, *(v55 + 2) + 1, 1, v55);
        }

        v41 = *(v55 + 2);
        v40 = *(v55 + 3);
        if (v41 >= v40 >> 1)
        {
          v55 = sub_10004D4B0((v40 > 1), v41 + 1, 1, v55);
        }

        v42 = v55;
        *(v55 + 2) = v41 + 1;
        v43 = &v42[16 * v41];
        *(v43 + 4) = v37;
        *(v43 + 5) = v39;
        goto LABEL_26;
      }

      sub_10000BD44(v33, &qword_1003A0178, &unk_1002C3BB0);
    }

    else
    {
    }

LABEL_25:
    sub_100009548(v28, v27);
LABEL_26:
    if (v24 == v23)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_100093C7C(uint64_t a1, uint64_t *a2)
{
  v4 = v3;
  v171 = a2;
  v144 = a1;
  v153 = *v2;
  v168 = type metadata accessor for URL.DirectoryHint();
  v150 = *(v168 - 8);
  __chkstk_darwin(v168);
  v167 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v169 = &v142 - v10;
  v170 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v11 = __chkstk_darwin(v170);
  v172 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v166 = &v142 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v142 - v16;
  v18 = __chkstk_darwin(v15);
  v161 = (&v142 - v19);
  __chkstk_darwin(v18);
  v147 = &v142 - v20;
  v176 = type metadata accessor for URL();
  v21 = *(v176 - 8);
  v22 = __chkstk_darwin(v176);
  v154 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v175 = &v142 - v25;
  v26 = __chkstk_darwin(v24);
  v157 = &v142 - v27;
  __chkstk_darwin(v26);
  v162 = (&v142 - v28);
  v29 = type metadata accessor for ProfileScript();
  v163 = *(v29 - 8);
  v164 = v29;
  v30 = __chkstk_darwin(v29);
  v152 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v151 = &v142 - v33;
  v34 = __chkstk_darwin(v32);
  v156 = &v142 - v35;
  __chkstk_darwin(v34);
  v155 = &v142 - v36;
  v37 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v38 = __chkstk_darwin(v37 - 8);
  v148 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v146 = &v142 - v41;
  v42 = __chkstk_darwin(v40);
  v159 = &v142 - v43;
  __chkstk_darwin(v42);
  v45 = &v142 - v44;
  v46 = type metadata accessor for SLAMScript(0);
  v160 = *(v46 - 1);
  v47 = __chkstk_darwin(v46);
  v174 = &v142 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v165 = &v142 - v50;
  __chkstk_darwin(v49);
  v158 = &v142 - v51;
  if (qword_10039D3B8 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v52 = type metadata accessor for Logger();
    v53 = sub_10000403C(v52, qword_1003A0E40);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v54, v55);
    v173 = v21;
    v145 = v4;
    v149 = v9;
    v143 = v53;
    v142 = v17;
    if (v56)
    {
      v57 = v46;
      v58 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *v58 = 136315394;
      v59 = _typeName(_:qualified:)();
      v61 = sub_100008F6C(v59, v60, &v177);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      v62 = showFunction(signature:_:)(0xD00000000000001DLL, 0x800000010034A0F0, _swiftEmptyArrayStorage);
      v64 = sub_100008F6C(v62, v63, &v177);

      *(v58 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s.%s", v58, 0x16u);
      swift_arrayDestroy();

      v65 = v57;

      v66 = v165;
      v21 = v161;
    }

    else
    {

      v66 = v165;
      v21 = v161;
      v65 = v46;
    }

    v46 = _s14InstallPackageVMa(0);
    v67 = v171;
    sub_100065074(v171 + v46[7], v45, &qword_1003A03F0, &qword_1002C3D88);
    v17 = (v160 + 48);
    v68 = *(v160 + 48);
    v69 = v68(v45, 1, v65);
    v153 = v68;
    if (v69 == 1)
    {
      sub_10000BD44(v45, &qword_1003A03F0, &qword_1002C3D88);
      v162 = _swiftEmptyArrayStorage;
      v70 = v159;
    }

    else
    {
      v21 = v158;
      sub_10009803C(v45, v158);
      v71 = v147;
      sub_100097FD4(v21, v147, type metadata accessor for SLAMScript.SEFWDetails);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        (*(v173 + 32))(v162, v71, v176);
      }

      else
      {
        sub_10008FED0();
        (*(v173 + 56))(v169, 1, 1, v176);
        v21 = v167;
        (*(v150 + 104))(v167, enum case for URL.DirectoryHint.inferFromPath(_:), v168);
        v67 = v171;
        URL.init(filePath:directoryHint:relativeTo:)();
        sub_10009019C(v71, type metadata accessor for SLAMScript.SEFWDetails);
      }

      v72 = *(v67 + v46[14]);
      v45 = *(v72 + 16);
      if (v45)
      {
        v147 = v65;
        v177 = _swiftEmptyArrayStorage;
        sub_10004E4A8(0, v45, 0);
        v73 = v177;
        v4 = (v72 + 32);
        while (1)
        {
          v74 = *v4++;
          v9 = v74;
          if ((v74 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v9 > 0xFF)
          {
            goto LABEL_88;
          }

          v177 = v73;
          v76 = v73[2];
          v75 = v73[3];
          v21 = v76 + 1;
          if (v76 >= v75 >> 1)
          {
            sub_10004E4A8((v75 > 1), v76 + 1, 1);
            v73 = v177;
          }

          v73[2] = v21;
          *(v73 + v76 + 32) = v9;
          if (!--v45)
          {
            v67 = v171;
            v65 = v147;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

LABEL_18:
      v77 = v17;
      v78 = v155;
      ProfileScript.init(profileScriptPath:kernelIdentifiers:)();
      (*(v163 + 16))(v156, v78, v164);
      v79 = sub_10004DEB8(0, 1, 1, _swiftEmptyArrayStorage);
      v81 = v79[2];
      v80 = v79[3];
      v162 = v79;
      v70 = v159;
      v82 = v67;
      if (v81 >= v80 >> 1)
      {
        v162 = sub_10004DEB8((v80 > 1), v81 + 1, 1, v162);
      }

      v84 = v163;
      v83 = v164;
      (*(v163 + 8))(v155, v164);
      sub_10009019C(v158, type metadata accessor for SLAMScript);
      v85 = v162;
      v162[2] = v81 + 1;
      (*(v84 + 32))(v85 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v81, v156, v83);
      v66 = v165;
      v21 = v161;
      v68 = v153;
      v67 = v82;
      v17 = v77;
    }

    sub_100065074(v67 + v46[8], v70, &qword_1003A03F0, &qword_1002C3D88);
    if (v68(v70, 1, v65) == 1)
    {
      sub_10000BD44(v70, &qword_1003A03F0, &qword_1002C3D88);
      goto LABEL_39;
    }

    v147 = v65;
    sub_10009803C(v70, v66);
    sub_100097FD4(v66, v21, type metadata accessor for SLAMScript.SEFWDetails);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      (*(v173 + 32))(v157, v21, v176);
    }

    else
    {
      sub_10008FED0();
      (*(v173 + 56))(v169, 1, 1, v176);
      v86 = v21;
      v21 = v167;
      (*(v150 + 104))(v167, enum case for URL.DirectoryHint.inferFromPath(_:), v168);
      v67 = v171;
      URL.init(filePath:directoryHint:relativeTo:)();
      sub_10009019C(v86, type metadata accessor for SLAMScript.SEFWDetails);
    }

    v87 = *(v67 + v46[14]);
    v45 = *(v87 + 16);
    if (!v45)
    {
      break;
    }

    v177 = _swiftEmptyArrayStorage;
    sub_10004E4A8(0, v45, 0);
    v88 = v177;
    v4 = (v87 + 32);
    while (1)
    {
      v89 = *v4++;
      v9 = v89;
      if ((v89 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v9 > 0xFF)
      {
        goto LABEL_90;
      }

      v177 = v88;
      v91 = v88[2];
      v90 = v88[3];
      v21 = v91 + 1;
      if (v91 >= v90 >> 1)
      {
        sub_10004E4A8((v90 > 1), v91 + 1, 1);
        v88 = v177;
      }

      v88[2] = v21;
      *(v88 + v91 + 32) = v9;
      if (!--v45)
      {
        v67 = v171;
        goto LABEL_34;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

LABEL_34:
  v92 = v151;
  ProfileScript.init(profileScriptPath:kernelIdentifiers:)();
  (*(v163 + 16))(v152, v92, v164);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v162 = sub_10004DEB8(0, v162[2] + 1, 1, v162);
  }

  v65 = v147;
  v94 = v162[2];
  v93 = v162[3];
  v95 = v67;
  if (v94 >= v93 >> 1)
  {
    v162 = sub_10004DEB8((v93 > 1), v94 + 1, 1, v162);
  }

  v97 = v163;
  v96 = v164;
  (*(v163 + 8))(v151, v164);
  sub_10009019C(v165, type metadata accessor for SLAMScript);
  v98 = v162;
  v162[2] = v94 + 1;
  (*(v97 + 32))(v98 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v94, v152, v96);
  v68 = v153;
  v67 = v95;
LABEL_39:
  v99 = (v67 + v46[15]);
  v100 = v99[1];
  if (v100 >> 60 == 15)
  {
    sub_100020148(2045, 0xD000000000000016, 0x800000010034A0D0, 0);
    swift_willThrow();

    return (v46 & 1);
  }

  v101 = v65;
  v102 = *v99;
  v103 = v67 + v46[5];
  v104 = v67;
  v105 = v146;
  sub_100065074(v103, v146, &qword_1003A03F0, &qword_1002C3D88);
  LODWORD(v159) = 1;
  v106 = v68(v105, 1, v101);
  v157 = v102;
  v158 = v100;
  sub_1000094F4(v102, v100);
  sub_10000BD44(v105, &qword_1003A03F0, &qword_1002C3D88);
  if (v106 != 1)
  {
LABEL_53:
    v115 = v104;
    v116 = v148;
    sub_100065074(v104 + v46[6], v148, &qword_1003A03F0, &qword_1002C3D88);
    if (v68(v116, 1, v101) == 1)
    {
      sub_10000BD44(v116, &qword_1003A03F0, &qword_1002C3D88);
      v117 = 1;
      v118 = v149;
      v119 = v173;
    }

    else
    {
      v120 = v142;
      sub_100097FD4(v116, v142, type metadata accessor for SLAMScript.SEFWDetails);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v118 = v149;
      v119 = v173;
      if (EnumCaseMultiPayload == 5)
      {
        (*(v173 + 32))(v149, v120, v176);
      }

      else
      {
        sub_10008FED0();
        (*(v119 + 56))(v169, 1, 1, v176);
        (*(v150 + 104))(v167, enum case for URL.DirectoryHint.inferFromPath(_:), v168);
        v116 = v148;
        v115 = v171;
        URL.init(filePath:directoryHint:relativeTo:)();
        sub_10009019C(v120, type metadata accessor for SLAMScript.SEFWDetails);
      }

      sub_10009019C(v116, type metadata accessor for SLAMScript);
      v117 = 0;
    }

    v164 = *(v119 + 56);
    v165 = v119 + 56;
    v164(v118, v117, 1, v176);
    v122 = *v115;
    v123 = *(*v115 + 16);
    v124 = _swiftEmptyArrayStorage;
    if (!v123)
    {
LABEL_77:
      v135 = v162;
      LOBYTE(v46) = v159;
      if ((v159 & 1) != 0 || (*(v119 + 48))(v118, 1, v176) != 1 || v124[2] || v135[2])
      {
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          *v138 = 67109120;
          *(v138 + 4) = v46 & 1;
          _os_log_impl(&_mh_execute_header, v136, v137, "Generating a kernel asset with updatedAsset: %{BOOL}d", v138, 8u);
        }

        sub_100065074(v118, v169, &qword_1003A03D0, &unk_1002C3D50);

        v139 = v144;
        KernelAsset.init(updatedAsset:kernelMap:configurationScript:capkScripts:terminalProfileScripts:)();
        v140 = 0;
      }

      else
      {
        sub_10001A074(v157, v158);

        v140 = 1;
        v139 = v144;
      }

      v141 = type metadata accessor for KernelAsset();
      (*(*(v141 - 8) + 56))(v139, v140, 1, v141);
      sub_10000BD44(v118, &qword_1003A03D0, &unk_1002C3D50);

      return (v46 & 1);
    }

    v177 = _swiftEmptyArrayStorage;
    sub_10004E464(0, v123, 0);
    v124 = v177;
    v125 = v122 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v171 = *(v160 + 72);
    v126 = (v119 + 32);
    v160 = 0x8000000100349BF0;
    v161 = (v119 + 8);
    LODWORD(v163) = enum case for URL.DirectoryHint.inferFromPath(_:);
    v127 = (v150 + 104);
    v128 = v166;
    while (1)
    {
      v129 = v174;
      sub_100097FD4(v125, v174, type metadata accessor for SLAMScript);
      sub_100097FD4(v129, v128, type metadata accessor for SLAMScript.SEFWDetails);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        break;
      }

      sub_10009019C(v129, type metadata accessor for SLAMScript);
      (*v126)(v175, v128, v176);
LABEL_73:
      v177 = v124;
      v134 = v124[2];
      v133 = v124[3];
      if (v134 >= v133 >> 1)
      {
        sub_10004E464((v133 > 1), v134 + 1, 1);
        v128 = v166;
        v124 = v177;
      }

      v124[2] = v134 + 1;
      (*(v173 + 32))(v124 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v134, v175, v176);
      v125 += v171;
      if (!--v123)
      {
        v118 = v149;
        v119 = v173;
        goto LABEL_77;
      }
    }

    sub_100097FD4(v129, v172, type metadata accessor for SLAMScript.SEFWDetails);
    v130 = swift_getEnumCaseMultiPayload();
    if (v130 > 1)
    {
      if (v130 == 2)
      {
        goto LABEL_72;
      }

      if (v130 == 5)
      {
        v131 = v154;
        v132 = v176;
        (*v126)(v154, v172, v176);
        URL.path(percentEncoded:)(0);
        (*v161)(v131, v132);
        goto LABEL_72;
      }
    }

    else
    {
      if (!v130)
      {
        goto LABEL_72;
      }

      if (v130 == 1)
      {

LABEL_72:
        v164(v169, 1, 1, v176);
        (*v127)(v167, v163, v168);
        URL.init(filePath:directoryHint:relativeTo:)();
        sub_10009019C(v174, type metadata accessor for SLAMScript);
        v128 = v166;
        sub_10009019C(v166, type metadata accessor for SLAMScript.SEFWDetails);
        goto LABEL_73;
      }
    }

    sub_10009019C(v172, type metadata accessor for SLAMScript.SEFWDetails);
    goto LABEL_72;
  }

  v107 = v68;
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v108 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v108 + 104) > 0 || *(v108 + 112) == 1)
  {
    result = [*(v108 + 88) wait];
  }

  v110 = *(v108 + 96);
  v111 = __OFADD__(v110, 1);
  v112 = v110 + 1;
  if (v111)
  {
    __break(1u);
  }

  else
  {
    *(v108 + 96) = v112;
    [*(v108 + 88) unlock];
    LODWORD(v159) = *(v108 + 72);
    result = [*(v108 + 88) lock];
    v113 = *(v108 + 96);
    v111 = __OFSUB__(v113, 1);
    v114 = v113 - 1;
    if (!v111)
    {
      *(v108 + 96) = v114;
      if (!v114)
      {
        [*(v108 + 88) broadcast];
      }

      [*(v108 + 88) unlock];
      v104 = v171;
      v68 = v107;
      goto LABEL_53;
    }
  }

  __break(1u);
  return result;
}

char *sub_100095314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A0E40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, &v24);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = showFunction(signature:_:)(0xD00000000000002CLL, 0x800000010034A0A0, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, &v24);

    *(v10 + 14) = v16;
    v5 = v4;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100097438(a1);
  if (!v5)
  {
    dispatch thunk of KernelManager.executeServerAsset(_:progress:)();
    if (qword_10039D708 != -1)
    {
      swift_once();
    }

    v18 = static GlobalState.shared;
    result = [*(static GlobalState.shared + 88) lock];
    v19 = *(v18 + 104);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      *(v18 + 104) = v21;
      while (*(v18 + 96) > 0 || *(v18 + 112) == 1)
      {
        result = [*(v18 + 88) wait];
      }

      v22 = *(v18 + 104);
      v20 = __OFSUB__(v22, 1);
      v23 = v22 - 1;
      if (!v20)
      {
        *(v18 + 104) = v23;
        *(v18 + 112) = 1;
        [*(v18 + 88) unlock];
        *(v18 + 72) = 0;
        sub_100173040();
        [*(v18 + 88) lock];
        *(v18 + 112) = 0;
        [*(v18 + 88) broadcast];
        [*(v18 + 88) unlock];
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100095654(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A0E40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v16 = a1;
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000029, 0x800000010034A070, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v17);

    *(v8 + 14) = v14;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();

    a1 = v16;
  }

  result = sub_100097438(a1);
  if (!v3)
  {
    dispatch thunk of KernelManager.evaluateServerAsset(_:)();
  }

  return result;
}

char *sub_100095890(void *a1)
{
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A0E40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v14);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD00000000000001CLL, 0x800000010034A050, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v14);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100097438(a1);
  if (!v1)
  {
    dispatch thunk of KernelManager.removeUnusedAssets()();
  }

  return result;
}

char *sub_100095A94(void *a1, char a2)
{
  v3 = v2;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A0E40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD00000000000001FLL, 0x800000010034A030, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v16);
    v3 = v2;

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100097438(a1);
  if (!v3)
  {
    dispatch thunk of KernelManager.deleteAll(forRecovery:)();
  }

  return result;
}

uint64_t sub_100095CC0(uint64_t a1, int a2)
{
  v3 = v2;
  v103 = a2;
  v98 = v3;
  v5 = type metadata accessor for CocoaError.Code();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v92 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v105 = &v88[-v13];
  __chkstk_darwin(v12);
  v15 = &v88[-v14];
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000403C(v16, qword_1003A0E40);
  v18 = *(v8 + 16);
  v102 = a1;
  v18(v15, a1, v7);
  v97 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v104 = v8 + 16;
  v101 = v8;
  v95 = v11;
  v99 = v18;
  if (v21)
  {
    v22 = v7;
    v23 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v106 = v90;
    *v23 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100008F6C(v24, v25, &v106);
    v89 = v20;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1002C1670;
    *(v28 + 56) = v22;
    v29 = sub_10000BE5C((v28 + 32));
    v18(v29, v15, v22);
    if (v103)
    {
      v30 = 0x574645535F41544FLL;
    }

    else
    {
      v30 = 0x5F544C5541464544;
    }

    v31 = 0xEC00000057464553;
    if (v103)
    {
      v31 = 0xE800000000000000;
    }

    *(v28 + 88) = &type metadata for String;
    *(v28 + 64) = v30;
    *(v28 + 72) = v31;
    v91 = v31;
    v32 = showFunction(signature:_:)(0xD000000000000018, 0x800000010034A010, v28);
    v33 = v8;
    v35 = v34;

    v100 = *(v33 + 8);
    v100(v15, v22);
    v36 = sub_100008F6C(v32, v35, &v106);

    *(v23 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v19, v89, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();

    v7 = v22;

    if ((v103 & 1) == 0)
    {
LABEL_10:

      v37 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
      goto LABEL_19;
    }
  }

  else
  {

    v100 = *(v8 + 8);
    v100(v15, v7);
    if (v103)
    {
      v30 = 0x574645535F41544FLL;
    }

    else
    {
      v30 = 0x5F544C5541464544;
    }

    v38 = 0xE800000000000000;
    if ((v103 & 1) == 0)
    {
      v38 = 0xEC00000057464553;
    }

    v91 = v38;
    if ((v103 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v37 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL;
  if (v39)
  {
    v37 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
  }

LABEL_19:
  v40 = v99;
  v99(v105, v98 + *v37, v7);
  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  URL._bridgeToObjectiveC()(v43);
  v45 = v44;
  URL._bridgeToObjectiveC()(v46);
  v48 = v47;
  v106 = 0;
  v49 = [v42 copyItemAtURL:v45 toURL:v47 error:&v106];

  v50 = v106;
  if (v49)
  {
    goto LABEL_20;
  }

  v63 = v106;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v64 = v92;
  static CocoaError.fileWriteFileExists.getter();
  sub_100097F8C(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v65 = v94;
  LOBYTE(v63) = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v93 + 8))(v64, v65);
  if ((v63 & 1) == 0)
  {
    return (v100)(v105, v7);
  }

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v106 = v69;
    *v68 = 136315138;
    v70 = v40;
    v71 = sub_100008F6C(v30, v91, &v106);

    *(v68 + 4) = v71;
    v40 = v70;
    _os_log_impl(&_mh_execute_header, v66, v67, "Previous firmware of type %s exists, removing and replacing", v68, 0xCu);
    sub_10000959C(v69);
  }

  v72 = [v41 defaultManager];
  URL._bridgeToObjectiveC()(v73);
  v75 = v74;
  v106 = 0;
  v76 = [v72 removeItemAtURL:v74 error:&v106];

  v50 = v106;
  if (!v76 || (v77 = v106, v78 = [v41 defaultManager], URL._bridgeToObjectiveC()(v79), v81 = v80, URL._bridgeToObjectiveC()(v82), v84 = v83, v106 = 0, v85 = objc_msgSend(v78, "copyItemAtURL:toURL:error:", v81, v83, &v106), v78, v81, v84, v50 = v106, (v85 & 1) == 0))
  {
    v87 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v100)(v105, v7);
  }

  v96 = 0;
LABEL_20:
  v51 = v50;
  v52 = v95;
  v40(v95, v105, v7);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v106 = v56;
    *v55 = 136315138;
    sub_100097F8C(&qword_1003A3C40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    v60 = v100;
    v100(v52, v7);
    v61 = sub_100008F6C(v57, v59, &v106);

    *(v55 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v53, v54, "Save %s", v55, 0xCu);
    sub_10000959C(v56);

    return v60(v105, v7);
  }

  else
  {

    v86 = v100;
    v100(v52, v7);
    return v86(v105, v7);
  }
}

id sub_1000966E0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A0E40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v56 = a1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v57);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0x7269466863746566, 0xEF2928657261776DLL, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v57);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultSefwURL;
  result = URL.generateSHA256Digest()();
  if (!v2)
  {
    v54 = result;
    v55 = v17;
    v18 = objc_opt_self();
    v19 = [v18 defaultManager];
    v20 = OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
    URL.path(percentEncoded:)(0);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v19 fileExistsAtPath:v21];

    if (v22)
    {
      v23 = URL.generateSHA256Digest()();
      v21 = v23;
      v52 = v24;
      v35 = sub_10017688C(v23, v24, v54, v55);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      v38 = os_log_type_enabled(v36, v37);
      if (v35)
      {
        if (v38)
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Found an existing default SE FW file. Will check for OTA patches.", v39, 2u);
        }

        v40 = [v18 defaultManager];
        v41 = OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL;
        URL.path(percentEncoded:)(0);
        v42 = String._bridgeToObjectiveC()();

        v43 = [v40 fileExistsAtPath:v42];
        sub_100009548(v21, v52);
        sub_100009548(v54, v55);

        v44 = type metadata accessor for URL();
        if (v43)
        {
          v45 = v3 + v41;
        }

        else
        {
          v45 = v3 + v20;
        }

        return (*(*(v44 - 8) + 16))(v56, v45, v44);
      }

      if (v38)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Detected an iOS update. Will use the default SLAM.", v46, 2u);
      }

      if (qword_10039D708 == -1)
      {
LABEL_28:
        v47 = static GlobalState.shared;
        result = [*(static GlobalState.shared + 88) lock];
        v48 = *(v47 + 104);
        v30 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v30)
        {
          __break(1u);
        }

        else
        {
          *(v47 + 104) = v49;
          while (*(v47 + 96) > 0 || *(v47 + 112) == 1)
          {
            result = [*(v47 + 88) wait];
          }

          v50 = *(v47 + 104);
          v30 = __OFSUB__(v50, 1);
          v51 = v50 - 1;
          if (!v30)
          {
            *(v47 + 104) = v51;
            *(v47 + 112) = 1;
            [*(v47 + 88) unlock];
            *(v47 + 72) = 1;
            sub_100173040();
            [*(v47 + 88) lock];
            *(v47 + 112) = 0;
            [*(v47 + 88) broadcast];
            [*(v47 + 88) unlock];
            sub_100096E24(1);
            sub_100095CC0(v3 + v15, 0);
            sub_100009548(v21, v53);
            goto LABEL_19;
          }
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Detected a fresh install of kernels. Using the default SLAM.", v27, 2u);
      }

      if (qword_10039D708 != -1)
      {
        swift_once();
      }

      v28 = static GlobalState.shared;
      [*(static GlobalState.shared + 88) lock];
      v29 = *(v28 + 104);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        *(v28 + 104) = v31;
        while (*(v28 + 96) > 0 || *(v28 + 112) == 1)
        {
          [*(v28 + 88) wait];
        }

        v32 = *(v28 + 104);
        v30 = __OFSUB__(v32, 1);
        v33 = v32 - 1;
        if (!v30)
        {
          *(v28 + 104) = v33;
          *(v28 + 112) = 1;
          [*(v28 + 88) unlock];
          *(v28 + 72) = 1;
          sub_100173040();
          [*(v28 + 88) lock];
          *(v28 + 112) = 0;
          [*(v28 + 88) broadcast];
          [*(v28 + 88) unlock];
          sub_100095CC0(v3 + v15, 0);
LABEL_19:
          sub_100009548(v54, v55);
          v34 = type metadata accessor for URL();
          return (*(*(v34 - 8) + 16))(v56, v3 + v15, v34);
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_100096E24(char a1)
{
  v3 = v1;
  v53 = type metadata accessor for URL();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v6 = 0x574645535F41544FLL;
  v7 = type metadata accessor for Logger();
  v52 = sub_10000403C(v7, qword_1003A0E40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v49 = v3;
    v56 = v11;
    *v10 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, &v56);
    v50 = v2;
    v15 = v14;

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002C1660;
    if (a1)
    {
      v17 = 0x574645535F41544FLL;
    }

    else
    {
      v17 = 0x5F544C5541464544;
    }

    v18 = 0xEC00000057464553;
    if (a1)
    {
      v18 = 0xE800000000000000;
    }

    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    v51 = v18;
    v19 = showFunction(signature:_:)(0xD000000000000015, 0x8000000100349FF0, v16);
    v20 = a1;
    v22 = v21;

    v23 = sub_100008F6C(v19, v22, &v56);
    a1 = v20;
    v6 = v17;

    *(v10 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
    v3 = v49;
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      v6 = 0x5F544C5541464544;
    }

    v24 = 0xE800000000000000;
    if ((a1 & 1) == 0)
    {
      v24 = 0xEC00000057464553;
    }

    v51 = v24;
  }

  v25 = v55;
  v26 = v53;
  if (a1)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v28 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL;
    if (v27)
    {
      v28 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
    }
  }

  else
  {

    v28 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
  }

  v29 = v54;
  (*(v25 + 16))(v54, v3 + *v28, v26);
  v30 = objc_opt_self();
  v31 = [v30 defaultManager];
  URL.path(percentEncoded:)(0);
  v32 = String._bridgeToObjectiveC()();

  v33 = [v31 fileExistsAtPath:v32];

  if (v33)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v56 = v37;
      *v36 = 136315138;
      v38 = sub_100008F6C(v6, v51, &v56);

      *(v36 + 4) = v38;
      v25 = v55;
      _os_log_impl(&_mh_execute_header, v34, v35, "Removing firmware of type %s", v36, 0xCu);
      sub_10000959C(v37);
      v29 = v54;
    }

    v39 = [v30 defaultManager];
    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    v56 = 0;
    v43 = [v39 removeItemAtURL:v41 error:&v56];

    if (v43)
    {
      v44 = *(v25 + 8);
      v45 = v56;
      return v44(v29, v26);
    }

    v47 = v56;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v25 + 8))(v29, v26);
}

char *sub_100097438(void *a1)
{
  v3 = v2;
  v4 = v1;
  v49 = a1;
  v5 = type metadata accessor for SESessionWrapper();
  __chkstk_darwin(v5 - 8);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v51 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v52 = &v43 - v13;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v46 = sub_10000403C(v14, qword_1003A0E40);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v45 = v2;
    v53 = v18;
    *v17 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, &v53);
    v50 = v4;
    v22 = v7;
    v23 = v21;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v24 = showFunction(signature:_:)(0xD00000000000001ALL, 0x8000000100349FD0, _swiftEmptyArrayStorage);
    v26 = sub_100008F6C(v24, v25, &v53);

    *(v17 + 14) = v26;
    v7 = v22;
    v4 = v50;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s.%s", v17, 0x16u);
    swift_arrayDestroy();
    v3 = v45;
  }

  v27 = v52;
  sub_1000966E0(v52);
  if (!v3)
  {
    v50 = v4;
    v28 = *(v51 + 16);
    v28(v12, v27, v7);
    v29 = Logger.logObject.getter();
    v30 = v12;
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v31))
    {
      v32 = swift_slowAlloc();
      v44 = v32;
      v45 = swift_slowAlloc();
      v53 = v45;
      *v32 = 136315138;
      sub_100097F8C(&qword_1003A3C40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v33 = v28;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v7;
      v37 = v36;
      v46 = *(v51 + 8);
      v46(v30, v35);
      v38 = v34;
      v28 = v33;
      v39 = sub_100008F6C(v38, v37, &v53);
      v7 = v35;
      v27 = v52;

      v40 = v44;
      *(v44 + 1) = v39;
      _os_log_impl(&_mh_execute_header, v29, v31, "Initializing a KernelManager at %s", v40, 0xCu);
      sub_10000959C(v45);
    }

    else
    {

      v46 = *(v51 + 8);
      v46(v30, v7);
    }

    v41 = v49;
    SESessionWrapper.init(seid:isProduction:session:)();
    v28(v48, v27, v7);
    type metadata accessor for KernelManager();
    swift_allocObject();
    v12 = KernelManager.init(seWrapper:sefw:)();
    v46(v27, v7);
  }

  return v12;
}

uint64_t sub_1000979E4()
{
  v1 = OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultSefwURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL, v2);
  v3(v0 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KernelManagerWrapper(uint64_t a1)
{
  result = qword_1003A0EA8;
  if (!qword_1003A0EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100097B34(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_100097BDC(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_1000F5A28(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10017E398(v15, v4 & 1);
    v10 = sub_1000F5A28(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100181F14();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x8000000100347B20;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_1000F5A28(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_10017E398(v31, 1);
        v27 = sub_1000F5A28(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100097F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100097FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009803C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SLAMScript(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000980A0()
{
  v0 = type metadata accessor for SEMemoryInfo();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  KernelAssetEvaluation.requiredMemory.getter();
  v4 = SEMemoryInfo.nvm.getter();
  v5 = *(v1 + 8);
  result = v5(v3, v0);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  KernelAssetEvaluation.requiredMemory.getter();
  v7 = SEMemoryInfo.cor.getter();
  result = v5(v3, v0);
  if (v7 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  KernelAssetEvaluation.requiredMemory.getter();
  v8 = SEMemoryInfo.cod.getter();
  result = v5(v3, v0);
  if (v8 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  KernelAssetEvaluation.requiredMemory.getter();
  v9 = SEMemoryInfo.idx.getter();
  result = v5(v3, v0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    return [objc_allocWithZone(SPRMemoryInfo) initWithNvm:v4 cor:v7 cod:v8 idx:v9];
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_100098258()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E5844(v13);
  if (v0)
  {
    return v1;
  }

  result = [*(*sub_10000BE18(v13 v14) + 16)];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = [*(*sub_10000BE18(v13 v14) + 16)];
    if (qword_10039D5D0 != -1)
    {
      swift_once();
    }

    v11 = sub_10000403C(v1, qword_1003A6D18);
    (*(v2 + 16))(v4, v11, v1);
    type metadata accessor for KernelManagerWrapper(0);
    v1 = swift_allocObject();
    sub_100092B40(v4, v7, v9, v10);
    sub_10000959C(v13);
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100098430(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x736B706163;
    v6 = 0xD000000000000019;
    if (a1 != 2)
    {
      v6 = 0x74536D6574737973;
    }

    if (a1)
    {
      v5 = 0x666E6F4365726F63;
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
    v1 = 0x6572617764726168;
    v2 = 0x4965746174536573;
    if (a1 != 7)
    {
      v2 = 0x6F436C61626F6C67;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0xD000000000000018;
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

Swift::Int sub_10009858C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10017C8D8(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000985DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10017C8D8(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100098620@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000986E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100098650@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100098430(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100098690()
{
  result = qword_1003A0FE8;
  if (!qword_1003A0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0FE8);
  }

  return result;
}

unint64_t sub_1000986E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037E390, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t *AID_PIN_APPLET.unsafeMutableAddressor()
{
  if (qword_10039D3D0 != -1)
  {
    swift_once();
  }

  return &AID_PIN_APPLET;
}

uint64_t *AID_PAY_APPLET.unsafeMutableAddressor()
{
  if (qword_10039D3C0 != -1)
  {
    swift_once();
  }

  return &AID_PAY_APPLET;
}

uint64_t sub_1000987D0()
{
  result = sub_10014B8C8(&off_10037E300);
  AID_PAY_APPLET = result;
  *algn_1003A6A98 = v1;
  return result;
}

uint64_t sub_1000987FC()
{
  if (qword_10039D3C0 != -1)
  {
    swift_once();
  }

  v0 = AID_PAY_APPLET;
  v1 = *algn_1003A6A98;
  sub_1000094F4(AID_PAY_APPLET, *algn_1003A6A98);
  v2 = Data.hexString()();
  result = sub_100009548(v0, v1);
  xmmword_1003A6AA0 = v2;
  return result;
}

uint64_t sub_100098894()
{
  result = sub_10014B8C8(&off_10037B400);
  AID_PIN_APPLET = result;
  *algn_1003A6AB8 = v1;
  return result;
}

uint64_t sub_1000988C0()
{
  if (qword_10039D3D0 != -1)
  {
    swift_once();
  }

  v0 = AID_PIN_APPLET;
  v1 = *algn_1003A6AB8;
  sub_1000094F4(AID_PIN_APPLET, *algn_1003A6AB8);
  v2 = Data.hexString()();
  result = sub_100009548(v0, v1);
  xmmword_1003A6AC0 = v2;
  return result;
}

uint64_t sub_100098958()
{
  result = sub_10014B8C8(&off_10037BA18);
  qword_1003A6AD0 = result;
  *algn_1003A6AD8 = v1;
  return result;
}

uint64_t sub_100098984()
{
  if (qword_10039D3E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1003A6AD0;
  v1 = *algn_1003A6AD8;
  sub_1000094F4(qword_1003A6AD0, *algn_1003A6AD8);
  v2 = Data.hexString()();
  result = sub_100009548(v0, v1);
  xmmword_1003A6AE0 = v2;
  return result;
}

uint64_t sub_100098A1C()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6AF0 = v4;
    *algn_1003A6AF8 = v6;
  }

  return result;
}

uint64_t sub_100098B2C()
{
  result = Data.init(hexString:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6B00 = result;
    *algn_1003A6B08 = v1;
  }

  return result;
}

uint64_t sub_100098B6C()
{
  v0 = sub_1001831AC(&off_10037CA28);
  sub_100004074(&qword_1003A0FF0, &qword_1002C5040);
  result = swift_arrayDestroy();
  qword_1003A6B10 = v0;
  return result;
}

unint64_t _sSC23SPRAttestationErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D400 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B10;
  if (*(qword_1003A6B10 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(19);

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0xD000000000000011;
  }
}

unint64_t sub_100098CD0(uint64_t a1)
{
  result = sub_100098CF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098CF8()
{
  result = qword_10039DC38;
  if (!qword_10039DC38)
  {
    type metadata accessor for AttestationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DC38);
  }

  return result;
}

uint64_t sub_100098D50()
{
  v0 = sub_100182B78(&off_10037B430);
  sub_100004074(&qword_1003A0FF8, &qword_1002C5068);
  result = swift_arrayDestroy();
  qword_1003A6B18 = v0;
  return result;
}

unint64_t _sSC25SPRConfigurationErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D408 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B18;
  if (*(qword_1003A6B18 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0xD000000000000013;
  }
}

unint64_t sub_100098EB4(uint64_t a1)
{
  result = sub_100098EDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098EDC()
{
  result = qword_10039DC00;
  if (!qword_10039DC00)
  {
    type metadata accessor for ConfigurationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DC00);
  }

  return result;
}

uint64_t sub_100098F34(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    type metadata accessor for ConfigurationError(0);
    sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000011;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for Double;
    *(inited + 40) = 0x800000010034A1E0;
    *(inited + 48) = a1;
    sub_100182BA0(inited);
    swift_setDeallocating();
    sub_1000990BC(v5);
    sub_100098EDC();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v7;
  }

  if (a1 <= 6)
  {
LABEL_10:
    v3 = 2023;
    goto LABEL_11;
  }

  if (a1 <= 10)
  {
    if (a1 > 8)
    {
      if (a1 == 9)
      {
        v3 = 2037;
      }

      else
      {
        v3 = 2038;
      }
    }

    else if (a1 == 7)
    {
      v3 = 2029;
    }

    else
    {
      v3 = 2036;
    }

    goto LABEL_11;
  }

  if (a1 <= 12)
  {
    if (a1 != 11)
    {
      v3 = 2042;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 == 13)
  {
    v3 = 2043;
  }

  else
  {
    v3 = 2044;
  }

LABEL_11:

  return sub_100020148(v3, 0, 0, 0);
}

uint64_t sub_1000990BC(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099124()
{
  v0 = sub_100182CD0(&off_10037B820);
  sub_100004074(&qword_1003A1000, &qword_1002C5090);
  result = swift_arrayDestroy();
  qword_1003A6B20 = v0;
  return result;
}

uint64_t _sSC17SPRDepotErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D410 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B20;
  if (*(qword_1003A6B20 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0x727245746F706544;
  }
}

unint64_t sub_100099270(uint64_t a1)
{
  result = sub_100099298();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100099298()
{
  result = qword_10039DBC8;
  if (!qword_10039DBC8)
  {
    type metadata accessor for DepotError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DBC8);
  }

  return result;
}

uint64_t sub_1000992F0()
{
  v0 = sub_10018306C(&off_10037C578);
  result = sub_10009949C(&unk_10037C598);
  qword_1003A6B28 = v0;
  return result;
}

uint64_t _sSC16SPRJSONErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D418 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B28;
  if (*(qword_1003A6B28 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0x6F7272454E4F534ALL;
  }
}

unint64_t sub_10009941C(uint64_t a1)
{
  result = sub_100099444();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100099444()
{
  result = qword_10039DB90;
  if (!qword_10039DB90)
  {
    type metadata accessor for JSONError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DB90);
  }

  return result;
}

uint64_t sub_10009949C(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A1008, &qword_1002C50B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099504()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1010);
  sub_10000403C(v0, qword_1003A1010);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

void *sub_100099560(void *a1, uint64_t a2, char a3)
{
  v6 = objc_opt_self();
  sub_10000BE18(a1, a1[3]);
  v7 = [v6 isValidJSONObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (!v7)
  {
    if (qword_10039D420 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A1010);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Object is not a valid JSON", v13, 2u);
    }

    sub_1000210EC(15000, 0, 0, 0);
    goto LABEL_13;
  }

  sub_10000BE18(a1, a1[3]);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  v17 = 0;
  if (a3)
  {
    v9 = [v6 dataWithJSONObject:v8 options:0 error:&v17];
  }

  else
  {
    v9 = [v6 dataWithJSONObject:v8 options:a2 error:&v17];
  }

  v14 = v9;
  swift_unknownObjectRelease();
  v15 = v17;
  if (!v14)
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();
    return v12;
  }

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v12;
}

uint64_t sub_1000997C0()
{
  v0 = sub_1001830E4(&off_10037C690);
  sub_100004074(&qword_1003A1028, qword_1002C50E0);
  result = swift_arrayDestroy();
  qword_1003A6B30 = v0;
  return result;
}

uint64_t _sSC19SPRMonitorErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D428 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B30;
  if (*(qword_1003A6B30 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    strcpy(v7, "MonitorError#");
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return v7[0];
  }
}

unint64_t sub_100099910(uint64_t a1)
{
  result = sub_100099938();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100099938()
{
  result = qword_10039DB58;
  if (!qword_10039DB58)
  {
    type metadata accessor for MonitorError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DB58);
  }

  return result;
}

uint64_t sub_100099990()
{
  if (*v0)
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x656E696C6E6FLL;
  }
}

uint64_t sub_1000999C8()
{
  v0 = sub_100183044(&off_10037BA48);
  sub_100004074(&qword_1003A1030, &qword_1002C5130);
  result = swift_arrayDestroy();
  qword_1003A6B38 = v0;
  return result;
}

uint64_t _sSC11ORErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D430 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B38;
  if (*(qword_1003A6B38 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0x23726F727245524FLL;
  }
}

unint64_t sub_100099B0C(uint64_t a1)
{
  result = sub_100099B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100099B34()
{
  result = qword_10039DC70;
  if (!qword_10039DC70)
  {
    type metadata accessor for ORError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DC70);
  }

  return result;
}

NSObject *sub_100099B8C(NSObject *a1)
{
  v2 = v1;
  if (qword_10039D438 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A1038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v29[5] = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, v29);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD00000000000001ALL, 0x800000010034A250, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, v29);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (a1[2].isa && (v5 = a1, v14 = sub_1000F5A28(0xD000000000000011, 0x8000000100346850), (v15 & 1) != 0) && (sub_10000BDA4(a1[7].isa + 32 * v14, v29), (swift_dynamicCast() & 1) != 0))
  {
    v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
    if (a1[2].isa && (v17 = sub_1000F5A28(0x7472654364736163, 0xEF65746163696669), (v18 & 1) != 0) && (sub_10000BDA4(a1[7].isa + 32 * v17, v29), (swift_dynamicCast() & 1) != 0))
    {
      v19 = v27;
      v20 = v28;
    }

    else
    {
      v19 = 0;
      v20 = 0xC000000000000000;
    }

    v22.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100009548(v19, v20);
    if (a1[2].isa && (v23 = sub_1000F5A28(6580594, 0xE300000000000000), (v24 & 1) != 0))
    {
      sub_10000BDA4(a1[7].isa + 32 * v23, v29);

      swift_dynamicCast();
    }

    else
    {
    }

    v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v26 = String._bridgeToObjectiveC()();

    v5 = [v25 initWithProvisionDataBlob:v16.super.isa casdCertificate:v22.super.isa rid:v26];
    sub_100009548(v27, v28);
  }

  else
  {

    sub_1000205C0(20008, 0xD00000000000002BLL, 0x800000010034A220, 0);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_100099F64()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1038);
  sub_10000403C(v0, qword_1003A1038);
  sub_100023B24();
  return static SPRLogger.orReader.getter();
}

uint64_t sub_100099FC0()
{
  v0 = sub_1001831D4(&off_10037C170);
  sub_100004074(&qword_1003A1050, &qword_1002C5158);
  result = swift_arrayDestroy();
  qword_1003A6B40 = v0;
  return result;
}

unint64_t _sSC23SPRPersistenceErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D440 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B40;
  if (*(qword_1003A6B40 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(19);

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0xD000000000000011;
  }
}

unint64_t sub_10009A124(uint64_t a1)
{
  result = sub_10009A14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009A14C()
{
  result = qword_10039DB20;
  if (!qword_10039DB20)
  {
    type metadata accessor for PersistenceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DB20);
  }

  return result;
}

uint64_t sub_10009A1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 32))(a1, a2, a3, a5);
  if (!v7)
  {
    v10 = result;
    v11 = v9;
    type metadata accessor for JSONDecoder();
    sub_10009A814(_swiftEmptyArrayStorage);
    static JSONDecoder.decodeClean<A>(_:from:userInfo:)();

    return sub_100009548(v10, v11);
  }

  return result;
}

uint64_t sub_10009A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a2;
  v21 = a4;
  v19 = a1;
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  sub_10009A590();
  v13 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v7)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = v13;
  v17 = v14;
  (*(v10 + 8))(v12, v9);
  (*(a6 + 40))(v19, v20, v16, v17, v21, a6);
  return sub_100009548(v16, v17);
}

uint64_t sub_10009A400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a5;
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  if (v15 >> 60 == 15)
  {
    sub_100020A38(6002, 0x2064696C61766E69, 0xED0000382D465455, 0);
    return swift_willThrow();
  }

  else
  {
    (*(a6 + 40))(a1, a2, v13, v15, v17, a6);
    return sub_10001A074(v13, v15);
  }
}

uint64_t sub_10009A590()
{
  type metadata accessor for JSONEncoder.OutputFormatting();
  sub_10009AA5C();
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10009AAB4();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

unint64_t sub_10009A618(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10009A67C(a1, v2);
}

unint64_t sub_10009A67C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10009A814(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A1058, &qword_1002C5160);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004074(&qword_1003A1060, &qword_1002C5168);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10009A9EC(v9, v5);
      result = sub_10009A618(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100019D3C(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10009A9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A1058, &qword_1002C5160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009AA5C()
{
  result = qword_1003A1068;
  if (!qword_1003A1068)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1068);
  }

  return result;
}

unint64_t sub_10009AAB4()
{
  result = qword_1003A1078;
  if (!qword_1003A1078)
  {
    sub_1000040BC(&qword_1003A1070, &qword_1002C5170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1078);
  }

  return result;
}

uint64_t sub_10009AB18()
{
  v0 = sub_100183184(&off_10037C5B0);
  sub_100004074(&qword_1003A1080, &qword_1002C5198);
  result = swift_arrayDestroy();
  qword_1003A6B48 = v0;
  return result;
}

unint64_t _sSC22SPRPINAppletProxyErrorLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D448 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B48;
  if (*(qword_1003A6B48 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(22);

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0xD000000000000014;
  }
}

unint64_t sub_10009AC7C(uint64_t a1)
{
  result = sub_10009ACA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009ACA4()
{
  result = qword_10039DAE8;
  if (!qword_10039DAE8)
  {
    type metadata accessor for PINAppletProxyError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DAE8);
  }

  return result;
}

uint64_t sub_10009ACFC()
{
  v0 = sub_10018315C(&off_10037C7E8);
  sub_100004074(&qword_1003A1088, &qword_1002C51C0);
  result = swift_arrayDestroy();
  qword_1003A6B50 = v0;
  return result;
}

unint64_t _sSC21SPRPINControllerErrorLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D450 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B50;
  if (*(qword_1003A6B50 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0xD000000000000013;
  }
}

unint64_t sub_10009AE60(uint64_t a1)
{
  result = sub_10009AE88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009AE88()
{
  result = qword_10039DAB0;
  if (!qword_10039DAB0)
  {
    type metadata accessor for PINControllerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DAB0);
  }

  return result;
}

uint64_t sub_10009AEE0()
{
  v0 = sub_1001830BC(&off_10037C970);
  sub_100004074(&qword_1003A1090, &qword_1002C51E8);
  result = swift_arrayDestroy();
  qword_1003A6B58 = v0;
  return result;
}

uint64_t _sSC18SPRPrimerErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D458 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B58;
  if (*(qword_1003A6B58 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    strcpy(v7, "PrimerError#");
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return v7[0];
  }
}

unint64_t sub_10009B02C(uint64_t a1)
{
  result = sub_10009B054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009B054()
{
  result = qword_10039DA78;
  if (!qword_10039DA78)
  {
    type metadata accessor for PrimerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DA78);
  }

  return result;
}

uint64_t sub_10009B0AC()
{
  v0 = sub_10018310C(&off_10037C9C0);
  sub_100004074(&qword_1003A1098, &qword_1002C5210);
  result = swift_arrayDestroy();
  qword_1003A6B60 = v0;
  return result;
}

uint64_t _sSC20SPRProviderErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D460 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B60;
  if (*(qword_1003A6B60 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(16);

    strcpy(v7, "ProviderError#");
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return v7[0];
  }
}

unint64_t sub_10009B218(uint64_t a1)
{
  result = sub_10009B240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009B240()
{
  result = qword_10039DA40;
  if (!qword_10039DA40)
  {
    type metadata accessor for ProviderError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DA40);
  }

  return result;
}

uint64_t sub_10009B298()
{
  v0 = sub_100183094(&off_10037BC40);
  sub_100004074(&qword_1003A10A0, &qword_1002C5238);
  result = swift_arrayDestroy();
  qword_1003A6B68 = v0;
  return result;
}

uint64_t _sSC16SPRReadErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D468 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B68;
  if (*(qword_1003A6B68 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0x6F72724564616552;
  }
}

unint64_t sub_10009B3E0(uint64_t a1)
{
  result = sub_10009B408();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009B408()
{
  result = qword_10039DA08;
  if (!qword_10039DA08)
  {
    type metadata accessor for ReadError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DA08);
  }

  return result;
}

uint64_t sub_10009B460(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    type metadata accessor for ReadError(0);
    sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000011;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for Double;
    *(inited + 40) = 0x800000010034A1E0;
    *(inited + 48) = a1;
    sub_100182BA0(inited);
    swift_setDeallocating();
    sub_1000990BC(v5);
    sub_10009B408();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v7;
  }

  if (a1 <= 6)
  {
LABEL_10:
    v3 = 4053;
    goto LABEL_11;
  }

  if (a1 <= 10)
  {
    if (a1 > 8)
    {
      if (a1 == 9)
      {
        v3 = 4051;
      }

      else
      {
        v3 = 4052;
      }
    }

    else if (a1 == 7)
    {
      v3 = 4023;
    }

    else
    {
      v3 = 4050;
    }

    goto LABEL_11;
  }

  if (a1 <= 12)
  {
    if (a1 != 11)
    {
      v3 = 4058;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 == 13)
  {
    v3 = 4059;
  }

  else
  {
    v3 = 4060;
  }

LABEL_11:

  return sub_1000207FC(v3, 0, 0, 0);
}

uint64_t sub_10009B5E8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A10A8);
  sub_10000403C(v0, qword_1003A10A8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

void sub_10009B644(uint64_t a1@<X8>)
{
  v36[0] = 0;
  v2 = DeviceIdentityCopyCertificateProperties();
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = 0;

    v37 = 808465457;
    v38 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v6 = sub_1000F5AC4(v36), (v7 & 1) != 0))
    {
      sub_10000BDA4(*(v4 + 56) + 32 * v6, &v37);
      sub_10001A124(v36);
      v8 = swift_dynamicCast();
      if (v8)
      {
        v9 = v34;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = v35;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      sub_10001A124(v36);
      v9 = 0;
      v10 = 0;
    }

    v37 = 875574321;
    v38 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v11 = sub_1000F5AC4(v36), (v12 & 1) != 0))
    {
      sub_10000BDA4(*(v4 + 56) + 32 * v11, &v37);
      sub_10001A124(v36);
      v13 = swift_dynamicCast();
      if (v13)
      {
        v14 = v34;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = v35;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      sub_10001A124(v36);
      v14 = 0;
      v15 = 0;
    }

    v37 = 892351537;
    v38 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v16 = sub_1000F5AC4(v36), (v17 & 1) != 0))
    {
      sub_10000BDA4(*(v4 + 56) + 32 * v16, &v37);
      sub_10001A124(v36);
      v18 = swift_dynamicCast();
      if (v18)
      {
        v19 = v34;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = v35;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      sub_10001A124(v36);
      v19 = 0;
      v20 = 0;
    }

    AnyHashable.init<A>(_:)();
    if (*(v4 + 16))
    {
      v21 = sub_1000F5AC4(v36);
      if (v22)
      {
        sub_10000BDA4(*(v4 + 56) + 32 * v21, &v37);
        sub_10001A124(v36);

        v23 = swift_dynamicCast();
        if (v23)
        {
          v24 = 909128753;
        }

        else
        {
          v24 = 0;
        }

        v25 = v23 ^ 1;
        goto LABEL_43;
      }
    }

    sub_10001A124(v36);

LABEL_42:
    v24 = 0;
    v25 = 1;
LABEL_43:
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v14;
    *(a1 + 24) = v15;
    *(a1 + 32) = v19;
    *(a1 + 40) = v20;
    *(a1 + 48) = v24;
    *(a1 + 56) = v25;
    return;
  }

  v26 = qword_10039D470;
  v27 = v36[0];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000403C(v28, qword_1003A10A8);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v29, v30))
  {
LABEL_41:

    v9 = 0;
    v10 = 0;
    v14 = 0;
    v15 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_42;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v31 = 138412290;
  if (v27)
  {
    *(v31 + 4) = v27;
    *v32 = 0;
    v33 = v32;
    v27 = v27;
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to copy device OS version information from certificate: %@", v31, 0xCu);
    sub_100041D90(v33);

    goto LABEL_41;
  }

  __break(1u);
}

void sub_10009BACC(uint64_t *a1@<X8>)
{
  v32[0] = 0;
  v2 = DeviceIdentityCopyCertificateProperties();
  if (!v2)
  {
    v20 = qword_10039D470;
    v21 = v32[0];
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_1003A10A8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      v33 = 0;
      sub_100004074(&qword_1003A10C0, &qword_1002C9180);
      v27 = Optional.debugDescription.getter();
      v29 = sub_100008F6C(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to copy UCRT device identifiers from certificate: %s", v25, 0xCu);
      sub_10000959C(v26);
    }

    v9 = 0;
    v10 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_31;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = 0;

  v33 = 1768254825;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v6 = sub_1000F5AC4(v32), (v7 & 1) != 0))
  {
    sub_10000BDA4(*(v4 + 56) + 32 * v6, &v33);
    sub_10001A124(v32);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v30;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v31;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_10001A124(v32);
    v9 = 0;
    v10 = 0;
  }

  v33 = 1684628845;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v11 = sub_1000F5AC4(v32), (v12 & 1) != 0))
  {
    sub_10000BDA4(*(v4 + 56) + 32 * v11, &v33);
    sub_10001A124(v32);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v30;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_10001A124(v32);
    v14 = 0;
    v15 = 0;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v16 = sub_1000F5AC4(v32), (v17 & 1) == 0))
  {

    sub_10001A124(v32);
    goto LABEL_25;
  }

  sub_10000BDA4(*(v4 + 56) + 32 * v16, &v33);
  sub_10001A124(v32);

  if (!swift_dynamicCast())
  {
LABEL_25:

LABEL_31:
    v18 = 0;
    v19 = 0;
    goto LABEL_32;
  }

  v18 = 1684628851;
  v19 = 0xE400000000000000;

LABEL_32:
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v18;
  a1[5] = v19;
}

void sub_10009BEC4(uint64_t *a1@<X8>)
{
  v32[0] = 0;
  v2 = DeviceIdentityCopyCertificateProperties();
  if (!v2)
  {
    v20 = qword_10039D470;
    v21 = v32[0];
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_1003A10A8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      v33 = 0;
      sub_100004074(&qword_1003A10C0, &qword_1002C9180);
      v27 = Optional.debugDescription.getter();
      v29 = sub_100008F6C(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to copy device identifiers from certificate: %s", v25, 0xCu);
      sub_10000959C(v26);
    }

    v9 = 0;
    v10 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_31;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = 0;

  v33 = 909193265;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v6 = sub_1000F5AC4(v32), (v7 & 1) != 0))
  {
    sub_10000BDA4(*(v4 + 56) + 32 * v6, &v33);
    sub_10001A124(v32);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v30;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v31;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_10001A124(v32);
    v9 = 0;
    v10 = 0;
  }

  v33 = 942747697;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v11 = sub_1000F5AC4(v32), (v12 & 1) != 0))
  {
    sub_10000BDA4(*(v4 + 56) + 32 * v11, &v33);
    sub_10001A124(v32);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v30;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_10001A124(v32);
    v14 = 0;
    v15 = 0;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v16 = sub_1000F5AC4(v32), (v17 & 1) == 0))
  {

    sub_10001A124(v32);
    goto LABEL_25;
  }

  sub_10000BDA4(*(v4 + 56) + 32 * v16, &v33);
  sub_10001A124(v32);

  if (!swift_dynamicCast())
  {
LABEL_25:

LABEL_31:
    v18 = 0;
    v19 = 0;
    goto LABEL_32;
  }

  v18 = 858861617;
  v19 = 0xE400000000000000;

LABEL_32:
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v18;
  a1[5] = v19;
}

uint64_t sub_10009C2B8()
{
  v21[0] = 0;
  v0 = DeviceIdentityCopyCertificateProperties();
  if (v0)
  {
    v1 = v0;
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = 0;

    v22[0] = 925905201;
    v22[1] = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v4 = sub_1000F5AC4(v21), (v5 & 1) != 0))
    {
      sub_10000BDA4(*(v2 + 56) + 32 * v4, v22);
      sub_10001A124(v21);
      if (swift_dynamicCast())
      {
        v6 = v20;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      sub_10001A124(v21);
      v6 = 0;
    }

    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v7 = sub_1000F5AC4(v21), (v8 & 1) != 0))
    {
      sub_10000BDA4(*(v2 + 56) + 32 * v7, v22);
      sub_10001A124(v21);

      swift_dynamicCast();
    }

    else
    {

      sub_10001A124(v21);
    }
  }

  else
  {
    v9 = qword_10039D470;
    v10 = v21[0];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A10A8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      v22[0] = 0;
      sub_100004074(&qword_1003A10C0, &qword_1002C9180);
      v16 = Optional.debugDescription.getter();
      v18 = sub_100008F6C(v16, v17, v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to copy hardware properties from certificate: %s", v14, 0xCu);
      sub_10000959C(v15);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_10009C620()
{
  v0 = sub_1001831FC(&off_10037C480);
  sub_100004074(&qword_1003A10C8, &qword_1002C5260);
  result = swift_arrayDestroy();
  qword_1003A6B70 = v0;
  return result;
}

unint64_t _sSC25SPRSecureChannelErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D478 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B70;
  if (*(qword_1003A6B70 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0xD000000000000013;
  }
}

unint64_t sub_10009C784(uint64_t a1)
{
  result = sub_10009C7AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009C7AC()
{
  result = qword_10039D9D0;
  if (!qword_10039D9D0)
  {
    type metadata accessor for SecureChannelError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039D9D0);
  }

  return result;
}

uint64_t sub_10009C804()
{
  v0 = sub_100183134(&off_10037C280);
  sub_100004074(&qword_1003A10D0, &qword_1002C5288);
  result = swift_arrayDestroy();
  qword_1003A6B78 = v0;
  return result;
}

uint64_t _sSC20SPRSecurityErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D480 != -1)
  {
    swift_once();
  }

  v1 = qword_1003A6B78;
  if (*(qword_1003A6B78 + 16) && (v2 = sub_1000F883C(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(16);

    strcpy(v7, "SecurityError#");
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return v7[0];
  }
}

unint64_t sub_10009C970(uint64_t a1)
{
  result = sub_10009C998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009C998()
{
  result = qword_10039D998;
  if (!qword_10039D998)
  {
    type metadata accessor for SecurityError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039D998);
  }

  return result;
}

uint64_t sub_10009C9F0(OSStatus a1, uint64_t a2)
{
  if (a1 > -67820)
  {
    if (a1 != -25318)
    {
      if (a1 == -67818)
      {
        v3 = 10012;
        goto LABEL_14;
      }

      if (a1 == -67819)
      {
        v3 = 10011;
        goto LABEL_14;
      }

LABEL_11:
      v4 = SecCopyErrorMessageString(a1, 0);
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v3 = 10997;
      v9 = v6;
      v10 = v8;
      goto LABEL_15;
    }

LABEL_10:
    v3 = 10010;
    goto LABEL_14;
  }

  if (a1 == -67880 || a1 == -67843)
  {
    goto LABEL_10;
  }

  if (a1 != -67820)
  {
    goto LABEL_11;
  }

  v3 = 10013;
LABEL_14:
  v9 = 0;
  v10 = 0;
LABEL_15:

  return sub_100020C74(v3, v9, v10, a2);
}

uint64_t (*sub_10009CAF8(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v5 = swift_allocObject();
  *(v5 + 16) = -1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = a1;
  swift_unknownObjectRetain();
  return sub_10009CC6C;
}

uint64_t sub_10009CBA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a2 + 16) < a1)
  {
    [a3 onUpdateWithEvent:a4 progress:a1];
    result = swift_beginAccess();
    *(a2 + 16) = a1;
  }

  return result;
}

uint64_t sub_10009CC2C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009CC78()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A10D8);
  sub_10000403C(v0, qword_1003A10D8);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.reader.getter();
}

NSObject *sub_10009CCE4(NSObject *a1, NSObject *a2, void *a3, uint64_t a4)
{
  if (!a2[2].isa || (v4 = a2, v8 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034A2F0), (v9 & 1) == 0))
  {

LABEL_20:

    sub_1000207FC(4012, 0xD000000000000020, 0x800000010034A310, 0);
    swift_willThrow();
LABEL_21:

    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 8))(a4, v28);
    return v4;
  }

  sub_10000BDA4(a2[7].isa + 32 * v8, &v162);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  v4 = v165;
  v10 = v166;
  if (!a2[2].isa)
  {
    goto LABEL_26;
  }

  v155 = v165;
  v11 = sub_1000F5A28(0xD000000000000010, 0x800000010034A340);
  if ((v12 & 1) == 0)
  {

    v4 = v155;
LABEL_27:
    sub_1000207FC(4012, 0xD000000000000016, 0x800000010034A360, 0);
    swift_willThrow();
    v29 = v4;
    v30 = v10;
LABEL_28:
    sub_100009548(v29, v30);
    goto LABEL_21;
  }

  sub_10000BDA4(a2[7].isa + 32 * v11, &v162);
  v4 = v155;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

  v154 = v10;
  v152 = v165;
  v153 = v166;
  if (!a2[2].isa)
  {
    goto LABEL_31;
  }

  v13 = sub_1000F5A28(0x61486B654B787274, 0xEA00000000006873);
  if ((v14 & 1) == 0)
  {

    v4 = v155;
LABEL_32:
    sub_1000207FC(4012, 0x61486B654B787274, 0xEE006C696E206873, 0);
    swift_willThrow();
    sub_100009548(v4, v10);
    v29 = v152;
    v30 = v153;
    goto LABEL_28;
  }

  sub_10000BDA4(a2[7].isa + 32 * v13, &v162);
  v4 = v155;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

    goto LABEL_32;
  }

  result = Data.init(hexString:)();
  if (v16 >> 60 != 15)
  {
    v167 = result;
    v168 = v16;
    if (!a2[2].isa)
    {
      goto LABEL_59;
    }

    v17 = sub_1000F5A28(0x6B6361626C6C6166, 0xEE00746E756F6D41);
    if ((v18 & 1) == 0)
    {
      goto LABEL_59;
    }

    sub_10000BDA4(a2[7].isa + 32 * v17, &v165);
    sub_10000BDA4(&v165, &v162);
    type metadata accessor for Decimal(0);
    swift_dynamicCast();
    v160 = v158;
    v161 = v159;
    v156 = v158;
    v157 = v159;
    v19 = [objc_allocWithZone(NSDecimalNumber) initWithDecimal:&v156];
    v20 = [v19 integerValue];

    if (v20 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = -v20;
    }

    *&v162 = v21;
    sub_10001A4CC();
    v147 = UnsignedInteger.digitsAsBytes()();
    v23 = v22;
    v150 = Data.toBCD()();
    v25 = v24;
    result = sub_100009548(v147, v23);
    v148 = v25;
    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v27 = 0;
      if (v26 != 2)
      {
        goto LABEL_39;
      }

      v32 = *(v150 + 16);
      v31 = *(v150 + 24);
      v27 = v31 - v32;
      if (!__OFSUB__(v31, v32))
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v27 = BYTE6(v25);
LABEL_39:
      if (static TLVTag.TAG_9F02_LENGTH.getter() < v27)
      {

        if (qword_10039D488 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000403C(v33, qword_1003A10D8);
        v4 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v4, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v4, v34, "Bad fallbackAmount length", v35, 2u);
        }

        sub_1000207FC(4012, 0xD00000000000002DLL, 0x800000010034A4E0, 0);
        swift_willThrow();
        sub_100009548(v155, v154);
        sub_100009548(v152, v153);

        sub_100009548(v150, v148);
        v36 = type metadata accessor for UUID();
        (*(*(v36 - 8) + 8))(a4, v36);
        sub_10000959C(&v165);
        sub_100009548(v167, v168);
        return v4;
      }

      v143 = v168;
      v145 = v167;
      v37 = v148;
      sub_1000094F4(v150, v148);
      sub_100009548(v145, v143);
      v167 = v150;
      v168 = v148;
      v38 = v150;
      while (1)
      {
        v39 = v37 >> 62;
        if ((v37 >> 62) > 1)
        {
          if (v39 == 2)
          {
            v43 = v38 + 16;
            v41 = *(v38 + 16);
            v42 = *(v43 + 8);
            v40 = v42 - v41;
            if (__OFSUB__(v42, v41))
            {
              __break(1u);
LABEL_190:
              __break(1u);
            }
          }

          else
          {
            v40 = 0;
          }
        }

        else if (v39)
        {
          v44 = __OFSUB__(HIDWORD(v38), v38);
          v45 = HIDWORD(v38) - v38;
          if (v44)
          {
            goto LABEL_190;
          }

          v40 = v45;
        }

        else
        {
          v40 = BYTE6(v37);
        }

        if (v40 >= static TLVTag.TAG_9F02_LENGTH.getter())
        {
          break;
        }

        v46 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
        *(&v163 + 1) = v46;
        v164 = sub_10009E2FC();
        LOBYTE(v162) = 0;
        LOBYTE(v158) = *sub_10000BE18(&v162, v46);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_10000959C(&v162);
        v38 = v167;
        v37 = v168;
      }

      sub_10000959C(&v165);
      sub_100009548(v150, v148);
LABEL_59:
      sub_10000411C(0, &qword_1003A10F0, SPRVASResponse_ptr);
      v136.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (a2[2].isa && (v47 = sub_1000F5A28(0x6568706943787274, 0xED0000626F6C4272), (v48 & 1) != 0) && (sub_10000BDA4(a2[7].isa + 32 * v47, &v162), (swift_dynamicCast() & 1) != 0))
      {
        v49 = v165;
        v50 = v166;
      }

      else
      {
        v49 = 0;
        v50 = 0xC000000000000000;
      }

      v135.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100009548(v49, v50);
      if (a2[2].isa && (v51 = sub_1000F5A28(0x6C4279654B787274, 0xEA0000000000626FLL), (v52 & 1) != 0) && (sub_10000BDA4(a2[7].isa + 32 * v51, &v162), (swift_dynamicCast() & 1) != 0))
      {
        v53 = v165;
        v54 = v166;
      }

      else
      {
        v53 = 0;
        v54 = 0xC000000000000000;
      }

      v134.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100009548(v53, v54);
      if (a2[2].isa)
      {
        v55 = sub_1000F5A28(0x6B726F7774656ELL, 0xE700000000000000);
        if (v56)
        {
          sub_10000BDA4(a2[7].isa + 32 * v55, &v162);
          swift_dynamicCast();
        }
      }

      v57 = String._bridgeToObjectiveC()();

      v133 = v57;
      if (a2[2].isa)
      {
        v58 = sub_1000F5A28(0x53656D6F6374756FLL, 0xED00007375746174);
        if ((v59 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v58, &v162), type metadata accessor for SPRTransactionOutcomeStatus(0), swift_dynamicCast()))
        {
          v132 = v165;
        }

        else
        {
          v132 = 0;
        }

        if (a2[2].isa)
        {
          v60 = sub_1000F5A28(0xD000000000000019, 0x800000010034A380);
          if (v61)
          {
            sub_10000BDA4(a2[7].isa + 32 * v60, &v162);
            if (swift_dynamicCast())
            {
              v62 = v165;
              v63 = v166;
              goto LABEL_83;
            }
          }
        }
      }

      else
      {
        v132 = 0;
      }

      v62 = 0;
      v63 = 0xC000000000000000;
LABEL_83:
      v131.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100009548(v62, v63);
      if (a2[2].isa)
      {
        v64 = sub_1000F5A28(0xD000000000000019, 0x800000010034A3A0);
        if ((v65 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v64, &v162), type metadata accessor for SPRTransactionMessage(0), swift_dynamicCast()))
        {
          v130 = v165;
        }

        else
        {
          v130 = 0;
        }

        if (a2[2].isa)
        {
          v66 = sub_1000F5A28(0x657079546D7663, 0xE700000000000000);
          if ((v67 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v66, &v162), type metadata accessor for SPRTransactionCVMType(0), swift_dynamicCast()))
          {
            v68 = v165;
          }

          else
          {
            v68 = -1;
          }

          v129 = v68;
          if (a2[2].isa && (v71 = sub_1000F5A28(0x6C757365526D7663, 0xE900000000000074), (v72 & 1) != 0) && (sub_10000BDA4(a2[7].isa + 32 * v71, &v162), (swift_dynamicCast() & 1) != 0))
          {
            v69 = v165;
            v70 = v166;
          }

          else
          {
            v69 = 0;
            v70 = 0xC000000000000000;
          }

LABEL_100:
          v151.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100009548(v69, v70);
          if (a2[2].isa && (v73 = sub_1000F5A28(0xD000000000000014, 0x800000010034A3C0), (v74 & 1) != 0) && (sub_10000BDA4(a2[7].isa + 32 * v73, &v162), (swift_dynamicCast() & 1) != 0))
          {
            v75 = v165;
            v76 = v166;
          }

          else
          {
            v75 = 0;
            v76 = 0xC000000000000000;
          }

          v149.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100009548(v75, v76);
          if (a2[2].isa && (v77 = sub_1000F5A28(0x69757165526E6970, 0xEB00000000646572), (v78 & 1) != 0))
          {
            sub_10000BDA4(a2[7].isa + 32 * v77, &v162);
            if (swift_dynamicCast())
            {
              v128 = v165;
            }

            else
            {
              v128 = 0;
            }
          }

          else
          {
            v128 = 0;
          }

          v146.super.isa = Data._bridgeToObjectiveC()().super.isa;
          v144.super.isa = Data._bridgeToObjectiveC()().super.isa;
          if (a2[2].isa)
          {
            v79 = sub_1000F5A28(0xD000000000000015, 0x800000010034A3E0);
            if (v80 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v79, &v162), (swift_dynamicCast()))
            {
              v81 = v165;
              v82 = v166;
            }

            else
            {
              v81 = 0;
              v82 = 0xC000000000000000;
            }
          }

          else
          {
            v81 = 0;
            v82 = 0xC000000000000000;
          }

          v142.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100009548(v81, v82);
          v141 = String._bridgeToObjectiveC()();

          if (a2[2].isa)
          {
            v83 = sub_1000F5A28(0x61486B654B6E6970, 0xEA00000000006873);
            if (v84)
            {
              sub_10000BDA4(a2[7].isa + 32 * v83, &v162);
              swift_dynamicCast();
            }
          }

          v140 = String._bridgeToObjectiveC()();

          if (a2[2].isa)
          {
            v85 = sub_1000F5A28(0x7075536E69507369, 0xEE00646574726F70);
            if ((v86 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v85, &v162), swift_dynamicCast()))
            {
              v87 = v165;
            }

            else
            {
              v87 = 0;
            }

            v127 = v87;
            if (a2[2].isa)
            {
              v88 = sub_1000F5A28(0xD000000000000012, 0x800000010034A400);
              if (v89)
              {
                sub_10000BDA4(a2[7].isa + 32 * v88, &v162);
                if (swift_dynamicCast())
                {
                  v90 = v165;
                  v91 = v166;
                  goto LABEL_131;
                }
              }
            }
          }

          else
          {
            v127 = 0;
          }

          v90 = 0;
          v91 = 0xC000000000000000;
LABEL_131:
          v139.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100009548(v90, v91);
          v138.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          *&v160 = a3;
          type metadata accessor for ReadError(0);
          sub_10009B408();
          _BridgedStoredNSError.code.getter();
          v126 = v158;
          if (a2[2].isa)
          {
            v92 = sub_1000F5A28(0xD000000000000014, 0x800000010034A420);
            if ((v93 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v92, &v162), type metadata accessor for SPRPayAppletStatus(0), swift_dynamicCast()))
            {
              v125 = v165;
            }

            else
            {
              v125 = 0;
            }

            if (a2[2].isa)
            {
              v94 = sub_1000F5A28(0xD000000000000012, 0x800000010034A440);
              if (v95)
              {
                sub_10000BDA4(a2[7].isa + 32 * v94, &v162);
                if (swift_dynamicCast())
                {
                  v124 = v165;
                }

                else
                {
                  v124 = 0;
                }
              }

              else
              {
                v124 = 0;
              }

              if (!a2[2].isa)
              {
                v123 = 0;
                goto LABEL_155;
              }

              v98 = sub_1000F5A28(0xD000000000000012, 0x800000010034A460);
              if (v99)
              {
                sub_10000BDA4(a2[7].isa + 32 * v98, &v162);
                if (swift_dynamicCast())
                {
                  v123 = v165;
LABEL_143:
                  if (a2[2].isa)
                  {
                    v96 = sub_1000F5A28(0x626C6C6146726F66, 0xEB000000006B6361);
                    if ((v97 & 1) == 0)
                    {
                      v122 = 0;
                      goto LABEL_156;
                    }

                    sub_10000BDA4(a2[7].isa + 32 * v96, &v162);
                    if (swift_dynamicCast())
                    {
                      v122 = v165;
                      goto LABEL_156;
                    }
                  }

LABEL_155:
                  v122 = 0;
LABEL_156:
                  Data.hexString()();
                  v137 = String._bridgeToObjectiveC()();

                  if (a2[2].isa)
                  {
                    v100 = sub_1000F5A28(0xD00000000000001DLL, 0x800000010034A480);
                    if ((v101 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v100, &v162), swift_dynamicCast()))
                    {
                      v121 = v165;
                    }

                    else
                    {
                      v121 = 0;
                    }

                    if (a2[2].isa)
                    {
                      v102 = sub_1000F5A28(0xD000000000000013, 0x800000010034A4A0);
                      if (v103)
                      {
                        sub_10000BDA4(a2[7].isa + 32 * v102, &v162);
                        type metadata accessor for SPRCardExpirationState(0);
                        if (swift_dynamicCast())
                        {
                          v120 = v165;
                        }

                        else
                        {
                          v120 = 0;
                        }
                      }

                      else
                      {
                        v120 = 0;
                      }

                      if (!a2[2].isa)
                      {
                        v104 = 0;
                        goto LABEL_179;
                      }

                      v105 = sub_1000F5A28(0xD000000000000012, 0x800000010034A4C0);
                      if ((v106 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v105, &v162), type metadata accessor for SPRCardEffectiveState(0), swift_dynamicCast()))
                      {
                        v104 = v165;
                      }

                      else
                      {
                        v104 = 0;
                      }

LABEL_174:
                      if (a2[2].isa)
                      {
                        v107 = sub_1000F5A28(0x7954707041796170, 0xEA00000000006570);
                        if (v108)
                        {
                          sub_10000BDA4(a2[7].isa + 32 * v107, &v162);
                          swift_dynamicCast();
                        }
                      }

LABEL_179:
                      v109 = String._bridgeToObjectiveC()();

                      if (a2[2].isa)
                      {
                        v110 = sub_1000F5A28(0x4641537369, 0xE500000000000000);
                        if (v111)
                        {
                          sub_10000BDA4(a2[7].isa + 32 * v110, &v162);
                        }

                        else
                        {
                          v162 = 0u;
                          v163 = 0u;
                        }
                      }

                      else
                      {
                        v162 = 0u;
                        v163 = 0u;
                      }

                      if (*(&v163 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v112 = v165;
LABEL_189:
                          LOBYTE(v119) = v112;
                          BYTE2(v118) = v104;
                          BYTE1(v118) = v120;
                          LOBYTE(v118) = v121;
                          BYTE3(v117) = v122;
                          BYTE2(v117) = v123;
                          BYTE1(v117) = v124;
                          LOBYTE(v117) = v125;
                          LOBYTE(v116) = v127;
                          LOBYTE(v115) = v128;
                          BYTE1(v114) = v129;
                          LOBYTE(v114) = v130;
                          v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVasResponses:v136.super.isa transactionCipherBlob:v135.super.isa transactionKeyBlob:v134.super.isa network:v133 outcomeStatus:v132 errorIndicationStatusWord:v131.super.isa errorIndicationMsgOnError:v114 cvmType:v151.super.isa cvmResult:v149.super.isa merchantCategoryCode:v115 pinRequired:v146.super.isa kernelIdentityKeyAttestation:v144.super.isa ecdsaCertificate:v142.super.isa transactionResultData:v141 kekId:v140 pinKekId:v116 isPinSupported:v139.super.isa languagePreference:v138.super.isa transactionUUID:v126 readError:v117 payAppletFinalStatus:v137 isPINBypassEnabled:v118 isPINBypassAllowed:v109 forFallback:v119 fallbackAmount:? switchInterfaceOrNoCVMSuccess:? cardExpirationState:? cardEffectiveState:? payAppType:? isSAF:?];
                          sub_100009548(v155, v154);
                          sub_100009548(v152, v153);

                          v113 = type metadata accessor for UUID();
                          (*(*(v113 - 8) + 8))(a4, v113);
                          sub_100009548(v167, v168);
                          return v4;
                        }
                      }

                      else
                      {
                        sub_10009E294(&v162);
                      }

                      v112 = 0;
                      goto LABEL_189;
                    }
                  }

                  else
                  {
                    v121 = 0;
                  }

                  v120 = 0;
                  v104 = 0;
                  goto LABEL_174;
                }
              }

LABEL_142:
              v123 = 0;
              goto LABEL_143;
            }
          }

          else
          {
            v125 = 0;
          }

          v124 = 0;
          goto LABEL_142;
        }
      }

      else
      {
        v130 = 0;
      }

      v69 = 0;
      v70 = 0xC000000000000000;
      v129 = -1;
      goto LABEL_100;
    }

    if (!__OFSUB__(HIDWORD(v150), v150))
    {
      v27 = HIDWORD(v150) - v150;
      goto LABEL_39;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009E294(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039E248, &qword_1002C23D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009E2FC()
{
  result = qword_10039E2F0;
  if (!qword_10039E2F0)
  {
    sub_1000040BC(&qword_10039E2E8, &qword_1002C1728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2F0);
  }

  return result;
}

id sub_10009E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000411C(0, &qword_1003A10F0, SPRVASResponse_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = Data._bridgeToObjectiveC()().super.isa;
  v24 = Data._bridgeToObjectiveC()().super.isa;
  v23 = String._bridgeToObjectiveC()();
  v22 = Data._bridgeToObjectiveC()().super.isa;
  v21 = Data._bridgeToObjectiveC()().super.isa;
  v20 = Data._bridgeToObjectiveC()().super.isa;
  v3 = Data._bridgeToObjectiveC()().super.isa;
  v4 = Data._bridgeToObjectiveC()().super.isa;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = Data._bridgeToObjectiveC()().super.isa;
  v18 = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for ReadError(0);
  sub_10009B408();
  _BridgedStoredNSError.code.getter();
  v19 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  LOBYTE(v13) = 0;
  BYTE2(v12) = 0;
  LOWORD(v12) = 0;
  LODWORD(v11) = 0;
  LOBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  LOWORD(v8) = -256;
  v29 = [v28 initWithVasResponses:isa transactionCipherBlob:v26 transactionKeyBlob:v24 network:v23 outcomeStatus:0 errorIndicationStatusWord:v22 errorIndicationMsgOnError:v8 cvmType:v21 cvmResult:v20 merchantCategoryCode:v9 pinRequired:v3 kernelIdentityKeyAttestation:v4 ecdsaCertificate:v14 transactionResultData:v15 kekId:v16 pinKekId:v10 isPinSupported:v17 languagePreference:v18 transactionUUID:v30 readError:v11 payAppletFinalStatus:v19 isPINBypassEnabled:v12 isPINBypassAllowed:v5 forFallback:v13 fallbackAmount:? switchInterfaceOrNoCVMSuccess:? cardExpirationState:? cardEffectiveState:? payAppType:? isSAF:?];

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(a3, v6);
  return v29;
}

uint64_t sub_10009E644()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  _StringGuts.grow(_:)(20);

  if (!URLRequest.allHTTPHeaderFields.getter())
  {
    sub_100183EFC(_swiftEmptyArrayStorage);
  }

  v1 = Dictionary.description.getter();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A79646F620ALL;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6 = URLRequest.httpBody.getter();
  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v7 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v7;
  }

  static String.Encoding.utf8.getter();
  v10 = String.init(data:encoding:)();
  v12 = v11;
  sub_100009548(v8, v9);
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0x64696C61766E693CLL;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xEE003E79646F625FLL;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  return 0x3A73726564616568;
}

uint64_t sub_10009E7F8()
{
  v0 = sub_100185B90(&off_10037D1F8);
  result = swift_arrayDestroy();
  qword_1003A6B80 = v0;
  return result;
}

BOOL NFHardwareManager.isRadioEnabled.getter()
{
  v3 = 0;
  v1 = [v0 getRadioEnabledState:&v3];
  if (!v1)
  {
    return v3 == 1;
  }

  return 0;
}

void NFSecureElementManagerSession.select(_:)(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  if (qword_10039D498 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000403C(v4, qword_1003A10F8);
  sub_1000094F4(a1, a2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_100009548(a1, a2);
  if (os_log_type_enabled(v6, v7))
  {
    v84 = v5;
    v8 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v75);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    v13 = Data.hexString()();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v13;
    v14 = showFunction(signature:_:)(0x5F287463656C6573, 0xEA0000000000293ALL, v12);
    v15 = a2;
    v17 = v16;

    v18 = sub_100008F6C(v14, v17, &v75);
    a2 = v15;

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();

    v5 = v84;
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_23;
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (!v23)
    {
      if (v24 <= 255)
      {
        goto LABEL_11;
      }

LABEL_17:
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Applet ID too long", v28, 2u);
      }

      sub_10001A3FC();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
      return;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  if (v19)
  {
    while (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 > 255)
      {
        goto LABEL_17;
      }

LABEL_11:
      if (v19 != 2)
      {
        v20 = WORD2(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_41;
        }

LABEL_22:
        sub_1000094F4(a1, a2);
        goto LABEL_23;
      }

      v25 = *(a1 + 16);
      v19 = *(a1 + 24);
      v20 = v19 - v25;
      if (!__OFSUB__(v19, v25))
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    goto LABEL_40;
  }

  v20 = BYTE6(a2);
LABEL_23:
  LODWORD(v75) = 304128;
  WORD2(v75) = v20;
  v76 = a1;
  v77 = a2;
  v78 = 0;
  sub_10000BC94(&v75, v74);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v75);
  v73 = a2;
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v84 = v5;
    v33 = v32;
    v34 = swift_slowAlloc();
    v74[0] = v34;
    *v33 = 136315138;
    v35 = sub_100170CB0(v75 | (WORD2(v75) << 32), v76, v77, v78);
    v37 = v36;
    v38 = Data.hexString()();
    sub_100009548(v35, v37);
    v39 = sub_100008F6C(v38._countAndFlagsBits, v38._object, v74);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "C-APDU (SELECT): %s", v33, 0xCu);
    sub_10000959C(v34);
  }

  sub_10009FAC0(v75 | (WORD2(v75) << 32), v76, v77, v78, 0, &v79);
  v40 = v80;
  if (v80 >> 60 == 15)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "select applet error", v43, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
LABEL_38:
    sub_10000BCF0(&v75);
    return;
  }

  v45 = v82;
  v46 = v83;
  v47 = v79;
  v48 = v81;
  sub_1000094F4(v79, v80);
  sub_1000094F4(v45, v46);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  sub_10000BD44(&v79, &qword_10039E2C0, &unk_1002BFEB0);
  v51 = os_log_type_enabled(v49, v50);
  v84 = v45;
  if (v51)
  {
    v72 = v47;
    v52 = swift_slowAlloc();
    v71 = v50;
    v53 = swift_slowAlloc();
    v74[0] = v53;
    *v52 = 136315138;
    v54 = Data.hexString()();
    v55 = sub_100008F6C(v54._countAndFlagsBits, v54._object, v74);

    *(v52 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v49, v71, "R-APDU: %s", v52, 0xCu);
    sub_10000959C(v53);

    v47 = v72;
  }

  if (v48 != 36864)
  {
    sub_1000094F4(v47, v40);
    sub_1000094F4(v84, v46);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    sub_10000BD44(&v79, &qword_10039E2C0, &unk_1002BFEB0);
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v74[0] = v65;
      *v64 = 136315138;
      sub_100004074(&qword_10039E268, &unk_1002C16F0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1002C1660;
      *(v66 + 56) = &type metadata for UInt16;
      *(v66 + 64) = &protocol witness table for UInt16;
      *(v66 + 32) = v48;
      v67 = String.init(format:_:)();
      v69 = sub_100008F6C(v67, v68, v74);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "received non 9000 while selecting applet(%s).", v64, 0xCu);
      sub_10000959C(v65);
    }

    sub_10001A3FC();
    swift_allocError();
    *v70 = v48;
    swift_willThrow();
    sub_10000BD44(&v79, &qword_10039E2C0, &unk_1002BFEB0);
    goto LABEL_38;
  }

  sub_1000094F4(a1, v73);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  sub_100009548(a1, v73);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v74[0] = v59;
    *v58 = 136315138;
    v60 = Data.hexString()();
    v61 = sub_100008F6C(v60._countAndFlagsBits, v60._object, v74);

    *(v58 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v56, v57, "Applet selected: %s", v58, 0xCu);
    sub_10000959C(v59);
  }

  sub_10000BCF0(&v75);

  sub_10000BD44(&v79, &qword_10039E2C0, &unk_1002BFEB0);
}

BOOL NFSecureElementManagerSession.isAppletInSEStateInfo(aid:seState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = Data.hexString()();
  if (qword_10039D498 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A10F8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100008F6C(v4._countAndFlagsBits, v4._object, &v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "checking if applet %s is in SE State Info", v8, 0xCu);
    sub_10000959C(v9);
  }

  v10 = sub_1000A16C8(v4._countAndFlagsBits, v4._object, a3);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    if (v10)
    {
      v15 = Dictionary.description.getter();
      v17 = v16;
    }

    else
    {
      v17 = 0xE700000000000000;
      v15 = 0x676E6968746F6ELL;
    }

    v18 = sub_100008F6C(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "found %s", v13, 0xCu);
    sub_10000959C(v14);
  }

  return v10 != 0;
}

uint64_t sub_10009F524()
{
  v1 = v0;
  v2 = [v0 validateSEPairings:0];
  if (v2 != 27)
  {
    if (v2)
    {
      v18 = v2;
      if (qword_10039D498 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000403C(v19, qword_1003A10F8);
      v4 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v20))
      {
        goto LABEL_18;
      }

      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 1) = v18;
      v7 = "Failed to determine SE-SEP pairings: %u";
      v8 = v20;
      v9 = v4;
      v10 = v21;
      v11 = 8;
    }

    else
    {
      if (qword_10039D498 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000403C(v3, qword_1003A10F8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_18;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "valid SE-SEP pairing found.";
      v8 = v5;
      v9 = v4;
      v10 = v6;
      v11 = 2;
    }

    _os_log_impl(&_mh_execute_header, v9, v8, v7, v10, v11);

LABEL_18:

    v17 = 1;
    return v17 & 1;
  }

  if (qword_10039D498 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A10F8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "SE-SEP is not paired, trying deleteAllApplets()", v15, 2u);
  }

  v24 = 0;
  if ([v1 deleteAllApplets:0 error:&v24])
  {
    v16 = v24;
    v17 = 0;
  }

  else
  {
    v23 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v17 & 1;
}

uint64_t sub_10009F814()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A10F8);
  sub_10000403C(v0, qword_1003A10F8);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.secureElement.getter();
}

uint8_t *NFSecureElementManagerSession.transceive(_:)(uint64_t a1, uint8_t *isa)
{
  v16 = 0;
  v4 = [objc_opt_self() embeddedSecureElementWithError:&v16];
  if (!v4)
  {
    v10 = v16;
LABEL_12:
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();
    return isa;
  }

  v5 = v4;
  v6 = v16;
  v7 = [v5 serialNumber];

  if (!v7)
  {
    if (qword_10039D498 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A10F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      isa = swift_slowAlloc();
      *isa = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "no seid", isa, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v14 = 0;
    goto LABEL_13;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = 0;
  v8 = [v2 transceive:isa forSEID:v7 error:&v16];

  v9 = v16;
  if (!v8)
  {
    v10 = v9;
    goto LABEL_12;
  }

  isa = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return isa;
}

void sub_10009FAC0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v8 = a1;
  v10 = a1 & 0xFFFFFFFFFFFFLL;
  if (a5)
  {
    v11 = sub_100170F04(v10, a2, a3, a4);
  }

  else
  {
    v11 = sub_100170CB0(v10, a2, a3, a4);
  }

  v13 = v11;
  v14 = v12;
  v15 = NFSecureElementManagerSession.transceive(_:)(v11, v12);
  v25 = v24;
  v94 = v13;
  v95 = v14;
  v91 = v8;
  v26 = v15;
  sub_1000094F4(v15, v24);
  sub_10017157C(v26, v25, &v105);
  v27 = v106;
  v102 = v105;
  v103 = v106;
  v104 = v107;
  sub_10001A3FC();
  v28 = swift_allocError();
  *v29 = v27;
  v30 = sub_100171840(36864, v28);

  if (v30)
  {
    sub_100009548(v26, v25);
    v31 = v13;
    v32 = v95;
    goto LABEL_9;
  }

  v90 = v26;
  v38 = swift_allocError();
  *v39 = v27;
  v40 = sub_100171840(25360, v38);

  if ((v40 & 1) == 0)
  {
    if (qword_10039D4A0 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000403C(v67, qword_1003A1128);
    sub_1000094F4(v13, v95);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    sub_100009548(v13, v95);
    if (os_log_type_enabled(v68, v69))
    {
      loga = v69;
      v70 = swift_slowAlloc();
      *&v97 = swift_slowAlloc();
      *v70 = 136315394;
      swift_beginAccess();
      v89 = v25;
      sub_1000094F4(v102, *(&v102 + 1));
      sub_1000094F4(*(&v103 + 1), v104);
      v71 = Data.hexString()();
      sub_100009548(v102, *(&v102 + 1));
      sub_100009548(*(&v103 + 1), v104);
      v72 = sub_100008F6C(v71._countAndFlagsBits, v71._object, &v97);

      *(v70 + 4) = v72;
      *(v70 + 12) = 2080;
      v73 = Data.hexString()();
      v74 = sub_100008F6C(v73._countAndFlagsBits, v73._object, &v97);

      *(v70 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v68, loga, "Status Word Not 9000 (!) RAPDU: %s to CAPDU: %s", v70, 0x16u);
      swift_arrayDestroy();

      sub_100009548(v26, v89);
      sub_100009548(v13, v95);

      goto LABEL_10;
    }

    sub_100009548(v26, v25);

    v31 = v13;
    v32 = v95;
LABEL_9:
    sub_100009548(v31, v32);
LABEL_10:
    swift_beginAccess();
    v34 = *(&v102 + 1);
    v33 = v102;
    v35 = v103;
    v36 = *(&v103 + 1);
    v37 = v104;
    sub_1000094F4(v102, *(&v102 + 1));
    sub_1000094F4(v36, v37);
    sub_100009548(v33, v34);
    sub_100009548(v36, v37);
    goto LABEL_13;
  }

  v87 = a6;
  v88 = v25;
  v41 = *(&v102 + 1);
  v42 = v102;
  sub_1000094F4(v102, *(&v102 + 1));
  if (qword_10039D4A0 != -1)
  {
    goto LABEL_67;
  }

LABEL_16:
  log = type metadata accessor for Logger();
  a6 = 0;
  while (1)
  {
    sub_10000403C(log, qword_1003A1128);
    sub_1000094F4(a2, a3);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 16777728;
      *(v45 + 4) = v91;
      *(v45 + 5) = 256;
      *(v45 + 7) = HIBYTE(v91);
      sub_100009548(a2, a3);
      _os_log_impl(&_mh_execute_header, v43, v44, "More data available: CLA=%hhu, INS=%hhu", v45, 8u);
    }

    else
    {
      sub_100009548(a2, a3);
    }

    v46 = NFSecureElementManagerSession.transceive(_:)(v94, v95);
    v48 = v47;
    sub_1000094F4(v46, v47);
    sub_10017157C(v46, v48, &v108);
    v49 = *(&v102 + 1) >> 62;
    if ((*(&v102 + 1) >> 62) > 1)
    {
      if (v49 == 2)
      {
        v51 = *(v102 + 16);
        v52 = *(v102 + 24);
        v53 = __OFSUB__(v52, v51);
        v50 = v52 - v51;
        if (v53)
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          swift_once();
          goto LABEL_16;
        }
      }

      else
      {
        v50 = 0;
      }
    }

    else if (v49)
    {
      LODWORD(v50) = DWORD1(v102) - v102;
      if (__OFSUB__(DWORD1(v102), v102))
      {
        goto LABEL_64;
      }

      v50 = v50;
    }

    else
    {
      v50 = BYTE14(v102);
    }

    v110 = v108;
    v54 = *(&v108 + 1) >> 62;
    if ((*(&v108 + 1) >> 62) > 1)
    {
      if (v54 == 2)
      {
        v56 = *(v108 + 16);
        v57 = *(v108 + 24);
        v53 = __OFSUB__(v57, v56);
        v55 = v57 - v56;
        if (v53)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v55 = 0;
      }
    }

    else if (v54)
    {
      LODWORD(v55) = DWORD1(v108) - v108;
      if (__OFSUB__(DWORD1(v108), v108))
      {
        goto LABEL_66;
      }

      v55 = v55;
    }

    else
    {
      v55 = BYTE14(v108);
    }

    v53 = __OFADD__(v50, v55);
    v58 = v50 + v55;
    if (v53)
    {
      break;
    }

    if (v58 > 0x100000 || a6 >= 0x1000)
    {
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v75, v76))
      {
        sub_100009548(v46, v48);
        v81 = v42;
        v82 = v41;
LABEL_62:
        sub_100009548(v81, v82);
        sub_100009548(v90, v88);
        sub_100009548(v94, v95);

        sub_1000A1E5C(&v108);
        v85 = *(&v103 + 1);
        v86 = v104;
        sub_100009548(v102, *(&v102 + 1));
        sub_100009548(v85, v86);
        v33 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v34 = 0xF000000000000000;
        a6 = v87;
        goto LABEL_13;
      }

      v77 = swift_slowAlloc();
      *v77 = 134218240;
      swift_beginAccess();
      v78 = v102;
      v79 = *(&v102 + 1) >> 62;
      if ((*(&v102 + 1) >> 62) > 1)
      {
        v80 = 0;
        if (v79 != 2)
        {
          goto LABEL_61;
        }

        v78 = *(v102 + 16);
        v83 = *(v102 + 24);
        v53 = __OFSUB__(v83, v78);
        v80 = v83 - v78;
        if (!v53)
        {
          goto LABEL_61;
        }

        __break(1u);
      }

      else if (!v79)
      {
        v80 = BYTE14(v102);
LABEL_61:
        *(v77 + 4) = v80;
        *(v77 + 12) = 2048;
        *(v77 + 14) = a6 + 1;
        _os_log_impl(&_mh_execute_header, v75, v76, "exceed artificial limit when fetching more data.\nsize: %ld\napdu exchange counter: %ld", v77, 0x16u);

        sub_100009548(v42, v41);
        v81 = v46;
        v82 = v48;
        goto LABEL_62;
      }

      v53 = __OFSUB__(HIDWORD(v78), v78);
      v84 = HIDWORD(v78) - v78;
      if (v53)
      {
        __break(1u);
        return;
      }

      v80 = v84;
      goto LABEL_61;
    }

    v100 = v42;
    v101 = v41;
    v98 = &type metadata for Data;
    v99 = &protocol witness table for Data;
    v97 = v108;
    v59 = sub_10000BE18(&v97, &type metadata for Data);
    v60 = *v59;
    v61 = v59[1];
    sub_1000094F4(v42, v41);
    sub_1000A1E00(&v110, &v96);
    sub_1000A1C34(v60, v61, &v100, v62);
    sub_100009548(v46, v48);
    sub_100009548(v42, v41);
    sub_10000959C(&v97);
    sub_1000A1E5C(&v108);
    v42 = v100;
    v41 = v101;
    v63 = v109;
    a6 = (a6 + 1);
    if (v109 != 25360)
    {
      sub_100009548(v94, v95);
      sub_100009548(v90, v88);
      v64 = v102;
      v65 = *(&v103 + 1);
      v66 = v104;
      *&v102 = v42;
      *(&v102 + 1) = v41;
      LOWORD(v103) = v63;
      *(&v103 + 1) = v42;
      v104 = v41;
      sub_1000094F4(v42, v41);
      sub_100009548(v64, *(&v64 + 1));
      sub_100009548(v65, v66);
      a6 = v87;
      goto LABEL_10;
    }
  }

  __break(1u);
  swift_once();
  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A1128);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v108 = v20;
    *v19 = 136315138;
    *&v105 = 0;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v21 = String.init<A>(describing:)();
    v23 = sub_100008F6C(v21, v22, &v108);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "failed to communicate with SE %s", v19, 0xCu);
    sub_10000959C(v20);

    sub_100009548(v41, v42);
  }

  else
  {
    sub_100009548(v41, v42);
  }

  v33 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0xF000000000000000;
LABEL_13:
  *a6 = v33;
  a6[1] = v34;
  a6[2] = v35;
  a6[3] = v36;
  a6[4] = v37;
}

void sub_1000A0770(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v119 = a1;
  v11 = a1 & 0xFFFFFFFFFFFFLL;
  if (a5)
  {
    v12 = sub_100170F04(v11, a2, a3, a4);
  }

  else
  {
    v12 = sub_100170CB0(v11, a2, a3, a4);
  }

  v14 = v12;
  v15 = v13;
  v26 = sub_1000A1A8C();
  v28 = v27;
  v116 = a2;
  v117 = a3;
  sub_1000094F4(v26, v27);
  sub_10017157C(v26, v28, &v131);
  v29 = v132;
  v128 = v131;
  v129 = v132;
  v130 = v133;
  sub_10001A3FC();
  v30 = swift_allocError();
  *v31 = v29;
  v32 = sub_100171840(36864, v30);

  if (v32)
  {
    sub_100009548(v26, v28);
    goto LABEL_9;
  }

  v38 = swift_allocError();
  *v39 = v29;
  v40 = sub_100171840(25360, v38);

  if ((v40 & 1) == 0)
  {
    if (qword_10039D4A0 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000403C(v67, qword_1003A1128);
    sub_1000094F4(v14, v15);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    sub_100009548(v14, v15);
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *&v123 = swift_slowAlloc();
      *v70 = 136315394;
      swift_beginAccess();
      v111 = v28;
      sub_1000094F4(v128, *(&v128 + 1));
      sub_1000094F4(*(&v129 + 1), v130);
      v71 = Data.hexString()();
      sub_100009548(v128, *(&v128 + 1));
      sub_100009548(*(&v129 + 1), v130);
      v72 = sub_100008F6C(v71._countAndFlagsBits, v71._object, &v123);

      *(v70 + 4) = v72;
      *(v70 + 12) = 2080;
      v73 = v15;
      v74 = v14;
      v75 = Data.hexString()();
      v76 = sub_100008F6C(v75._countAndFlagsBits, v75._object, &v123);

      *(v70 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v68, v69, "Status Word Not 9000 (!) RAPDU: %s to CAPDU: %s", v70, 0x16u);
      swift_arrayDestroy();

      sub_100009548(v26, v111);
      sub_100009548(v74, v73);

      goto LABEL_10;
    }

    sub_100009548(v26, v28);

LABEL_9:
    sub_100009548(v14, v15);
LABEL_10:
    swift_beginAccess();
    v34 = *(&v128 + 1);
    v33 = v128;
    v35 = v129;
    v36 = *(&v129 + 1);
    v37 = v130;
    sub_1000094F4(v128, *(&v128 + 1));
    sub_1000094F4(v36, v37);
    sub_100009548(v33, v34);
    sub_100009548(v36, v37);
    goto LABEL_13;
  }

  v108 = a6;
  v109 = v26;
  v110 = v28;
  a6 = *(&v128 + 1);
  v41 = v128;
  sub_1000094F4(v128, *(&v128 + 1));
  if (qword_10039D4A0 != -1)
  {
    goto LABEL_91;
  }

LABEL_16:
  v115 = type metadata accessor for Logger();
  v42 = 0;
  v112 = v15;
  v113 = v14;
  v114 = v7;
  while (1)
  {
    v121 = a6;
    sub_10000403C(v115, qword_1003A1128);
    sub_1000094F4(v116, v117);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 16777728;
      *(v46 + 4) = v119;
      *(v46 + 5) = 256;
      *(v46 + 7) = HIBYTE(v119);
      sub_100009548(v116, v117);
      _os_log_impl(&_mh_execute_header, v44, v45, "More data available: CLA=%hhu, INS=%hhu", v46, 8u);
    }

    else
    {
      sub_100009548(v116, v117);
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v123 = 0;
    v48 = [v7 transceive:isa error:&v123];

    v49 = v123;
    if (!v48)
    {
      v77 = v49;
      v78 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000094F4(v14, v15);
      swift_errorRetain();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      sub_100009548(v14, v15);

      log = v79;
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v81 = 138413058;
        swift_allocError();
        *v82 = 25360;
        v83 = _swift_stdlib_bridgeErrorToNSError();
        *(v81 + 4) = v83;
        *v118 = v83;
        *(v81 + 12) = 2080;
        v84 = Data.hexString()();
        v85 = sub_100008F6C(v84._countAndFlagsBits, v84._object, &v126);

        *(v81 + 14) = v85;
        *(v81 + 22) = 2080;
        swift_beginAccess();
        v86 = v128;
        v87 = *(&v129 + 1);
        v88 = v130;
        sub_1000094F4(v128, *(&v128 + 1));
        sub_1000094F4(v87, v88);
        v89 = Data.hexString()();
        v90 = v80;
        sub_100009548(v86, *(&v86 + 1));
        sub_100009548(v87, v88);
        v91 = sub_100008F6C(v89._countAndFlagsBits, v89._object, &v126);

        *(v81 + 24) = v91;
        *(v81 + 32) = 2080;
        v122[0] = v78;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v92 = String.init<A>(describing:)();
        v94 = sub_100008F6C(v92, v93, &v126);

        *(v81 + 34) = v94;
        _os_log_impl(&_mh_execute_header, log, v90, "getting %@, but subsequent apdu failed. C-APDU: %s\nR-APDU: %s\nerror: %s", v81, 0x2Au);
        sub_10000BD44(v118, &unk_10039E220, &qword_1002C3D60);

        swift_arrayDestroy();

        sub_100009548(v41, v121);
        sub_100009548(v109, v110);
        sub_100009548(v113, v112);
      }

      else
      {
        sub_100009548(v41, a6);
        sub_100009548(v109, v110);

        sub_100009548(v14, v15);
      }

      goto LABEL_81;
    }

    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    sub_1000094F4(v50, v52);
    sub_10017157C(v50, v52, &v134);
    v53 = *(&v128 + 1) >> 62;
    if ((*(&v128 + 1) >> 62) > 1)
    {
      if (v53 == 2)
      {
        v55 = *(v128 + 16);
        v56 = *(v128 + 24);
        v57 = __OFSUB__(v56, v55);
        v54 = v56 - v55;
        if (v57)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v54 = 0;
      }
    }

    else if (v53)
    {
      LODWORD(v54) = DWORD1(v128) - v128;
      if (__OFSUB__(DWORD1(v128), v128))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        swift_once();
        goto LABEL_16;
      }

      v54 = v54;
    }

    else
    {
      v54 = BYTE14(v128);
    }

    v136 = v134;
    v58 = *(&v134 + 1) >> 62;
    if ((*(&v134 + 1) >> 62) > 1)
    {
      if (v58 == 2)
      {
        v60 = *(v134 + 16);
        v61 = *(v134 + 24);
        v57 = __OFSUB__(v61, v60);
        v59 = v61 - v60;
        if (v57)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v59 = 0;
      }
    }

    else if (v58)
    {
      LODWORD(v59) = DWORD1(v134) - v134;
      if (__OFSUB__(DWORD1(v134), v134))
      {
        goto LABEL_85;
      }

      v59 = v59;
    }

    else
    {
      v59 = BYTE14(v134);
    }

    v57 = __OFADD__(v54, v59);
    v62 = v54 + v59;
    if (v57)
    {
      break;
    }

    if (v62 > 0x100000 || v42 >= 0x1000)
    {
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v95, v96))
      {
        sub_100009548(v50, v52);
        sub_100009548(v41, a6);
LABEL_80:
        sub_100009548(v109, v110);
        sub_100009548(v14, v15);

        sub_1000A1E5C(&v134);
LABEL_81:
        v106 = *(&v129 + 1);
        v107 = v130;
        sub_100009548(v128, *(&v128 + 1));
        sub_100009548(v106, v107);
        v33 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v34 = 0xF000000000000000;
        a6 = v108;
        goto LABEL_13;
      }

      v97 = swift_slowAlloc();
      *v97 = 134218240;
      swift_beginAccess();
      v98 = v128;
      v99 = *(&v128 + 1) >> 62;
      if ((*(&v128 + 1) >> 62) > 1)
      {
        v100 = 0;
        if (v99 != 2)
        {
          goto LABEL_79;
        }

        v98 = *(v128 + 16);
        v104 = *(v128 + 24);
        v57 = __OFSUB__(v104, v98);
        v100 = v104 - v98;
        if (!v57)
        {
          goto LABEL_79;
        }

        __break(1u);
      }

      else if (!v99)
      {
        v100 = BYTE14(v128);
LABEL_79:
        *(v97 + 4) = v100;
        *(v97 + 12) = 2048;
        *(v97 + 14) = v42 + 1;
        _os_log_impl(&_mh_execute_header, v95, v96, "exceed artificial limit when fetching more data.\nsize: %ld\napdu exchange counter: %ld", v97, 0x16u);

        sub_100009548(v41, a6);
        sub_100009548(v50, v52);
        v14 = v113;
        goto LABEL_80;
      }

      v57 = __OFSUB__(HIDWORD(v98), v98);
      v105 = HIDWORD(v98) - v98;
      if (v57)
      {
        __break(1u);
      }

      v100 = v105;
      goto LABEL_79;
    }

    v126 = v41;
    v127 = a6;
    v124 = &type metadata for Data;
    v125 = &protocol witness table for Data;
    v123 = v134;
    v63 = sub_10000BE18(&v123, &type metadata for Data);
    v64 = *v63;
    v7 = v63[1];
    v65 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (!v65)
      {
        goto LABEL_17;
      }

      v15 = v64;
      v66 = v64 >> 32;
      v14 = v66 - v15;
      if (v66 < v15)
      {
        goto LABEL_87;
      }

      sub_1000094F4(v41, a6);
      sub_1000A1E00(&v136, v122);
      if (__DataStorage._bytes.getter() && __OFSUB__(v15, __DataStorage._offset.getter()))
      {
        goto LABEL_90;
      }

      v15 = v112;
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100009548(v50, v52);
      sub_100009548(v41, a6);
LABEL_58:
      v14 = v113;
      goto LABEL_18;
    }

    if (v65 == 2)
    {
      v14 = *(v64 + 16);
      v15 = *(v64 + 24);
      sub_1000094F4(v41, a6);
      sub_1000A1E00(&v136, v122);
      if (__DataStorage._bytes.getter() && __OFSUB__(v14, __DataStorage._offset.getter()))
      {
        goto LABEL_89;
      }

      v57 = __OFSUB__(v15, v14);
      v14 = v15 - v14;
      if (v57)
      {
        goto LABEL_88;
      }

      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100009548(v50, v52);
      sub_100009548(v41, a6);
      v15 = v112;
      goto LABEL_58;
    }

LABEL_17:
    sub_1000094F4(v41, a6);
    sub_1000A1E00(&v136, v122);
    Data._Representation.append(contentsOf:)();
    sub_100009548(v50, v52);
    sub_100009548(v41, a6);
LABEL_18:
    sub_10000959C(&v123);
    sub_1000A1E5C(&v134);
    v41 = v126;
    a6 = v127;
    v43 = v135;
    ++v42;
    v7 = v114;
    if (v135 != 25360)
    {
      sub_100009548(v14, v15);
      sub_100009548(v109, v110);
      v101 = v128;
      v102 = *(&v129 + 1);
      v103 = v130;
      *&v128 = v41;
      *(&v128 + 1) = a6;
      LOWORD(v129) = v43;
      *(&v129 + 1) = v41;
      v130 = a6;
      sub_1000094F4(v41, a6);
      sub_100009548(v101, *(&v101 + 1));
      sub_100009548(v102, v103);
      a6 = v108;
      goto LABEL_10;
    }
  }

  __break(1u);
  swift_once();
  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A1128);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = v14;
    v21 = swift_slowAlloc();
    *&v134 = v21;
    *v19 = 136315138;
    *&v131 = v52;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v22 = String.init<A>(describing:)();
    v24 = v15;
    v25 = sub_100008F6C(v22, v23, &v134);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "failed to communicate with SE %s", v19, 0xCu);
    sub_10000959C(v21);

    sub_100009548(v20, v24);
  }

  else
  {
    sub_100009548(v14, v15);
  }

  v33 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0xF000000000000000;
LABEL_13:
  *a6 = v33;
  a6[1] = v34;
  a6[2] = v35;
  a6[3] = v36;
  a6[4] = v37;
}

uint64_t sub_1000A16C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v15 = [v3 stateInformation];
    if (!v15)
    {
      return 0;
    }

    v16 = v15;
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v17 + 16))
    {
      goto LABEL_8;
    }

    sub_10000BDA4(v17 + 32, &v30);

    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v11 = *&v29[0];
    if (!*&v29[0])
    {
      return 0;
    }
  }

  v12 = *(v11 + 16);

  if (!v12 || (v13 = sub_1000F5A28(0x656E6961746E6F63, 0xEA00000000007372), (v14 & 1) == 0))
  {
LABEL_8:

    return 0;
  }

  sub_10000BDA4(*(v11 + 56) + 32 * v13, &v30);

  sub_10000411C(0, &qword_1003A1120, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v23 = v7;
  v24 = v8;
  v25 = *&v29[0];
  v26 = a2;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v31)
  {
LABEL_25:
    (*(v24 + 8))(v10, v23);

    return 0;
  }

  while (1)
  {
    sub_100019D3C(&v30, v29);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v19 = v27;
    if (*(v27 + 16))
    {
      v20 = sub_1000F5A28(0x694174656C707061, 0xE900000000000064);
      if (v21)
      {
        sub_10000BDA4(*(v19 + 56) + 32 * v20, v29);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_15:

LABEL_16:
    NSFastEnumerationIterator.next()();
    if (!v31)
    {
      goto LABEL_25;
    }
  }

  if (v27 != a1 || v28 != v26)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

LABEL_24:
  (*(v24 + 8))(v10, v23);

  return v19;
}

void *sub_1000A1A8C()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 transceive:isa error:&v6];

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

uint64_t sub_1000A1B64(uint64_t a1)
{
  result = sub_1000A1BE4(&qword_1003A1110, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A1BA4(uint64_t a1)
{
  result = sub_1000A1BE4(&qword_1003A1118, &unk_10039E250, NFSecureElementReaderSession_ptr);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A1BE4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000411C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A1C34(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000A1D6C(v5, v6, a4);
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000A1D6C(v5, v6, a4);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1000A1D6C(uint64_t a1, uint64_t a2, double a3)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000A1EB0(uint64_t a1@<X0>, NSObject *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v101 = a1;
  v13 = a1 & 0xFFFFFFFFFFFFLL;
  if (a5)
  {
    v14 = sub_100170F04(v13, a2, a3, a4);
  }

  else
  {
    v14 = sub_100170CB0(v13, a2, a3, a4);
  }

  v105 = v14;
  v106 = v15;
  v16 = *(a7 + 16);
  v17 = v16();
  v96 = v16;
  v99 = a7;
  log = a2;
  v97 = a3;
  v98 = a6;
  v27 = &v116;
  v28 = v17;
  v30 = v29;
  sub_1000094F4(v17, v29);
  sub_10017157C(v28, v30, &v116);
  v31 = v117;
  v113 = v116;
  v114 = v117;
  v115 = v118;
  sub_10001A3FC();
  v32 = swift_allocError();
  *v33 = v31;
  v34 = sub_100171840(36864, v32);

  if (v34)
  {
    sub_100009548(v28, v30);
    goto LABEL_9;
  }

  v93 = v28;
  v94 = v30;
  v40 = swift_allocError();
  *v41 = v31;
  v42 = sub_100171840(25360, v40);

  if (v42)
  {
    v92 = a8;
    a8 = *(&v113 + 1);
    v104 = v113;
    sub_1000094F4(v113, *(&v113 + 1));
    if (qword_10039D4A0 != -1)
    {
LABEL_85:
      swift_once();
    }

    v43 = 0;
    v44 = log;
    v95 = type metadata accessor for Logger();
    while (1)
    {
      v102 = a8;
      a8 = sub_10000403C(v95, qword_1003A1128);
      sub_1000094F4(v44, v97);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v44;
        v50 = v48;
        *v48 = 16777728;
        *(v48 + 4) = v101;
        *(v48 + 5) = 256;
        *(v48 + 7) = HIBYTE(v101);
        sub_100009548(v49, v97);
        _os_log_impl(&_mh_execute_header, v46, v47, "More data available: CLA=%hhu, INS=%hhu", v50, 8u);
      }

      else
      {
        sub_100009548(v44, v97);
      }

      v51 = (v96)(v105, v106, v98, v99);
      v53 = v52;
      sub_1000094F4(v51, v52);
      sub_10017157C(v51, v53, &v119);
      v54 = *(&v113 + 1) >> 62;
      if ((*(&v113 + 1) >> 62) > 1)
      {
        if (v54 == 2)
        {
          v56 = *(v113 + 16);
          v57 = *(v113 + 24);
          v58 = __OFSUB__(v57, v56);
          v55 = v57 - v56;
          if (v58)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }
        }

        else
        {
          v55 = 0;
        }
      }

      else if (v54)
      {
        LODWORD(v55) = DWORD1(v113) - v113;
        if (__OFSUB__(DWORD1(v113), v113))
        {
          goto LABEL_78;
        }

        v55 = v55;
      }

      else
      {
        v55 = BYTE14(v113);
      }

      v27[5] = v119;
      v59 = v122 >> 62;
      if ((v122 >> 62) > 1)
      {
        if (v59 == 2)
        {
          v61 = *(v121 + 16);
          v62 = *(v121 + 24);
          v58 = __OFSUB__(v62, v61);
          v60 = v62 - v61;
          if (v58)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v60 = 0;
        }
      }

      else if (v59)
      {
        LODWORD(v60) = HIDWORD(v121) - v121;
        if (__OFSUB__(HIDWORD(v121), v121))
        {
          goto LABEL_79;
        }

        v60 = v60;
      }

      else
      {
        v60 = BYTE6(v122);
      }

      v58 = __OFADD__(v55, v60);
      v63 = v55 + v60;
      if (v58)
      {
        __break(1u);
        swift_once();
        v18 = type metadata accessor for Logger();
        sub_10000403C(v18, qword_1003A1128);
        swift_errorRetain();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *&v119 = v22;
          *v21 = 136315138;
          *&v116 = 0;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v23 = String.init<A>(describing:)();
          v25 = a8;
          v26 = sub_100008F6C(v23, v24, &v119);

          *(v21 + 4) = v26;
          a8 = v25;
          _os_log_impl(&_mh_execute_header, v19, v20, "failed to communicate with SE %s", v21, 0xCu);
          sub_10000959C(v22);

          sub_100009548(v105, v106);
        }

        else
        {
          sub_100009548(v105, v106);
        }

        goto LABEL_12;
      }

      if (v63 > 0x100000 || v43 > 0xFFF)
      {
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 134218240;
          swift_beginAccess();
          v82 = v113;
          v83 = *(&v113 + 1) >> 62;
          a8 = v92;
          if ((*(&v113 + 1) >> 62) > 1)
          {
            v84 = 0;
            if (v83 == 2)
            {
              v82 = *(v113 + 16);
              v88 = *(v113 + 24);
              v58 = __OFSUB__(v88, v82);
              v84 = v88 - v82;
              if (v58)
              {
                __break(1u);
                goto LABEL_73;
              }
            }
          }

          else
          {
            if (!v83)
            {
              v84 = BYTE14(v113);
              goto LABEL_75;
            }

LABEL_73:
            v58 = __OFSUB__(HIDWORD(v82), v82);
            v89 = HIDWORD(v82) - v82;
            if (v58)
            {
              __break(1u);
            }

            v84 = v89;
          }

LABEL_75:
          *(v81 + 4) = v84;
          *(v81 + 12) = 2048;
          *(v81 + 14) = v43 + 1;
          _os_log_impl(&_mh_execute_header, v79, v80, "exceed artificial limit when fetching more data.\nsize: %ld\napdu exchange counter: %ld", v81, 0x16u);

          sub_100009548(v104, v102);
          sub_100009548(v51, v53);
        }

        else
        {
          sub_100009548(v51, v53);
          sub_100009548(v104, v102);
          a8 = v92;
        }

        sub_100009548(v93, v94);
        sub_100009548(v105, v106);

        sub_1000A1E5C(&v119);
        v90 = *(&v114 + 1);
        v91 = v115;
        sub_100009548(v113, *(&v113 + 1));
        sub_100009548(v90, v91);
LABEL_12:
        v35 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v36 = 0xF000000000000000;
        goto LABEL_13;
      }

      a8 = v102;
      v111 = v104;
      v112 = v102;
      v109 = &type metadata for Data;
      v110 = &protocol witness table for Data;
      v108 = v119;
      v64 = sub_10000BE18(&v108, &type metadata for Data);
      v65 = *v64;
      v66 = v64[1] >> 62;
      if (v66 > 1)
      {
        if (v66 == 2)
        {
          v27 = *(v65 + 16);
          v67 = *(v65 + 24);
          sub_1000094F4(v104, v102);
          sub_1000A1E00(&v121, v107);
          a8 = __DataStorage._bytes.getter();
          if (a8)
          {
            v68 = __DataStorage._offset.getter();
            if (__OFSUB__(v27, v68))
            {
              goto LABEL_83;
            }

            a8 = (a8 + v27 - v68);
          }

          v58 = __OFSUB__(v67, v27);
          v27 = (v67 - v27);
          if (v58)
          {
            goto LABEL_82;
          }

LABEL_57:
          __DataStorage._length.getter();
          Data._Representation.append(contentsOf:)();
          sub_100009548(v51, v53);
          sub_100009548(v104, v102);
          v27 = &v116;
          goto LABEL_18;
        }
      }

      else if (v66)
      {
        v69 = v65;
        v70 = v65 >> 32;
        v27 = (v70 - v69);
        if (v70 < v69)
        {
          goto LABEL_81;
        }

        sub_1000094F4(v104, v102);
        sub_1000A1E00(&v121, v107);
        a8 = __DataStorage._bytes.getter();
        if (a8 && __OFSUB__(v69, __DataStorage._offset.getter()))
        {
          goto LABEL_84;
        }

        goto LABEL_57;
      }

      sub_1000094F4(v104, v102);
      sub_1000A1E00(&v121, v107);
      Data._Representation.append(contentsOf:)();
      sub_100009548(v51, v53);
      sub_100009548(v104, v102);
LABEL_18:
      sub_10000959C(&v108);
      sub_1000A1E5C(&v119);
      a8 = v112;
      v104 = v111;
      v45 = v120;
      ++v43;
      v44 = log;
      if (v120 != 25360)
      {
        sub_100009548(v105, v106);
        sub_100009548(v93, v94);
        v85 = v113;
        v86 = *(&v114 + 1);
        v87 = v115;
        *&v113 = v104;
        *(&v113 + 1) = a8;
        LOWORD(v114) = v45;
        *(&v114 + 1) = v104;
        v115 = a8;
        sub_1000094F4(v104, a8);
        sub_100009548(v85, *(&v85 + 1));
        sub_100009548(v86, v87);
        a8 = v92;
        goto LABEL_10;
      }
    }
  }

  if (qword_10039D4A0 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_10000403C(v71, qword_1003A1128);
  sub_1000094F4(v105, v106);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  sub_100009548(v105, v106);
  if (os_log_type_enabled(v72, v73))
  {
    v103 = v73;
    v74 = swift_slowAlloc();
    *&v108 = swift_slowAlloc();
    *v74 = 136315394;
    swift_beginAccess();
    sub_1000094F4(v113, *(&v113 + 1));
    sub_1000094F4(*(&v114 + 1), v115);
    v75 = Data.hexString()();
    sub_100009548(v113, *(&v113 + 1));
    sub_100009548(*(&v114 + 1), v115);
    v76 = sub_100008F6C(v75._countAndFlagsBits, v75._object, &v108);

    *(v74 + 4) = v76;
    *(v74 + 12) = 2080;
    v77 = Data.hexString()();
    v78 = sub_100008F6C(v77._countAndFlagsBits, v77._object, &v108);

    *(v74 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v72, v103, "Status Word Not 9000 (!) RAPDU: %s to CAPDU: %s", v74, 0x16u);
    swift_arrayDestroy();

    sub_100009548(v28, v94);
    sub_100009548(v105, v106);

    goto LABEL_10;
  }

  sub_100009548(v28, v30);

LABEL_9:
  sub_100009548(v105, v106);
LABEL_10:
  swift_beginAccess();
  v36 = *(&v113 + 1);
  v35 = v113;
  v37 = v114;
  v38 = *(&v114 + 1);
  v39 = v115;
  sub_1000094F4(v113, *(&v113 + 1));
  sub_1000094F4(v38, v39);
  sub_100009548(v35, v36);
  sub_100009548(v38, v39);
LABEL_13:
  *a8 = v35;
  a8[1] = v36;
  a8[2] = v37;
  a8[3] = v38;
  a8[4] = v39;
}